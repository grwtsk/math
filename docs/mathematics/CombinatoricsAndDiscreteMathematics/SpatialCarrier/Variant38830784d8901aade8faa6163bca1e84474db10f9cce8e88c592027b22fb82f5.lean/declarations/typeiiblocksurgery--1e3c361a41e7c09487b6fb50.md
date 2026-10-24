# TypeIIBlockSurgery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c082f7656139e9c3f62b68886377b19f8f70e4696d1e15ab61428a848a4ad96e",
  "kind": "structure",
  "lexical_name": "TypeIIBlockSurgery",
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
  "slug": "typeiiblocksurgery--1e3c361a41e7c09487b6fb50",
  "source": {
    "blob": "2a9acc30a2b29463428075efdd4473a25e8eddf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 325,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e3c361a41e7c09487b6fb502fa99c1ad78bbc8917f3be1c30df27dd9d755e5f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c082f7656139e9c3f62b68886377b19f8f70e4696d1e15ab61428a848a4ad96e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypeIIBlockSurgery
    (N : ℕ)
    {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    (cutoffMatrix : ℕ → Matrix Left Right ℂ)
    (spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)) where
  Child : Type
  childFintype : Fintype Child
  childDecidableEq : DecidableEq Child
  leftBlock : Left → Child
  rightBlock : Right → Child
  leftBlock_surjective : Function.Surjective leftBlock
  rightBlock_surjective : Function.Surjective rightBlock
  blockMatrix : Child → ℕ → Matrix Left Right ℂ
  blockMatrix_support : ∀ child x left right,
    blockMatrix child x left right ≠ 0 →
      leftBlock left = child ∧ rightBlock right = child
  crossMatrix : ℕ → Matrix Left Right ℂ
  cutoff_decomposition : ∀ x,
    cutoffMatrix x = ∑ child, blockMatrix child x + crossMatrix x
  inducedSpatialCut : ValidCombinatorialNeck spatialCarrier.carrierComplex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9acc30a2b29463428075efdd4473a25e8eddf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
