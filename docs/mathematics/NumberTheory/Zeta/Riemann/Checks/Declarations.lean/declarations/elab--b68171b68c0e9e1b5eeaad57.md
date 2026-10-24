# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6cbf5e9675b6c8c741fcfe49a69b8ee41371b8958719a41bb9a1802778c17cc",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--b68171b68c0e9e1b5eeaad57",
  "source": {
    "blob": "1c83964a4afbab07c53e5b3c0720592a92305c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 20,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Declarations.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b68171b68c0e9e1b5eeaad575b7ec087d024c58480ad705d1b1907a7f95e9fe7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/Declarations.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6cbf5e9675b6c8c741fcfe49a69b8ee41371b8958719a41bb9a1802778c17cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "#audit_rh_target" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let selectedOwners : Array Name := #[
    `GRWTSK.NumberTheory.Zeta.Riemann,
    `GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis,
    `GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions,
    `GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect,
    `GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry,
    `GRWTSK.NumberTheory.Zeta.Riemann.DefectCriterion,
    `GRWTSK.Analysis.Complex.CriticalReflection,
    `GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions
  ]
  for owner in selectedOwners do
    unless moduleNames.contains owner do
      throwError "missing declared RH owner: {owner}"
  let guardOwner := `GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions
  unless selectedOwners.contains guardOwner do
    throwError "required zero-exclusion owner is not selected"
  for name in #[`GRWTSK.RiemannHypothesis.trivial_zero_is_excluded,
                `GRWTSK.RiemannHypothesis.pole_is_excluded] do
    let some _ := env.find? name | throwError "missing exact zero-exclusion guard: {name}"
    let some index := env.getModuleIdxFor? name | throwError "missing guard ownership: {name}"
    unless moduleNames[index]! == guardOwner do
      throwError "zero-exclusion guard owner mismatch: {name}"
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, owner) =>
      if selectedOwners.contains owner then
        data.constants.toList.map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty RH declaration family"
  for (n, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {n}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {n}"
    | _ => pure ()
    let axioms ← collectAxioms n
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {n}"
    let type ← liftTermElabM do Meta.ppExpr info.type
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | .opaqueInfo _ => "opaque"
      | .ctorInfo _ => "constructor"
      | .recInfo _ => "recursor"
      | .inductInfo _ => "inductive"
      | _ => "other"
    let owner := moduleNames[(env.getModuleIdxFor? n).get!]!
    let entry := Json.mkObj [
      ("module", toJson owner.toString),
      ("name", toJson n.toString),
      ("kind", toJson kind),
      ("type", toJson type.pretty),
      ("axioms", toJson (axioms.toList.map Name.toString))]
    logInfo m!"RH_DECL::{entry.compress}"
  logInfo m!"RH_COUNT::{declarations.length}"

#audit_rh_target
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/Declarations.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/Declarations.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c83964a4afbab07c53e5b3c0720592a92305c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
