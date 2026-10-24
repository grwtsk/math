# auditMathTrust

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66d501b1e6601ae329d97ab8b7eccf07143fa7fbbd3c0f2a946ffd5299dcc8ce",
  "kind": "def",
  "lexical_name": "auditMathTrust",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "auditmathtrust--f34944e5682c7812ff40f682",
  "source": {
    "blob": "717b30d74a420f15d9d2c04c86c1ff55998069d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f34944e5682c7812ff40f682ada2e52ca67d9637c8709a360b637d4ad1b0769f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/Checks/OwnerAudit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66d501b1e6601ae329d97ab8b7eccf07143fa7fbbd3c0f2a946ffd5299dcc8ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def auditMathTrust (ownerSourceHash profilePermission : String) : CommandElabM Unit := do
  let env ← getEnv
  let owners := env.header.moduleNames
  unless env.header.moduleData.size == owners.size do
    throwError "incomplete module ownership table"
  let runtimeName := `GRWTSK.Algebra.orderedProduct._unsafe_rec
  let runtimeOwner := `GRWTSK.Algebra.OrderedProduct
  let acceptedSourceHash := "97997c1246d32731c34a6decf10d3cb4a90d0c28281e174ab28fd4abe4c6574d"
  let acceptedProfile := "152bb08f88cf17eb7b190c048d0e4a82fdbde2d01696701d24b5ddc7c8aa351b"
  unless profilePermission.isEmpty || profilePermission == acceptedProfile do
    throwError "unapproved generated-partial profile permission"
  let profileEnabled := profilePermission == acceptedProfile
  if profileEnabled && !ownerSourceHash.isEmpty then
    throwError "legacy and generated-partial runtime profiles are mutually exclusive"
  let referenceNames := if profileEnabled then
    generatedPartialRuntimeEntries.map (·.helper) else #[runtimeName]
  let mut violations : Array String := #[]
  if profileEnabled then
    for entry in generatedPartialRuntimeEntries do
      unless owners.contains entry.owner do
        violations := violations.push s!"missing generated-partial owner: {entry.owner}"
      match env.find? entry.helper with
      | some info =>
          unless generatedPartialPairIsValid env entry.owner info entry do
            violations := violations.push s!"invalid generated-partial pair: {entry.helper}"
      | none =>
          violations := violations.push s!"missing generated-partial helper: {entry.helper}"
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
        -- Only an explicit exact entry can qualify. A suffix is insufficient.
        let legacyKnownRuntime := !profileEnabled && name == runtimeName &&
          owner == runtimeOwner && isDefinition && info.isUnsafe &&
          !info.isPartial && ownerSourceHash == acceptedSourceHash
        let profileKnownRuntime := profileEnabled &&
          (generatedPartialRuntimeEntries.any fun entry =>
            generatedPartialPairIsValid env owner info entry)
        let knownRuntime := legacyKnownRuntime || profileKnownRuntime
        let emittedOwnerHash :=
          if profileEnabled then
            match generatedPartialRuntimeEntries.find? (fun entry => entry.owner == owner) with
            | some entry => entry.ownerSourceHash
            | none => ""
          else
            ownerSourceHash
        if info.isUnsafe && !knownRuntime then
          violations := violations.push s!"unsafe declaration: {name}"
        if info.isPartial && !profileKnownRuntime then
          violations := violations.push s!"partial declaration: {name}"
        match info with
        | .axiomInfo _ => violations := violations.push s!"new axiom: {name}"
        | _ => pure ()
        let axioms ← collectAxioms name
        for ax in axioms do
          unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
            violations := violations.push s!"unapproved axiom {ax} in {name}"
        -- Existing JSON field is retained. In the optional profile it means
        -- direct TYPE OR VALUE references to any of the 15 exact helpers.
        -- In the legacy/default mode its original value-only meaning remains.
        let referencesRuntime := referenceNames.any fun helperName =>
          (profileEnabled && info.type.getUsedConstants.contains helperName) ||
          match info.value? true with
          | some value => value.getUsedConstants.contains helperName
          | none => false
        if profileEnabled && referencesRuntime &&
            generatedPartialRuntimeEntries.any (fun entry => entry.original == name) then
          violations := violations.push s!"paired safe original directly references runtime helper: {name}"
        let isTheorem := match info with
          | .thmInfo _ => true
          | _ => false
        if isTheorem && referencesRuntime then
          violations := violations.push s!"theorem directly references selected runtime helper: {name}"
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
          ("runtime_helper_owner_source_sha256", toJson emittedOwnerHash),
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

-- Preserve the one-string default/historical command exactly at its call site.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Moebius/Checks/OwnerAudit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717b30d74a420f15d9d2c04c86c1ff55998069d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
