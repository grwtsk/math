import GRWTSK
import Lean
import Lean.Compiler.Old

open Lean Elab Command

/- Source-qualified compiler-shaped runtime implementations, not authenticated
compiler provenance: the pinned compiler name parser and recursive tags can be
forged. No declaration is enrolled merely because its name has a suffix.
This exact curated table is bound to frozen owner-source bytes by the driver.
Fixture entries below are separately frozen hostile/positive test profiles. -/
private def mathTrustProjectRuntimeProfiles : Array (Name × Name × Name × String) := #[
  (`GRWTSK.Algebra.OrderedProduct, `GRWTSK.Algebra.orderedProduct._unsafe_rec, `GRWTSK.Algebra.orderedProduct, "97997c1246d32731c34a6decf10d3cb4a90d0c28281e174ab28fd4abe4c6574d"),
  (`GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.QuotaDiscrepancy, `GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.count._unsafe_rec, `GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.count, "851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f"),
  (`GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.QuotaDiscrepancy, `GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.clock._unsafe_rec, `GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.clock, "851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f"),
  (`GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.QuotaDiscrepancy, `GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.debt._unsafe_rec, `GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.debt, "851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f"),
  (`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators, `GRWTSK.RiemannHypothesis.BranchSequenceRealization.denominator._unsafe_rec, `GRWTSK.RiemannHypothesis.BranchSequenceRealization.denominator, "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03"),
  (`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators, `GRWTSK.RiemannHypothesis.BranchSequenceRealization.spikeDenominator._unsafe_rec, `GRWTSK.RiemannHypothesis.BranchSequenceRealization.spikeDenominator, "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03"),
  (`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators, `GRWTSK.RiemannHypothesis.BranchSequenceRealization.numerator._unsafe_rec, `GRWTSK.RiemannHypothesis.BranchSequenceRealization.numerator, "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03"),
  (`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators, `GRWTSK.RiemannHypothesis.BranchSequenceRealization.batchClock._unsafe_rec, `GRWTSK.RiemannHypothesis.BranchSequenceRealization.batchClock, "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03"),
  (`GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderTheory.ClosureOperators.FiniteDependencyClosure, `GRWTSK.ProofHorizon.CorkscrewChamberCap.affectedClosure._unsafe_rec, `GRWTSK.ProofHorizon.CorkscrewChamberCap.affectedClosure, "e78778c5b623abadfc23a668517cb4b1652ef6365962263b8440f8a156af5dec"),
  (`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleSystems, `GRWTSK.ProofHorizon.CorkscrewChamberCap.routeClosureFrom._unsafe_rec, `GRWTSK.ProofHorizon.CorkscrewChamberCap.routeClosureFrom, "6bbe978cc4ba18d4bfefbadab3a7b256cdec7dffb6b7de9da18a688d9c4fa986"),
  (`GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples, `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.totalRoundCost._unsafe_rec, `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.totalRoundCost, "155e4fd202fb590cbdbdf4cb26100c17e72452418be0497ba37b301f662b3e42"),
  (`GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples, `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.sessionRun._unsafe_rec, `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.sessionRun, "155e4fd202fb590cbdbdf4cb26100c17e72452418be0497ba37b301f662b3e42"),
  (`GRWTSK.Algebra.LinearAlgebra.CocycleProduct, `GRWTSK.Algebra.LinearAlgebra.CocycleProduct.cocycleProduct._unsafe_rec, `GRWTSK.Algebra.LinearAlgebra.CocycleProduct.cocycleProduct, "64ebbd43849bfffee9f92d74f271c55a1ffcba28c1b7debcf491a901ddfff67b"),
  (`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.PrefixCoverage, `GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.workClock._unsafe_rec, `GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.workClock, "77ed7277b4519ff8fb955e215664ac6d0c22a78e95e38e9ee16d18e6b226a5b3"),
  (`GRWTSK.NumberTheory.ContinuedFractions.FrequencyRealization, `GRWTSK.RiemannHypothesis.BranchFrequencyExistence.finiteTail._unsafe_rec, `GRWTSK.RiemannHypothesis.BranchFrequencyExistence.finiteTail, "fe53414320a78931bf2add8a168544df853ce7bd10b82b2cf257082ceb77e4be")
]

private def mathTrustFixtureRuntimeProfiles : Array (Name × Name × Name × String) := #[
  (`GRWTSK.Fixture.RuntimeStructural, `GRWTSK.Fixture.RuntimeStructural.depth._unsafe_rec, `GRWTSK.Fixture.RuntimeStructural.depth, "0be8353e896218d8c79446f0bdd1a1978c365c2e54d8ca22a60450df28c14afe"),
  (`GRWTSK.Fixture.RuntimeWellFounded, `GRWTSK.Fixture.RuntimeWellFounded.depth._unsafe_rec, `GRWTSK.Fixture.RuntimeWellFounded.depth, "61427aa9348975d7932d9d8114288b41f122bfa863f06954731874c35d710f78"),
  (`GRWTSK.Fixture.OpaqueParent, `GRWTSK.Fixture.OpaqueParent.base._unsafe_rec, `GRWTSK.Fixture.OpaqueParent.base, "b80924c9bebed2ec3ab30eee89657d5bf53c944735088cc2594e653d4afc8bcf"),
  (`GRWTSK.Fixture.MissingParent, `GRWTSK.Fixture.MissingParent.base._unsafe_rec, `GRWTSK.Fixture.MissingParent.base, "20e94fc3e08f9aceb6d565710ed1a605d82f9e518abd88f9c085b7cc2d0e86f2"),
  (`GRWTSK.Fixture.UnsafeParent, `GRWTSK.Fixture.UnsafeParent.base._unsafe_rec, `GRWTSK.Fixture.UnsafeParent.base, "df2f07c889b050fdc0697e17a2e85f5081154676453d4dc8082f6160ad5f6e66"),
  (`GRWTSK.Fixture.PartialParent, `GRWTSK.Fixture.PartialParent.base._unsafe_rec, `GRWTSK.Fixture.PartialParent.base, "d6d0e6d2df7224aa465a482bee0dd9fbed125680baaff36c4c4601d083a5f0fd"),
  (`GRWTSK.Fixture.TypeMismatch, `GRWTSK.Fixture.TypeMismatch.base._unsafe_rec, `GRWTSK.Fixture.TypeMismatch.base, "e873192efa8d3fd6d11777e790286aa1da14124353bb708c0ef83ce254c547d1"),
  (`GRWTSK.Fixture.LevelMismatch, `GRWTSK.Fixture.LevelMismatch.base._unsafe_rec, `GRWTSK.Fixture.LevelMismatch.base, "ba4f09b6016aab99d0ff331a09b283b46807decf5e0e28939ff62245e6219163"),
  (`GRWTSK.Fixture.TypeReference, `GRWTSK.Fixture.TypeReference.base._unsafe_rec, `GRWTSK.Fixture.TypeReference.base, "63278cd4a8843550a156f3632e6fef29f4c56ed3ecfe89944425e45e1915ba13"),
  (`GRWTSK.Fixture.ValueReference, `GRWTSK.Fixture.ValueReference.base._unsafe_rec, `GRWTSK.Fixture.ValueReference.base, "a9eebc3dd1eb6b741bb7339302e973ad207cdcc3ce798464079e79d723cbd9d6"),
  (`GRWTSK.Fixture.ForeignHelper, `GRWTSK.Fixture.ForeignParent.base._unsafe_rec, `GRWTSK.Fixture.ForeignParent.base, "09c4a4be9134610061ac5118c29eeb82856a0de2abc3ac3dfb440683208545d6")
]

elab "#audit_math_trust" ownerSources:str : command => do
  let env ← getEnv
  let owners := env.header.moduleNames
  unless env.header.moduleData.size == owners.size do
    throwError "incomplete module ownership table"
  let sourceText := ownerSources.getString
  let sourceJson ← match Json.parse (if sourceText.isEmpty then "{}" else sourceText) with
    | .ok value => pure value
    | .error error => throwError "invalid source profile JSON: {error}"
  let scope := (sourceJson.getObjValAs? String "scope").toOption.getD "project"
  let runtimeProfiles ← match scope with
    | "project" => pure mathTrustProjectRuntimeProfiles
    | "native-fixtures" => pure mathTrustFixtureRuntimeProfiles
    | _ => throwError "unrecognized runtime profile scope"
  let observedSources := (sourceJson.getObjVal? "sources").toOption.getD (Json.mkObj [])
  let sourceHash := fun owner => (observedSources.getObjValAs? String owner.toString).toOption.getD ""
  let ownerOf := fun name => (env.getModuleIdxFor? name).bind fun idx => owners[idx]?
  let mut violations : Array String := #[]
  let mut qualified : Array Name := #[]
  for (owner, name, parentName, acceptedHash) in runtimeProfiles do
    if owners.contains owner then
      let profileMatches : Bool := match env.find? name, env.find? parentName with
        | some (.defnInfo helper), some (.defnInfo parent) =>
          Compiler.isUnsafeRecName? name == some parentName &&
          helper.safety == .partial && parent.safety == .safe &&
          ownerOf name == some owner && ownerOf parentName == some owner &&
          helper.type == parent.type && helper.levelParams == parent.levelParams &&
          sourceHash owner == acceptedHash
        | _, _ => false
      if profileMatches then
        qualified := qualified.push name
      else
        violations := violations.push s!"runtime profile mismatch: {name}"
  let mut count : Nat := 0
  let mut moduleCount : Nat := 0
  for (data, owner) in env.header.moduleData.toList.zip owners.toList do
    if (`GRWTSK).isPrefixOf owner then
      moduleCount := moduleCount + 1
      let declarations := data.constants.toList.filter fun info => ownerOf info.name == some owner
      logInfo m!"MATH_TRUST_MODULE::{(Json.mkObj [
        ("module", toJson owner.toString),
        ("declarations", toJson declarations.length)]).compress}"
      for info in declarations do
        let name := info.name
        let knownRuntime := qualified.contains name
        if info.isUnsafe then violations := violations.push s!"unsafe declaration: {name}"
        if info.isPartial && !knownRuntime then violations := violations.push s!"partial declaration: {name}"
        match info with
        | .axiomInfo _ => violations := violations.push s!"new axiom: {name}"
        | _ => pure ()
        let axioms ← collectAxioms name
        for ax in axioms do
          unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
            violations := violations.push s!"unapproved axiom {ax} in {name}"
        let typeReferences := qualified.filter fun helper => info.type.getUsedConstants.contains helper
        let valueReferences := match info.value? true with
          | some value => qualified.filter fun helper => value.getUsedConstants.contains helper
          | none => #[]
        if !knownRuntime && !typeReferences.isEmpty then
          violations := violations.push s!"non-helper type references runtime helper: {name}"
        if !knownRuntime && !valueReferences.isEmpty then
          violations := violations.push s!"non-helper value references runtime helper: {name}"
        let compilerParent := Compiler.isUnsafeRecName? name
        let profile := runtimeProfiles.find? fun (o, n, _, _) => o == owner && n == name
        let profileHash := profile.map (fun (_, _, _, h) => h) |>.getD ""
        let typeEqual := match compilerParent.bind env.find? with
          | some parent => info.type == parent.type
          | none => false
        let levelsEqual := match compilerParent.bind env.find? with
          | some parent => info.levelParams == parent.levelParams
          | none => false
        let sameOwner := match compilerParent with
          | some parent => ownerOf parent == some owner
          | none => false
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
          ("level_params", toJson (info.levelParams.map Name.toString)),
          ("unsafe", toJson info.isUnsafe), ("partial", toJson info.isPartial),
          ("known_generated_runtime_helper", toJson knownRuntime),
          ("mathematical_admission", toJson (!knownRuntime && !info.isPartial && !info.isUnsafe && kind != "axiom" &&
            axioms.toList.all (fun ax => #[`propext, `Classical.choice, `Quot.sound].contains ax) &&
            typeReferences.isEmpty && valueReferences.isEmpty)),
          ("runtime_helper_parent", toJson (compilerParent.map Name.toString)),
          ("runtime_helper_same_owner", toJson sameOwner),
          ("runtime_helper_type_equal", toJson typeEqual),
          ("runtime_helper_level_params_equal", toJson levelsEqual),
          ("runtime_helper_profile_source_sha256", toJson profileHash),
          ("runtime_helper_owner_source_sha256", toJson (sourceHash owner)),
          ("direct_type_references_to_runtime_helpers", toJson (typeReferences.toList.map Name.toString)),
          ("direct_value_references_to_runtime_helpers", toJson (valueReferences.toList.map Name.toString)),
          ("direct_value_reference_to_runtime_helper", toJson (!valueReferences.isEmpty)),
          ("axioms", toJson (axioms.toList.map Name.toString))]
        logInfo m!"MATH_TRUST_DECL::{entry.compress}"
        count := count + 1
    else
      logInfo m!"MATH_TRUST_DEPENDENCY_MODULE::{owner}"
  logInfo m!"MATH_TRUST_COUNT::{count}"
  logInfo m!"MATH_TRUST_MODULE_COUNT::{moduleCount}"
  if moduleCount == 0 || count == 0 then throwError "empty project census"
  for violation in violations do
    logInfo m!"MATH_TRUST_VIOLATION::{(toJson violation).compress}"
  unless violations.isEmpty do
    throwError "project trust audit failed: {violations.toList}"

#audit_math_trust ""
