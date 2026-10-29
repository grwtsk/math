-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SignedAtomPrimitive.Variant6a6d0dbe0b9272be88560a8b110f26a4c18110e0e1edab8d513859642f85a389","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a6d0dbe0b9272be88560a8b110f26a4c18110e0e1edab8d513859642f85a389","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SignedAtomPrimitive.Variant6a6d0dbe0b9272be88560a8b110f26a4c18110e0e1edab8d513859642f85a389","mathematical_subject":"Analysis.Calculus","original_sha256":"6a6d0dbe0b9272be88560a8b110f26a4c18110e0e1edab8d513859642f85a389","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791324850141893000/SourceRawPsiPrimitiveAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPsiInverseSquare
import SourceActualPrimitiveFiniteConsumer
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv

/-!
Exact finite raw-psi Abel adapter for the original centered second primitive.
The signed arithmetic budget is not supplied. Research direction: grwtsk contributors. AI formal construction: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SignedAtomPrimitive.Variant6a6d0dbe0b9272be88560a8b110f26a4c18110e0e1edab8d513859642f85a389

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceRawPsiPrimitiveAdapter

open MeasureTheory Set ArithmeticFunction
open scoped BigOperators Interval
open SourceActualPsiInverseSquare SourceActualPrimitiveFiniteConsumer
open SourceMangoldtAbel WeightedPrimeMertens RH16ActualPsiNegativeBlock

def signedAtomPrimitive (t y : ℝ) : ℝ :=
  -4 * Real.exp (t / 2) * y⁻¹ +
    2 * (t - Real.log y + 2) * y ^ (-1 / 2 : ℝ)

def literalXiWeight (t y : ℝ) : ℝ :=
  4 * Real.exp (t / 2) / y ^ 2 - (t - Real.log y + 4) / y ^ (3 / 2 : ℝ)

theorem signedAtomPrimitive_hasDerivAt (t y : ℝ) (hy : 0 < y) :
    HasDerivAt (signedAtomPrimitive t) (literalXiWeight t y) y := by
  have h1 := (hasDerivAt_inv hy.ne').const_mul (-4 * Real.exp (t / 2))
  have h2 := (((hasDerivAt_const y t).sub (Real.hasDerivAt_log hy.ne')).add_const 2).const_mul 2
  have h3 := Real.hasDerivAt_rpow_const (x := y) (p := (-1 / 2 : ℝ)) (Or.inl hy.ne')
  have he : y ^ (-1 / 2 : ℝ) = y * y ^ (-3 / 2 : ℝ) := by
    rw [show (-1 / 2 : ℝ) = -3 / 2 + 1 by ring, Real.rpow_add hy]
    simp only [Real.rpow_one, mul_comm]
  have hneg : y ^ (-3 / 2 : ℝ) = (y ^ (3 / 2 : ℝ))⁻¹ := by
    rw [show (-3 / 2 : ℝ) = -(3 / 2) by ring, Real.rpow_neg hy.le]
  exact (h1.add (h2.mul h3)).congr_deriv (by
    dsimp only [literalXiWeight, Pi.mul_apply, Pi.add_apply, Pi.sub_apply]
    rw [show (-1 / 2 - 1 : ℝ) = -3 / 2 by ring, he, hneg]
    field_simp
    ring)

theorem literalXiWeight_continuousOn (t X : ℝ) :
    ContinuousOn (literalXiWeight t) (Icc 2 X) := by
  intro y hy
  have hp : 0 < y := by linarith [hy.1]
  unfold literalXiWeight
  exact ((continuousAt_const.div (continuousAt_id.pow 2) (pow_ne_zero 2 hp.ne')).sub
    (((continuousAt_const.sub (Real.continuousAt_log hp.ne')).add continuousAt_const).div
      (continuousAt_id.rpow_const (Or.inl hp.ne'))
      (Real.rpow_pos_of_pos hp _).ne')).continuousWithinAt

theorem signedAtomPrimitive_at_upper (t : ℝ) :
    signedAtomPrimitive t (Real.exp t) = 0 := by
  have he : Real.exp (t / 2) * (Real.exp t)⁻¹ = Real.exp (-t / 2) := by
    rw [← Real.exp_neg, ← Real.exp_add]
    congr 1
    ring
  unfold signedAtomPrimitive
  rw [Real.log_exp, ← Real.exp_mul, show t * (-1 / 2 : ℝ) = -t / 2 by ring]
  simp only [sub_self, zero_add]
  linear_combination -4 * he

/-- The raw-psi integral preserves all closed atoms through the actual real floor. -/
theorem raw_psi_weight_eq_closed_atoms (t : ℝ) (ht : Real.log 2 ≤ t) :
    (∫ y in 2..Real.exp t, Chebyshev.psi y * literalXiWeight t y) =
      ∑ n ∈ Finset.Icc 0 ⌊Real.exp t⌋₊,
        vonMangoldt n * (-signedAtomPrimitive t n) := by
  have hX : 2 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht
  have hc := literalXiWeight_continuousOn t (Real.exp t)
  have hd : ∀ y ∈ Icc (2 : ℝ) (Real.exp t), DifferentiableAt ℝ (signedAtomPrimitive t) y := by
    intro y hy
    exact (signedAtomPrimitive_hasDerivAt t y (by linarith [hy.1])).differentiableAt
  have hi : IntegrableOn (deriv (signedAtomPrimitive t)) (Icc 2 (Real.exp t)) := by
    apply hc.integrableOn_Icc.congr_fun
    · intro y hy
      exact (signedAtomPrimitive_hasDerivAt t y (by linarith [hy.1])).deriv.symm
    · exact measurableSet_Icc
  have ha := sum_mul_eq_sub_integral_mul₁ (vonMangoldt : ℕ → ℝ)
    (by simp) (by simp) (Real.exp t) hd hi
  have hj : (∫ y in Ioc (2 : ℝ) (Real.exp t),
      deriv (signedAtomPrimitive t) y * ∑ n ∈ Finset.Icc 0 ⌊y⌋₊, vonMangoldt n) =
      ∫ y in 2..Real.exp t, Chebyshev.psi y * literalXiWeight t y := by
    rw [intervalIntegral.integral_of_le hX]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro y hy
    dsimp only
    rw [(signedAtomPrimitive_hasDerivAt t y (by linarith [hy.1])).deriv,
      ← Chebyshev.psi_eq_sum_Icc]
    ring
  rw [signedAtomPrimitive_at_upper, zero_mul, hj, zero_sub] at ha
  have hn := congrArg Neg.neg ha
  rw [neg_neg] at hn
  calc
    _ = -(∑ n ∈ Finset.Icc 0 ⌊Real.exp t⌋₊,
        signedAtomPrimitive t n * vonMangoldt n) := hn.symm
    _ = _ := by
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro n _
      ring

def plainAtomAntiderivative (t y : ℝ) : ℝ :=
  -4 * Real.exp (t / 2) * Real.log y +
    4 * (t - Real.log y + 4) * y ^ (1 / 2 : ℝ)

theorem plainAtomAntiderivative_hasDerivAt (t y : ℝ) (hy : 0 < y) :
    HasDerivAt (plainAtomAntiderivative t) (signedAtomPrimitive t y) y := by
  have h1 := (Real.hasDerivAt_log hy.ne').const_mul (-4 * Real.exp (t / 2))
  have h2 := (((hasDerivAt_const y t).sub (Real.hasDerivAt_log hy.ne')).add_const 4).const_mul 4
  have h3 := Real.hasDerivAt_rpow_const (x := y) (p := (1 / 2 : ℝ)) (Or.inl hy.ne')
  have he : y ^ (-1 / 2 : ℝ) = y ^ (1 / 2 : ℝ) / y := by
    rw [show (-1 / 2 : ℝ) = 1 / 2 - 1 by ring, Real.rpow_sub hy, Real.rpow_one]
  exact (h1.add (h2.mul h3)).congr_deriv (by
    dsimp only [signedAtomPrimitive, Pi.mul_apply, Pi.add_apply, Pi.sub_apply]
    rw [show (1 / 2 - 1 : ℝ) = -1 / 2 by ring, he]
    ring)

def baselineAtomAntiderivative (t c y : ℝ) : ℝ :=
  (c - y) * signedAtomPrimitive t y + plainAtomAntiderivative t y

theorem baselineAtomAntiderivative_hasDerivAt (t c y : ℝ) (hy : 0 < y) :
    HasDerivAt (baselineAtomAntiderivative t c)
      ((c - y) * literalXiWeight t y) y := by
  have hc := (hasDerivAt_const y c).sub (hasDerivAt_id y)
  exact ((hc.mul (signedAtomPrimitive_hasDerivAt t y hy)).add
    (plainAtomAntiderivative_hasDerivAt t y hy)).congr_deriv (by
      dsimp only [Pi.sub_apply, Pi.mul_apply, Pi.add_apply, id_eq]
      ring)

theorem fullXiKernel_eq_atoms_and_baseline (t : ℝ) (ht : Real.log 2 ≤ t) :
    shiftedPsiFullPrimitive t =
      (∑ n ∈ Finset.Icc 0 ⌊Real.exp t⌋₊,
        vonMangoldt n * (-signedAtomPrimitive t n)) +
      plainAtomAntiderivative t (Real.exp t) -
      baselineAtomAntiderivative t
        (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) 2 := by
  have hX : 2 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht
  let c := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have hw := literalXiWeight_continuousOn t (Real.exp t)
  have hb : IntervalIntegrable (fun y => (c - y) * literalXiWeight t y)
      volume 2 (Real.exp t) :=
    ((continuousOn_const.sub continuousOn_id).mul hw).intervalIntegrable_of_Icc hX
  have hp : IntervalIntegrable (fun y => Chebyshev.psi y * literalXiWeight t y)
      volume 2 (Real.exp t) := by
    rw [intervalIntegrable_iff_integrableOn_Icc_of_le hX]
    apply (integrableOn_mul_sum_Icc (m := 0) (vonMangoldt : ℕ → ℝ)
      (by norm_num : (0 : ℝ) ≤ 2) hw.integrableOn_Icc).congr_fun
    · intro y _
      dsimp only
      rw [← Chebyshev.psi_eq_sum_Icc]
      ring
    · exact measurableSet_Icc
  have hd := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun y (hy : y ∈ uIcc (2 : ℝ) (Real.exp t)) =>
      baselineAtomAntiderivative_hasDerivAt t c y (by
        rw [uIcc_of_le hX] at hy
        linarith [hy.1])) hb
  unfold shiftedPsiFullPrimitive
  calc
    _ = ∫ y in 2..Real.exp t, Chebyshev.psi y * literalXiWeight t y +
        (c - y) * literalXiWeight t y := by
      apply intervalIntegral.integral_congr
      intro y _
      unfold shiftedActualChebyshev literalXiWeight
      dsimp only [c]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_add hp hb, raw_psi_weight_eq_closed_atoms t ht, hd]
      unfold baselineAtomAntiderivative
      rw [signedAtomPrimitive_at_upper]
      ring

private def sourceAtomWork (t : ℝ) (n : ℕ) : ℝ :=
  vonMangoldt n / (n : ℝ) * Real.exp (Real.log (n : ℝ) / 2) *
    (2 * (t - Real.log (n : ℝ)) + 4)

private theorem atom_eq_prefix_sub_work (t : ℝ) (n : ℕ) :
    vonMangoldt n * (-signedAtomPrimitive t n) =
      4 * Real.exp (t / 2) * (vonMangoldt n / (n : ℝ)) - sourceAtomWork t n := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp [signedAtomPrimitive, sourceAtomWork]
  have hp : 0 < (n : ℝ) := Nat.cast_pos.mpr (Nat.pos_of_ne_zero hn)
  have hr : Real.exp (Real.log (n : ℝ) / 2) = (n : ℝ) * (n : ℝ) ^ (-1 / 2 : ℝ) := by
    rw [show Real.log (n : ℝ) / 2 = Real.log (n : ℝ) * (1 / 2) by ring,
      ← Real.rpow_def_of_pos hp,
      show (1 / 2 : ℝ) = -1 / 2 + 1 by ring, Real.rpow_add hp, Real.rpow_one]
    ring
  unfold signedAtomPrimitive sourceAtomWork
  rw [hr]
  field_simp
  ring

private theorem closed_atom_sum_eq_prefix_sub_work (t : ℝ) :
    (∑ n ∈ Finset.Icc 0 ⌊Real.exp t⌋₊, vonMangoldt n * (-signedAtomPrimitive t n)) =
      4 * Real.exp (t / 2) * mangoldtLogPrefix t -
        ∑ n ∈ Finset.Icc 0 ⌊Real.exp t⌋₊, sourceAtomWork t n := by
  simp_rw [atom_eq_prefix_sub_work]
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
  have he : (∑ n ∈ Finset.Icc 0 ⌊Real.exp t⌋₊, vonMangoldt n / (n : ℝ)) =
      mangoldtLogPrefix t := by
    unfold mangoldtLogPrefix weightedMangoldt
    rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
    simp
  rw [he]

private theorem closed_work_sum_eq_first_and_tail (t : ℝ) (ht : Real.log 2 ≤ t) :
    (∑ n ∈ Finset.Icc 0 ⌊Real.exp t⌋₊, sourceAtomWork t n) =
      Real.log 2 / 2 * Real.exp (Real.log 2 / 2) * (2 * (t - Real.log 2) + 4) +
        ∑ n ∈ Finset.Ioc 2 ⌊Real.exp t⌋₊, sourceAtomWork t n := by
  have hX : 2 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht
  have hn : 2 ≤ ⌊Real.exp t⌋₊ := Nat.le_floor hX
  have hu : Finset.Icc 0 ⌊Real.exp t⌋₊ = Finset.Icc 0 2 ∪ Finset.Ioc 2 ⌊Real.exp t⌋₊ := by
    ext n
    simp only [Finset.mem_union, Finset.mem_Icc, Finset.mem_Ioc]
    omega
  have hd : Disjoint (Finset.Icc 0 2) (Finset.Ioc 2 ⌊Real.exp t⌋₊) := by
    apply Finset.disjoint_left.mpr
    intro n h1 h2
    simp only [Finset.mem_Icc, Finset.mem_Ioc] at h1 h2
    omega
  rw [hu, Finset.sum_union hd, show Finset.Icc (0 : ℕ) 2 = {0, 1, 2} by decide]
  simp [sourceAtomWork, vonMangoldt_apply_prime Nat.prime_two]

private theorem error_at_first_atom : mangoldtLogError (Real.log 2) = -Real.log 2 / 2 := by
  unfold mangoldtLogError mangoldtLogPrefix weightedMangoldt
  rw [Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  norm_num only [Nat.floor_natCast]
  rw [show Finset.Ioc (0 : ℕ) 2 = {1, 2} by decide]
  simp only [Finset.sum_insert, Finset.mem_singleton, Nat.reduceEqDiff, not_false_eq_true,
    Finset.sum_singleton, vonMangoldt_apply_one, zero_div, zero_add,
    vonMangoldt_apply_prime Nat.prime_two, Nat.cast_ofNat]
  ring

private theorem half_power_two : (2 : ℝ) ^ (1 / 2 : ℝ) = Real.exp (Real.log 2 / 2) := by
  rw [Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 2)]
  congr 1
  ring

private theorem negative_half_power_two :
    (2 : ℝ) ^ (-(1 / 2 : ℝ)) = Real.exp (Real.log 2 / 2) / 2 := by
  rw [show (-(1 / 2 : ℝ)) = 1 / 2 - 1 by ring,
    Real.rpow_sub (by norm_num : (0 : ℝ) < 2), Real.rpow_one, half_power_two]

private theorem plainAtomAntiderivative_at_upper (t : ℝ) :
    plainAtomAntiderivative t (Real.exp t) =
      -4 * Real.exp (t / 2) * t + 16 * Real.exp (t / 2) := by
  unfold plainAtomAntiderivative
  rw [Real.log_exp, ← Real.exp_mul, show t * (1 / 2 : ℝ) = t / 2 by ring]
  ring

/-- The complete literal Xi kernel equals the independently defined actual finite readout. -/
theorem shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout (t : ℝ) (ht : Real.log 2 ≤ t) :
    shiftedPsiFullPrimitive t = actualFiniteSecondReadout t := by
  rw [fullXiKernel_eq_atoms_and_baseline t ht, closed_atom_sum_eq_prefix_sub_work,
    closed_work_sum_eq_first_and_tail t ht, plainAtomAntiderivative_at_upper]
  unfold actualFiniteSecondReadout baselineAtomAntiderivative signedAtomPrimitive
    plainAtomAntiderivative
  dsimp only
  rw [Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  norm_num only [Nat.floor_natCast]
  rw [error_at_first_atom, half_power_two, negative_half_power_two]
  unfold sourceAtomWork mangoldtLogError
  ring

end FormalResearch.RiemannHypothesis.SourceRawPsiPrimitiveAdapter
