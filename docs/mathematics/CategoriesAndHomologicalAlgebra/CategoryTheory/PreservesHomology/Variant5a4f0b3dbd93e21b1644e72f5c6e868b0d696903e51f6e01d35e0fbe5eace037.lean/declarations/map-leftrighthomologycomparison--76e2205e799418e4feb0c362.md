# map_leftRightHomologyComparison'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "088b1d6175c03611a2b0d71f743fa506b25ae7d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09625aae-4e9c-6630-50fe-8956c187e21e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec2a94de-d2fe-138e-c986-f766b681b952",
  "kind": "lemma",
  "lexical_name": "map_leftRightHomologyComparison'",
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
  "slug": "map-leftrighthomologycomparison--76e2205e799418e4feb0c362",
  "source": {
    "blob": "088b1d6175c03611a2b0d71f743fa506b25ae7d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 253,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76e2205e799418e4feb0c3621ebf5ab14e7a9a4a8396a2c762537c51c3829e18",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec2a94de-d2fe-138e-c986-f766b681b952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_leftRightHomologyComparison' (F : C ⥤ D) [F.PreservesZeroMorphisms]
    (hₗ : S.LeftHomologyData) (hᵣ : S.RightHomologyData) [hₗ.IsPreservedBy F] [hᵣ.IsPreservedBy F] :
    F.map (leftRightHomologyComparison' hₗ hᵣ) =
      leftRightHomologyComparison' (hₗ.map F) (hᵣ.map F) := by
  apply Cofork.IsColimit.hom_ext (hₗ.map F).hπ
  apply Fork.IsLimit.hom_ext (hᵣ.map F).hι
  trans F.map (hₗ.i ≫ hᵣ.p)
  · simp [← Functor.map_comp]
  trans (hₗ.map F).π ≫ ShortComplex.leftRightHomologyComparison'
    (hₗ.map F) (hᵣ.map F) ≫ (hᵣ.map F).ι
  · rw [ShortComplex.π_leftRightHomologyComparison'_ι]; simp
  · simp

end ShortComplex

namespace Functor

variable (F : C ⥤ D) [PreservesZeroMorphisms F] (S : ShortComplex C) {S₁ S₂ : ShortComplex C}

/-- A functor preserves the left homology of a short complex `S` if it preserves all the
left homology data of `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `088b1d6175c03611a2b0d71f743fa506b25ae7d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
