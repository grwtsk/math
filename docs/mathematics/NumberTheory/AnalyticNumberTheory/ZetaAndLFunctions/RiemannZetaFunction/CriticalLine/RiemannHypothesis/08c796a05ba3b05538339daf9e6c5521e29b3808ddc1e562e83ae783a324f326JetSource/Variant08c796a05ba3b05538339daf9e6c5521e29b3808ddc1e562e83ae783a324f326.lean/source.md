# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource.Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96b6b0543d0236bec9d4224f7552cc822868210b` · SHA-256 `08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives
import FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open Filter MeasureTheory Set
open scoped Topology
noncomputable section

private def jetCoefficient (k : Fin 5) (j : Fin 6) : ℝ :=
  ![![-3, 2, 0, 0, 0, 0], ![-15, 30, -8, 0, 0, 0],
    ![-75, 330, -224, 32, 0, 0], ![-375, 3270, -4232, 1440, -128, 0],
    ![-1875, 30930, -68096, 41408, -8448, 512]] k j

private theorem jetPolynomial_eq_sum (k : Fin 5) (y : ℝ) :
    thetaPhiJetPolynomial k y = ∑ j : Fin 6, jetCoefficient k j * y ^ j.val := by
  fin_cases k <;> norm_num [thetaPhiJetPolynomial, jetCoefficient, Fin.sum_univ_succ] <;> ring

/-- The actual first five source derivatives. -/
def thetaPhiJet (t : ℝ) : Fin 5 → ℝ :=
  ![thetaPhi t, deriv thetaPhi t, deriv (deriv thetaPhi) t, thetaPhiRawD3 t, thetaPhiRawD4 t]

private theorem thetaPhi_eq_gaussianSums (t : ℝ) :
    thetaPhi t = (2 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
      (3 * Real.pi) * thetaGaussianSum 2 5 t := by
  have he (m : ℕ) : thetaPhiTerm m t =
      (2 * Real.pi ^ 2) * thetaGaussianTerm 4 9 m t -
        (3 * Real.pi) * thetaGaussianTerm 2 5 m t := by
    rw [thetaPhiTerm_eq_gaussians]
    unfold thetaGaussianTerm
    ring
  unfold thetaPhi
  simp_rw [he]
  rw [((thetaGaussianTerm_summable 4 9 t).mul_left (2 * Real.pi ^ 2)).tsum_sub
    ((thetaGaussianTerm_summable 2 5 t).mul_left (3 * Real.pi)),
    tsum_mul_left, tsum_mul_left]
  rfl

private theorem thetaPhiJet_eq_gaussianSum (k : Fin 5) (t : ℝ) :
    thetaPhiJet t k = ∑ j : Fin 6, jetCoefficient k j *
      (Real.pi ^ (j.val + 1) * thetaGaussianSum (2 * j.val + 2) (4 * j.val + 5) t) := by
  fin_cases k <;>
    norm_num [thetaPhiJet, jetCoefficient, Fin.sum_univ_succ, thetaPhiRawD3, thetaPhiRawD4,
      thetaPhi_eq_gaussianSums, deriv_thetaPhi_eq_raw, thetaPhiRawD1_eq_gaussians,
      deriv_deriv_thetaPhi_eq_raw, thetaPhiRawD2_eq_gaussians] <;> ring

private theorem scaledGaussianTerm_eq (j m : ℕ) (t : ℝ) :
    Real.pi ^ (j + 1) * thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t =
      (Real.pi * Real.exp (5 * t - thetaModeA t)) *
        (((m : ℝ) + 1) ^ 2 * (thetaModeA t * ((m : ℝ) + 1) ^ 2) ^ j *
          Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) := by
  have hc : Real.exp (((4 * j + 5 : ℕ) : ℝ) * t) =
      Real.exp (5 * t) * Real.exp (4 * t) ^ j := by
    rw [← Real.exp_nat_mul, ← Real.exp_add]
    congr 1
    push_cast
    ring
  have he : Real.exp (5 * t - thetaModeA t) *
      Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1)) =
      Real.exp (5 * t) * Real.exp (-thetaModeA t * ((m : ℝ) + 1) ^ 2) := by
    rw [← Real.exp_add, ← Real.exp_add]
    congr 1
    ring
  rw [show (Real.pi * Real.exp (5 * t - thetaModeA t)) *
      (((m : ℝ) + 1) ^ 2 * (thetaModeA t * ((m : ℝ) + 1) ^ 2) ^ j *
        Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) =
      Real.pi * (((m : ℝ) + 1) ^ 2 * (thetaModeA t * ((m : ℝ) + 1) ^ 2) ^ j) *
        (Real.exp (5 * t - thetaModeA t) *
          Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) by ring, he]
  unfold thetaGaussianTerm HurwitzKernelBounds.f_nat
  rw [hc]
  unfold thetaModeA
  simp only [pow_add, pow_mul, mul_pow]
  ring

 theorem thetaPhiJet_eq_polynomial_sum (k : Fin 5) (t : ℝ) :
    thetaPhiJet t k = (Real.pi * Real.exp (5 * t - thetaModeA t)) *
      ∑' m : ℕ, ((m : ℝ) + 1) ^ 2 *
        thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
          Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1)) := by
  rw [thetaPhiJet_eq_gaussianSum]
  have hs (j : Fin 6) : Summable (fun m : ℕ => jetCoefficient k j *
      (Real.pi ^ (j.val + 1) * thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t)) :=
    ((thetaGaussianTerm_summable (2*j.val+2) (4*j.val+5) t).mul_left _).mul_left _
  calc
    _ = ∑ j : Fin 6, ∑' m : ℕ, jetCoefficient k j *
        (Real.pi ^ (j.val + 1) * thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t) := by
      simp only [tsum_mul_left, thetaGaussianSum]
    _ = ∑' m : ℕ, ∑ j : Fin 6, jetCoefficient k j *
        (Real.pi ^ (j.val + 1) * thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t) := by
      exact (Summable.tsum_finsetSum (fun j _ => hs j)).symm
    _ = ∑' m : ℕ, (Real.pi * Real.exp (5 * t - thetaModeA t)) *
        (((m : ℝ) + 1) ^ 2 *
          thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
            Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) := by
      apply tsum_congr
      intro m
      simp_rw [scaledGaussianTerm_eq]
      rw [jetPolynomial_eq_sum]
      simp only [Finset.mul_sum, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro j _
      ring
    _ = _ := tsum_mul_left


/-- Absolute convergence of the normalized polynomial mode representation. -/
theorem thetaPhiJet_polynomial_summable (k : Fin 5) (t : ℝ) :
    Summable (fun m : ℕ => ((m : ℝ) + 1) ^ 2 *
      thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
        Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) := by
  apply (summable_mul_left_iff (a := Real.pi * Real.exp (5 * t - thetaModeA t))
    (by positivity)).mp
  have hs (j : Fin 6) : Summable (fun m : ℕ => jetCoefficient k j *
      (Real.pi ^ (j.val + 1) * thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t)) :=
    ((thetaGaussianTerm_summable (2*j.val+2) (4*j.val+5) t).mul_left _).mul_left _
  apply (summable_sum (fun j (_ : j ∈ Finset.univ) => hs j)).congr
  intro m
  simp_rw [scaledGaussianTerm_eq]
  rw [jetPolynomial_eq_sum]
  simp only [Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Consecutive entries of the source jet are actual ordinary derivatives. -/
theorem hasDerivAt_thetaPhiJet (k : Fin 4) (t : ℝ) :
    HasDerivAt (fun u => thetaPhiJet u k.castSucc) (thetaPhiJet t k.succ) t := by
  fin_cases k
  · change HasDerivAt thetaPhi (deriv thetaPhi t) t
    exact (hasDerivAt_thetaPhi_raw t).differentiableAt.hasDerivAt
  · change HasDerivAt (deriv thetaPhi) (deriv (deriv thetaPhi) t) t
    rw [show deriv thetaPhi = thetaPhiRawD1 from funext deriv_thetaPhi_eq_raw]
    exact (hasDerivAt_thetaPhiRawD1 t).differentiableAt.hasDerivAt
  · change HasDerivAt (deriv (deriv thetaPhi)) (thetaPhiRawD3 t) t
    exact hasDerivAt_deriv_deriv_thetaPhi t
  · change HasDerivAt thetaPhiRawD3 (thetaPhiRawD4 t) t
    exact hasDerivAt_thetaPhiRawD3 t

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
