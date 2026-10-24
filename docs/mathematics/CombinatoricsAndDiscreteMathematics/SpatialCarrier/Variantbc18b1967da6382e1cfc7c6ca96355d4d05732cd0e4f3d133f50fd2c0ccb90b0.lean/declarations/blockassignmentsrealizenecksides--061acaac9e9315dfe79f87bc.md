# BlockAssignmentsRealizeNeckSides

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f5a495a88f7af13be2564d396c4b1ffdd5d2e53125afc158c5f7a7adec4eb80",
  "kind": "structure",
  "lexical_name": "BlockAssignmentsRealizeNeckSides",
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
  "slug": "blockassignmentsrealizenecksides--061acaac9e9315dfe79f87bc",
  "source": {
    "blob": "a5dea29babee5da1beb4af2489f27ff218cf3926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 368,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:061acaac9e9315dfe79f87bca9090fe4fb65f93a2f19ecd8c7839ee0ac5be5ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f5a495a88f7af13be2564d396c4b1ffdd5d2e53125afc158c5f7a7adec4eb80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BlockAssignmentsRealizeNeckSides
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier) where
  childSide : surgery.Child → NeckSide
  childSide_surjective : Function.Surjective childSide
  leftCarrier_subset_side : ∀ left : Left,
    (spatialCarrier.atomCarrier (Sum.inl left)).cells ⊆
      (surgery.inducedSpatialCut.sideCarrier
        (childSide (surgery.leftBlock left))).cells
  rightCarrier_subset_side : ∀ right : Right,
    (spatialCarrier.atomCarrier (Sum.inr right)).cells ⊆
      (surgery.inducedSpatialCut.sideCarrier
        (childSide (surgery.rightBlock right))).cells

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5dea29babee5da1beb4af2489f27ff218cf3926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
