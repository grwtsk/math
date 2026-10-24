# range_eq_top_of_isPurelyInseparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca3757bd-bc76-3fd9-0b16-1d7bad2ff6ac",
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
  "slug": "range-eq-top-of-ispurelyinseparable--6fef497d868c9d0261b28add",
  "source": {
    "blob": "31ef4a50a74def4f464062a9072a2cabc5afefd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 166,
    "path": "GRWTSK/Algebra/Field/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fef497d868c9d0261b28add5ea19ace94105a05958073161082eb2cd53f39e5",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca3757bd-bc76-3fd9-0b16-1d7bad2ff6ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–211.

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

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ef4a50a74def4f464062a9072a2cabc5afefd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
