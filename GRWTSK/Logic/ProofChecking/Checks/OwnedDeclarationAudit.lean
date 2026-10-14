import GRWTSK
import Lean

open Lean Elab Command

/-
The Python replay imports every Git-visible project module before this command,
including modules absent from GRWTSK.lean. Ownership, rather than namespace,
includes private and compiler-generated declarations in the census.
-/
elab "#audit_math_trust" ownerSource:str : command => do
  let env ← getEnv
  let owners := env.header.moduleNames
  unless env.header.moduleData.size == owners.size do
    throwError "incomplete module ownership table"
  let runtimeName := `GRWTSK.Algebra.orderedProduct._unsafe_rec
  let runtimeOwner := `GRWTSK.Algebra.OrderedProduct
  let ownerSourceHash := ownerSource.getString
  let acceptedSourceHash := "97997c1246d32731c34a6decf10d3cb4a90d0c28281e174ab28fd4abe4c6574d"
  let mut violations : Array String := #[]
  let mut count := 0
  let mut moduleCount := 0
  for (data, owner) in env.header.moduleData.toList.zip owners.toList do
    if (`GRWTSK).isPrefixOf owner then
      moduleCount := moduleCount + 1
      let declarations := data.constants.toList.filter fun info =>
        match env.getModuleIdxFor? info.name with
        | some idx => owners[idx]! == owner
        | none => false
      logInfo m!"MATH_TRUST_MODULE::{(Json.mkObj [
        ("module", toJson owner.toString),
        ("declarations", toJson declarations.length)]).compress}"
      for info in declarations do
        let name := info.name
        let isDefinition := match info with
          | .defnInfo _ => true
          | _ => false
        -- This exact existing generated runtime implementation is separately
        -- retained by OrderedProductAudit. It receives the same axiom audit.
        let knownRuntime := name == runtimeName && owner == runtimeOwner &&
          isDefinition && info.isUnsafe && !info.isPartial &&
          ownerSourceHash == acceptedSourceHash
        if info.isUnsafe && !knownRuntime then
          violations := violations.push s!"unsafe declaration: {name}"
        if info.isPartial then
          violations := violations.push s!"partial declaration: {name}"
        match info with
        | .axiomInfo _ => violations := violations.push s!"new axiom: {name}"
        | _ => pure ()
        let axioms ← collectAxioms name
        for ax in axioms do
          unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
            violations := violations.push s!"unapproved axiom {ax} in {name}"
        let referencesRuntime := match info.value? true with
          | some value => value.getUsedConstants.contains runtimeName
          | none => false
        let isTheorem := match info with
          | .thmInfo _ => true
          | _ => false
        if isTheorem && referencesRuntime then
          violations := violations.push s!"theorem directly references unsafe runtime helper: {name}"
        let type ← liftTermElabM do Meta.ppExpr info.type
        let kind := match info with
          | .thmInfo _ => "theorem"
          | .defnInfo _ => "definition"
          | .opaqueInfo _ => "opaque"
          | .axiomInfo _ => "axiom"
          | .ctorInfo _ => "constructor"
          | .recInfo _ => "recursor"
          | .inductInfo _ => "inductive"
          | _ => "generated"
        let entry := Json.mkObj [
          ("module", toJson owner.toString), ("name", toJson name.toString),
          ("kind", toJson kind), ("type", toJson type.pretty),
          ("unsafe", toJson info.isUnsafe), ("partial", toJson info.isPartial),
          ("known_generated_runtime_helper", toJson knownRuntime),
          ("runtime_helper_owner_source_sha256", toJson ownerSourceHash),
          ("direct_value_reference_to_runtime_helper", toJson referencesRuntime),
          ("axioms", toJson (axioms.toList.map Name.toString))]
        logInfo m!"MATH_TRUST_DECL::{entry.compress}"
        count := count + 1
    else
      logInfo m!"MATH_TRUST_DEPENDENCY_MODULE::{owner}"
  logInfo m!"MATH_TRUST_COUNT::{count}"
  logInfo m!"MATH_TRUST_MODULE_COUNT::{moduleCount}"
  if moduleCount == 0 || count == 0 then throwError "empty project census"
  unless violations.isEmpty do
    throwError "project trust audit failed: {violations.toList}"

#audit_math_trust ""
