# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a37aacc165cd26eff3b8ab34ab3a023b216e1e7a` · SHA-256 `c9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives
import FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials

/-!
# Higher derivatives of the literal theta source

The polynomial Gaussian series differentiates by a two-term recurrence. The
existing compact summable bounds justify that recurrence on every real
neighborhood. Finite linear combinations then give the third and fourth actual
source derivatives without any numerical approximation or source replacement.
The same Gaussian bounds prove polynomially weighted first-derivative decay and
second-derivative integrability for the improper source-gap identities.
The first five actual derivatives have an exact, absolutely convergent
polynomial-mode representation with a common positive exponential factor.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open Filter MeasureTheory Set
open scoped Topology
noncomputable section

theorem hasDerivAt_thetaGaussianTerm (k c m : ℕ) (t : ℝ) :
    HasDerivAt (thetaGaussianTerm k c m)
      ((c : ℝ) * thetaGaussianTerm k c m t -
        4 * Real.pi * thetaGaussianTerm (k + 2) (c + 4) m t) t := by
  have hc := ((hasDerivAt_id t).const_mul (c : ℝ)).exp
  have h4 := ((hasDerivAt_id t).const_mul (4 : ℝ)).exp
  have hg := (h4.const_mul (-Real.pi * ((m : ℝ) + 1) ^ 2)).exp
  have h := hc.mul (hg.const_mul (((m : ℝ) + 1) ^ k))
  convert! h using 1
  simp only [thetaGaussianTerm, HurwitzKernelBounds.f_nat, Nat.cast_add, Nat.cast_ofNat,
    mul_one, pow_add, id_eq]
  rw [add_mul, Real.exp_add]
  ring

theorem hasDerivAt_thetaGaussianSum (k c : ℕ) (t : ℝ) :
    HasDerivAt (thetaGaussianSum k c)
      ((c : ℝ) * thetaGaussianSum k c t -
        4 * Real.pi * thetaGaussianSum (k + 2) (c + 4) t) t := by
  have hbound := ((thetaGaussianCompactBound_summable k c (t - 1) (t + 1)).mul_left
    ‖(c : ℝ)‖).add ((thetaGaussianCompactBound_summable (k + 2) (c + 4)
      (t - 1) (t + 1)).mul_left ‖4 * Real.pi‖)
  have h := hasDerivAt_tsum_of_isPreconnected hbound
    isOpen_Ioo (convex_Ioo (t - 1) (t + 1)).isPreconnected
    (fun m u _ => hasDerivAt_thetaGaussianTerm k c m u)
    (fun m u hu => (norm_sub_le _ _).trans (by
      simp only [norm_mul]
      exact add_le_add
        (mul_le_mul_of_nonneg_left
          (thetaGaussianTerm_norm_le_compactBound k c m ⟨hu.1.le, hu.2.le⟩) (norm_nonneg _))
        (mul_le_mul_of_nonneg_left
          (thetaGaussianTerm_norm_le_compactBound (k+2) (c+4) m ⟨hu.1.le, hu.2.le⟩)
          (by positivity))))
    (show t ∈ Ioo (t-1) (t+1) by constructor <;> linarith)
    (thetaGaussianTerm_summable k c t) (by constructor <;> linarith)
  convert! h using 1
  rw [((thetaGaussianTerm_summable k c t).mul_left (c : ℝ)).tsum_sub
    ((thetaGaussianTerm_summable (k+2) (c+4) t).mul_left (4 * Real.pi)),
    tsum_mul_left, tsum_mul_left]
  rfl

theorem thetaPhiRawD2_eq_gaussians (t : ℝ) :
    thetaPhiRawD2 t =
      (330 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
      (75 * Real.pi) * thetaGaussianSum 2 5 t -
      (224 * Real.pi ^ 3) * thetaGaussianSum 6 13 t +
      (32 * Real.pi ^ 4) * thetaGaussianSum 8 17 t := by
  unfold thetaPhiRawD2
  simp_rw [thetaPhiTermSecondDeriv_eq_gaussians]
  rw [((((thetaGaussianTerm_summable 4 9 t).mul_left (330 * Real.pi ^ 2)).sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (75 * Real.pi))).sub
      ((thetaGaussianTerm_summable 6 13 t).mul_left (224 * Real.pi ^ 3))).tsum_add
      ((thetaGaussianTerm_summable 8 17 t).mul_left (32 * Real.pi ^ 4)),
    (((thetaGaussianTerm_summable 4 9 t).mul_left (330 * Real.pi ^ 2)).sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (75 * Real.pi))).tsum_sub
      ((thetaGaussianTerm_summable 6 13 t).mul_left (224 * Real.pi ^ 3)),
    ((thetaGaussianTerm_summable 4 9 t).mul_left (330 * Real.pi ^ 2)).tsum_sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (75 * Real.pi)),
    tsum_mul_left, tsum_mul_left, tsum_mul_left, tsum_mul_left]
  rfl


/-- The third source derivative as a finite combination of Gaussian sums. -/
def thetaPhiRawD3 (t : ℝ) : ℝ :=
  (3270 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
  (375 * Real.pi) * thetaGaussianSum 2 5 t -
  (4232 * Real.pi ^ 3) * thetaGaussianSum 6 13 t +
  (1440 * Real.pi ^ 4) * thetaGaussianSum 8 17 t -
  (128 * Real.pi ^ 5) * thetaGaussianSum 10 21 t

/-- The fourth source derivative as a finite combination of Gaussian sums. -/
def thetaPhiRawD4 (t : ℝ) : ℝ :=
  (30930 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
  (1875 * Real.pi) * thetaGaussianSum 2 5 t -
  (68096 * Real.pi ^ 3) * thetaGaussianSum 6 13 t +
  (41408 * Real.pi ^ 4) * thetaGaussianSum 8 17 t -
  (8448 * Real.pi ^ 5) * thetaGaussianSum 10 21 t +
  (512 * Real.pi ^ 6) * thetaGaussianSum 12 25 t

theorem hasDerivAt_thetaPhiRawD2 (t : ℝ) :
    HasDerivAt thetaPhiRawD2 (thetaPhiRawD3 t) t := by
  rw [show thetaPhiRawD2 = fun t =>
      (330 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
      (75 * Real.pi) * thetaGaussianSum 2 5 t -
      (224 * Real.pi ^ 3) * thetaGaussianSum 6 13 t +
      (32 * Real.pi ^ 4) * thetaGaussianSum 8 17 t from
    funext thetaPhiRawD2_eq_gaussians]
  convert! ((((hasDerivAt_thetaGaussianSum 4 9 t).const_mul (330 * Real.pi ^ 2)).sub
    ((hasDerivAt_thetaGaussianSum 2 5 t).const_mul (75 * Real.pi))).sub
    ((hasDerivAt_thetaGaussianSum 6 13 t).const_mul (224 * Real.pi ^ 3))).add
    ((hasDerivAt_thetaGaussianSum 8 17 t).const_mul (32 * Real.pi ^ 4)) using 1
  norm_num [thetaPhiRawD3]
  ring

theorem hasDerivAt_thetaPhiRawD3 (t : ℝ) :
    HasDerivAt thetaPhiRawD3 (thetaPhiRawD4 t) t := by
  unfold thetaPhiRawD3
  convert! (((((hasDerivAt_thetaGaussianSum 4 9 t).const_mul (3270 * Real.pi ^ 2)).sub
    ((hasDerivAt_thetaGaussianSum 2 5 t).const_mul (375 * Real.pi))).sub
    ((hasDerivAt_thetaGaussianSum 6 13 t).const_mul (4232 * Real.pi ^ 3))).add
    ((hasDerivAt_thetaGaussianSum 8 17 t).const_mul (1440 * Real.pi ^ 4))).sub
    ((hasDerivAt_thetaGaussianSum 10 21 t).const_mul (128 * Real.pi ^ 5)) using 1
  norm_num [thetaPhiRawD4]
  ring

theorem deriv_deriv_thetaPhi_eq_raw (t : ℝ) :
    deriv (deriv thetaPhi) t = thetaPhiRawD2 t := by
  rw [show deriv thetaPhi = thetaPhiRawD1 from funext deriv_thetaPhi_eq_raw]
  exact (hasDerivAt_thetaPhiRawD1 t).deriv

theorem hasDerivAt_deriv_deriv_thetaPhi (t : ℝ) :
    HasDerivAt (deriv (deriv thetaPhi)) (thetaPhiRawD3 t) t := by
  rw [show deriv (deriv thetaPhi) = thetaPhiRawD2 from funext deriv_deriv_thetaPhi_eq_raw]
  exact hasDerivAt_thetaPhiRawD2 t

theorem hasDerivAt_deriv_deriv_deriv_thetaPhi (t : ℝ) :
    HasDerivAt (deriv (deriv (deriv thetaPhi))) (thetaPhiRawD4 t) t := by
  rw [show deriv (deriv (deriv thetaPhi)) = thetaPhiRawD3 from
    funext (fun t => (hasDerivAt_deriv_deriv_thetaPhi t).deriv)]
  exact hasDerivAt_thetaPhiRawD3 t


theorem thetaGaussianSum_poly_tendsto_atTop (k c p : ℕ) :
    Tendsto (fun t => thetaGaussianSum k c t * t ^ p) atTop (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  apply squeeze_zero' (g := fun t =>
    (HurwitzKernelBounds.F_nat k 1 (1/2) * (p.factorial : ℝ)) * Real.exp (-t))
  · exact Filter.Eventually.of_forall (fun _ => norm_nonneg _)
  · filter_upwards [eventually_ge_atTop ((c : ℝ) + 3)] with t ht
    exact thetaGaussianSum_poly_norm_le_tail k c p ht
  · simpa only [mul_zero] using Real.tendsto_exp_neg_atTop_nhds_zero.const_mul
      (HurwitzKernelBounds.F_nat k 1 (1/2) * (p.factorial : ℝ))

theorem deriv_thetaPhi_poly_tendsto_atTop (p : ℕ) :
    Tendsto (fun t => deriv thetaPhi t * t ^ p) atTop (𝓝 0) := by
  have h := (((thetaGaussianSum_poly_tendsto_atTop 4 9 p).const_mul (30 * Real.pi ^ 2)).sub
    ((thetaGaussianSum_poly_tendsto_atTop 2 5 p).const_mul (15 * Real.pi))).sub
    ((thetaGaussianSum_poly_tendsto_atTop 6 13 p).const_mul (8 * Real.pi ^ 3))
  simp only [mul_zero, sub_zero] at h
  apply h.congr
  intro t
  rw [deriv_thetaPhi_eq_raw, thetaPhiRawD1_eq_gaussians]
  ring

theorem deriv_deriv_thetaPhi_poly_integrableOn (p : ℕ) :
    IntegrableOn (fun t => deriv (deriv thetaPhi) t * t ^ p) (Ici (0 : ℝ)) := by
  have h := ((((thetaGaussianSum_poly_integrableOn 4 9 p).const_mul (330 * Real.pi ^ 2)).sub
    ((thetaGaussianSum_poly_integrableOn 2 5 p).const_mul (75 * Real.pi))).sub
    ((thetaGaussianSum_poly_integrableOn 6 13 p).const_mul (224 * Real.pi ^ 3))).add
    ((thetaGaussianSum_poly_integrableOn 8 17 p).const_mul (32 * Real.pi ^ 4))
  apply h.congr
  filter_upwards [] with t
  dsimp only [Pi.sub_apply, Pi.add_apply]
  rw [deriv_deriv_thetaPhi_eq_raw, thetaPhiRawD2_eq_gaussians]
  ring


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
    ring_nf
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
  ring_nf

/-- Exact polynomial-mode representation of the actual source jet, with its
strictly positive common factor retained. -/
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
