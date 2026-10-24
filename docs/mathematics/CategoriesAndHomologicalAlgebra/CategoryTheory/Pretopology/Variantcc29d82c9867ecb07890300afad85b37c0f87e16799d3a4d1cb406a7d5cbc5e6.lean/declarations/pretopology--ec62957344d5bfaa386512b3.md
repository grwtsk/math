# Pretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e51790ab249507c1be0f850ce2b9ad3233e90878a0795248fa0d1236aef058c",
  "kind": "structure",
  "lexical_name": "Pretopology",
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
  "slug": "pretopology--ec62957344d5bfaa386512b3",
  "source": {
    "blob": "93edd7f0fee9bec049bd90eab67b584cfaabf43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantcc29d82c9867ecb07890300afad85b37c0f87e16799d3a4d1cb406a7d5cbc5e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec62957344d5bfaa386512b3bfe79de039e6a2f5c56baa5cbb4a4874991bbdb5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantcc29d82c9867ecb07890300afad85b37c0f87e16799d3a4d1cb406a7d5cbc5e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e51790ab249507c1be0f850ce2b9ad3233e90878a0795248fa0d1236aef058c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Pretopology where
  /-- For all `X : C`, the coverings of `X` (sets of families of morphisms with target `X`) -/
  coverings : ∀ X : C, Set (Presieve X)
  has_isos : ∀ ⦃X Y⦄ (f : Y ⟶ X) [IsIso f], Presieve.singleton f ∈ coverings X
  pullbacks : ∀ ⦃X Y⦄ (f : Y ⟶ X) (S), S ∈ coverings X → pullbackArrows f S ∈ coverings Y
  transitive :
    ∀ ⦃X : C⦄ (S : Presieve X) (Ti : ∀ ⦃Y⦄ (f : Y ⟶ X), S f → Presieve Y),
      S ∈ coverings X → (∀ ⦃Y⦄ (f) (H : S f), Ti f H ∈ coverings Y) → S.bind Ti ∈ coverings X

namespace Pretopology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantcc29d82c9867ecb07890300afad85b37c0f87e16799d3a4d1cb406a7d5cbc5e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantcc29d82c9867ecb07890300afad85b37c0f87e16799d3a4d1cb406a7d5cbc5e6.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93edd7f0fee9bec049bd90eab67b584cfaabf43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
