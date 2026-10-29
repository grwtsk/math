-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.MaxTwoLeftBounds.Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.MaxTwoLeftBounds.Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/RatioInsertionCutoffsAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteDensityInsertion


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.MaxTwoLeftBounds.Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780

set_option autoImplicit false

namespace RatioInsertionCutoffsScratch

open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

theorem max_two_left_bounds (u v : ℕ) :
    max u v ≤ max (2*u) v ∧ max (2*u) v ≤ 2 * max u v := by omega

theorem commonScale_two_left_bounds (N u v : ℕ) (hu : 1 ≤ u) :
    (N / max u v) / 2 ≤ N / max (2*u) v ∧
      N / max (2*u) v ≤ N / max u v := by
  have hd := max_two_left_bounds u v
  constructor
  · rw [Nat.div_div_eq_div_mul, Nat.mul_comm (max u v) 2]
    exact Nat.div_le_div_left hd.2 (by omega)
  · exact Nat.div_le_div_left hd.1 (by omega)

theorem commonScale_two_right_bounds (N u v : ℕ) (hv : 1 ≤ v) :
    (N / max u v) / 2 ≤ N / max u (2*v) ∧
      N / max u (2*v) ≤ N / max u v := by
  simpa only [max_comm] using commonScale_two_left_bounds N v u hv

theorem commonScale_two_left_eq_full (N u v : ℕ) (h : 2*u ≤ v) :
    N / max (2*u) v = N / max u v := by
  rw [max_eq_right h, max_eq_right (by omega : u ≤ v)]

theorem commonScale_two_left_eq_half (N u v : ℕ) (h : v ≤ u) :
    N / max (2*u) v = (N / max u v) / 2 := by
  rw [max_eq_left (by omega : v ≤ 2*u), max_eq_left h,
    Nat.div_div_eq_div_mul, Nat.mul_comm u 2]

theorem commonScale_two_left_intermediate (N u v : ℕ) (hlo : u < v) (hhi : v < 2*u) :
    N / max u v = N / v ∧ N / max (2*u) v = N / (2*u) := by
  rw [max_eq_right hlo.le, max_eq_left hhi.le]
  exact ⟨rfl, rfl⟩

theorem commonScale_two_left_cases (N u v : ℕ) :
    N / max (2*u) v = if 2*u ≤ v then N / max u v
      else if v ≤ u then (N / max u v) / 2 else N / (2*u) := by
  split_ifs with h h'
  · exact commonScale_two_left_eq_full N u v h
  · exact commonScale_two_left_eq_half N u v h'
  · rw [max_eq_left (by omega : v ≤ 2*u)]

theorem commonScale_two_left_empty (N u v : ℕ) (hu : 1 ≤ u) (h : N / max u v = 0) :
    N / max (2*u) v = 0 := by
  have hh := (commonScale_two_left_bounds N u v hu).2
  exact Nat.eq_zero_of_le_zero (h ▸ hh)

theorem sqrt_commonScale_two_left_bounds (N u v : ℕ) (hu : 1 ≤ u) :
    Nat.sqrt ((N / max u v) / 2) ≤ Nat.sqrt (N / max (2*u) v) ∧
      Nat.sqrt (N / max (2*u) v) ≤ Nat.sqrt (N / max u v) := by
  exact ⟨Nat.sqrt_le_sqrt (commonScale_two_left_bounds N u v hu).1,
    Nat.sqrt_le_sqrt (commonScale_two_left_bounds N u v hu).2⟩

theorem commonScale_eight_iff (N u v : ℕ) (hu : 1 ≤ u) :
    8 ≤ N / max u v ↔ 8 * max u v ≤ N := by
  exact Nat.le_div_iff_mul_le (by omega : 0 < max u v)

theorem sqrt_commonScale_two_left_admissible (N u v : ℕ) (hu : 1 ≤ u)
    (hG : 8 ≤ N / max u v) :
    2 ≤ Nat.sqrt (N / max (2*u) v) ∧
      Nat.sqrt (N / max (2*u) v) ≤ Nat.sqrt (N / max u v) := by
  constructor
  · apply Nat.le_sqrt.mpr
    have hh := (commonScale_two_left_bounds N u v hu).1
    omega
  · exact (sqrt_commonScale_two_left_bounds N u v hu).2

theorem signed_two_density_left_cutoffs_error_le (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    |SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max (2*u) v)) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N / max (2*u) v):ℝ)) := by
  have hs := sqrt_commonScale_two_left_admissible N u v hu hG
  exact FiniteDensityInsertion.signed_two_density_cutoffs_error_le (u*v)
    (Nat.sqrt (N/max (2*u) v)) (Nat.sqrt (N/max u v)) hodd
    (Nat.mul_pos hu hv) hs.1 hs.2

theorem sqrt_commonScale_two_right_admissible (N u v : ℕ) (hv : 1 ≤ v)
    (hG : 8 ≤ N / max u v) :
    2 ≤ Nat.sqrt (N / max u (2*v)) ∧
      Nat.sqrt (N / max u (2*v)) ≤ Nat.sqrt (N / max u v) := by
  simpa only [max_comm] using sqrt_commonScale_two_left_admissible N v u hv
    (by simpa only [max_comm] using hG)

theorem signed_two_density_right_cutoffs_error_le (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    |SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max u (2*v))) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N / max u (2*v)):ℝ)) := by
  simpa only [Nat.mul_comm v u, max_comm v u, max_comm (2*v) u] using
    signed_two_density_left_cutoffs_error_le N v u hv hu
      (by simpa only [Nat.mul_comm v u] using hodd)
      (by simpa only [max_comm v u] using hG)

theorem signed_two_density_both_cutoffs_error_le (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    let Z := Nat.sqrt (N / max u v)
    let YL := Nat.sqrt (N / max (2*u) v)
    let YR := Nat.sqrt (N / max u (2*v))
    |SquarefreeCount.finiteSquarefreeDensity (u*v) Z -
      (Real.sqrt 2/2) * (SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) YL +
        SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) YR) -
      FiniteDensityInsertion.twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity (u*v) Z| ≤
      (7 * Real.sqrt 2 / 12) * (1/(YL:ℝ) + 1/(YR:ℝ)) := by
  dsimp only
  let L := SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max (2*u) v)) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))
  let R := SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max u (2*v))) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))
  have hL : |L| ≤ 7*Real.sqrt 2/(6*(Nat.sqrt (N/max (2*u) v):ℝ)) :=
    signed_two_density_left_cutoffs_error_le N u v hu hv hodd hG
  have hR : |R| ≤ 7*Real.sqrt 2/(6*(Nat.sqrt (N/max u (2*v)):ℝ)) :=
    signed_two_density_right_cutoffs_error_le N u v hu hv hodd hG
  have heq : SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      (Real.sqrt 2/2) *
        (SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) (Nat.sqrt (N / max (2*u) v)) +
          SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) (Nat.sqrt (N / max u (2*v)))) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) =
      (1/2:ℝ)*(L+R) := by dsimp [L,R]; ring
  rw [heq, abs_mul, abs_of_pos (by norm_num : (0:ℝ)<1/2)]
  calc
    _ ≤ (1/2:ℝ)*(|L|+|R|) := mul_le_mul_of_nonneg_left (abs_add_le L R) (by norm_num)
    _ ≤ (1/2:ℝ)*(7*Real.sqrt 2/(6*(Nat.sqrt (N/max (2*u) v):ℝ)) +
        7*Real.sqrt 2/(6*(Nat.sqrt (N/max u (2*v)):ℝ))) :=
      mul_le_mul_of_nonneg_left (add_le_add hL hR) (by norm_num)
    _ = _ := by ring

theorem actual_two_density_coefficient_eq (h : ℕ) (a b c : ℝ)
    (hh : 1 ≤ h) (hodd : Nat.Coprime 2 h) :
    (ArithmeticFunction.moebius h : ℝ) * a / Real.sqrt (h:ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * b / Real.sqrt ((2*h:ℕ):ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * c / Real.sqrt ((2*h:ℕ):ℝ) =
      ((ArithmeticFunction.moebius h : ℝ) / Real.sqrt (h:ℝ)) *
        (a - (Real.sqrt 2/2)*(b+c)) := by
  have hμ : (ArithmeticFunction.moebius (2*h) : ℝ) = -(ArithmeticFunction.moebius h : ℝ) := by
    rw [TwoInsertionBoundary.moebius_two_mul, if_pos hodd.symm]
  have hh0 : (0:ℝ) < h := by exact_mod_cast (show 0<h by omega)
  have hs0 : Real.sqrt (h:ℝ) ≠ 0 := (Real.sqrt_pos.mpr hh0).ne'
  have ht0 : Real.sqrt (2:ℝ) ≠ 0 := (Real.sqrt_pos.mpr (by norm_num : (0:ℝ)<2)).ne'
  have hs := Real.sq_sqrt (by norm_num : (0:ℝ)≤2)
  have hrecip : 1/Real.sqrt ((2*h:ℕ):ℝ) = Real.sqrt 2/(2*Real.sqrt (h:ℝ)) := by
    push_cast
    rw [Real.sqrt_mul (by norm_num : (0:ℝ)≤2)]
    field_simp
    nlinarith
  rw [hμ]
  simp only [div_eq_mul_inv, one_mul, mul_inv_rev] at hrecip ⊢
  simp only [hrecip]
  ring

theorem actual_two_density_cutoff_error_le (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    let h := u*v
    let Z := Nat.sqrt (N / max u v)
    let YL := Nat.sqrt (N / max (2*u) v)
    let YR := Nat.sqrt (N / max u (2*v))
    |(ArithmeticFunction.moebius h : ℝ) * SquarefreeCount.finiteSquarefreeDensity h Z /
        Real.sqrt (h:ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * SquarefreeCount.finiteSquarefreeDensity (2*h) YL /
        Real.sqrt ((2*h:ℕ):ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * SquarefreeCount.finiteSquarefreeDensity (2*h) YR /
        Real.sqrt ((2*h:ℕ):ℝ) -
      FiniteDensityInsertion.twoDensityFactor * (ArithmeticFunction.moebius h : ℝ) *
        SquarefreeCount.finiteSquarefreeDensity h Z / Real.sqrt (h:ℝ)| ≤
      (7 * Real.sqrt 2 / (12 * Real.sqrt (h:ℝ))) * (1/(YL:ℝ) + 1/(YR:ℝ)) := by
  dsimp only
  have hh : 1 ≤ u*v := Nat.mul_pos hu hv
  rw [actual_two_density_coefficient_eq (u*v) _ _ _ hh hodd]
  have heq (a b c k : ℝ) :
      ((ArithmeticFunction.moebius (u*v):ℝ)/Real.sqrt ((u*v:ℕ):ℝ)) *
        (a-(Real.sqrt 2/2)*(b+c)) -
      k*(ArithmeticFunction.moebius (u*v):ℝ)*a/Real.sqrt ((u*v:ℕ):ℝ) =
      ((ArithmeticFunction.moebius (u*v):ℝ)/Real.sqrt ((u*v:ℕ):ℝ)) *
        (a-(Real.sqrt 2/2)*(b+c)-k*a) := by ring
  rw [heq, abs_mul]
  have hμ : |(ArithmeticFunction.moebius (u*v):ℝ)/Real.sqrt ((u*v:ℕ):ℝ)| ≤
      1/Real.sqrt ((u*v:ℕ):ℝ) := by
    rw [abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
    apply div_le_div_of_nonneg_right _ (Real.sqrt_nonneg _)
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := u*v))
  calc
    _ ≤ (1/Real.sqrt ((u*v:ℕ):ℝ)) *
        ((7*Real.sqrt 2/12) *
          (1/(Nat.sqrt (N/max (2*u) v):ℝ)+1/(Nat.sqrt (N/max u (2*v)):ℝ))) :=
      mul_le_mul hμ (signed_two_density_both_cutoffs_error_le N u v hu hv hodd hG)
        (abs_nonneg _) (by positivity)
    _ = _ := by ring


end
end RatioInsertionCutoffsScratch

#print RatioInsertionCutoffsScratch.max_two_left_bounds
#print axioms RatioInsertionCutoffsScratch.max_two_left_bounds
#print RatioInsertionCutoffsScratch.commonScale_two_left_bounds
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_bounds
#print RatioInsertionCutoffsScratch.commonScale_two_right_bounds
#print axioms RatioInsertionCutoffsScratch.commonScale_two_right_bounds
#print RatioInsertionCutoffsScratch.commonScale_two_left_eq_full
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_eq_full
#print RatioInsertionCutoffsScratch.commonScale_two_left_eq_half
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_eq_half
#print RatioInsertionCutoffsScratch.commonScale_two_left_intermediate
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_intermediate
#print RatioInsertionCutoffsScratch.commonScale_two_left_cases
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_cases
#print RatioInsertionCutoffsScratch.commonScale_two_left_empty
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_empty
#print RatioInsertionCutoffsScratch.sqrt_commonScale_two_left_bounds
#print axioms RatioInsertionCutoffsScratch.sqrt_commonScale_two_left_bounds
#print RatioInsertionCutoffsScratch.commonScale_eight_iff
#print axioms RatioInsertionCutoffsScratch.commonScale_eight_iff
#print RatioInsertionCutoffsScratch.sqrt_commonScale_two_left_admissible
#print axioms RatioInsertionCutoffsScratch.sqrt_commonScale_two_left_admissible
#print RatioInsertionCutoffsScratch.signed_two_density_left_cutoffs_error_le
#print axioms RatioInsertionCutoffsScratch.signed_two_density_left_cutoffs_error_le
#print RatioInsertionCutoffsScratch.sqrt_commonScale_two_right_admissible
#print axioms RatioInsertionCutoffsScratch.sqrt_commonScale_two_right_admissible
#print RatioInsertionCutoffsScratch.signed_two_density_right_cutoffs_error_le
#print axioms RatioInsertionCutoffsScratch.signed_two_density_right_cutoffs_error_le
#print RatioInsertionCutoffsScratch.signed_two_density_both_cutoffs_error_le
#print axioms RatioInsertionCutoffsScratch.signed_two_density_both_cutoffs_error_le
#print RatioInsertionCutoffsScratch.actual_two_density_coefficient_eq
#print axioms RatioInsertionCutoffsScratch.actual_two_density_coefficient_eq
#print RatioInsertionCutoffsScratch.actual_two_density_cutoff_error_le
#print axioms RatioInsertionCutoffsScratch.actual_two_density_cutoff_error_le
