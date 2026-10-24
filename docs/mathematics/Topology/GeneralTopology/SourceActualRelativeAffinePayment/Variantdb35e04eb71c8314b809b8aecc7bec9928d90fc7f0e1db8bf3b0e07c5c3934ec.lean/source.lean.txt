import SourceActualRelativeKernelMoments
import SourceActualPsiPntTimeDecay

/-!
The authentic closed relative-Psi error determines its own affine unit secant.
Compact kernel moments pay this trend with a genuine actual PNT rate. The
complete signed jump interaction remains in the original finite pairing.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRelativeAffinePayment
open MeasureTheory Set Filter Asymptotics
open scoped Interval Topology
open SourceActualRelativeKernelMoments SourceActualPsiPntTimeDecay
open SourceCriticalRelativeCompensation OmegaResearch.CriticalRelativePairing

/-- The actual endpoint value and actual unit secant, with no smooth-error premise. -/
def actualRelativeAffineTrend (A t : ℝ) : ℝ :=
  relativePsiError (2*A) + (t-2*A) *
    (relativePsiError (2*A) - relativePsiError (2*A-1))

/-- The literal full compact kernel payment of that actual affine trend. -/
def actualRelativeAffineKernelPayment (A : ℝ) : ℝ :=
  ∫ t in 0..2*A, baselineLogKernel A t * actualRelativeAffineTrend A t

private theorem baseline_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (baselineLogKernel A) := by
  unfold baselineLogKernel
  exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t/2))).mul
    (criticalWeight_continuous hA)

/-- All finite affine-payment integrability is proved from the actual compact kernel. -/
theorem actualRelativeAffineKernel_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => baselineLogKernel A t * actualRelativeAffineTrend A t)
      volume 0 (2*A) := by
  have ht : Continuous (actualRelativeAffineTrend A) := by
    unfold actualRelativeAffineTrend
    fun_prop
  exact ((baseline_continuous hA).mul ht).intervalIntegrable _ _

/-- Exact zeroth and first moments retain the actual endpoint and actual secant. -/
theorem actualRelativeAffineKernelPayment_eq {A : ℝ} (hA : 1 ≤ A) :
    actualRelativeAffineKernelPayment A =
      (relativePsiError (2*A) - 2*A *
        (relativePsiError (2*A) - relativePsiError (2*A-1))) *
        (∫ t in 0..2*A, baselineLogKernel A t) +
      (relativePsiError (2*A) - relativePsiError (2*A-1)) *
        (∫ t in 0..2*A, t * baselineLogKernel A t) := by
  have he : (fun t => baselineLogKernel A t * actualRelativeAffineTrend A t) =
      fun t => (relativePsiError (2*A) - 2*A *
        (relativePsiError (2*A) - relativePsiError (2*A-1))) * baselineLogKernel A t +
      (relativePsiError (2*A) - relativePsiError (2*A-1)) *
        (t * baselineLogKernel A t) := by
    funext t
    unfold actualRelativeAffineTrend
    ring
  have hi := (baseline_continuous hA).intervalIntegrable (μ:=volume) 0 (2*A)
  have hc : Continuous (baselineLogKernel A) := baseline_continuous hA
  have hi' : IntervalIntegrable (fun t : ℝ => t * baselineLogKernel A t)
      volume 0 (2*A) :=
    (by fun_prop : Continuous (fun t : ℝ => t * baselineLogKernel A t)).intervalIntegrable _ _
  unfold actualRelativeAffineKernelPayment
  rw [he, intervalIntegral.integral_add (hi.const_mul _) (hi'.const_mul _),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]

/-- The actual affine trend costs only its value and its linked unit secant. -/
theorem actualRelativeAffineKernelPayment_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualRelativeAffineKernelPayment A| ≤ |relativePsiError (2*A)| +
      (2*A+6) * |relativePsiError (2*A)-relativePsiError (2*A-1)| := by
  rw [actualRelativeAffineKernelPayment_eq hA]
  have h0 := (actualRelativeKernel_zero_moment_abs_lt_one hA).le
  have h1 := actualRelativeKernel_first_moment_abs_le_six hA
  have ha : |2*A| = 2*A := abs_of_nonneg (by linarith)
  calc
    _ ≤ |relativePsiError (2*A) - 2*A *
        (relativePsiError (2*A) - relativePsiError (2*A-1))| *
        |∫ t in 0..2*A, baselineLogKernel A t| +
      |relativePsiError (2*A) - relativePsiError (2*A-1)| *
        |∫ t in 0..2*A, t * baselineLogKernel A t| := by
      simpa only [abs_mul] using
        abs_add_le ((relativePsiError (2*A) - 2*A *
          (relativePsiError (2*A) - relativePsiError (2*A-1))) *
          (∫ t in 0..2*A, baselineLogKernel A t))
          ((relativePsiError (2*A) - relativePsiError (2*A-1)) *
            (∫ t in 0..2*A, t * baselineLogKernel A t))
    _ ≤ (|relativePsiError (2*A)| +
        2*A*|relativePsiError (2*A)-relativePsiError (2*A-1)|) * 1 +
      |relativePsiError (2*A)-relativePsiError (2*A-1)| * 6 := by
      apply add_le_add
      · apply mul_le_mul _ h0 (abs_nonneg _) (by positivity)
        simpa only [abs_mul, ha] using abs_sub (relativePsiError (2*A))
          (2*A*(relativePsiError (2*A)-relativePsiError (2*A-1)))
      · exact mul_le_mul_of_nonneg_left h1 (abs_nonneg _)
    _ = _ := by ring

private theorem relative_eq_actual (t : ℝ) :
    relativePsiError t = actualRelativePsiTimeError t := by
  unfold relativePsiError actualRelativePsiTimeError
  have he : Real.exp t * Real.exp (-t) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  rw [sub_mul, he]
  ring

/-- Genuine PNT pays the actual affine trend, with a real threshold and no supplied witness. -/
theorem actualRelativeAffineKernelPayment_Pnt_bound :
    ∃ c > 0, ∃ C > 0, ∃ R ≥ (1:ℝ), ∀ A : ℝ, R ≤ A →
      |actualRelativeAffineKernelPayment A| ≤
        C * (4*A+13) * Real.exp (-c*(2*A-1)^((1:ℝ)/10)) := by
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  obtain ⟨C, hC, hb⟩ := hp.exists_pos
  obtain ⟨T, hT⟩ := eventually_atTop.1 hb.bound
  refine ⟨c,hc,C,hC,max 1 ((T+1)/2),le_max_left _ _,?_⟩
  intro A hA
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have ht : T ≤ 2*A-1 := by
    have hh := (le_max_right 1 ((T+1)/2)).trans hA
    linarith
  have hL : |relativePsiError (2*A-1)| ≤
      C * Real.exp (-c*(2*A-1)^((1:ℝ)/10)) := by
    simpa only [← relative_eq_actual, Real.norm_eq_abs, Real.abs_exp] using hT _ ht
  have hU : |relativePsiError (2*A)| ≤
      C * Real.exp (-c*(2*A-1)^((1:ℝ)/10)) := by
    have hh := hT (2*A) (by linarith)
    simp only [← relative_eq_actual, Real.norm_eq_abs, Real.abs_exp] at hh
    have hr := Real.rpow_le_rpow (by linarith : 0 ≤ 2*A-1)
      (by linarith : 2*A-1 ≤ 2*A) (by norm_num : (0:ℝ) ≤ 1/10)
    have he : Real.exp (-c*(2*A)^((1:ℝ)/10)) ≤
        Real.exp (-c*(2*A-1)^((1:ℝ)/10)) := by
      apply Real.exp_le_exp.mpr
      nlinarith
    exact hh.trans (mul_le_mul_of_nonneg_left he hC.le)
  have hdiff := (abs_sub _ _).trans (add_le_add hU hL)
  have hpay := actualRelativeAffineKernelPayment_abs_le hA1
  calc
    _ ≤ C * Real.exp (-c*(2*A-1)^((1:ℝ)/10)) +
        (2*A+6)*(C * Real.exp (-c*(2*A-1)^((1:ℝ)/10)) +
          C * Real.exp (-c*(2*A-1)^((1:ℝ)/10))) :=
      hpay.trans (add_le_add hU (mul_le_mul_of_nonneg_left hdiff (by linarith)))
    _ = _ := by ring

private theorem affine_rate_tendsto {c C : ℝ} (hc : 0 < c) :
    Tendsto (fun A : ℝ => C*(4*A+13)*Real.exp (-c*(2*A-1)^((1:ℝ)/10)))
      atTop (𝓝 0) := by
  have hlin : Tendsto (fun A : ℝ => 2*A-1) atTop atTop :=
    tendsto_atTop.2 (fun b => by
      filter_upwards [eventually_ge_atTop ((b+1)/2)] with A hA
      linarith)
  have hp : Tendsto (fun A : ℝ => (2*A-1)^((1:ℝ)/10)) atTop atTop :=
    (tendsto_rpow_atTop (by norm_num : (0:ℝ)<1/10)).comp hlin
  have h10 := (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (10:ℝ) c hc).comp hp
  have h0 := (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (0:ℝ) c hc).comp hp
  have hh := (h10.const_mul (2*C)).add (h0.const_mul (15*C))
  simp only [mul_zero, zero_add] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  have he : ((2*A-1)^((1:ℝ)/10))^(10:ℝ) = 2*A-1 := by
    rw [← Real.rpow_mul (by linarith : 0 ≤ 2*A-1)]
    norm_num
  dsimp only [Function.comp_def]
  rw [he, Real.rpow_zero, one_mul]
  ring

/-- The actual affine payment vanishes along all real scales. -/
theorem actualRelativeAffineKernelPayment_tendsto_zero :
    Tendsto actualRelativeAffineKernelPayment atTop (𝓝 0) := by
  obtain ⟨c,hc,C,_,R,_,hb⟩ := actualRelativeAffineKernelPayment_Pnt_bound
  apply squeeze_zero_norm'
  · filter_upwards [eventually_ge_atTop R] with A hA
    simpa only [Real.norm_eq_abs] using hb A hA
  · exact affine_rate_tendsto hc

/-- The original whole pairing retains its entire signed nonaffine jump interaction. -/
theorem criticalRelativePairing_eq_nonaffine_add_payment {A : ℝ} (hA : 1 ≤ A) :
    criticalRelativePairing A =
      (∫ t in 0..2*A, baselineLogKernel A t *
        (relativePsiError t-actualRelativeAffineTrend A t)) +
      actualRelativeAffineKernelPayment A := by
  have he : (∫ t in Ioi (0:ℝ), criticalKernel A t) =
      ∫ t in 0..2*A, criticalKernel A t := by
    rw [intervalIntegral.integral_of_le (by linarith : (0:ℝ) ≤ 2*A),
      ← Ioc_union_Ioi_eq_Ioi (by linarith : (0:ℝ) ≤ 2*A)]
    apply integral_union_eq_left_of_forall measurableSet_Ioi
    intro t ht
    simp [criticalKernel, criticalWeight_zero_above hA ht]
  have hi : IntervalIntegrable (criticalKernel A) volume 0 (2*A) := by
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le (by linarith : (0:ℝ)≤2*A)]
    exact (criticalKernel_integrable hA).mono_set (fun _ h => h.1)
  have ha := actualRelativeAffineKernel_intervalIntegrable hA
  have hsub : (fun t => criticalKernel A t -
      baselineLogKernel A t * actualRelativeAffineTrend A t) =
      fun t => baselineLogKernel A t *
        (relativePsiError t-actualRelativeAffineTrend A t) := by
    funext t
    unfold criticalKernel baselineLogKernel
    ring
  unfold criticalRelativePairing actualRelativeAffineKernelPayment
  rw [he, ← hsub, intervalIntegral.integral_sub hi ha]
  ring

end FormalResearch.RiemannHypothesis.SourceActualRelativeAffinePayment
