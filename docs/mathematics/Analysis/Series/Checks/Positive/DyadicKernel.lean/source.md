# Complete source: GRWTSK.Analysis.Series.Checks.Positive.DyadicKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5916b65695de5c5083d2e5b67636afaeb653043` · SHA-256 `3a0c27b07525b6309c12035ee0cd0b9970b0958328e4dfdcfbf5d9d4dfda3247`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Concrete scalar kernel consumers and actual missing-decay/parameter controls.
OpenAI/Mathlib notices and Apache-2.0 are retained in the imported source. -/
import GRWTSK.Analysis.Series.DyadicKernel
import Mathlib.Topology.Algebra.InfiniteSum.Group
namespace GRWTSK.Analysis.Series.DyadicKernel.Checks
noncomputable section

theorem kernel_generic (s A : ℝ) (hs : 0<s) (hA : s<A) :
    ∃ C : ℝ, 0<C ∧ ∀ t : ℝ, 0<t →
      Summable (kernelTerm t s A) ∧ (∑' n : ℕ, kernelTerm t s A n) ≤ C*t^(-s) :=
  kernel_sum_bound s A hs hA

theorem kernel_one_one_two : Summable (kernelTerm 1 1 2) :=
  kernel_summable 1 1 2 (by norm_num) (by norm_num) (by norm_num)

theorem kernel_boundary_lower (n : ℕ) : (1/2:ℝ) ≤ kernelTerm 1 1 1 n := by
  unfold kernelTerm
  simp only [Real.rpow_one, one_mul]
  apply (le_div_iff₀ (by positivity : (0:ℝ) < 1+2^n)).mpr
  have hp : (1:ℝ) ≤ 2^n := one_le_pow₀ (by norm_num : (1:ℝ) ≤ 2)
  linarith

theorem kernel_boundary_not_summable : ¬ Summable (kernelTerm 1 1 1) := by
  intro h
  have hc : Summable (fun _ : ℕ => (1/2:ℝ)) :=
    h.of_nonneg_of_le (fun _ => by norm_num) kernel_boundary_lower
  have hh : (1/2:ℝ) = 0 := (summable_const_iff (1/2:ℝ)).mp hc
  norm_num at hh

theorem kernel_zero_parameter (n : ℕ) : kernelTerm 0 1 2 n = (2:ℝ)^n := by
  simp [kernelTerm]

theorem kernel_zero_parameter_not_summable : ¬ Summable (kernelTerm 0 1 2) := by
  intro h
  have hc : Summable (fun _ : ℕ => (1/2:ℝ)) := by
    apply h.of_nonneg_of_le (fun _ => by norm_num)
    intro n
    rw [kernel_zero_parameter]
    have hp : (1:ℝ) ≤ 2^n := one_le_pow₀ (by norm_num : (1:ℝ) ≤ 2)
    linarith
  have hh : (1/2:ℝ) = 0 := (summable_const_iff (1/2:ℝ)).mp hc
  norm_num at hh

end
end GRWTSK.Analysis.Series.DyadicKernel.Checks
```
