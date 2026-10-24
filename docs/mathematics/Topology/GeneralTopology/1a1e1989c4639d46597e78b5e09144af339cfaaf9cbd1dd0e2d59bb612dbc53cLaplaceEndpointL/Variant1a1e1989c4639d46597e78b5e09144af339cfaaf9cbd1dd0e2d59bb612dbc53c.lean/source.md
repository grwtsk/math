# Complete source: GRWTSK.Topology.GeneralTopology.1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL.Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16b3805780058e092c38a1e1df68699299f06bbd` · SHA-256 `1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic

open Filter
noncomputable section
namespace EndpointLimit

private def endpointProfile (w : ℂ) : ℂ := 1 - 10 * w + 45 * w ^ 2 - 105 * w ^ 3 + 105 * w ^ 4

private theorem endpoint_profile_continuous : Continuous endpointProfile := by
  unfold endpointProfile
  fun_prop

 theorem reciprocal_ray_tendsto_zero (z : ℂ) :
    Tendsto (fun A : ℝ ↦ ((A : ℂ) * z)⁻¹) atTop (nhds 0) := by
  have hr : Tendsto (fun A : ℝ ↦ ((A : ℂ)⁻¹)) atTop (nhds 0) := by
    simpa using Complex.continuous_ofReal.continuousAt.tendsto.comp
      (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0))
  simpa only [mul_inv_rev, mul_zero] using hr.const_mul z⁻¹

 theorem negative_ray_exp_tendsto_zero (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ ↦ Complex.exp (-2 * (A : ℂ) * z)) atTop (nhds 0) := by
  apply Complex.tendsto_exp_nhds_zero_iff.mpr
  have ht : Tendsto (fun A : ℝ ↦ (2 * z.re) * A) atTop atTop :=
    (tendsto_id : Tendsto (fun A : ℝ ↦ A) atTop atTop).const_mul_atTop (by positivity)
  convert ht.neg_atTop using 1
  ext A
  simp [Complex.mul_re]
  ring

 theorem profile_endpoint_tendsto_one (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ ↦ endpointProfile (((A : ℂ) * z)⁻¹) -
      Complex.exp (-2 * (A : ℂ) * z) * endpointProfile (-((A : ℂ) * z)⁻¹))
      atTop (nhds 1) := by
  have h1 := endpoint_profile_continuous.continuousAt.tendsto.comp
    (reciprocal_ray_tendsto_zero z)
  have h2 := endpoint_profile_continuous.continuousAt.tendsto.comp
    (reciprocal_ray_tendsto_zero z).neg
  simpa [endpointProfile] using h1.sub ((negative_ray_exp_tendsto_zero z hz).mul h2)

end EndpointLimit
```
