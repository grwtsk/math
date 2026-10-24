# exists_separable_and_not_isCentral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76947d3d-8402-9801-e590-a364f5685f35",
  "kind": "theorem",
  "lexical_name": "exists_separable_and_not_isCentral",
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
  "slug": "exists-separable-and-not-iscentral--e6ac685d4a38993f8ea64fd0",
  "source": {
    "blob": "1fc0b81aaa99d6968b316252025b7c4d4aa0b967",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 113,
    "path": "GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6ac685d4a38993f8ea64fd000b012f6a472b67ec59bebd625fd3c99be13d941",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76947d3d-8402-9801-e590-a364f5685f35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_separable_and_not_isCentral (H : k ≠ (⊤ : Subring D)) :
    ∃ x : D, x ∉ k ∧ IsSeparable k x := by
  obtain ⟨p, hp⟩ := ExpChar.exists D
  by_contra! insep
  replace insep : ∀ x : D, IsSeparable k x → x ∈ k :=
    fun x h ↦ Classical.byContradiction fun hx ↦ insep x hx h
  -- The element `a` below is in `D` but not in `k`.
  obtain ⟨a, ha⟩ := not_forall.mp <| mt (Subring.eq_top_iff' k).mpr H
  have ha₀ : a ≠ 0 := fun nh ↦ nh ▸ ha <| Subring.zero_mem k
  -- We construct another element `b` that does not commute with `a`.
  obtain ⟨b, hb1⟩ : ∃ b : D, ad k D a b ≠ 0 := by
    rw [Subring.mem_center_iff, not_forall] at ha
    use ha.choose
    show a * ha.choose - ha.choose * a ≠ 0
    simpa only [ne_eq, sub_eq_zero] using Ne.symm ha.choose_spec
  -- We find a maximum natural number `n` such that `(a * x - x * a) ^ n b ≠ 0`.
  obtain ⟨n, hn, hb⟩ : ∃ n, 0 < n ∧ (ad k D a)^[n] b ≠ 0 ∧ (ad k D a)^[n + 1] b = 0 := by
    obtain ⟨m, -, hm2⟩ := exist_pow_eq_zero_of_le p ha insep
    have h_exist : ∃ n, 0 < n ∧ (ad k D a)^[n + 1] b = 0 := ⟨p ^ m,
      ⟨expChar_pow_pos D p m, by rw [hm2 (p ^ m + 1) (Nat.le_add_right _ _), Pi.zero_apply]⟩⟩
    classical
    refine ⟨Nat.find h_exist, ⟨(Nat.find_spec h_exist).1, ?_, (Nat.find_spec h_exist).2⟩⟩
    set t := (Nat.find h_exist - 1 : ℕ) with ht
    by_cases h_pos : 0 < t
    · convert (ne_eq _ _) ▸ not_and.mp (Nat.find_min h_exist (m := t) (by omega)) h_pos
      omega
    · suffices h_find: Nat.find h_exist = 1 by
        rwa [h_find]
      rw [not_lt, Nat.le_zero, ht, Nat.sub_eq_zero_iff_le] at h_pos
      linarith [(Nat.find_spec h_exist).1]
  -- We define `c` to be the value that we proved above to be non-zero.
  set c := (ad k D a)^[n] b with hc_def
  let _ : Invertible c := ⟨c⁻¹, inv_mul_cancel₀ hb.1, mul_inv_cancel₀ hb.1⟩
  -- We prove that `c` commutes with `a`.
  have hc : a * c = c * a := by
    apply eq_of_sub_eq_zero
    rw [← mulLeft_apply (R := k), ← mulRight_apply (R := k)]
    suffices ad k D a c = 0 from by
      rw [← this]; simp [LieRing.of_associative_ring_bracket]
    rw [← Function.iterate_succ_apply' (ad k D a) n b, hb.2]
  -- We now make some computation to obtain the final equation.
  set d := c⁻¹ * a * (ad k D a)^[n - 1] b with hd_def
  have hc': c⁻¹ * a = a * c⁻¹ := by
    apply_fun (c⁻¹ * · * c⁻¹) at hc
    rw [mul_assoc, mul_assoc, mul_inv_cancel₀ hb.1, mul_one, ← mul_assoc,
      inv_mul_cancel₀ hb.1, one_mul] at hc
    exact hc
  have c_eq : a * (ad k D a)^[n - 1] b - (ad k D a)^[n - 1] b * a = c := by
    rw [hc_def, ← Nat.sub_add_cancel hn, Function.iterate_succ_apply' (ad k D a) _ b]; rfl
  have eq1 : c⁻¹ * a * (ad k D a)^[n - 1] b - c⁻¹ * (ad k D a)^[n - 1] b * a = 1 := by
    simp_rw [mul_assoc, (mul_sub_left_distrib c⁻¹ _ _).symm, c_eq, inv_mul_cancel_of_invertible]
  -- We show that `a` commutes with `d`.
  have deq : a * d - d * a = a := by
    nth_rw 3 [← mul_one a]
    rw [hd_def, ← eq1, mul_sub, mul_assoc _ _ a, sub_right_inj, hc',
      ← mul_assoc, ← mul_assoc, ← mul_assoc]
  -- This then yields a contradiction.
  apply_fun (a⁻¹ * · ) at deq
  rw [mul_sub, ← mul_assoc, inv_mul_cancel₀ ha₀, one_mul, ← mul_assoc, sub_eq_iff_eq_add] at deq
  obtain ⟨r, hr⟩ := exists_pow_mem_center_of_inseparable p d insep
  apply_fun (· ^ (p ^ r)) at deq
  rw [add_pow_expChar_pow_of_commute p r (Commute.one_left _) , one_pow,
    GroupWithZero.conj_pow₀ ha₀, ← hr.comm, mul_assoc, inv_mul_cancel₀ ha₀, mul_one,
    right_eq_add] at deq
  exact one_ne_zero deq

open Subring Algebra in
/-- Jacobson-Noether theorem: For a non-commutative division algebra `D`
  that is algebraic over a field `L`, if the center of
  `D` coincides with `L`, then there exist an element `x` of `D \ L`
  that is separable over `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fc0b81aaa99d6968b316252025b7c4d4aa0b967` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
