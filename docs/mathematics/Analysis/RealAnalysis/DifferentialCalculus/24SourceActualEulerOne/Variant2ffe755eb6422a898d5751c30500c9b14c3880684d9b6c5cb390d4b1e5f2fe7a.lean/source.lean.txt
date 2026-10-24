-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PeriodicB1.Variantea7fe864b4804f21d8947d86a9d2974ebdb32553f58ba7fa92c08a4855f293e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea7fe864b4804f21d8947d86a9d2974ebdb32553f58ba7fa92c08a4855f293e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PeriodicB1.Variantea7fe864b4804f21d8947d86a9d2974ebdb32553f58ba7fa92c08a4855f293e4","mathematical_subject":"Analysis.Calculus","original_sha256":"ea7fe864b4804f21d8947d86a9d2974ebdb32553f58ba7fa92c08a4855f293e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/near-axis-full-response/source-pins/24-SourceActualEulerOne.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Zeta23.FromPNTPlus.ZetaBounds
import Zeta23.Statement.SeamClosed
import Mathlib.Topology.Algebra.Order.Floor
import Mathlib.Tactic

/-!
Literal actual N=1 Euler source and periodic Bernoulli endpoint data.
Direction: grwtsk contributors. Source matching and construction: OpenAI Codex.
The second-order improper integration by parts is a separate paper result.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PeriodicB1.Variantea7fe864b4804f21d8947d86a9d2974ebdb32553f58ba7fa92c08a4855f293e4

set_option autoImplicit false

namespace RH16ActualEulerOne

open MeasureTheory Set

noncomputable section

def periodicB1 (x : ℝ) : ℝ := Int.fract x - 1 / 2

def periodicB2 (x : ℝ) : ℝ :=
  (Int.fract x) ^ 2 - Int.fract x + 1 / 6

theorem sourceFloorWeight_eq_neg_periodicB1 (x : ℝ) :
    (⌊x⌋ : ℝ) + 1 / 2 - x = -periodicB1 x := by
  unfold periodicB1 Int.fract
  ring

theorem periodicB2_bounds (x : ℝ) :
    -(1 / 12 : ℝ) ≤ periodicB2 x ∧ periodicB2 x ≤ 1 / 6 := by
  have h0 := Int.fract_nonneg x
  have h1 := (Int.fract_lt_one x).le
  have hm := mul_nonneg h0 (show 0 ≤ 1 - Int.fract x by linarith)
  unfold periodicB2
  constructor
  · nlinarith [sq_nonneg (Int.fract x - 1 / 2)]
  · nlinarith

theorem periodicB2_abs_le (x : ℝ) : |periodicB2 x| ≤ 1 / 6 := by
  obtain ⟨hl, hu⟩ := periodicB2_bounds x
  exact abs_le.mpr ⟨by linarith, hu⟩

theorem periodicB2_at_integer (n : ℤ) :
    periodicB2 n = 1 / 6 := by
  simp [periodicB2]

theorem periodicB2_continuous : Continuous periodicB2 := by
  have hp : ContinuousOn
      (Function.uncurry (fun (_ : ℝ) (u : ℝ) => u ^ 2 - u + 1 / 6))
      (univ ×ˢ Icc (0 : ℝ) 1) := by
    fun_prop
  change Continuous fun x : ℝ =>
    (Int.fract x) ^ 2 - Int.fract x + 1 / 6
  exact hp.comp_fract (s := fun x : ℝ => x) continuous_id
    (by intro _; norm_num)

theorem periodicB2_hasDerivAt {x : ℝ} (hx : x ≠ (⌊x⌋ : ℝ)) :
    HasDerivAt periodicB2 (2 * periodicB1 x) x := by
  have hlo : (⌊x⌋ : ℝ) < x := (Int.floor_le x).lt_of_ne hx.symm
  have hhi : x < (⌊x⌋ : ℝ) + 1 := Int.lt_floor_add_one x
  have he : periodicB2 =ᶠ[nhds x]
      (fun y : ℝ => (y - (⌊x⌋ : ℝ)) ^ 2 - (y - (⌊x⌋ : ℝ)) + 1 / 6) := by
    filter_upwards [Ioo_mem_nhds hlo hhi] with y hy
    have hf := Int.floor_eq_on_Ico ⌊x⌋ y ⟨hy.1.le, hy.2⟩
    simp [periodicB2, Int.fract, hf]
  have hd := (((hasDerivAt_id x).sub_const (⌊x⌋ : ℝ)).pow 2).sub
    ((hasDerivAt_id x).sub_const (⌊x⌋ : ℝ))
  have hd' := hd.add_const (1 / 6 : ℝ)
  exact (hd'.congr_of_eventuallyEq he).congr_deriv (by
    dsimp
    unfold periodicB1 Int.fract
    ring
  )

theorem periodicB2_ae_hasDerivAt :
    ∀ᵐ x : ℝ ∂volume, HasDerivAt periodicB2 (2 * periodicB1 x) x := by
  filter_upwards [(Set.countable_range (fun n : ℤ => (n : ℝ))).ae_notMem volume]
    with x hx
  apply periodicB2_hasDerivAt
  intro he
  exact hx ⟨⌊x⌋, he.symm⟩

theorem actual_zeta_euler_one {s : ℂ} (hσ : 0 < s.re) (hs : s ≠ 1) :
    riemannZeta s = 1 / (s - 1) + 1 / 2 - s *
      ∫ x in Ioi (1 : ℝ), (periodicB1 x : ℂ) *
        (x : ℂ) ^ (-(s + 1)) := by
  have hs0 : s ≠ 0 := by
    intro he
    simp only [he, Complex.zero_re, lt_self_iff_false] at hσ
  have hζ := Zeta0EqZeta (N := 1) (by norm_num) hσ hs
  have hi :
      (∫ x in Ioi (1 : ℝ), ((⌊x⌋ : ℂ) + 1 / 2 - (x : ℂ)) *
        (x : ℂ) ^ (-(s + 1))) =
      -(∫ x in Ioi (1 : ℝ), (periodicB1 x : ℂ) *
        (x : ℂ) ^ (-(s + 1))) := by
    rw [← integral_neg]
    apply integral_congr_ae
    exact Filter.Eventually.of_forall fun x => by
      dsimp
      unfold periodicB1 Int.fract
      push_cast
      ring
  rw [← hζ, riemannZeta0_apply]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, Nat.cast_zero,
    Nat.cast_one, Complex.zero_cpow hs0, div_zero, zero_add,
    Complex.one_cpow, div_one]
  rw [hi]
  have hs' : 1 - s ≠ 0 := sub_ne_zero.mpr hs.symm
  field_simp [hs, hs']
  ring

end

end RH16ActualEulerOne
