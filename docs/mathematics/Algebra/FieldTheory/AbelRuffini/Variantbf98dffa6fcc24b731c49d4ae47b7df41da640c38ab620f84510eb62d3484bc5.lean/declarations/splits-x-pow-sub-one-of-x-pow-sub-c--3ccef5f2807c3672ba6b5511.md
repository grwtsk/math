# splits_X_pow_sub_one_of_X_pow_sub_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d1b5d48-242e-559a-b8d5-47b184b1c56c",
  "kind": "theorem",
  "lexical_name": "splits_X_pow_sub_one_of_X_pow_sub_C",
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
  "slug": "splits-x-pow-sub-one-of-x-pow-sub-c--3ccef5f2807c3672ba6b5511",
  "source": {
    "blob": "3e83b05f47b9548982f19e8ea3dde485ef684b25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 145,
    "path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ccef5f2807c3672ba6b55117f428ec8ccdd57c002d38135a872ad3afed504e6",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d1b5d48-242e-559a-b8d5-47b184b1c56c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_X_pow_sub_one_of_X_pow_sub_C {F : Type*} [Field F] {E : Type*} [Field E]
    (i : F →+* E) (n : ℕ) {a : F} (ha : a ≠ 0) (h : ((X ^ n - C a).map i).Splits) :
    ((X ^ n - 1 : F[X]).map i).Splits := by
  have ha' : i a ≠ 0 := mt ((injective_iff_map_eq_zero i).mp i.injective a) ha
  by_cases hn : n = 0
  · simp [hn]
  have hn' : 0 < n := pos_iff_ne_zero.mpr hn
  have hn'' : (X ^ n - C a).degree ≠ 0 :=
    ne_of_eq_of_ne (degree_X_pow_sub_C hn' a) (mt WithBot.coe_eq_coe.mp hn)
  obtain ⟨b, hb⟩ := Splits.exists_eval_eq_zero h (by rwa [degree_map])
  rw [eval_map, eval₂_sub, eval₂_X_pow, eval₂_C, sub_eq_zero] at hb
  have hb' : b ≠ 0 := by
    intro hb'
    rw [hb', zero_pow hn] at hb
    exact ha' hb.symm
  let s := ((X ^ n - C a).map i).roots
  have hs : _ = _ * (s.map _).prod := h.eq_prod_roots
  rw [leadingCoeff_map, leadingCoeff_X_pow_sub_C hn', RingHom.map_one, C_1, one_mul] at hs
  have hs' : Multiset.card s = n := by
    rw [← h.natDegree_eq_card_roots, natDegree_map, natDegree_X_pow_sub_C]
  rw [splits_iff_exists_multiset, leadingCoeff_map]
  use (s.map fun c ↦ c / b)
  rw [leadingCoeff_X_pow_sub_one hn', map_one, C_1, one_mul, Multiset.map_map]
  have C_mul_C : C (i a⁻¹) * C (i a) = 1 := by
    rw [← C_mul, ← i.map_mul, inv_mul_cancel₀ ha, i.map_one, C_1]
  have key1 : (X ^ n - 1 : F[X]).map i = C (i a⁻¹) * ((X ^ n - C a).map i).comp (C b * X) := by
    rw [Polynomial.map_sub, Polynomial.map_sub, Polynomial.map_pow, map_X, map_C,
      Polynomial.map_one, sub_comp, pow_comp, X_comp, C_comp, mul_pow, ← C_pow, hb, mul_sub, ←
      mul_assoc, C_mul_C, one_mul]
  have key2 : ((fun q : E[X] => q.comp (C b * X)) ∘ fun c : E => X - C c) = fun c : E =>
      C b * (X - C (c / b)) := by
    ext1 c
    dsimp only [Function.comp_apply]
    rw [sub_comp, X_comp, C_comp, mul_sub, ← C_mul, mul_div_cancel₀ c hb']
  rw [key1, hs, multiset_prod_comp, Multiset.map_map, key2, Multiset.prod_map_mul,
    Function.const_def (α := E) (y := C b), Multiset.map_const, Multiset.prod_replicate,
    hs', ← C_pow, hb, ← mul_assoc, C_mul_C, one_mul]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e83b05f47b9548982f19e8ea3dde485ef684b25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
