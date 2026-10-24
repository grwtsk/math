# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:effa04da3b2aab3b71023e9a824be36fd733d00908d50fc77a9c53d8091bde8a",
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
  "slug": "elab--f0b3b5207ad8f2c8d21b8ba7",
  "source": {
    "blob": "fabf44bbdee9ce91ca815f90f95387299f38c3a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 223,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Declarations.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0b3b5207ad8f2c8d21b8ba70a14b18351e95481e87014c93530d859464a5c83",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Declarations__SourceOccurrence333ac66a17c57d19154ebc03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:effa04da3b2aab3b71023e9a824be36fd733d00908d50fc77a9c53d8091bde8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "#audit_ten_martini" : command => do
  let env ← getEnv
  let owners := env.header.moduleNames
  unless env.header.moduleData.size == owners.size do throwError "incomplete ownership table"
  let decls := (env.header.moduleData.toList.zip owners.toList).flatMap fun (data, owner) =>
    if #[`GRWTSK.LinearAlgebra.SchrodingerTransfer, `GRWTSK.LinearAlgebra.Sturmian,
        `GRWTSK.Spectral.GapTransport, `GRWTSK.Spectral.MatrixCountComparison,
        `GRWTSK.Spectral.SturmianFiniteVolume, `GRWTSK.Spectral.FreeDirichletSpectrum,
        `GRWTSK.Spectral.FreeIDS, `GRWTSK.Spectral.DirichletCut,
        `GRWTSK.Spectral.SturmianBlockCounts].contains owner then
      (data.constants.toList.filter fun info =>
        match env.getModuleIdxFor? info.name with
        | some idx => owners[idx]! == owner
        | none => false).map fun info => (owner, info)
    else []
  if decls.isEmpty then throwError "empty source family"
  for (owner, info) in decls do
    if info.isUnsafe || info.isPartial then throwError "unsafe or partial declaration {info.name}"
    match info with
    | .axiomInfo _ => throwError "new axiom {info.name}"
    | _ => pure ()
    let axioms ← collectAxioms info.name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unexpected axiom {ax} in {info.name}"
    let type ← liftTermElabM do Meta.ppExpr info.type
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | _ => "generated"
    logInfo m!"TEN_MARTINI_DECL::{(Json.mkObj [
      ("module", toJson owner.toString), ("name", toJson info.name.toString),
      ("kind", toJson kind), ("type", toJson type.pretty),
      ("axioms", toJson (axioms.toList.map Name.toString))]).compress}"
  logInfo m!"TEN_MARTINI_COUNT::{decls.length}"

#audit_ten_martini
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Declarations__SourceOccurrence333ac66a17c57d19154ebc03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Declarations.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fabf44bbdee9ce91ca815f90f95387299f38c3a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
