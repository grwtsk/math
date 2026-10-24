# Complete source: GRWTSK.Analysis.Complex.LogarithmicPrincipalPart

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3095d3336a3ccaa39846b8448646d86fe692206c` · SHA-256 `45263d6f02e05d62304fe7b4c68416e490cb6b5d4e3a933302f076c363878491`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Analytic.Order
import Mathlib.Analysis.Calculus.Deriv.ZPow
import Mathlib.Analysis.Calculus.LogDeriv
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Logarithmic principal parts from an actual local factorization

The source uses Mathlib's logDeriv, not a new logarithmic derivative. A finite
integer order may be positive (zero), negative (pole), or zero (analytic unit).
Equality is on a punctured neighborhood: totalized values at the center do not
supply a residue. The weighted result is a scaled-limit statement, not a global
contour or infinite residue-sum theorem. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED; no new axiom or analytic supplier is installed.
-/

namespace GRWTSK.Analysis.Complex.LogarithmicPrincipalPart

open Filter Set
open scoped Topology

noncomputable section

/-- The regular part is the logarithmic derivative of the nonvanishing unit.
Differentiability and nonvanishing on a neighborhood are derived from the unit. -/
theorem logDeriv_principal_part (f g : ℂ → ℂ) (a : ℂ) (k : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfactor : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * g s) :
    AnalyticAt ℂ (logDeriv g) a ∧
      logDeriv f =ᶠ[𝓝[≠] a] fun s => (k : ℂ) / (s - a) + logDeriv g s := by
  have hregular : AnalyticAt ℂ (logDeriv g) a := hg.deriv.div hg hg0
  refine ⟨hregular, ?_⟩
  have hunit : ∀ᶠ s in 𝓝[≠] a, AnalyticAt ℂ g s := hg.eventually_analyticAt.filter_mono nhdsWithin_le_nhds
  have hnonzero : ∀ᶠ s in 𝓝[≠] a, g s ≠ 0 := (hg.continuousAt.tendsto.eventually_ne hg0).filter_mono
    nhdsWithin_le_nhds
  filter_upwards [logDeriv_congr_nhdsNE hfactor, hunit, hnonzero,
    self_mem_nhdsWithin] with s heq hgs hgs0 hsa
  have hs0 : s - a ≠ 0 := sub_ne_zero.mpr (by simpa using hsa)
  have hpower : logDeriv (fun u : ℂ => (u - a) ^ k) s = (k : ℂ) / (s - a) := by
    rw [logDeriv_fun_zpow (by fun_prop : DifferentiableAt ℂ (fun u : ℂ => u - a) s) k]
    simp [logDeriv_apply, div_eq_mul_inv]
  rw [heq, logDeriv_mul (f := fun u : ℂ => (u - a) ^ k) (g := g) s (zpow_ne_zero k hs0) hgs0
    (((hasDerivAt_id s).sub_const a).differentiableAt.zpow (Or.inl hs0)) hgs.differentiableAt, hpower]

/-- A punctured principal-part identity gives the signed coefficient by a
limit. The function's assigned center value is irrelevant to this statement. -/
theorem tendsto_scaled_neg_logDeriv_of_principal_part
    (f A : ℂ → ℂ) (a c : ℂ) (hA : ContinuousAt A a)
    (hpart : logDeriv f =ᶠ[𝓝[≠] a] fun s => c / (s - a) + A s) :
    Tendsto (fun s => (s - a) * (-logDeriv f s)) (𝓝[≠] a) (𝓝 (-c)) := by
  have hcont : ContinuousAt (fun s => -c - (s - a) * A s) a :=
    continuousAt_const.sub ((continuousAt_id.sub continuousAt_const).mul hA)
  have hlim : Tendsto (fun s => -c - (s - a) * A s)
      (𝓝[≠] a) (𝓝 (-c)) := by
    simpa using hcont.tendsto.mono_left nhdsWithin_le_nhds
  apply hlim.congr'
  filter_upwards [hpart, self_mem_nhdsWithin] with s hs hsa
  have hs0 : s - a ≠ 0 := sub_ne_zero.mpr (by simpa using hsa)
  rw [hs]
  field_simp [hs0]
  ; ring

/-- Negative logDeriv has coefficient -k: zeros and poles have opposite signs. -/
theorem tendsto_scaled_neg_logDeriv_of_factorization
    (f g : ℂ → ℂ) (a : ℂ) (k : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfactor : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * g s) :
    Tendsto (fun s => (s - a) * (-logDeriv f s)) (𝓝[≠] a) (𝓝 (-(k : ℂ))) := by
  have hp := logDeriv_principal_part f g a k hg hg0 hfactor
  exact tendsto_scaled_neg_logDeriv_of_principal_part f (logDeriv g) a (k : ℂ)
    hp.1.continuousAt hp.2

/-- An analytic test multiplier contributes its value at the point, not an
unrelated midpoint or critical-line projection. Continuity suffices for this limit. -/
theorem tendsto_scaled_weighted_neg_logDeriv
    (f F : ℂ → ℂ) (a c : ℂ)
    (hlog : Tendsto (fun s => (s - a) * (-logDeriv f s)) (𝓝[≠] a) (𝓝 c))
    (hF : ContinuousAt F a) :
    Tendsto (fun s => (s - a) * (-logDeriv f s * F s))
      (𝓝[≠] a) (𝓝 (c * F a)) := by
  simpa only [mul_assoc] using hlog.mul (hF.tendsto.mono_left nhdsWithin_le_nhds)

end
end GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
```
