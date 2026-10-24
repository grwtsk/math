import GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
import Mathlib.Tactic

/-! Local order detection for B3 of the unpublished boundary outline.
The actual completed function and its local factorization must still be supplied.
The scaled coefficient is not a residue of the original completed function. -/
namespace GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
open Filter
open scoped Topology

/-- The coefficient from a supplied local factorization is unique. -/
theorem scaled_coefficient_unique (f g : ℂ → ℂ) (a c : ℂ) (k : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfactor : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * g s)
    (hlimit : Tendsto (fun s => (s - a) * (-logDeriv f s)) (𝓝[≠] a) (𝓝 c)) :
    c = -(k : ℂ) :=
  tendsto_nhds_unique hlimit
    (tendsto_scaled_neg_logDeriv_of_factorization f g a k hg hg0 hfactor)

/-- An analytic extension of the logarithmic derivative forces order zero.
This concerns the derivative on the punctured neighborhood, not its assigned center value. -/
theorem order_eq_zero_of_continuous_extension (f g H : ℂ → ℂ) (a : ℂ) (k : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfactor : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * g s)
    (hH : ContinuousAt H a) (hext : H =ᶠ[𝓝[≠] a] logDeriv f) : k = 0 := by
  have hc : ContinuousAt (fun s => (s - a) * (-H s)) a :=
    (continuousAt_id.sub continuousAt_const).mul hH.neg
  have hz : Tendsto (fun s => (s - a) * (-logDeriv f s))
      (𝓝[≠] a) (𝓝 (0 : ℂ)) := by
    have ht : Tendsto (fun s => (s - a) * (-H s)) (𝓝[≠] a) (𝓝 (0 : ℂ)) := by
      simpa using hc.tendsto.mono_left nhdsWithin_le_nhds
    apply ht.congr'
    filter_upwards [hext] with s hs
    rw [hs]
  have hk := scaled_coefficient_unique f g a 0 k hg hg0 hfactor hz
  have : (k : ℂ) = 0 := neg_eq_zero.mp hk.symm
  exact_mod_cast this

/-- A nonzero local order precludes every continuous extension of logDeriv. -/
theorem no_continuous_extension_of_nonzero_order (f g : ℂ → ℂ) (a : ℂ) (k : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfactor : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * g s) (hk : k ≠ 0) :
    ¬ ∃ H : ℂ → ℂ, ContinuousAt H a ∧ H =ᶠ[𝓝[≠] a] logDeriv f := by
  rintro ⟨H, hH, hext⟩
  exact hk (order_eq_zero_of_continuous_extension f g H a k hg hg0 hfactor hH hext)
end GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
