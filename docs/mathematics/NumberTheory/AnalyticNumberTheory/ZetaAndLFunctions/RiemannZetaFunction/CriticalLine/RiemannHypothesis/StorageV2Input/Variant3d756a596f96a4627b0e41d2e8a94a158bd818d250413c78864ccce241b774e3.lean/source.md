# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StorageV2Input.Variant3d756a596f96a4627b0e41d2e8a94a158bd818d250413c78864ccce241b774e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e18646cc55144670e7dbc1d2409488220df9aabc` · SHA-256 `38c2ba13d610fb955c552f6ea2e2cd6a172075003562d4d99d2a13d3980edb6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TranslationStorageLeTwoNormSq.Variant854e91f574254bcfae897009cc316c0a31a24c72b3744161678ea1a88e4e7aab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"854e91f574254bcfae897009cc316c0a31a24c72b3744161678ea1a88e4e7aab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TranslationStorageLeTwoNormSq.Variant854e91f574254bcfae897009cc316c0a31a24c72b3744161678ea1a88e4e7aab","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"854e91f574254bcfae897009cc316c0a31a24c72b3744161678ea1a88e4e7aab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle9/higher-storage/storage-v2-input.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage

/-!
# Complete higher-power storage with literal source reconstruction

The full prime-base and higher-exponent square sum retains invisible atoms.
Its independently summable baseline reconstructs the literal closed higher
moment, with the original source and natural floor. This bounded sector does
not control the open relative first-prime or joint Vaughan estimate.

AI attribution: developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TranslationStorageLeTwoNormSq.Variant854e91f574254bcfae897009cc316c0a31a24c72b3744161678ea1a88e4e7aab

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage
open MeasureTheory Set ArithmeticFunction
open scoped InnerProductSpace
open SourceHigherPrimePowerCoefficients SourceMangoldtStorage SourceMangoldtInteraction
open SourcePrimePowerPartition SourcePrimeMomentScale SourceReflectionDuality
open SourceScaleL2Continuity SourcePairing WeightedPrimeAbel
open SourcePrimeSquareMainTerm SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent EstimateMobiusSplit
open EstimatePrimeSmoothDefect EstimateMertensResidual

/-- A full translation square has a uniform vector-norm budget. -/
theorem translationStorage_le_two_norm_sq (s : ℝ) (f : ComplexL2) :
    translationStorage s f ≤ 2 * ‖f‖ ^ 2 := by
  have h := norm_sub_le f (translation s f)
  rw [(translation s).norm_map] at h
  unfold translationStorage
  nlinarith [norm_nonneg (f - translation s f), norm_nonneg f]

/-- Complete higher-sector squares are summable before the storage sum is used. -/
theorem higherStorage_summable (f : ComplexL2) :
    Summable (fun i => higherAtomWeight i * translationStorage (higherAtomShift i) f) := by
  exact Summable.of_nonneg_of_le
    (fun i => mul_nonneg (higherAtomWeight_nonneg i) (translationStorage_nonneg _ _))
    (fun i => mul_le_mul_of_nonneg_left
      (translationStorage_le_two_norm_sq _ _) (higherAtomWeight_nonneg i))
    (higherAtomWeight_summable.mul_right (2 * ‖f‖ ^ 2))

/-- Independent square storage over every prime base and exponent at least three. -/
def higherStorage (f : ComplexL2) : ℝ :=
  ∑' i : HigherPrimePowerIndex, higherAtomWeight i * translationStorage (higherAtomShift i) f

theorem higherStorage_nonneg (f : ComplexL2) : 0 ≤ higherStorage f :=
  tsum_nonneg fun i => mul_nonneg (higherAtomWeight_nonneg i) (translationStorage_nonneg _ _)

theorem higherStorage_le_two_mass_norm_sq (f : ComplexL2) :
    higherStorage f ≤ 2 * higherBaseline * ‖f‖ ^ 2 := by
  have h := (higherStorage_summable f).tsum_le_tsum
    (fun i => mul_le_mul_of_nonneg_left
      (translationStorage_le_two_norm_sq _ _) (higherAtomWeight_nonneg i))
    (higherAtomWeight_summable.mul_right (2 * ‖f‖ ^ 2))
  rw [higherAtomWeight_summable.tsum_mul_right] at h
  change higherStorage f ≤ higherBaseline * (2 * ‖f‖ ^ 2) at h
  linarith

/-- The full signed real translation coefficient is also genuinely summable. -/
theorem higherCorrelation_summable (f : ComplexL2) :
    Summable (fun i => higherAtomWeight i * (⟪f, translation (higherAtomShift i) f⟫_ℂ).re) := by
  apply ((higherAtomWeight_summable.mul_right (‖f‖ ^ 2)).sub
    (higherStorage_summable f)).congr
  intro i
  rw [translationStorage_eq]
  ring

/-- Independent complete real coefficient; no absolute value replaces its sign. -/
def higherCorrelation (f : ComplexL2) : ℝ :=
  ∑' i : HigherPrimePowerIndex,
    higherAtomWeight i * (⟪f, translation (higherAtomShift i) f⟫_ℂ).re

/-- Exact infinite reconstruction uses the established convergence of both accounts. -/
theorem higher_reconstruction (f : ComplexL2) :
    higherCorrelation f = higherBaseline * ‖f‖ ^ 2 - higherStorage f := by
  unfold higherCorrelation higherStorage
  have he : (fun i => higherAtomWeight i * (⟪f, translation (higherAtomShift i) f⟫_ℂ).re) =
      (fun i => higherAtomWeight i * ‖f‖ ^ 2 -
        higherAtomWeight i * translationStorage (higherAtomShift i) f) := by
    funext i
    rw [translationStorage_eq]
    ring
  rw [he, (higherAtomWeight_summable.mul_right _).tsum_sub (higherStorage_summable f),
    higherAtomWeight_summable.tsum_mul_right]
  rfl

/-- The actual pointed source storage; there is no cutoff in its index. -/
def higherSourceStorage (A : ℝ) : ℝ := higherStorage (originalSourceState A)

theorem higherSourceStorage_nonneg (A : ℝ) : 0 ≤ higherSourceStorage A :=
  higherStorage_nonneg _

theorem higherSourceStorage_le_two_baseline {A : ℝ} (hA : 0 < A) :
    higherSourceStorage A ≤ 2 * higherBaseline := by
  have h := higherStorage_le_two_mass_norm_sq (originalSourceState A)
  rw [originalSourceState_norm hA] at h
  simpa only [higherSourceStorage, one_pow, mul_one] using h

/-- Exact prime/exponent coordinates for adapters to the recorded finite inventory. -/
def higherAtomCoordinates (i : HigherPrimePowerIndex) : ℕ × ℕ :=
  ((i.1 : ℕ), higherAtomExponent i)

theorem higherAtomCoordinates_injective : Function.Injective higherAtomCoordinates := by
  intro i j h
  apply Prod.ext
  · apply Subtype.ext
    exact congrArg Prod.fst h
  · have he := congrArg Prod.snd h
    simp only [higherAtomCoordinates, higherAtomExponent] at he
    omega

private theorem prime_of_mem {A : ℝ} {pk : ℕ × ℕ}
    (h : pk ∈ higherPrimePowerInventory A) : pk.1.Prime :=
  (Finset.mem_filter.mp (Finset.mem_product.mp (Finset.mem_filter.mp h).1).1).2

private theorem exponent_of_mem {A : ℝ} {pk : ℕ × ℕ}
    (h : pk ∈ higherPrimePowerInventory A) : 3 ≤ pk.2 :=
  (Finset.mem_Icc.mp (Finset.mem_product.mp (Finset.mem_filter.mp h).1).2).1

/-- Lift a literal finite coordinate into the complete index without changing its exponent. -/
def higherInventoryIndex (A : ℝ)
    (pk : {pk // pk ∈ higherPrimePowerInventory A}) : HigherPrimePowerIndex :=
  (⟨pk.val.1, prime_of_mem pk.property⟩, pk.val.2 - 3)

/-- Exactly the recorded finite source inventory expressed in the complete coordinates. -/
def higherAtomInventory (A : ℝ) : Finset HigherPrimePowerIndex := by
  classical
  exact (higherPrimePowerInventory A).attach.image (higherInventoryIndex A)

theorem higherInventoryIndex_coordinates (A : ℝ)
    (pk : {pk // pk ∈ higherPrimePowerInventory A}) :
    higherAtomCoordinates (higherInventoryIndex A pk) = pk.val := by
  apply Prod.ext
  · rfl
  · change pk.val.2 - 3 + 3 = pk.val.2
    exact Nat.sub_add_cancel (exponent_of_mem pk.property)

/-- The old product/filter endpoints are exactly the closed natural-power inequality. -/
theorem higherCoordinates_mem_inventory_iff (A : ℝ) (i : HigherPrimePowerIndex) :
    higherAtomCoordinates i ∈ higherPrimePowerInventory A ↔
      higherAtomNatural i ≤ ⌊Real.exp (2 * A)⌋₊ := by
  change ((i.1 : ℕ), i.2 + 3) ∈ higherPrimePowerInventory A ↔ _
  constructor
  · intro h
    exact (Finset.mem_filter.mp h).2
  · intro h
    have hp := i.1.property
    have hbase : (i.1 : ℕ) ≤ (i.1 : ℕ) ^ (i.2 + 3) := Nat.le_pow (by omega)
    have hk : ∀ k : ℕ, k ≤ (i.1 : ℕ) ^ k := by
      intro k
      induction k with
      | zero => simp
      | succ k ih =>
        rw [pow_succ]
        have hpos := pow_pos hp.pos k
        have hp2 := hp.two_le
        nlinarith
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_product.mpr ⟨?_, ?_⟩, h⟩
    · exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hp.pos, hbase.trans h⟩, hp⟩
    · exact Finset.mem_Icc.mpr ⟨by omega, (hk _).trans h⟩

/-- No endpoint convention is changed by the complete-index finite adapter. -/
theorem mem_higherAtomInventory_iff (A : ℝ) (i : HigherPrimePowerIndex) :
    i ∈ higherAtomInventory A ↔ higherAtomNatural i ≤ ⌊Real.exp (2 * A)⌋₊ := by
  classical
  rw [← higherCoordinates_mem_inventory_iff]
  constructor
  · intro h
    obtain ⟨pk, _, he⟩ := Finset.mem_image.mp h
    rw [← he, higherInventoryIndex_coordinates]
    exact pk.property
  · intro h
    apply Finset.mem_image.mpr
    refine ⟨⟨higherAtomCoordinates i, h⟩, Finset.mem_attach _ _, ?_⟩
    apply higherAtomCoordinates_injective
    rw [higherInventoryIndex_coordinates]

/-- Complete-index coefficient transport does not divide by a vanishing correlation. -/
theorem higher_source_coefficient_eq {A : ℝ} (hA : 0 < A) (i : HigherPrimePowerIndex) :
    higherAtomWeight i * (⟪originalSourceState A,
      translation (higherAtomShift i) (originalSourceState A)⟫_ℂ).re =
        vonMangoldt (higherAtomNatural i) * closedPrimeWeight A (higherAtomNatural i) := by
  rw [higherAtomWeight_eq_mangoldtCoefficient, higherAtomShift_eq_log,
    ← sourceCorrelation_eq_inner hA]
  unfold mangoldtCoefficient closedPrimeWeight exponentialTest
  ring

/-- Omitted atoms have zero correlation, even though their norm-square account is nonzero. -/
theorem higher_source_coefficient_zero_outside {A : ℝ} (hA : 0 < A)
    {i : HigherPrimePowerIndex} (hi : i ∉ higherAtomInventory A) :
    higherAtomWeight i * (⟪originalSourceState A,
      translation (higherAtomShift i) (originalSourceState A)⟫_ℂ).re = 0 := by
  rw [higher_source_coefficient_eq hA,
    closedPrimeWeight_zero_above_cutoff hA (higherAtomNatural_ge_two i), mul_zero]
  exact lt_of_not_ge (fun h => hi ((mem_higherAtomInventory_iff A i).2 h))

/-- Actual infinite source correlation is finite after support, without dropping its storage. -/
theorem higherPrimePowerMoment_eq_atom_sum {A : ℝ} (hA : 0 < A) :
    higherPrimePowerMoment A = ∑ i ∈ higherAtomInventory A,
      higherAtomWeight i * (⟪originalSourceState A,
        translation (higherAtomShift i) (originalSourceState A)⟫_ℂ).re := by
  classical
  unfold higherPrimePowerMoment
  apply Finset.sum_bij (fun pk hp => higherInventoryIndex A ⟨pk, hp⟩)
  · intro pk hp
    exact Finset.mem_image.mpr ⟨⟨pk, hp⟩, Finset.mem_attach _ _, rfl⟩
  · intro pk hp qk hq he
    have hn := congrArg higherAtomCoordinates he
    simpa only [higherInventoryIndex_coordinates] using hn
  · intro i hi
    obtain ⟨pk, _, he⟩ := Finset.mem_image.mp hi
    exact ⟨pk.val, pk.property, he⟩
  · intro pk hp
    rw [higher_source_coefficient_eq hA]
    have h := higherInventoryIndex_coordinates A ⟨pk, hp⟩
    have hn : higherAtomNatural (higherInventoryIndex A ⟨pk, hp⟩) = pk.1 ^ pk.2 := by
      change ((higherAtomCoordinates (higherInventoryIndex A ⟨pk, hp⟩)).1 ^
        (higherAtomCoordinates (higherInventoryIndex A ⟨pk, hp⟩)).2) = _
      rw [h]
    rw [hn]

/-- The literal finite higher moment is the complete signed scalar coefficient. -/
theorem higherPrimePowerMoment_eq_infinite_correlation {A : ℝ} (hA : 0 < A) :
    higherPrimePowerMoment A = higherCorrelation (originalSourceState A) := by
  unfold higherCorrelation
  rw [tsum_eq_sum (s := higherAtomInventory A) (fun i hi =>
    higher_source_coefficient_zero_outside hA hi)]
  exact higherPrimePowerMoment_eq_atom_sum hA

/-- Full invisible-atom storage cancels the full independent baseline exactly. -/
theorem higherPrimePowerMoment_add_storage_eq_baseline {A : ℝ} (hA : 0 < A) :
    higherPrimePowerMoment A + higherSourceStorage A = higherBaseline := by
  rw [higherPrimePowerMoment_eq_infinite_correlation hA, higher_reconstruction,
    originalSourceState_norm hA]
  change higherBaseline * 1 ^ 2 - higherSourceStorage A + higherSourceStorage A = _
  ring

/-- Every omitted atom contributes its full positive coefficient to storage. -/
theorem higher_storage_atom_outside {A : ℝ} (hA : 0 < A)
    {i : HigherPrimePowerIndex} (hi : i ∉ higherAtomInventory A) :
    higherAtomWeight i * translationStorage (higherAtomShift i) (originalSourceState A) =
      higherAtomWeight i := by
  have hN : ⌊Real.exp (2 * A)⌋₊ < higherAtomNatural i :=
    lt_of_not_ge (fun h => hi ((mem_higherAtomInventory_iff A i).2 h))
  rw [higherAtomShift_eq_log]
  have hs := sourceSquareStorage_eq_one_above_cutoff hA (higherAtomNatural_ge_two i) hN
  change translationStorage (Real.log (higherAtomNatural i)) (originalSourceState A) = 1 at hs
  rw [hs, mul_one]

/-- Visible coefficient mass uses the exact recorded finite higher inventory. -/
def higherVisibleBaseline (A : ℝ) : ℝ :=
  ∑ i ∈ higherAtomInventory A, higherAtomWeight i

/-- Visible square sum; omitted squares are separately retained by the padding law. -/
def higherVisibleStorage (A : ℝ) : ℝ :=
  ∑ i ∈ higherAtomInventory A,
    higherAtomWeight i * translationStorage (higherAtomShift i) (originalSourceState A)

theorem higherVisibleBaseline_le_baseline (A : ℝ) :
    higherVisibleBaseline A ≤ higherBaseline :=
  higherAtomWeight_summable.sum_le_tsum _ (fun i _ => higherAtomWeight_nonneg i)

theorem higherVisibleStorage_nonneg (A : ℝ) : 0 ≤ higherVisibleStorage A :=
  Finset.sum_nonneg fun _ _ =>
    mul_nonneg (higherAtomWeight_nonneg _) (translationStorage_nonneg _ _)

theorem higherMoment_eq_visible_baseline_sub_storage {A : ℝ} (hA : 0 < A) :
    higherPrimePowerMoment A = higherVisibleBaseline A - higherVisibleStorage A := by
  rw [higherPrimePowerMoment_eq_atom_sum hA]
  unfold higherVisibleBaseline higherVisibleStorage
  simp only [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  rw [translationStorage_eq, originalSourceState_norm hA]
  ring

/-- Exact complete storage padding retains every invisible atom in both accounts. -/
theorem higherSourceStorage_padding {A : ℝ} (hA : 0 < A) :
    higherSourceStorage A = higherVisibleStorage A +
      (higherBaseline - higherVisibleBaseline A) := by
  have h := higherPrimePowerMoment_add_storage_eq_baseline hA
  rw [higherMoment_eq_visible_baseline_sub_storage hA] at h
  linarith

/-- The original residual retains the independent first-prime surplus and square error. -/
theorem residual_firstPrime_storage_balance {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A + firstPrimeStorageSurplus A + higherSourceStorage A =
      higherBaseline + (primeSquareMoment A - diagonalMainCoefficient A * A) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_first_square_higher,
    firstPrimeStorageSurplus_eq (by linarith : 0 < A)]
  have h := higherPrimePowerMoment_add_storage_eq_baseline (by linarith : 0 < A)
  linarith

end FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage
```
