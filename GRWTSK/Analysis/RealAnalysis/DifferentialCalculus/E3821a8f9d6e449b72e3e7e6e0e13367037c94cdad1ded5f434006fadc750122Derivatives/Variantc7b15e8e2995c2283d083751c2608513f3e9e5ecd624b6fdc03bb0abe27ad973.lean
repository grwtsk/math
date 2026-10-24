-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourcePowerTail.Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourcePowerTail.Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122","mathematical_subject":"Analysis.Calculus","original_sha256":"e3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/e3/e3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122--Derivatives.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailTransport


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourcePowerTail.Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set
open scoped Topology
noncomputable section

def sourcePowerTail (n : ℕ) (t : ℝ) : ℝ :=
  ∫ u in Ici t, thetaPhi u * u ^ n

theorem source_power_integrable (n : ℕ) (t : ℝ) :
    IntegrableOn (fun u => thetaPhi u * u ^ n) (Ici t) := by
  have h0 : IntegrableOn (fun u => thetaPhi u * u ^ n) (Ici (0 : ℝ)) := by
    have h := (thetaTail_integrable n (le_refl 0)).mul_const (n.factorial : ℝ)
    simpa only [IntegrableOn, sub_zero, div_mul_cancel₀ _ (by positivity : (n.factorial : ℝ) ≠ 0)] using h
  by_cases ht : 0 ≤ t
  · exact h0.mono_set (Ici_subset_Ici.mpr ht)
  · apply (((continuous_thetaPhi.mul (continuous_id.pow n)).continuousOn.integrableOn_Icc
      (a := t) (b := 0)).union h0).mono_set
    intro u hu
    by_cases hu0 : 0 ≤ u
    · exact Or.inr hu0
    · exact Or.inl ⟨hu, le_of_not_ge hu0⟩

theorem sourcePowerTail_eq_sub (n : ℕ) (t : ℝ) :
    sourcePowerTail n t = sourcePowerTail n 0 -
      ∫ u in (0 : ℝ)..t, thetaPhi u * u ^ n := by
  have h := intervalIntegral.integral_Ici_sub_Ici'
    (source_power_integrable n 0) (source_power_integrable n t)
  dsimp [sourcePowerTail]
  linarith

theorem hasDerivAt_sourcePowerTail (n : ℕ) (t : ℝ) :
    HasDerivAt (sourcePowerTail n) (-(thetaPhi t * t ^ n)) t := by
  have heq : sourcePowerTail n = fun x => sourcePowerTail n 0 -
      ∫ u in (0 : ℝ)..x, thetaPhi u * u ^ n := funext (sourcePowerTail_eq_sub n)
  rw [heq]
  have hc := continuous_thetaPhi.mul (continuous_id.pow n)
  exact (intervalIntegral.integral_hasDerivAt_right
    (hc.intervalIntegrable 0 t) (hc.stronglyMeasurableAtFilter volume _) hc.continuousAt).const_sub _

theorem thetaTail_two_eq (t : ℝ) :
    thetaTail 2 t = sourcePowerTail 1 t - t * sourcePowerTail 0 t := by
  simp only [thetaTail, pow_one, Nat.factorial_one, Nat.cast_one, div_one]
  unfold sourcePowerTail
  rw [← integral_const_mul, ← integral_sub (source_power_integrable 1 t)
    ((source_power_integrable 0 t).const_mul t)]
  apply integral_congr_ae
  filter_upwards [] with u
  ring

theorem hasDerivAt_thetaTail_two (t : ℝ) :
    HasDerivAt (thetaTail 2) (-thetaTail 1 t) t := by
  have heq : thetaTail 2 = fun t => sourcePowerTail 1 t - t * sourcePowerTail 0 t :=
    funext thetaTail_two_eq
  rw [heq]
  convert! (hasDerivAt_sourcePowerTail 1 t).sub
    ((hasDerivAt_id t).mul (hasDerivAt_sourcePowerTail 0 t)) using 1
  simp [sourcePowerTail, thetaTail]
  ring


def tailBinomialCoeff (r i : ℕ) (t : ℝ) : ℝ :=
  (-t) ^ (r - i) * (r.choose i : ℝ)

theorem tailBinomialCoeff_sum (r : ℕ) (t u : ℝ) :
    ∑ i ∈ Finset.range (r + 1), tailBinomialCoeff r i t * u ^ i = (u - t) ^ r := by
  rw [sub_eq_add_neg, add_pow]
  apply Finset.sum_congr rfl
  intro i _
  unfold tailBinomialCoeff
  ring

theorem hasDerivAt_tailBinomialCoeff (r i : ℕ) (t : ℝ) :
    HasDerivAt (tailBinomialCoeff r i) (deriv (tailBinomialCoeff r i) t) t := by
  apply DifferentiableAt.hasDerivAt
  unfold tailBinomialCoeff
  fun_prop

theorem tailBinomialCoeff_deriv_sum (r : ℕ) (t u : ℝ) :
    ∑ i ∈ Finset.range (r + 1), deriv (tailBinomialCoeff r i) t * u ^ i =
      -(r : ℝ) * (u - t) ^ (r - 1) := by
  have hsum : HasDerivAt
      (fun x => ∑ i ∈ Finset.range (r + 1), tailBinomialCoeff r i x * u ^ i)
      (∑ i ∈ Finset.range (r + 1), deriv (tailBinomialCoeff r i) t * u ^ i) t :=
    HasDerivAt.fun_sum fun i _ => (hasDerivAt_tailBinomialCoeff r i t).mul_const _
  have heq : (fun x => ∑ i ∈ Finset.range (r + 1), tailBinomialCoeff r i x * u ^ i) =
      fun x => (u - x) ^ r := funext (fun x => tailBinomialCoeff_sum r x u)
  rw [heq] at hsum
  have hp := ((hasDerivAt_id t).const_sub u).pow r
  have hp' : HasDerivAt (fun x : ℝ => (u - x) ^ r) (-(r : ℝ) * (u - t) ^ (r - 1)) t := by
    convert! hp using 1
    simp only [id_eq]
    ring
  exact hsum.unique hp'

theorem integral_source_coeff_sum (r : ℕ) (c : ℕ → ℝ) (t : ℝ) :
    (∫ u in Ici t, thetaPhi u * ∑ i ∈ Finset.range (r + 1), c i * u ^ i) =
      ∑ i ∈ Finset.range (r + 1), c i * sourcePowerTail i t := by
  simp_rw [Finset.mul_sum, show ∀ u i, thetaPhi u * (c i * u ^ i) =
    c i * (thetaPhi u * u ^ i) by intro u i; ring]
  rw [integral_finsetSum _ (fun i _ => (source_power_integrable i t).const_mul (c i))]
  apply Finset.sum_congr rfl
  intro i _
  unfold sourcePowerTail
  rw [← integral_const_mul]

theorem thetaTail_eq_binomial (r : ℕ) (t : ℝ) :
    thetaTail (r + 1) t =
      (∑ i ∈ Finset.range (r + 1), tailBinomialCoeff r i t * sourcePowerTail i t) /
        (r.factorial : ℝ) := by
  simp only [thetaTail]
  rw [integral_div]
  rw [← integral_source_coeff_sum r (fun i => tailBinomialCoeff r i t) t]
  simp_rw [tailBinomialCoeff_sum]

theorem hasDerivAt_thetaTail_succ_succ (r : ℕ) (t : ℝ) :
    HasDerivAt (thetaTail (r + 1 + 1)) (-thetaTail (r + 1) t) t := by
  have heq : thetaTail (r + 1 + 1) = fun t =>
      (∑ i ∈ Finset.range (r + 1 + 1), tailBinomialCoeff (r + 1) i t *
        sourcePowerTail i t) / ((r + 1).factorial : ℝ) := funext (thetaTail_eq_binomial (r + 1))
  rw [heq]
  have hd := (HasDerivAt.fun_sum (u := Finset.range (r + 1 + 1))
    fun i _ => (hasDerivAt_tailBinomialCoeff (r + 1) i t).mul
      (hasDerivAt_sourcePowerTail i t)).div_const ((r + 1).factorial : ℝ)
  convert! hd using 1
  have hz : ∑ i ∈ Finset.range (r + 1 + 1),
      tailBinomialCoeff (r + 1) i t * (thetaPhi t * t ^ i) = 0 := by
    simp_rw [show ∀ i, tailBinomialCoeff (r + 1) i t * (thetaPhi t * t ^ i) =
      thetaPhi t * (tailBinomialCoeff (r + 1) i t * t ^ i) by intro i; ring]
    rw [← Finset.mul_sum, tailBinomialCoeff_sum]
    simp
  have hs : ∑ i ∈ Finset.range (r + 1 + 1),
      (deriv (tailBinomialCoeff (r + 1) i) t * sourcePowerTail i t +
        tailBinomialCoeff (r + 1) i t * -(thetaPhi t * t ^ i)) =
      -(r + 1 : ℝ) * ∫ u in Ici t, thetaPhi u * (u - t) ^ r := by
    simp_rw [mul_neg, ← sub_eq_add_neg]
    rw [Finset.sum_sub_distrib, hz, sub_zero,
      ← integral_source_coeff_sum (r + 1) (fun i => deriv (tailBinomialCoeff (r + 1) i) t) t]
    simp_rw [tailBinomialCoeff_deriv_sum, Nat.add_sub_cancel]
    rw [← integral_const_mul]
    apply integral_congr_ae
    filter_upwards [] with u
    push_cast
    ring
  rw [hs]
  simp only [thetaTail]
  rw [integral_div, Nat.factorial_succ]
  push_cast
  field_simp


theorem hasDerivAt_thetaTail_succ (r : ℕ) (t : ℝ) :
    HasDerivAt (thetaTail (r + 1)) (-thetaTail r t) t := by
  cases r with
  | zero => exact hasDerivAt_thetaTail_one t
  | succ r => exact hasDerivAt_thetaTail_succ_succ r t

theorem deriv_thetaTail_succ (r : ℕ) :
    deriv (thetaTail (r + 1)) = fun t => -thetaTail r t := by
  funext t
  exact (hasDerivAt_thetaTail_succ r t).deriv

theorem iteratedDeriv_thetaTail_add (j r : ℕ) (t : ℝ) :
    iteratedDeriv j (thetaTail (r + j)) t = (-1 : ℝ) ^ j * thetaTail r t := by
  induction j with
  | zero => simp
  | succ j ih =>
      change iteratedDeriv (j + 1) (thetaTail ((r + j) + 1)) t =
        (-1 : ℝ) ^ (j + 1) * thetaTail r t
      rw [iteratedDeriv_succ', deriv_thetaTail_succ]
      change iteratedDeriv j (-thetaTail (r + j)) t = _
      rw [iteratedDeriv_neg]
      rw [ih, pow_succ]
      ring

theorem iteratedDeriv_thetaTail (j r : ℕ) (hjr : j ≤ r) (t : ℝ) :
    iteratedDeriv j (thetaTail r) t = (-1 : ℝ) ^ j * thetaTail (r - j) t := by
  convert! iteratedDeriv_thetaTail_add j (r - j) t using 1
  rw [Nat.sub_add_cancel hjr]

theorem continuous_thetaTail (r : ℕ) : Continuous (thetaTail r) := by
  cases r with
  | zero => exact continuous_thetaPhi
  | succ r => exact continuous_iff_continuousAt.mpr fun t =>
      (hasDerivAt_thetaTail_succ r t).continuousAt


theorem contDiff_thetaTail_order (r : ℕ) : ContDiff ℝ r (thetaTail r) := by
  rw [contDiff_nat_iff_iteratedDeriv]
  constructor
  · intro j hj
    have hfun : iteratedDeriv j (thetaTail r) = fun t => (-1 : ℝ) ^ j * thetaTail (r - j) t :=
      funext (iteratedDeriv_thetaTail j r hj)
    rw [hfun]
    exact continuous_const.mul (continuous_thetaTail _)
  · intro j hj
    have hfun : iteratedDeriv j (thetaTail r) = fun t => (-1 : ℝ) ^ j * thetaTail (r - j) t :=
      funext (iteratedDeriv_thetaTail j r hj.le)
    rw [hfun]
    have hr : r - j = (r - j - 1) + 1 := by omega
    rw [hr]
    exact (differentiable_const ((-1 : ℝ) ^ j)).mul (fun t => (hasDerivAt_thetaTail_succ _ t).differentiableAt)


end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
