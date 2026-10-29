-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TranslationStorage.Variant091901d82385a749eaf44870df9420bedadc7df9cdbcbc691aed22c219399131","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"091901d82385a749eaf44870df9420bedadc7df9cdbcbc691aed22c219399131","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TranslationStorage.Variant091901d82385a749eaf44870df9420bedadc7df9cdbcbc691aed22c219399131","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"091901d82385a749eaf44870df9420bedadc7df9cdbcbc691aed22c219399131","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle8/mangoldt-storage/storage-fixture-v1-source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

/-!
# Actual finite Mangoldt square storage

Independently specified arithmetic baselines and actual source norm squares
reconstruct signed moments. Positivity of the square sum is not a uniform
budget for its difference from the changing baseline. Invisible atoms require
joint baseline/storage padding. The original Vaughan counterterms are unchanged.

AI attribution: developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TranslationStorage.Variant091901d82385a749eaf44870df9420bedadc7df9cdbcbc691aed22c219399131

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtStorage
open MeasureTheory Set ArithmeticFunction
open scoped InnerProductSpace
open SourcePairing SourceReflectionDuality SourceScaleL2Continuity
open SourceMangoldtInteraction SourcePrimeMomentScale SourcePrimePowerPartition
open SourceDiagonalMainTerm WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent EstimateMobiusSplit
open EstimatePrimeSmoothDefect EstimateMertensResidual

/-- The literal right-shift square, with coefficient one half. -/
def translationStorage (s : ℝ) (f : ComplexL2) : ℝ := ‖f - translation s f‖ ^ 2 / 2

/-- A norm square complements the full real coefficient; no absolute value is introduced. -/
theorem translationStorage_eq (s : ℝ) (f : ComplexL2) :
    translationStorage s f = ‖f‖ ^ 2 - (⟪f, translation s f⟫_ℂ).re := by
  unfold translationStorage
  rw [norm_sub_sq (𝕜 := ℂ), (translation s).norm_map]
  change (‖f‖ ^ 2 - 2 * (⟪f, translation s f⟫_ℂ).re + ‖f‖ ^ 2) / 2 = _
  ring

theorem translationStorage_nonneg (s : ℝ) (f : ComplexL2) :
    0 ≤ translationStorage s f := div_nonneg (sq_nonneg _) (by norm_num)

theorem translationStorage_zero (f : ComplexL2) : translationStorage 0 f = 0 := by
  simp [translationStorage, translation_zero]

theorem translationStorage_neg (s : ℝ) (f : ComplexL2) :
    translationStorage (-s) f = translationStorage s f := by
  rw [translationStorage_eq, translationStorage_eq, translation_self_real_even]

/-- Storage uses the actual positive-scale normalized source, not a fitted residual. -/
def sourceSquareStorage (A s : ℝ) : ℝ := translationStorage s (originalSourceState A)

theorem sourceSquareStorage_eq {A : ℝ} (hA : 0 < A) (s : ℝ) :
    sourceSquareStorage A s = 1 - sourceCorrelation explicitSecondDerivative A s := by
  rw [sourceSquareStorage, translationStorage_eq, originalSourceState_norm hA,
    ← sourceCorrelation_eq_inner hA]
  norm_num

theorem sourceSquareStorage_nonneg (A s : ℝ) : 0 ≤ sourceSquareStorage A s :=
  translationStorage_nonneg _ _

theorem sourceSquareStorage_zero (A : ℝ) : sourceSquareStorage A 0 = 0 :=
  translationStorage_zero _

/-- Every finite baseline coefficient is independently fixed by the actual arithmetic. -/
theorem mangoldtCoefficient_nonneg (n : ℕ) : 0 ≤ mangoldtCoefficient n :=
  mul_nonneg vonMangoldt_nonneg (Real.exp_pos _).le

def finiteMangoldtBaseline (S : Finset ℕ) : ℝ := ∑ n ∈ S, mangoldtCoefficient n

def finiteMangoldtStorage (S : Finset ℕ) (f : ComplexL2) : ℝ :=
  ∑ n ∈ S, mangoldtCoefficient n * translationStorage (Real.log n) f

theorem finiteMangoldtBaseline_nonneg (S : Finset ℕ) : 0 ≤ finiteMangoldtBaseline S :=
  Finset.sum_nonneg fun _ _ => mangoldtCoefficient_nonneg _

theorem finiteMangoldtStorage_nonneg (S : Finset ℕ) (f : ComplexL2) :
    0 ≤ finiteMangoldtStorage S f :=
  Finset.sum_nonneg fun _ _ =>
    mul_nonneg (mangoldtCoefficient_nonneg _) (translationStorage_nonneg _ _)

/-- Reconstruction retains every coefficient and cross term inside the actual norm square. -/
theorem finiteMangoldt_reconstruction (S : Finset ℕ) (f : ComplexL2) :
    (∑ n ∈ S, mangoldtCoefficient n * (⟪f, translation (Real.log n) f⟫_ℂ).re) =
      finiteMangoldtBaseline S * ‖f‖ ^ 2 - finiteMangoldtStorage S f := by
  simp only [finiteMangoldtBaseline, finiteMangoldtStorage, Finset.sum_mul,
    ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [translationStorage_eq]
  ring

/-- Complete actual closed inventory, including every prime power. -/
def mangoldtBaseline (A : ℝ) : ℝ := finiteMangoldtBaseline (primePowerInventory (2 * A))

def mangoldtStorage (A : ℝ) : ℝ :=
  finiteMangoldtStorage (primePowerInventory (2 * A)) (originalSourceState A)

theorem mangoldtBaseline_nonneg (A : ℝ) : 0 ≤ mangoldtBaseline A :=
  finiteMangoldtBaseline_nonneg _

theorem mangoldtStorage_nonneg (A : ℝ) : 0 ≤ mangoldtStorage A :=
  finiteMangoldtStorage_nonneg _ _

theorem mangoldtInteraction_eq_baseline_norm_sub_storage (A : ℝ) (f : ComplexL2) :
    (⟪f, mangoldtInteraction A f⟫_ℂ).re =
      mangoldtBaseline A * ‖f‖ ^ 2 -
        finiteMangoldtStorage (primePowerInventory (2 * A)) f := by
  rw [mangoldtInteraction_self_real, finiteMangoldt_reconstruction]
  rfl

theorem closedPrimeMoment_eq_baseline_sub_storage {A : ℝ} (hA : 0 < A) :
    closedPrimeMoment A = mangoldtBaseline A - mangoldtStorage A := by
  rw [closedPrimeMoment_eq_quadratic hA, mangoldtInteraction_eq_baseline_norm_sub_storage,
    originalSourceState_norm hA]
  simp [mangoldtStorage]

theorem mertensResidual_eq_baseline_sub_storage {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = mangoldtBaseline A - mangoldtStorage A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  exact closedPrimeMoment_eq_baseline_sub_storage (by linarith)

def firstPrimeBaseline (A : ℝ) : ℝ := finiteMangoldtBaseline (primeLogInventory (2 * A))

def firstPrimeStorage (A : ℝ) : ℝ :=
  finiteMangoldtStorage (primeLogInventory (2 * A)) (originalSourceState A)

theorem firstPrimeBaseline_nonneg (A : ℝ) : 0 ≤ firstPrimeBaseline A :=
  finiteMangoldtBaseline_nonneg _

theorem firstPrimeStorage_nonneg (A : ℝ) : 0 ≤ firstPrimeStorage A :=
  finiteMangoldtStorage_nonneg _ _

theorem firstPrimeMoment_eq_baseline_sub_storage {A : ℝ} (hA : 0 < A) :
    firstPrimeMoment A = firstPrimeBaseline A - firstPrimeStorage A := by
  unfold firstPrimeMoment firstPrimeBaseline firstPrimeStorage
  have h := finiteMangoldt_reconstruction (primeLogInventory (2 * A)) (originalSourceState A)
  rw [originalSourceState_norm hA] at h
  simp only [one_pow, mul_one] at h
  rw [← h]
  apply Finset.sum_congr rfl
  intro p hp
  rw [← sourceCorrelation_eq_inner hA]
  unfold closedPrimeWeight exponentialTest mangoldtCoefficient
  ring

/-- Disjoint translated support has square complement one, not zero. -/
theorem sourceSquareStorage_eq_one_of_support {A : ℝ} (hA : 0 < A) {s : ℝ}
    (hs : 2 * A ≤ |s|) : sourceSquareStorage A s = 1 := by
  rw [sourceSquareStorage_eq hA,
    sourceCorrelation_eq_zero_of_two_mul_le_abs A s hA hs, sub_zero]

/-- Exact closed support includes the touching endpoint. -/
theorem sourceSquareStorage_at_boundary {A : ℝ} (hA : 0 < A) :
    sourceSquareStorage A (2 * A) = 1 :=
  sourceSquareStorage_eq_one_of_support hA (le_abs_self _)

/-- A coefficient outside the actual natural-floor inventory still has a full square complement. -/
theorem sourceSquareStorage_eq_one_above_cutoff {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 2 ≤ n) (hN : ⌊Real.exp (2 * A)⌋₊ < n) :
    sourceSquareStorage A (Real.log n) = 1 := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have he : Real.exp (2 * A) < (n : ℝ) := by
    by_contra hh
    have hf := (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).2 (le_of_not_gt hh)
    omega
  exact sourceSquareStorage_eq_one_of_support hA
    (((Real.lt_log_iff_exp_lt hn0).2 he).le.trans (le_abs_self _))

/-- Independent finite inventory enlargement must add to both accounts. -/
theorem finiteMangoldtBaseline_insert (S : Finset ℕ) {n : ℕ} (hn : n ∉ S) :
    finiteMangoldtBaseline (insert n S) = mangoldtCoefficient n + finiteMangoldtBaseline S := by
  simp [finiteMangoldtBaseline, hn]

theorem finiteMangoldtStorage_insert (S : Finset ℕ) {n : ℕ} (hn : n ∉ S)
    (f : ComplexL2) :
    finiteMangoldtStorage (insert n S) f =
      mangoldtCoefficient n * translationStorage (Real.log n) f + finiteMangoldtStorage S f := by
  simp [finiteMangoldtStorage, hn]

/-- Invisible padding cancels exactly; dropping the added squares changes the signed moment. -/
theorem invisible_insert_cancellation (S : Finset ℕ) {n : ℕ} (hn : n ∉ S)
    {A : ℝ} (hA : 0 < A) (hs : 2 * A ≤ |Real.log n|) :
    finiteMangoldtBaseline (insert n S) -
        finiteMangoldtStorage (insert n S) (originalSourceState A) =
      finiteMangoldtBaseline S - finiteMangoldtStorage S (originalSourceState A) := by
  rw [finiteMangoldtBaseline_insert S hn, finiteMangoldtStorage_insert S hn]
  have h := sourceSquareStorage_eq_one_of_support hA hs
  change translationStorage (Real.log n) (originalSourceState A) = 1 at h
  rw [h, mul_one]
  ring

def mangoldtBaselineFixed (N : ℕ) : ℝ := finiteMangoldtBaseline (Finset.Icc 2 N)

def mangoldtStorageFixed (N : ℕ) (A : ℝ) : ℝ :=
  finiteMangoldtStorage (Finset.Icc 2 N) (originalSourceState A)

theorem closedPrimeMomentFixed_eq_baseline_sub_storage {A : ℝ} (hA : 0 < A) (N : ℕ) :
    closedPrimeMomentFixed N A = mangoldtBaselineFixed N - mangoldtStorageFixed N A := by
  unfold closedPrimeMomentFixed mangoldtBaselineFixed mangoldtStorageFixed
  have h := finiteMangoldt_reconstruction (Finset.Icc 2 N) (originalSourceState A)
  rw [originalSourceState_norm hA] at h
  simp only [one_pow, mul_one] at h
  rw [← h]
  apply Finset.sum_congr rfl
  intro n hn
  rw [← sourceCorrelation_eq_inner hA]
  unfold closedPrimeWeight exponentialTest mangoldtCoefficient
  ring

/-- Finite quadrature can use a larger cutoff only with this exact baseline/storage correction. -/
theorem mangoldtStorage_fixed_padding {A : ℝ} (hA : 0 < A) (N : ℕ)
    (hN : ⌊Real.exp (2 * A)⌋₊ ≤ N) :
    mangoldtStorageFixed N A = mangoldtStorage A +
      (mangoldtBaselineFixed N - mangoldtBaseline A) := by
  have h := closedPrimeMoment_eq_fixed hA N hN
  rw [closedPrimeMoment_eq_baseline_sub_storage hA,
    closedPrimeMomentFixed_eq_baseline_sub_storage hA N] at h
  linarith

/-- Hostile fixture: at the first literal inventory birth the closed moment vanishes,
while both independently defined accounts are strictly positive. The scale is positive,
but below the eventual RH consumer threshold; this is an endpoint guard, not a tail claim. -/
theorem first_atom_birth_fixture :
    let A : ℝ := Real.log 2 / 2
    0 < mangoldtBaseline A ∧ 0 < mangoldtStorage A ∧ closedPrimeMoment A = 0 := by
  dsimp only
  have hA : 0 < Real.log 2 / 2 := by positivity
  have he : Real.exp (2 * (Real.log 2 / 2)) = (2 : ℝ) := by
    convert Real.exp_log (by norm_num : (0 : ℝ) < 2) using 1 <;> ring
  have hi : primePowerInventory (2 * (Real.log 2 / 2)) = {2} := by
    simp [primePowerInventory, he]
  have hb : mangoldtBaseline (Real.log 2 / 2) = mangoldtCoefficient 2 := by
    simp [mangoldtBaseline, finiteMangoldtBaseline, hi]
  have hs : translationStorage (Real.log 2) (originalSourceState (Real.log 2 / 2)) = 1 := by
    have h := sourceSquareStorage_at_boundary hA
    simpa only [sourceSquareStorage, show 2 * (Real.log 2 / 2) = Real.log 2 by ring] using h
  have hq : mangoldtStorage (Real.log 2 / 2) = mangoldtCoefficient 2 := by
    simp [mangoldtStorage, finiteMangoldtStorage, hi, hs]
  refine ⟨hb ▸ mangoldtCoefficient_two_pos, hq ▸ mangoldtCoefficient_two_pos, ?_⟩
  rw [closedPrimeMoment_eq_baseline_sub_storage hA, hb, hq, sub_self]

/-- Independently specified relative first-prime storage retains the square counterterm. -/
def firstPrimeStorageSurplus (A : ℝ) : ℝ :=
  firstPrimeStorage A - firstPrimeBaseline A - diagonalMainCoefficient A * A

theorem firstPrimeStorageSurplus_eq {A : ℝ} (hA : 0 < A) :
    firstPrimeStorageSurplus A = -(firstPrimeMoment A + diagonalMainCoefficient A * A) := by
  rw [firstPrimeMoment_eq_baseline_sub_storage hA]
  unfold firstPrimeStorageSurplus
  ring

/-- OPEN: positive squares alone do not supply this relative lower budget. -/
def FirstPrimeStorageTailLowerBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    -C ≤ firstPrimeStorageSurplus A

/-- The lower budget has exactly the existing first-prime upper contract and identical witnesses. -/
theorem firstPrime_storage_tail_iff_firstPrime_tail :
    FirstPrimeStorageTailLowerBound ↔ FirstPrimeTailUpperBound := by
  constructor
  · rintro ⟨C, hC, R, hR, h⟩
    refine ⟨C, hC, R, hR, fun A hA => ?_⟩
    have hs := h A hA
    rw [firstPrimeStorageSurplus_eq (by linarith)] at hs
    linarith
  · rintro ⟨C, hC, R, hR, h⟩
    refine ⟨C, hC, R, hR, fun A hA => ?_⟩
    rw [firstPrimeStorageSurplus_eq (by linarith)]
    linarith [h A hA]

/-- This exact equivalence supplies no witness for the unchanged residual or RH consumers. -/
theorem firstPrime_storage_tail_iff_residual_tail :
    FirstPrimeStorageTailLowerBound ↔ MertensResidualTailUpperBound :=
  firstPrime_storage_tail_iff_firstPrime_tail.trans firstPrime_tail_iff_residual_tail

end FormalResearch.RiemannHypothesis.SourceMangoldtStorage
