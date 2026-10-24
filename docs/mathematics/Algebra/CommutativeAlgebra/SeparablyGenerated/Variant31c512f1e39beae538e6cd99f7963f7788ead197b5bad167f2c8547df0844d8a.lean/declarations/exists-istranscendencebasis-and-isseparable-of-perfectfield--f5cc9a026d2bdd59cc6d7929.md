# exists_isTranscendenceBasis_and_isSeparable_of_perfectField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:134d465e-ec8d-36c2-aee2-b67571ae4bff",
  "kind": "lemma",
  "lexical_name": "exists_isTranscendenceBasis_and_isSeparable_of_perfectField",
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
  "slug": "exists-istranscendencebasis-and-isseparable-of-perfectfield--f5cc9a026d2bdd59cc6d7929",
  "source": {
    "blob": "6929c70a9a539c04177ddfd14817da438dde16c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 320,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5cc9a026d2bdd59cc6d7929d9afdbc55c72f9fb4b7abe75eb577618170777d0",
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

Occurrence: `result:134d465e-ec8d-36c2-aee2-b67571ae4bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isTranscendenceBasis_and_isSeparable_of_perfectField
    [PerfectField k] [Algebra.EssFiniteType k K] :
    ∃ s : Finset K, IsTranscendenceBasis k ((↑) : s → K) ∧
      Algebra.IsSeparable (IntermediateField.adjoin k (s : Set K)) K := by
  obtain _ | ⟨p, hp, hpk⟩ := CharP.exists' k
  · obtain ⟨s, hs⟩ := IntermediateField.fg_top k K
    have : Algebra.IsAlgebraic (Algebra.adjoin k (s : Set K)) K := by
      rw [← isAlgebraic_adjoin_iff_top, hs, Algebra.isAlgebraic_iff_isIntegral]
      exact Algebra.isIntegral_of_surjective topEquiv.surjective
    obtain ⟨t, hts, ht⟩ := exists_isTranscendenceBasis_subset (R := k) (s : Set K)
    lift t to Finset K using s.finite_toSet.subset hts
    have : Algebra.IsAlgebraic (IntermediateField.adjoin k (t : Set K)) K := by
      convert! ht.isAlgebraic_field <;> simp
    exact ⟨t, ht, inferInstance⟩
  have : ExpChar k p := .prime hp.out
  have : CharP K p := .of_ringHom_of_ne_zero (algebraMap k K) p hp.out.ne_zero
  refine exists_isTranscendenceBasis_and_isSeparable_of_linearIndepOn_pow_of_essFiniteType
    p hp.out fun s hs ↦ ?_
  apply hs.map_of_injective_injective (frobeniusEquiv k p).symm (frobenius K p).toAddMonoidHom <;>
    simp [frobenius, Algebra.smul_def, mul_pow, ← map_pow, frobeniusEquiv_symm_pow]

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6929c70a9a539c04177ddfd14817da438dde16c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
