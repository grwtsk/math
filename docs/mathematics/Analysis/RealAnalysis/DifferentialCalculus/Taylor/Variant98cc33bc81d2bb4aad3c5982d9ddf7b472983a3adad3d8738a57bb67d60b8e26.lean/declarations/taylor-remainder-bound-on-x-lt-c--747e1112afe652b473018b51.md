# taylor_remainder_bound_on_x_lt_c

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebe88a62-468c-ac1c-8bc0-da20a4e9f4e8",
  "kind": "theorem",
  "lexical_name": "taylor_remainder_bound_on_x_lt_c",
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
  "slug": "taylor-remainder-bound-on-x-lt-c--747e1112afe652b473018b51",
  "source": {
    "blob": "daa674e10401043ad9a6d9d86250f10900fcc053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 331,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:747e1112afe652b473018b51fec64bf2c872581d4e20bb4c4070a9aa8c22e16d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebe88a62-468c-ac1c-8bc0-da20a4e9f4e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_remainder_bound_on_x_lt_c {f : ℝ → ℝ} {a b c : ℝ} {m : ℕ} {M : ℝ} {U : Set ℝ}
    (hU_open : IsOpen U) (hI_sub : Set.Icc a b ⊆ U)
    (hcb : c ≤ b)
    (hf : ContDiffOn ℝ (m + 1) f U)
    (hM : ∀ y ∈ Set.Icc a b, ‖iteratedDeriv (m + 1) f y‖ ≤ M)
    (x : ℝ) (hx : x ∈ Set.Icc a b) (hxc : x < c) :
    ‖f x - ∑ i ∈ Finset.range (m + 1), (iteratedDeriv i f c / i.factorial) * (x - c) ^ i‖
        ≤ M * |x - c| ^ (m + 1) / (m + 1).factorial := by
  open Set Finset in
  -- Define reflected function g(t) = f(2c - t)
  set g : ℝ → ℝ := fun t => f (2 * c - t) with hg_def
  -- Define V = preimage of U under reflection (the reflected open set)
  set V : Set ℝ := (fun t => 2 * c - t) ⁻¹' U with hV_def
  -- V is open (preimage of open set under continuous function)
  have hV_open : IsOpen V := by
    apply IsOpen.preimage _ hU_open
    exact continuous_const.sub continuous_id
  -- g is ContDiffOn V
  have hg_ContDiffOn : ContDiffOn ℝ (m + 1) g V := by
    have hlin : ContDiff ℝ ⊤ (fun t => 2 * c - t) := contDiff_const.sub contDiff_id
    -- g = f ∘ (2c - ·) and (2c - ·) maps V into U
    have hmaps : Set.MapsTo (fun t => 2 * c - t) V U := fun t ht => ht
    have hlin_on : ContDiffOn ℝ (m + 1) (fun t => 2 * c - t) V :=
      (hlin.contDiffOn.mono (Set.subset_univ _)).of_le le_top
    exact ContDiffOn.comp hf hlin_on hmaps
  -- The interval [c, 2c-x]
  have h_interval_lt : c < 2 * c - x := by linarith
  -- [c, 2c-x] maps under t ↦ 2c-t to [x, c] ⊆ [a,b] ⊆ U
  -- So [c, 2c-x] ⊆ V
  have hJ_sub_V : Icc c (2 * c - x) ⊆ V := by
    intro t ht
    -- 2c - t ∈ [x, c] ⊆ [a,b] ⊆ U
    have ht_lower : x ≤ 2 * c - t := by linarith [ht.2]
    have ht_upper : 2 * c - t ≤ c := by linarith [ht.1]
    have h2ct_in_ab : 2 * c - t ∈ Icc a b := by
      refine mem_Icc.mpr ⟨?_, ?_⟩
      · exact le_trans hx.1 ht_lower
      · exact le_trans ht_upper hcb
    exact hI_sub h2ct_in_ab
  -- c ∈ V since c maps to c ∈ [a,b] ⊆ U
  have hcV : c ∈ V := by
    have hc_ab : c ∈ Icc a b := ⟨le_trans hx.1 (le_of_lt hxc), hcb⟩
    -- Need to show c ∈ V, i.e., (fun t => 2 * c - t) c ∈ U, i.e., 2c - c = c ∈ U
    show c ∈ V
    simp only [hV_def, Set.mem_preimage]
    have h2cc : 2 * c - c = c := by ring
    rw [h2cc]
    exact hI_sub hc_ab
  -- Helper: map [c, 2c-x] to [a,b]
  have h_map_to_ab : ∀ t ∈ Icc c (2 * c - x), 2 * c - t ∈ Icc a b := by
    intro t ht
    have ht_lower : x ≤ 2 * c - t := by linarith [ht.2]
    have ht_upper : 2 * c - t ≤ c := by linarith [ht.1]
    exact ⟨le_trans hx.1 ht_lower, le_trans ht_upper hcb⟩
  -- Derivative bound for g using reflection formula
  have hg_deriv_bound : ∀ y ∈ Icc c (2 * c - x), ‖iteratedDeriv (m + 1) g y‖ ≤ M := by
    intro y hy
    have h2cy_ab : 2 * c - y ∈ Icc a b := h_map_to_ab y hy
    have h2cy_U : 2 * c - y ∈ U := hI_sub h2cy_ab
    -- Use the reflection formula
    have hg_deriv : iteratedDeriv (m + 1) g y = (-1 : ℝ) ^ (m + 1) * iteratedDeriv (m + 1) f (2 * c - y) :=
      iteratedDeriv_reflect_of_contDiffOn hU_open hf y h2cy_U
    rw [hg_deriv, norm_mul, Real.norm_eq_abs]
    have h_neg_one : |(-1 : ℝ) ^ (m + 1)| = 1 := by
      rw [abs_pow, abs_neg, abs_one, one_pow]
    rw [h_neg_one, one_mul]
    exact hM (2 * c - y) h2cy_ab
  -- Now apply taylor_remainder_bound_on_c_lt_x to g
  have hcV' : a ≤ c := le_trans hx.1 (le_of_lt hxc)
  -- g is ContDiffOn V and Icc c (2c-x) ⊆ V
  have h_taylor_g := taylor_remainder_bound_on_c_lt_x hV_open hJ_sub_V (le_refl c)
      hg_ContDiffOn hg_deriv_bound (2 * c - x) ⟨le_of_lt h_interval_lt, le_refl _⟩ h_interval_lt
  -- g(2c-x) = f(x)
  have hg_at_2cmx : g (2 * c - x) = f x := by simp only [hg_def, sub_sub_cancel]
  -- g^(i)(c) = (-1)^i * f^(i)(c)
  have hg_deriv_c : ∀ i ≤ m + 1, iteratedDeriv i g c = (-1 : ℝ) ^ i * iteratedDeriv i f c := by
    intro i hi
    have hcU : c ∈ U := hI_sub ⟨le_trans hx.1 (le_of_lt hxc), hcb⟩
    have h2cc : 2 * c - c = c := by ring
    rw [← h2cc] at hcU
    have hfi : ContDiffOn ℝ i f U := hf.of_le (by exact_mod_cast hi)
    have hrefl := iteratedDeriv_reflect_of_contDiffOn hU_open hfi c hcU
    simp only [h2cc] at hrefl
    exact hrefl
  -- Now convert the Taylor sum
  -- ∑ (iteratedDeriv i g c / i!) * ((2c-x) - c)^i = ∑ (iteratedDeriv i f c / i!) * (x - c)^i
  have hsum_eq : ∑ i ∈ range (m + 1), (iteratedDeriv i g c / i.factorial) * ((2 * c - x) - c) ^ i =
                 ∑ i ∈ range (m + 1), (iteratedDeriv i f c / i.factorial) * (x - c) ^ i := by
    apply sum_congr rfl
    intro i hi
    have hi_le : i ≤ m + 1 := le_of_lt (mem_range.mp hi)
    rw [hg_deriv_c i hi_le]
    have h_diff : (2 * c - x) - c = c - x := by ring
    rw [h_diff]
    have h_pow : (c - x : ℝ) ^ i = (-1 : ℝ) ^ i * (x - c) ^ i := by
      have : c - x = -(x - c) := by ring
      rw [this, neg_eq_neg_one_mul, mul_pow]
    rw [h_pow]
    -- Simplify: (-1)^i * f^(i)(c) / i! * ((-1)^i * (x-c)^i)
    have h_neg_sq : (-1 : ℝ) ^ i * (-1 : ℝ) ^ i = 1 := by rw [← pow_add]; norm_num
    -- Goal: (-1)^i * iteratedDeriv i f c / i! * ((-1)^i * (x-c)^i) = iteratedDeriv i f c / i! * (x-c)^i
    calc (-1 : ℝ) ^ i * iteratedDeriv i f c / ↑i.factorial * ((-1) ^ i * (x - c) ^ i)
        = ((-1 : ℝ) ^ i * (-1) ^ i) * (iteratedDeriv i f c / ↑i.factorial * (x - c) ^ i) := by ring
      _ = 1 * (iteratedDeriv i f c / ↑i.factorial * (x - c) ^ i) := by rw [h_neg_sq]
      _ = iteratedDeriv i f c / ↑i.factorial * (x - c) ^ i := by ring
  -- Use h_taylor_g with the conversions
  rw [hg_at_2cmx, hsum_eq] at h_taylor_g
  -- The RHS: M * |(2c-x) - c|^(m+1) / (m+1)! = M * |x - c|^(m+1) / (m+1)!
  have h_abs_eq : |(2 * c - x) - c| = |x - c| := by
    have h : (2 * c - x) - c = c - x := by ring
    rw [h, abs_sub_comm]
  rw [h_abs_eq] at h_taylor_g
  exact h_taylor_g

/-- Combined Taylor remainder bound with ContDiffOn hypothesis.

    For functions that are ContDiffOn on an open set containing [a, b], this provides
    the Lagrange remainder bound for any x ∈ [a, b] and center c ∈ [a, b]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa674e10401043ad9a6d9d86250f10900fcc053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
