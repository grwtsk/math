# range_eq_top_of_isPurelyInseparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7023d90764a6bdaaf842affb7ad6b6d43cb96d98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97a26a9a-2772-830d-326d-4e0d54553ca5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f580d0b6-75dc-e462-f0c9-a2d07c770c4b",
  "kind": "theorem",
  "lexical_name": "range_eq_top_of_isPurelyInseparable",
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
  "slug": "range-eq-top-of-ispurelyinseparable--89f558285d1e5b7b68bf39d4",
  "source": {
    "blob": "7023d90764a6bdaaf842affb7ad6b6d43cb96d98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 158,
    "path": "GRWTSK/Algebra/Field/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89f558285d1e5b7b68bf39d426d66e6f54979782b9040bf02540ffdfba4955bc",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f580d0b6-75dc-e462-f0c9-a2d07c770c4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_eq_top_of_isPurelyInseparable
    [IsPurelyInseparable K L] : (algebraMap K L).range = ⊤ := by
  classical
  have : Nontrivial (L ⊗[K] L) := by
    rw [← not_subsingleton_iff_nontrivial, ← rank_zero_iff (R := K), rank_tensorProduct',
      mul_eq_zero, or_self, rank_zero_iff, not_subsingleton_iff_nontrivial]
    infer_instance
  rw [← top_le_iff]
  intro x _
  obtain ⟨n, hn⟩ := IsPurelyInseparable.pow_mem K (ringExpChar K) x
  have : ExpChar (L ⊗[K] L) (ringExpChar K) := by
    refine expChar_of_injective_ringHom (algebraMap K _).injective (ringExpChar K)
  have : (1 ⊗ₜ x - x ⊗ₜ 1 : L ⊗[K] L) ^ (ringExpChar K) ^ n = 0 := by
    rw [sub_pow_expChar_pow, TensorProduct.tmul_pow, one_pow, TensorProduct.tmul_pow, one_pow]
    obtain ⟨r, hr⟩ := hn
    rw [← hr, algebraMap_eq_smul_one, TensorProduct.smul_tmul, sub_self]
  have H : (1 ⊗ₜ x : L ⊗[K] L) = x ⊗ₜ 1 := by
    have inst : IsReduced (L ⊗[K] L) := isReduced_of_field L _
    exact sub_eq_zero.mp (IsNilpotent.eq_zero ⟨_, this⟩)
  by_cases h' : LinearIndependent K ![1, x]
  · have h := h'.linearIndepOn_id
    let S := h.extend (Set.subset_univ _)
    let a : S := ⟨1, h.subset_extend _ (by simp)⟩
    have ha : Basis.extend h a = 1 := by simp [a]
    let b : S := ⟨x, h.subset_extend _ (by simp)⟩
    have hb : Basis.extend h b = x := by simp [b]
    by_cases e : a = b
    · obtain rfl : 1 = x := congr_arg Subtype.val e
      exact ⟨1, map_one _⟩
    have := DFunLike.congr_fun
      (DFunLike.congr_arg ((Basis.extend h).tensorProduct (Basis.extend h)).repr H) (a, b)
    simp only [Basis.tensorProduct_repr_tmul_apply, ← ha, ← hb, Basis.repr_self, smul_eq_mul,
      Finsupp.single_apply, e, Ne.symm e, ↓reduceIte, mul_one, mul_zero, one_ne_zero] at this
  · rw [LinearIndependent.pair_iff] at h'
    simp only [not_forall, not_and, exists_prop] at h'
    obtain ⟨a, b, e, hab⟩ := h'
    have : IsUnit b := by
      rw [isUnit_iff_ne_zero]
      rintro rfl
      rw [zero_smul, ← algebraMap_eq_smul_one, add_zero,
        (injective_iff_map_eq_zero' _).mp (algebraMap K L).injective] at e
      cases hab e rfl
    use (-this.unit⁻¹ * a)
    rw [map_mul, ← Algebra.smul_def, algebraMap_eq_smul_one, eq_neg_iff_add_eq_zero.mpr e,
      smul_neg, neg_smul, neg_neg, smul_smul, this.val_inv_mul, one_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7023d90764a6bdaaf842affb7ad6b6d43cb96d98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
