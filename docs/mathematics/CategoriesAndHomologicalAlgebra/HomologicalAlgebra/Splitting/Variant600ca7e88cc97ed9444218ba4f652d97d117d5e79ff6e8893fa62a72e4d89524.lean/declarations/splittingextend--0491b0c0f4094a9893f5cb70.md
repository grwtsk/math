# splittingExtend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d01404cb0c4d5d761394160e43d1020bbb0d8eda1759380a62d6cb646d2428ae",
  "kind": "def",
  "lexical_name": "splittingExtend",
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
  "slug": "splittingextend--0491b0c0f4094a9893f5cb70",
  "source": {
    "blob": "5b0a9b97338ec20341b39500fc63fe4d3d5616e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 32,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Splitting/Variant600ca7e88cc97ed9444218ba4f652d97d117d5e79ff6e8893fa62a72e4d89524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0491b0c0f4094a9893f5cb702855537f8e43236b9196926cb4d85c188e3b4eb8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Splitting/Variant600ca7e88cc97ed9444218ba4f652d97d117d5e79ff6e8893fa62a72e4d89524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d01404cb0c4d5d761394160e43d1020bbb0d8eda1759380a62d6cb646d2428ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def splittingExtend (i₂ : ι₂) :
    ((S.map (e.extendFunctor C)).map (eval _ _ i₂)).Splitting :=
  if hi₂ : ∃ i₁, e.f i₁ = i₂ then
    .ofIso (σ _) (S.mapNatIso (e.extendFunctorCompEvalIso C hi₂.choose_spec).symm)
  else by
    refine .ofIsZero _ ?_ ?_ ?_
    all_goals exact isZero_extend_X _ _ _ (by tauto)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Splitting/Variant600ca7e88cc97ed9444218ba4f652d97d117d5e79ff6e8893fa62a72e4d89524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Splitting/Variant600ca7e88cc97ed9444218ba4f652d97d117d5e79ff6e8893fa62a72e4d89524.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0a9b97338ec20341b39500fc63fe4d3d5616e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
