# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adbc2ede8ef2d7592d4fc048758d0ec76f9457b4` · SHA-256 `2a1f40d054ff494f004c12a7459c31f52da9cf12b5b92e950e3b1484230d0623`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPhiRawD5.Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ThetaPhiRawD5.Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac","mathematical_subject":"Analysis.Calculus","original_sha256":"be91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/be91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives

/-!
# Rank-four theta source jet through order six

This module extends the literal theta source derivative tape from the existing
orders zero through four to orders five and six.  It also records the exact
polynomial mode factors p_0,...,p_6 and an absolutely convergent normalized
mode-sum representation for all seven jet entries.

No sign is asserted for the 4x4 Hankel/Wronskian determinant here.  The purpose
of this file is to supply the exact source object required by the rank-four
decision gate without assuming the desired determinant orientation.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPhiRawD5.Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Filter MeasureTheory Set
open scoped Topology
noncomputable section

/-- The fifth actual source derivative as a finite combination of Gaussian sums. -/
def thetaPhiRawD5 (t : ℝ) : ℝ :=
  -(9375 * Real.pi) * thetaGaussianSum 2 5 t +
  (285870 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
  (1008968 * Real.pi ^ 3) * thetaGaussianSum 6 13 t +
  (976320 * Real.pi ^ 4) * thetaGaussianSum 8 17 t -
  (343040 * Real.pi ^ 5) * thetaGaussianSum 10 21 t +
  (46592 * Real.pi ^ 6) * thetaGaussianSum 12 25 t -
  (2048 * Real.pi ^ 7) * thetaGaussianSum 14 29 t

/-- The sixth actual source derivative as a finite combination of Gaussian sums. -/
def thetaPhiRawD6 (t : ℝ) : ℝ :=
  -(46875 * Real.pi) * thetaGaussianSum 2 5 t +
  (2610330 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
  (14260064 * Real.pi ^ 3) * thetaGaussianSum 6 13 t +
  (20633312 * Real.pi ^ 4) * thetaGaussianSum 8 17 t -
  (11109120 * Real.pi ^ 5) * thetaGaussianSum 10 21 t +
  (2536960 * Real.pi ^ 6) * thetaGaussianSum 12 25 t -
  (245760 * Real.pi ^ 7) * thetaGaussianSum 14 29 t +
  (8192 * Real.pi ^ 8) * thetaGaussianSum 16 33 t

theorem hasDerivAt_thetaPhiRawD4 (t : ℝ) :
    HasDerivAt thetaPhiRawD4 (thetaPhiRawD5 t) t := by
  unfold thetaPhiRawD4
  convert! ((((((hasDerivAt_thetaGaussianSum 4 9 t).const_mul
      (30930 * Real.pi ^ 2)).sub
    ((hasDerivAt_thetaGaussianSum 2 5 t).const_mul (1875 * Real.pi))).sub
    ((hasDerivAt_thetaGaussianSum 6 13 t).const_mul (68096 * Real.pi ^ 3))).add
    ((hasDerivAt_thetaGaussianSum 8 17 t).const_mul (41408 * Real.pi ^ 4))).sub
    ((hasDerivAt_thetaGaussianSum 10 21 t).const_mul (8448 * Real.pi ^ 5))).add
    ((hasDerivAt_thetaGaussianSum 12 25 t).const_mul (512 * Real.pi ^ 6)) using 1
  norm_num [thetaPhiRawD5]
  ring

theorem hasDerivAt_thetaPhiRawD5 (t : ℝ) :
    HasDerivAt thetaPhiRawD5 (thetaPhiRawD6 t) t := by
  unfold thetaPhiRawD5
  convert! (((((((hasDerivAt_thetaGaussianSum 2 5 t).const_mul
      (-(9375 * Real.pi))).add
    ((hasDerivAt_thetaGaussianSum 4 9 t).const_mul (285870 * Real.pi ^ 2))).sub
    ((hasDerivAt_thetaGaussianSum 6 13 t).const_mul (1008968 * Real.pi ^ 3))).add
    ((hasDerivAt_thetaGaussianSum 8 17 t).const_mul (976320 * Real.pi ^ 4))).sub
    ((hasDerivAt_thetaGaussianSum 10 21 t).const_mul (343040 * Real.pi ^ 5))).add
    ((hasDerivAt_thetaGaussianSum 12 25 t).const_mul (46592 * Real.pi ^ 6))).sub
    ((hasDerivAt_thetaGaussianSum 14 29 t).const_mul (2048 * Real.pi ^ 7)) using 1
  norm_num [thetaPhiRawD6]
  ring

/-- Exact polynomial mode factors for source derivatives zero through six. -/
def thetaPhiJetPolynomial7 (k : Fin 7) (y : ℝ) : ℝ :=
  ![2 * y - 3,
    -8 * y ^ 2 + 30 * y - 15,
    32 * y ^ 3 - 224 * y ^ 2 + 330 * y - 75,
    -128 * y ^ 4 + 1440 * y ^ 3 - 4232 * y ^ 2 + 3270 * y - 375,
    512 * y ^ 5 - 8448 * y ^ 4 + 41408 * y ^ 3 -
      68096 * y ^ 2 + 30930 * y - 1875,
    -2048 * y ^ 6 + 46592 * y ^ 5 - 343040 * y ^ 4 +
      976320 * y ^ 3 - 1008968 * y ^ 2 + 285870 * y - 9375,
    8192 * y ^ 7 - 245760 * y ^ 6 + 2536960 * y ^ 5 -
      11109120 * y ^ 4 + 20633312 * y ^ 3 - 14260064 * y ^ 2 +
      2610330 * y - 46875] k

/-- The literal source jet through derivative order six. -/
def thetaPhiJet7 (t : ℝ) : Fin 7 → ℝ :=
  ![thetaPhi t, thetaPhiRawD1 t, thetaPhiRawD2 t, thetaPhiRawD3 t,
    thetaPhiRawD4 t, thetaPhiRawD5 t, thetaPhiRawD6 t]

/-- Consecutive entries of the seven-entry jet are actual ordinary derivatives. -/
theorem hasDerivAt_thetaPhiJet7 (k : Fin 6) (t : ℝ) :
    HasDerivAt (fun u => thetaPhiJet7 u k.castSucc) (thetaPhiJet7 t k.succ) t := by
  fin_cases k
  · exact hasDerivAt_thetaPhi_raw t
  · exact hasDerivAt_thetaPhiRawD1 t
  · exact hasDerivAt_thetaPhiRawD2 t
  · exact hasDerivAt_thetaPhiRawD3 t
  · exact hasDerivAt_thetaPhiRawD4 t
  · exact hasDerivAt_thetaPhiRawD5 t

private def jetCoefficient7 (k : Fin 7) (j : Fin 8) : ℝ :=
  ![![-3, 2, 0, 0, 0, 0, 0, 0],
    ![-15, 30, -8, 0, 0, 0, 0, 0],
    ![-75, 330, -224, 32, 0, 0, 0, 0],
    ![-375, 3270, -4232, 1440, -128, 0, 0, 0],
    ![-1875, 30930, -68096, 41408, -8448, 512, 0, 0],
    ![-9375, 285870, -1008968, 976320, -343040, 46592, -2048, 0],
    ![-46875, 2610330, -14260064, 20633312, -11109120, 2536960, -245760, 8192]] k j

private theorem jetPolynomial7_eq_sum (k : Fin 7) (y : ℝ) :
    thetaPhiJetPolynomial7 k y =
      ∑ j : Fin 8, jetCoefficient7 k j * y ^ j.val := by
  fin_cases k <;> norm_num [thetaPhiJetPolynomial7, jetCoefficient7, Fin.sum_univ_succ] <;> ring

private theorem thetaPhi_eq_gaussianSums_rankFour (t : ℝ) :
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

private theorem thetaPhiJet7_eq_gaussianSum (k : Fin 7) (t : ℝ) :
    thetaPhiJet7 t k = ∑ j : Fin 8, jetCoefficient7 k j *
      (Real.pi ^ (j.val + 1) *
        thetaGaussianSum (2 * j.val + 2) (4 * j.val + 5) t) := by
  fin_cases k <;>
    norm_num [thetaPhiJet7, jetCoefficient7, Fin.sum_univ_succ,
      thetaPhi_eq_gaussianSums_rankFour, thetaPhiRawD1_eq_gaussians,
      thetaPhiRawD2_eq_gaussians, thetaPhiRawD3, thetaPhiRawD4,
      thetaPhiRawD5, thetaPhiRawD6] <;> ring

private theorem scaledGaussianTerm_eq_rankFour (j m : ℕ) (t : ℝ) :
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

/-- Exact normalized polynomial-mode representation of the source jet through
order six, with the common strictly positive factor retained. -/
theorem thetaPhiJet7_eq_polynomial_sum (k : Fin 7) (t : ℝ) :
    thetaPhiJet7 t k = (Real.pi * Real.exp (5 * t - thetaModeA t)) *
      ∑' m : ℕ, ((m : ℝ) + 1) ^ 2 *
        thetaPhiJetPolynomial7 k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
          Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1)) := by
  rw [thetaPhiJet7_eq_gaussianSum]
  have hs (j : Fin 8) : Summable (fun m : ℕ => jetCoefficient7 k j *
      (Real.pi ^ (j.val + 1) *
        thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t)) :=
    ((thetaGaussianTerm_summable (2*j.val+2) (4*j.val+5) t).mul_left _).mul_left _
  calc
    _ = ∑ j : Fin 8, ∑' m : ℕ, jetCoefficient7 k j *
        (Real.pi ^ (j.val + 1) *
          thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t) := by
      simp only [tsum_mul_left, thetaGaussianSum]
    _ = ∑' m : ℕ, ∑ j : Fin 8, jetCoefficient7 k j *
        (Real.pi ^ (j.val + 1) *
          thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t) := by
      exact (Summable.tsum_finsetSum (fun j _ => hs j)).symm
    _ = ∑' m : ℕ, (Real.pi * Real.exp (5 * t - thetaModeA t)) *
        (((m : ℝ) + 1) ^ 2 *
          thetaPhiJetPolynomial7 k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
            Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) := by
      apply tsum_congr
      intro m
      simp_rw [scaledGaussianTerm_eq_rankFour]
      rw [jetPolynomial7_eq_sum]
      simp only [Finset.mul_sum, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro j _
      ring
    _ = _ := tsum_mul_left

/-- Absolute convergence of every normalized rank-four source-jet mode sum. -/
theorem thetaPhiJet7_polynomial_summable (k : Fin 7) (t : ℝ) :
    Summable (fun m : ℕ => ((m : ℝ) + 1) ^ 2 *
      thetaPhiJetPolynomial7 k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
        Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) := by
  apply (summable_mul_left_iff (a := Real.pi * Real.exp (5 * t - thetaModeA t))
    (by positivity)).mp
  have hs (j : Fin 8) : Summable (fun m : ℕ => jetCoefficient7 k j *
      (Real.pi ^ (j.val + 1) *
        thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t)) :=
    ((thetaGaussianTerm_summable (2*j.val+2) (4*j.val+5) t).mul_left _).mul_left _
  apply (summable_sum (fun j (_ : j ∈ Finset.univ) => hs j)).congr
  intro m
  simp_rw [scaledGaussianTerm_eq_rankFour]
  rw [jetPolynomial7_eq_sum]
  simp only [Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro j _
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
