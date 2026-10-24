# exists_isTranscendenceBasis_and_isSeparable_of_linearIndepOn_pow_of_essFiniteType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec519bcb-0854-5234-7214-2916b16f11c3",
  "kind": "lemma",
  "lexical_name": "exists_isTranscendenceBasis_and_isSeparable_of_linearIndepOn_pow_of_essFiniteType",
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
  "slug": "exists-istranscendencebasis-and-isseparable-of-linearindepon-pow-of-essf--40ebf3d0ae26a8a55343fd4e",
  "source": {
    "blob": "6929c70a9a539c04177ddfd14817da438dde16c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 297,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40ebf3d0ae26a8a55343fd4eeba19e84db1928940f20e5342925cf30dfdbbe66",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec519bcb-0854-5234-7214-2916b16f11c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isTranscendenceBasis_and_isSeparable_of_linearIndepOn_pow_of_essFiniteType
    [Algebra.EssFiniteType k K] :
    ∃ s : Finset K, IsTranscendenceBasis k ((↑) : s → K) ∧
      Algebra.IsSeparable (adjoin k (s : Set K)) K := by
  have ⟨s, hs, Hs⟩ := exists_finset_maximalFor_isTranscendenceBasis_separableClosure k K
  refine ⟨s, hs, ⟨fun n ↦ of_not_not fun hn ↦ ?_⟩⟩
  have hns : n ∉ s := fun h ↦ hn (le_restrictScalars_separableClosure _ (subset_adjoin _ _ h))
  have ⟨i, hi₁, hi₂⟩ := exists_isTranscendenceBasis_and_isSeparable_of_linearIndepOn_pow'
    p hp (a := id) H s n hs hns
  rw [Set.image_id] at hi₂
  refine not_lt_iff_le_imp_ge.mpr (Hs hi₁) (SetLike.lt_iff_le_and_exists.mpr ⟨?_, n, ?_, hn⟩)
  · rw [separableClosure_le_separableClosure_iff, adjoin_le_iff]
    intro x hx
    obtain rfl | ne := eq_or_ne x i
    exacts [hi₂, le_restrictScalars_separableClosure _ (subset_adjoin _ _ ⟨.inr hx, ne⟩)]
  · obtain rfl | ne := eq_or_ne n i
    exacts [hi₂, le_restrictScalars_separableClosure _ (subset_adjoin _ _ ⟨.inl rfl, ne⟩)]

end

set_option backward.isDefEq.respectTransparency.types false in
variable (k K) in
/-- Any finitely generated extension over perfect fields are separably generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6929c70a9a539c04177ddfd14817da438dde16c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
