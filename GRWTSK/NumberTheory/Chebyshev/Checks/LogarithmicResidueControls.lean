/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TentResidueContributions

set_option autoImplicit false

/-!
# Local residue scope controls

Monomial and rational-function examples are synthetic, not zeta zeros. They
separate multiplicity, pole sign, removable products, center totalization,
normalization, and the insufficiency of local residues for a global identity.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.LogarithmicResidueControls

open Filter
open scoped Topology
open GRWTSK.Analysis.ComplexAnalysis.LogarithmicPrincipalPart
open GRWTSK.NumberTheory.Chebyshev.TentResidueContributions

noncomputable section

/-- A double zero contributes minus two; no simple-zero assumption is available. -/
theorem double_zero_limit_control (a : ℂ) :
    Tendsto (fun s => (s - a) * (-logDeriv (fun u : ℂ => (u - a) ^ 2) s))
      (𝓝[≠] a) (𝓝 (-2)) := by
  simpa using tendsto_scaled_neg_logDeriv_of_factorization
    (fun u : ℂ => (u - a) ^ 2) (fun _ => 1) a 2
    (by fun_prop) (by norm_num) (by filter_upwards [] with s; simp)

/-- A third-order pole has the opposite sign. -/
theorem triple_pole_limit_control (a : ℂ) :
    Tendsto (fun s => (s - a) * (-logDeriv (fun u : ℂ => (u - a) ^ (-3 : ℤ)) s))
      (𝓝[≠] a) (𝓝 3) := by
  simpa using tendsto_scaled_neg_logDeriv_of_factorization
    (fun u : ℂ => (u - a) ^ (-3 : ℤ)) (fun _ => 1) a (-3)
    (by fun_prop) (by norm_num) (by filter_upwards [] with s; simp)

/-- A nonvanishing constant has no logarithmic pole. -/
theorem unit_limit_control (a : ℂ) :
    Tendsto (fun s => (s - a) * (-logDeriv (fun _ : ℂ => (1 : ℂ)) s))
      (𝓝[≠] a) (𝓝 0) := by
  simpa using tendsto_scaled_neg_logDeriv_of_factorization
    (fun _ : ℂ => (1 : ℂ)) (fun _ => 1) a 0
    (by fun_prop) (by norm_num) (by filter_upwards [] with s; simp)

/-- An analytic multiplier can kill a residue even though the log derivative has a pole. -/
theorem vanishing_multiplier_control (a : ℂ) :
    Tendsto (fun s => (s - a) *
      (-logDeriv (fun u : ℂ => (u - a) ^ 2) s * (s - a)))
      (𝓝[≠] a) (𝓝 0) := by
  simpa using tendsto_scaled_weighted_neg_logDeriv
    (fun u : ℂ => (u - a) ^ 2) (fun s => s - a) a (-2)
    (double_zero_limit_control a) (by fun_prop)

/-- The assigned value at the double zero is not its limiting coefficient. -/
theorem totalized_center_control :
    logDeriv (fun s : ℂ => s ^ 2) 0 = 0 ∧ (-2 : ℂ) ≠ 0 := by
  constructor
  · simp
  · norm_num

/-- The first-Riesz quotient's totalized value at zero supplies no local analyticity. -/
theorem riesz_zero_parameter_control (u : ℝ) : firstRieszKernel u 0 = 0 := by
  simp [firstRieszKernel]

/-- The second excluded quotient parameter has the same totalization issue. -/
theorem riesz_negative_one_parameter_control (u : ℝ) : firstRieszKernel u (-1) = 0 := by
  simp [firstRieszKernel]

/-- At u=2 the Riesz pole coefficient is two, not four. -/
theorem riesz_main_normalization_control : firstRieszKernel 2 1 = 2 := by
  rw [firstRieszKernel_one 2 (by norm_num)]
  norm_num

/-- Adding an arbitrary entire constant does not change a local residue. -/
theorem invisible_entire_addition_control (a c : ℂ) :
    Tendsto (fun s => (s - a) * ((s - a)⁻¹ + c)) (𝓝[≠] a) (𝓝 1) := by
  have hlim : Tendsto (fun s => 1 + (s - a) * c) (𝓝[≠] a) (𝓝 1) := by
    simpa using ((continuousAt_const.add
      ((continuousAt_id.sub continuousAt_const).mul continuousAt_const) :
        ContinuousAt (fun s : ℂ => 1 + (s - a) * c) a).tendsto.mono_left
          nhdsWithin_le_nhds)
  apply hlim.congr'
  filter_upwards [self_mem_nhdsWithin] with s hsa
  have hs0 : s - a ≠ 0 := sub_ne_zero.mpr (by simpa using hsa)
  simp [mul_add, hs0]

/-- Identical residue data do not make the analytic correction zero. -/
theorem nonzero_entire_addition_control : (1 / 2 : ℂ) + 1 ≠ 1 / 2 := by
  norm_num

end
end GRWTSK.NumberTheory.Chebyshev.Checks.LogarithmicResidueControls
