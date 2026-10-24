# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.A668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611afIntegrability.Varianta668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edbaa65de160b3985d842ae7de804d57b3163cb3` · SHA-256 `a668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set
noncomputable section

/-- Absolute integrability of every polynomially weighted actual source derivative. -/
theorem deriv_thetaPhi_poly_integrableOn (p : ℕ) :
    IntegrableOn (fun t => deriv thetaPhi t * t ^ p) (Ici (0 : ℝ)) := by
  have h := ((thetaGaussianSum_poly_integrableOn 4 9 p).const_mul (30 * Real.pi ^ 2)).sub
    ((thetaGaussianSum_poly_integrableOn 2 5 p).const_mul (15 * Real.pi)) |>.sub
    ((thetaGaussianSum_poly_integrableOn 6 13 p).const_mul (8 * Real.pi ^ 3))
  apply h.congr
  filter_upwards [] with t
  dsimp only [Pi.sub_apply]
  rw [deriv_thetaPhi_eq_raw, thetaPhiRawD1_eq_gaussians]
  ring

/-- The exact shifted source derivative weight needed by the first tail ratio. -/
theorem thetaPhi_deriv_mul_sub_integrableOn {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t) := by
  have h0 : IntegrableOn (deriv thetaPhi) (Ici (0 : ℝ)) := by
    simpa using deriv_thetaPhi_poly_integrableOn 0
  have h1 : IntegrableOn (fun u => deriv thetaPhi u * u) (Ici (0 : ℝ)) := by
    simpa using deriv_thetaPhi_poly_integrableOn 1
  have h := (h1.sub (h0.mul_const t)).mono_set (Ici_subset_Ici.mpr ht)
  apply h.congr
  filter_upwards [] with u
  dsimp only [Pi.sub_apply]
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
