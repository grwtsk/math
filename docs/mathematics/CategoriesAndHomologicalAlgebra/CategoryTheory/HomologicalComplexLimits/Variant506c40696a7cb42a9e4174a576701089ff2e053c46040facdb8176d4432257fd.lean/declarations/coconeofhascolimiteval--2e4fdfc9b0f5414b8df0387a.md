# coconeOfHasColimitEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5403cd90c4e748e623777dad17d8043c2063281e568e4026b8b826fe7cd05d07",
  "kind": "def",
  "lexical_name": "coconeOfHasColimitEval",
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
  "slug": "coconeofhascolimiteval--2e4fdfc9b0f5414b8df0387a",
  "source": {
    "blob": "a9365248eb5be6b7b424abdc76bd4192d384a9e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e4fdfc9b0f5414b8df0387a297d56463816b74f4fe8045a61c020998a03bf0a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5403cd90c4e748e623777dad17d8043c2063281e568e4026b8b826fe7cd05d07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coconeOfHasColimitEval : Cocone F where
  pt :=
    { X := fun n => colimit (F ⋙ eval C c n)
      d := fun n m => colimMap { app := fun j => (F.obj j).d n m }
      shape := fun {n m} h => by
        ext j
        rw [ι_colimMap]
        dsimp
        rw [(F.obj j).shape _ _ h, zero_comp, comp_zero] }
  ι :=
    { app := fun j => { f := fun n => colimit.ι (F ⋙ eval C c n) j }
      naturality := fun i j φ => by
        ext n
        dsimp
        erw [colimit.w (F ⋙ eval C c n) φ]
        rw [comp_id] }

/-- The cocone `coconeOfHasLimitEval F` is colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9365248eb5be6b7b424abdc76bd4192d384a9e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
