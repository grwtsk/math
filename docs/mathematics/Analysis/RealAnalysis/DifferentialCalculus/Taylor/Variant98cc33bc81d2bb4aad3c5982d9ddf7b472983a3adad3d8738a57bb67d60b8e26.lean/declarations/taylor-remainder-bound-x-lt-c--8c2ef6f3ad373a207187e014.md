# taylor_remainder_bound_x_lt_c

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7ed6f66-54d0-629a-bb65-0116ec4c763f",
  "kind": "theorem",
  "lexical_name": "taylor_remainder_bound_x_lt_c",
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
  "slug": "taylor-remainder-bound-x-lt-c--8c2ef6f3ad373a207187e014",
  "source": {
    "blob": "daa674e10401043ad9a6d9d86250f10900fcc053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 594,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c2ef6f3ad373a207187e0145b225434edeb9003212d7addabecba2a9c36d0dd",
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

Occurrence: `result:d7ed6f66-54d0-629a-bb65-0116ec4c763f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 594–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_remainder_bound_x_lt_c {f : ℝ → ℝ} {a b c : ℝ} {m : ℕ} {M : ℝ}
    (hcb : c ≤ b)
    (hf : ContDiff ℝ (m + 1) f)
    (hM : ∀ y ∈ Set.Icc a b, ‖iteratedDeriv (m + 1) f y‖ ≤ M)
    (x : ℝ) (hx : x ∈ Set.Icc a b) (hxc : x < c) :
    ‖f x - ∑ i ∈ Finset.range (m + 1), (iteratedDeriv i f c / i.factorial) * (x - c) ^ i‖
        ≤ M * |x - c| ^ (m + 1) / (m + 1).factorial := by
  open Set Finset in
  -- Define reflected function g(t) = f(2c - t)
  set g : ℝ → ℝ := fun t => f (2 * c - t) with hg_def
  -- g is smooth
  have hg_smooth : ContDiff ℝ (m + 1) g := by
    have hlin : ContDiff ℝ ⊤ (fun t => 2 * c - t) := contDiff_const.sub contDiff_id
    exact hf.comp (hlin.of_le le_top)
  -- The interval [c, 2c - x]
  have h_interval_lt : c < 2 * c - x := by linarith
  -- Apply taylor_mean_remainder_lagrange to g on [c, 2c - x]
  have hg_on : ContDiffOn ℝ (m + 1) g (Icc c (2 * c - x)) := hg_smooth.contDiffOn
  have hg_on_m : ContDiffOn ℝ m g (Icc c (2 * c - x)) := by
    have hm_le : (m : WithTop ℕ∞) ≤ (m + 1 : ℕ) := by norm_cast; omega
    exact hg_on.of_le hm_le
  have hg_diff : DifferentiableOn ℝ (iteratedDerivWithin m g (Icc c (2 * c - x))) (Ioo c (2 * c - x)) := by
    have huniq := uniqueDiffOn_Icc h_interval_lt
    have hm_lt : (m : WithTop ℕ∞) < (m + 1 : ℕ) := by
      have : (m : ℕ) < m + 1 := Nat.lt_succ_self m
      exact_mod_cast this
    have hdiff := hg_on.differentiableOn_iteratedDerivWithin hm_lt huniq
    exact hdiff.mono Ioo_subset_Icc_self
  obtain ⟨ξ', hξ'_mem, hLagrange⟩ := taylor_mean_remainder_lagrange h_interval_lt hg_on_m hg_diff
  -- ξ = 2c - ξ' ∈ (x, c)
  set ξ := 2 * c - ξ' with hξ_def
  have hξ'_lt_2cmx : ξ' < 2 * c - x := hξ'_mem.2
  have hξ'_gt_c : c < ξ' := hξ'_mem.1
  have hξ_gt_x : x < ξ := by simp only [hξ_def]; linarith
  have hξ_lt_c : ξ < c := by simp only [hξ_def]; linarith
  have hξ_ab : ξ ∈ Icc a b :=
    ⟨le_trans hx.1 (le_of_lt hξ_gt_x), le_trans (le_of_lt hξ_lt_c) hcb⟩
  have hg_at_2cmx : g (2 * c - x) = f x := by simp only [hg_def, sub_sub_cancel]
  -- g^{(k)}(c) = (-1)^k * f^{(k)}(c)
  have hg_deriv : ∀ k ≤ m + 1, iteratedDeriv k g c = (-1 : ℝ) ^ k * iteratedDeriv k f c := by
    intro k hk
    have hg_eq : g = fun s => f (2 * c - s) := hg_def
    rw [hg_eq]
    rw [iteratedDeriv_reflect (hf.of_le (by exact_mod_cast hk)) c]
    congr 1
    ring_nf
  -- Key: taylorWithinEval g m (Icc c (2c-x)) c (2c-x) = ∑ ... of f's Taylor coeffs
  have hTaylor_g_to_f : taylorWithinEval g m (Icc c (2 * c - x)) c (2 * c - x) =
                        ∑ i ∈ range (m + 1), (iteratedDeriv i f c / i.factorial) * (x - c) ^ i := by
    rw [taylor_within_apply]
    apply sum_congr rfl
    intro i hi
    have hi_lt : i < m + 1 := mem_range.mp hi
    have hi_le : i ≤ m + 1 := le_of_lt hi_lt
    have hi_le' : (i : WithTop ℕ∞) ≤ (m + 1 : ℕ) := by
      have : (i : ℕ) ≤ m := Nat.lt_succ_iff.mp hi_lt
      exact le_of_lt (by exact_mod_cast Nat.lt_add_one_of_le this)
    have hderiv_c : iteratedDerivWithin i g (Icc c (2 * c - x)) c = iteratedDeriv i g c :=
      iteratedDerivWithin_Icc_left_eq_iteratedDeriv h_interval_lt (hg_smooth.of_le hi_le')
    rw [hderiv_c, hg_deriv i hi_le]
    simp only [smul_eq_mul]
    have h_diff : (2 * c - x) - c = c - x := by ring
    rw [h_diff]
    have h_pow : (c - x : ℝ) ^ i = (-1 : ℝ) ^ i * (x - c) ^ i := by
      have : c - x = -(x - c) := by ring
      rw [this, neg_eq_neg_one_mul, mul_pow]
    rw [h_pow]
    have h_neg_sq : (-1 : ℝ) ^ i * (-1 : ℝ) ^ i = 1 := neg_one_pow_mul_self i
    have hgoal : (↑i.factorial : ℝ)⁻¹ * ((-1 : ℝ) ^ i * (x - c) ^ i) * ((-1 : ℝ) ^ i * iteratedDeriv i f c)
               = iteratedDeriv i f c / ↑i.factorial * (x - c) ^ i := by
      have h1 : (↑i.factorial : ℝ)⁻¹ * ((-1 : ℝ) ^ i * (x - c) ^ i) * ((-1 : ℝ) ^ i * iteratedDeriv i f c)
              = ((-1 : ℝ) ^ i * (-1 : ℝ) ^ i) * ((↑i.factorial : ℝ)⁻¹ * (x - c) ^ i * iteratedDeriv i f c) := by ring
      rw [h1, h_neg_sq, one_mul]
      field_simp
    exact hgoal
  -- Now use Lagrange formula
  rw [hg_at_2cmx] at hLagrange
  rw [← hTaylor_g_to_f, hLagrange]
  have h_pow_rhs : ((2 * c - x) - c : ℝ) ^ (m + 1) = (c - x) ^ (m + 1) := by ring
  have hderiv_ξ' : iteratedDerivWithin (m + 1) g (Icc c (2 * c - x)) ξ' = iteratedDeriv (m + 1) g ξ' :=
    iteratedDerivWithin_Icc_interior_eq h_interval_lt hξ'_mem
  -- iteratedDeriv (m+1) g ξ' = (-1)^(m+1) * iteratedDeriv (m+1) f ξ
  have hg_deriv_ξ' : iteratedDeriv (m + 1) g ξ' = (-1 : ℝ) ^ (m + 1) * iteratedDeriv (m + 1) f ξ := by
    have hg_eq : g = fun s => f (2 * c - s) := hg_def
    have h := @iteratedDeriv_reflect f c (m + 1) hf ξ'
    simp only [hg_eq, hξ_def, h]
  rw [hderiv_ξ', hg_deriv_ξ', h_pow_rhs]
  have h_pow_eq : (c - x : ℝ) ^ (m + 1) = (-1 : ℝ) ^ (m + 1) * (x - c) ^ (m + 1) := by
    have : c - x = -(x - c) := by ring
    rw [this, neg_eq_neg_one_mul, mul_pow]
  rw [h_pow_eq]
  -- Simplify
  have h_simplify : (-1 : ℝ) ^ (m + 1) * iteratedDeriv (m + 1) f ξ * ((-1 : ℝ) ^ (m + 1) * (x - c) ^ (m + 1)) / ↑(m + 1).factorial =
                   iteratedDeriv (m + 1) f ξ * (x - c) ^ (m + 1) / ↑(m + 1).factorial := by
    have h_neg_sq := neg_one_pow_mul_self (m + 1)
    have h1 : (-1 : ℝ) ^ (m + 1) * iteratedDeriv (m + 1) f ξ * ((-1 : ℝ) ^ (m + 1) * (x - c) ^ (m + 1)) / ↑(m + 1).factorial =
              ((-1 : ℝ) ^ (m + 1) * (-1 : ℝ) ^ (m + 1)) * (iteratedDeriv (m + 1) f ξ * (x - c) ^ (m + 1)) / ↑(m + 1).factorial := by ring
    rw [h1, h_neg_sq, one_mul]
  rw [h_simplify]
  -- Bound the norm
  rw [norm_div, norm_mul, Real.norm_eq_abs, Real.norm_eq_abs, Real.norm_eq_abs]
  have hfact_pos : (0 : ℝ) < ((m + 1).factorial : ℝ) := Nat.cast_pos.mpr (Nat.factorial_pos _)
  rw [abs_of_pos hfact_pos]
  rw [abs_pow]
  have hbound := hM ξ hξ_ab
  have hxc_ne : x - c ≠ 0 := by linarith
  have h_pow_fact_pos : 0 < |x - c| ^ (m + 1) / (m + 1).factorial := by
    apply div_pos
    · apply pow_pos; exact abs_pos.mpr hxc_ne
    · exact hfact_pos
  calc |iteratedDeriv (m + 1) f ξ| * |x - c| ^ (m + 1) / ↑(m + 1).factorial
      = |iteratedDeriv (m + 1) f ξ| * (|x - c| ^ (m + 1) / ↑(m + 1).factorial) := by ring
    _ ≤ M * (|x - c| ^ (m + 1) / ↑(m + 1).factorial) := by
        apply mul_le_mul_of_nonneg_right hbound (le_of_lt h_pow_fact_pos)
    _ = M * |x - c| ^ (m + 1) / ↑(m + 1).factorial := by ring

/-- Lagrange form remainder bound for Taylor approximation.

If `|f^(n)(x)| ≤ M` for all x in [a, b], and `c ∈ [a, b]`, then the Taylor polynomial
of degree `n-1` (sum over range n) satisfies: for any `x ∈ [a, b]`:
  `|f(x) - T_{n-1}(x; c)| ≤ M * |x - c|^n / n!`

Note: The sum `∑ i ∈ Finset.range n` gives terms 0..n-1 (degree n-1 polynomial).
The remainder involves the n-th derivative, matching our bound on `iteratedDeriv n f`.

All cases are fully proved:
- **Case n = 0**: Direct bound. ✓
- **Case n > 0, x = c**: Trivial (both sides zero). ✓
- **Case n > 0, c < x**: Via `taylor_remainder_bound_c_lt_x`. ✓
- **Case n > 0, x < c**: Via `taylor_remainder_bound_x_lt_c` (reflection). ✓
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean#L594).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa674e10401043ad9a6d9d86250f10900fcc053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
