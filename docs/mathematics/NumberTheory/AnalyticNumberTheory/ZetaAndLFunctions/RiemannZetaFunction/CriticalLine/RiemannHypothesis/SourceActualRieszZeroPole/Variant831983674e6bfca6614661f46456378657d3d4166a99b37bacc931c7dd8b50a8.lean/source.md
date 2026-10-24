# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualRieszZeroPole.Variant831983674e6bfca6614661f46456378657d3d4166a99b37bacc931c7dd8b50a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0110ef8939ac44840ac2971e733226a8c74a10b` · SHA-256 `831983674e6bfca6614661f46456378657d3d4166a99b37bacc931c7dd8b50a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualRieszCriticalCenter
import Mathlib.Analysis.Meromorphic.Order

/-!
The genuine centered zeta numerator has a nonremovable pole at each actual
nontrivial zero to the right of the critical line. Its local regularization
at zero does not remove that pole. The actual zero carrier and analytic
multiplicity are retained; no such zero is asserted to exist.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszZeroPole
open Complex Filter Zeta23
open scoped Topology
open SourceActualRieszCriticalCenter

private theorem actual_zero_ne_one (ρ : (zetaZeros zetaSeam).carrier) :
    (ρ : ℂ) ≠ 1 := by
  intro h
  have hs := ρ.2.2.2
  rw [h] at hs
  norm_num at hs

private theorem actual_zero_finite_order (ρ : (zetaZeros zetaSeam).carrier) :
    analyticOrderAt riemannZeta (ρ : ℂ) ≠ ⊤ := by
  intro h
  have hp := (zetaZeros zetaSeam).one_le_mult (ρ : ℂ) ρ.2
  change 1 ≤ (analyticOrderAt riemannZeta (ρ : ℂ)).toNat at hp
  simp [h] at hp

/-- The actual source multiplicity is positive and exactly the finite analytic order. -/
theorem actualRiesz_zero_order_and_multiplicity
    (ρ : (zetaZeros zetaSeam).carrier) :
    1 ≤ (zetaZeros zetaSeam).mult ρ ∧
      analyticOrderAt riemannZeta (ρ : ℂ) =
        ((zetaZeros zetaSeam).mult ρ : ℕ∞) := by
  refine ⟨(zetaZeros zetaSeam).one_le_mult (ρ : ℂ) ρ.2, ?_⟩
  exact (Nat.cast_analyticOrderNatAt (actual_zero_finite_order ρ)).symm

private theorem actual_zeta_logDeriv_order (ρ : (zetaZeros zetaSeam).carrier) :
    meromorphicOrderAt (logDeriv riemannZeta) (ρ : ℂ) = -1 := by
  have ha := Zeta23.WeilEF.analyticAt_riemannZeta (actual_zero_ne_one ρ)
  have ho := ha.meromorphicOrderAt_eq
  rw [(actualRiesz_zero_order_and_multiplicity ρ).2] at ho
  simp only [ENat.map_natCast] at ho
  apply meromorphicOrderAt_logDeriv_eq_neg_one ha.meromorphicAt
  · rw [ho]
    have hm := (actualRiesz_zero_order_and_multiplicity ρ).1
    exact_mod_cast (show (zetaZeros zetaSeam).mult ρ ≠ 0 by omega)
  · rw [ho]
    simp

private theorem translated_neg_logDeriv_meromorphic
    (ρ : (zetaZeros zetaSeam).carrier) :
    MeromorphicAt (fun z : ℂ => -logDeriv riemannZeta (1 / 2 + z))
      ((ρ : ℂ) - 1 / 2) := by
  have ha := Zeta23.WeilEF.analyticAt_riemannZeta (actual_zero_ne_one ρ)
  have hm := ha.meromorphicAt.logDeriv.neg
  have ht := meromorphicAt_fun_comp_add_const_iff_meromorphicAt
    (f := fun z : ℂ => -logDeriv riemannZeta z)
    (x := (ρ : ℂ) - 1 / 2) (c := (1 / 2 : ℂ))
  apply ht.mpr
  simpa only [sub_add_cancel] using hm

private theorem translated_neg_logDeriv_order
    (ρ : (zetaZeros zetaSeam).carrier) :
    meromorphicOrderAt (fun z : ℂ => -logDeriv riemannZeta (1 / 2 + z))
      ((ρ : ℂ) - 1 / 2) = -1 := by
  have ht := meromorphicOrderAt_fun_comp_add_const_eq_meromorphicOrderAt
    (f := fun z : ℂ => -logDeriv riemannZeta z)
    (x := (ρ : ℂ) - 1 / 2) (c := (1 / 2 : ℂ))
  simpa only [add_comm (1 / 2 : ℂ), sub_add_cancel,
    ← meromorphicOrderAt_neg, actual_zeta_logDeriv_order ρ] using ht

private theorem rational_subtraction_analytic
    (ρ : (zetaZeros zetaSeam).carrier) :
    AnalyticAt ℂ (fun z : ℂ => -(1 / (z - 1 / 2)))
      ((ρ : ℂ) - 1 / 2) := by
  have hn : (ρ : ℂ) - 1 / 2 - 1 / 2 ≠ 0 := by
    intro h
    apply actual_zero_ne_one ρ
    linear_combination h
  exact (analyticAt_const.div (by fun_prop) hn).neg

private theorem numerator_meromorphic (ρ : (zetaZeros zetaSeam).carrier) :
    MeromorphicAt actualRieszCriticalNumerator ((ρ : ℂ) - 1 / 2) := by
  simpa only [actualRieszCriticalNumerator, sub_eq_add_neg] using
    (translated_neg_logDeriv_meromorphic ρ).add
      (rational_subtraction_analytic ρ).meromorphicAt

/-- The rational pole payment cannot cancel the actual zero's logarithmic-derivative pole. -/
theorem actualRieszCriticalNumerator_order_at_actual_zero
    (ρ : (zetaZeros zetaSeam).carrier) :
    meromorphicOrderAt actualRieszCriticalNumerator ((ρ : ℂ) - 1 / 2) = -1 := by
  have hreg := rational_subtraction_analytic ρ
  have hlt : meromorphicOrderAt (fun z : ℂ => -logDeriv riemannZeta (1 / 2 + z))
      ((ρ : ℂ) - 1 / 2) <
      meromorphicOrderAt (fun z : ℂ => -(1 / (z - 1 / 2)))
        ((ρ : ℂ) - 1 / 2) := by
    rw [translated_neg_logDeriv_order ρ]
    exact lt_of_lt_of_le (by norm_num) hreg.meromorphicOrderAt_nonneg
  simpa only [Pi.add_apply, actualRieszCriticalNumerator, sub_eq_add_neg,
    translated_neg_logDeriv_order ρ] using
    meromorphicOrderAt_add_eq_left_of_lt hreg.meromorphicAt hlt

/-- No holomorphic punctured-germ extension exists through an actual right-hand zero. -/
theorem actualRieszCriticalNumerator_no_extension_at_actual_right_zero
    (ρ : (zetaZeros zetaSeam).carrier) (hρ : 1 / 2 < (ρ : ℂ).re) :
    0 < ((ρ : ℂ) - 1 / 2).re ∧
      ¬ ∃ g : ℂ → ℂ, AnalyticAt ℂ g ((ρ : ℂ) - 1 / 2) ∧
        actualRieszCriticalNumerator =ᶠ[𝓝[≠] ((ρ : ℂ) - 1 / 2)] g := by
  constructor
  · simp only [Complex.sub_re, Complex.div_ofNat_re]
    linarith
  · intro hg
    have hn := (numerator_meromorphic ρ).meromorphicOrderAt_nonneg_iff.mpr hg
    rw [actualRieszCriticalNumerator_order_at_actual_zero ρ] at hn
    norm_num at hn

end FormalResearch.RiemannHypothesis.SourceActualRieszZeroPole
```
