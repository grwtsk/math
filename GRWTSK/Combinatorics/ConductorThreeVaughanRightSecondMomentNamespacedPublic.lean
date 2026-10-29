-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TruncatedDivisorCount.Variante8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TruncatedDivisorCount.Variante8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeVaughanRightSecondMoment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanRightInterval
public import Mathlib.Data.Nat.Factorization.Basic
public import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Tactic

/-!
# A finite second-moment bound for the Vaughan right coefficient

The proof first dominates the truncated Möbius divisor coefficient by the
number of active divisors.  Squaring and exchanging three finite sums gives
an exact least-common-multiple envelope.  The elementary estimate
`lcm(d,e) ≥ e` then bounds this envelope by `X * V * H_V`.

This is unconditional, but it is intentionally weaker than the
subpolynomial divisor estimate needed at the final Type II endpoint.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TruncatedDivisorCount.Variante8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840

public section

namespace Surface.Core.ConductorThreeVaughanRightSecondMoment

noncomputable section

open scoped ArithmeticFunction BigOperators
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeTwistedVaughan

/-! ## Active divisor count -/

/-- Number of positive divisors of `k` at most `V`. -/
@[expose]
def truncatedDivisorCount (V k : ℕ) : ℕ :=
  ((Finset.Ioc 0 V).filter fun d ↦ d ∣ k).card

/-- Real indicator-sum presentation of the active divisor count. -/
@[expose]
def truncatedDivisorCountReal (V k : ℕ) : ℝ :=
  ∑ d ∈ Finset.Ioc 0 V, if d ∣ k then 1 else 0

@[surface_novel, surface_published]
theorem truncatedDivisorCountReal_eq (V k : ℕ) :
    truncatedDivisorCountReal V k = truncatedDivisorCount V k := by
  rw [truncatedDivisorCountReal, truncatedDivisorCount,
    ← Finset.sum_filter]
  simp

private theorem filtered_divisors_eq (V : ℕ) {k : ℕ} (hk : k ≠ 0) :
    k.divisors.filter (fun d ↦ d ≤ V) =
      (Finset.Ioc 0 V).filter (fun d ↦ d ∣ k) := by
  ext d
  simp only [Finset.mem_filter, Nat.mem_divisors, Finset.mem_Ioc]
  constructor
  · rintro ⟨⟨hdk, _⟩, hdV⟩
    have hdpos : 0 < d := by
      exact Nat.pos_of_dvd_of_pos hdk (Nat.pos_of_ne_zero hk)
    exact ⟨⟨hdpos, hdV⟩, hdk⟩
  · rintro ⟨⟨hdpos, hdV⟩, hdk⟩
    exact ⟨⟨hdk, hk⟩, hdV⟩

/-- Absolute truncated Möbius divisor mass is at most the number of its
active divisor indices. -/
@[surface_novel, surface_published]
theorem abs_vaughanDivisorCoefficient_le_truncatedDivisorCount
    (V k : ℕ) :
    |vaughanDivisorCoefficient V k| ≤ truncatedDivisorCount V k := by
  by_cases hk : k = 0
  · subst k
    simp [truncatedDivisorCount]
  · rw [vaughanDivisorCoefficient,
      ArithmeticFunction.coe_mul_zeta_apply]
    calc
      |∑ d ∈ k.divisors, vaughanMoebiusBelow V d| ≤
          ∑ d ∈ k.divisors, |vaughanMoebiusBelow V d| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ d ∈ k.divisors, if d ≤ V then (1 : ℝ) else 0 := by
        apply Finset.sum_le_sum
        intro d hd
        by_cases hdV : d ≤ V
        · rw [if_pos hdV]
          simp only [vaughanMoebiusBelow,
            truncateArithmeticFunction_apply, if_pos hdV,
            ArithmeticFunction.intCoe_apply]
          rcases ArithmeticFunction.moebius_eq_or d with h | h | h
          · norm_num [h]
          · norm_num [h]
          · norm_num [h]
        · rw [if_neg hdV]
          simp [vaughanMoebiusBelow,
            truncateArithmeticFunction_apply, hdV]
      _ = ((k.divisors.filter fun d ↦ d ≤ V).card : ℝ) := by
        rw [← Finset.sum_filter]
        simp
      _ = truncatedDivisorCount V k := by
        rw [filtered_divisors_eq V hk]
        rfl

/-! ## Exact lcm envelope -/

/-- The unsigned lcm envelope obtained after expanding the square of the
active divisor count. -/
@[expose]
def truncatedDivisorLcmEnvelope (V X : ℕ) : ℝ :=
  ∑ d ∈ Finset.Ioc 0 V, ∑ e ∈ Finset.Ioc 0 V,
    (X / Nat.lcm d e : ℕ)

private theorem commonMultipleIndicatorSum (X d e : ℕ) :
    (∑ k ∈ Finset.Ioc 0 X,
      (if d ∣ k then (1 : ℝ) else 0) *
        (if e ∣ k then (1 : ℝ) else 0)) =
      (X / Nat.lcm d e : ℕ) := by
  have hfilter : (Finset.Ioc 0 X).filter
      (fun k ↦ d ∣ k ∧ e ∣ k) =
      (Finset.Ioc 0 X).filter (fun k ↦ Nat.lcm d e ∣ k) := by
    ext k
    simp [Nat.lcm_dvd_iff]
  calc
    (∑ k ∈ Finset.Ioc 0 X,
        (if d ∣ k then (1 : ℝ) else 0) *
          (if e ∣ k then (1 : ℝ) else 0)) =
        ((Finset.Ioc 0 X).filter
          (fun k ↦ d ∣ k ∧ e ∣ k)).card := by
      rw [← Finset.sum_boole]
      apply Finset.sum_congr rfl
      intro k hk
      by_cases hd : d ∣ k <;> by_cases he : e ∣ k <;> simp [hd, he]
    _ = ((Finset.Ioc 0 X).filter
          (fun k ↦ Nat.lcm d e ∣ k)).card := by rw [hfilter]
    _ = (X / Nat.lcm d e : ℕ) := by
      rw [Nat.Ioc_filter_dvd_card_eq_div]

/-- Exact finite second-moment identity for the active divisor-count
majorant. -/
@[surface_novel, surface_published]
theorem sum_truncatedDivisorCountReal_sq_eq_lcmEnvelope (V X : ℕ) :
    (∑ k ∈ Finset.Ioc 0 X,
      truncatedDivisorCountReal V k ^ 2) =
      truncatedDivisorLcmEnvelope V X := by
  simp only [truncatedDivisorCountReal, pow_two]
  simp_rw [Finset.sum_mul_sum]
  rw [truncatedDivisorLcmEnvelope]
  calc
    (∑ k ∈ Finset.Ioc 0 X,
      ∑ d ∈ Finset.Ioc 0 V, ∑ e ∈ Finset.Ioc 0 V,
        (if d ∣ k then (1 : ℝ) else 0) *
          (if e ∣ k then (1 : ℝ) else 0)) =
      ∑ d ∈ Finset.Ioc 0 V, ∑ e ∈ Finset.Ioc 0 V,
        ∑ k ∈ Finset.Ioc 0 X,
          (if d ∣ k then (1 : ℝ) else 0) *
            (if e ∣ k then (1 : ℝ) else 0) := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro d hd
      rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro d hd
      apply Finset.sum_congr rfl
      intro e he
      exact commonMultipleIndicatorSum X d e

/-! ## The actual Vaughan right second moment -/

/-- Second moment of the real conductor-three Vaughan right coefficient
through `X`. -/
@[expose]
def conductorThreeVaughanRightSecondMoment (V X : ℕ) : ℝ :=
  ∑ k ∈ Finset.Ioc 0 X,
    |(conductorThreeIntegerValue k : ℝ) *
      vaughanDivisorCoefficient V k| ^ 2

private theorem abs_conductorThreeIntegerValue_cast_le_one (k : ℕ) :
    |(conductorThreeIntegerValue k : ℝ)| ≤ 1 := by
  rcases conductorThreeIntegerValue_cases k with h | h | h
  · rw [h.2]; norm_num
  · rw [h.2]; norm_num
  · rw [h.2]; norm_num

@[surface_novel, surface_published]
theorem conductorThreeVaughanRightSecondMoment_le_lcmEnvelope
    (V X : ℕ) :
    conductorThreeVaughanRightSecondMoment V X ≤
      truncatedDivisorLcmEnvelope V X := by
  rw [← sum_truncatedDivisorCountReal_sq_eq_lcmEnvelope]
  apply Finset.sum_le_sum
  intro k hk
  rw [truncatedDivisorCountReal_eq]
  have hcoefficient :=
    abs_vaughanDivisorCoefficient_le_truncatedDivisorCount V k
  have hcharacter := abs_conductorThreeIntegerValue_cast_le_one k
  rw [abs_mul]
  gcongr
  exact (mul_le_mul hcharacter hcoefficient (abs_nonneg _) (by norm_num)).trans_eq
    (one_mul _)

/-! ## Harmonic envelope bound -/

private theorem lcm_quotient_le_right_quotient
    (X : ℕ) {d e : ℕ} (hd : 0 < d) (he : 0 < e) :
    X / Nat.lcm d e ≤ X / e := by
  apply Nat.div_le_div_left
  · exact Nat.le_of_dvd (Nat.lcm_pos hd he)
      (Nat.dvd_lcm_right d e)
  · exact he

private theorem cast_harmonic_eq_sum_Ioc_inv (V : ℕ) :
    (harmonic V : ℝ) =
      ∑ e ∈ Finset.Ioc 0 V, (e : ℝ)⁻¹ := by
  rw [harmonic_eq_sum_Icc]
  simp only [Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]
  congr 1

/-- Elementary finite lcm/harmonic estimate. -/
@[surface_novel, surface_published]
theorem truncatedDivisorLcmEnvelope_le_harmonic (V X : ℕ) :
    truncatedDivisorLcmEnvelope V X ≤
      (V : ℝ) * (X : ℝ) * (harmonic V : ℝ) := by
  calc
    truncatedDivisorLcmEnvelope V X ≤
        ∑ _d ∈ Finset.Ioc 0 V, ∑ e ∈ Finset.Ioc 0 V,
          ((X / e : ℕ) : ℝ) := by
      rw [truncatedDivisorLcmEnvelope]
      apply Finset.sum_le_sum
      intro d hd
      apply Finset.sum_le_sum
      intro e he
      exact_mod_cast lcm_quotient_le_right_quotient X
        (by simpa using (Finset.mem_Ioc.mp hd).1)
        (by simpa using (Finset.mem_Ioc.mp he).1)
    _ = (V : ℝ) * ∑ e ∈ Finset.Ioc 0 V,
          ((X / e : ℕ) : ℝ) := by simp
    _ ≤ (V : ℝ) * ∑ e ∈ Finset.Ioc 0 V,
          (X : ℝ) * (e : ℝ)⁻¹ := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      apply Finset.sum_le_sum
      intro e he
      calc
        ((X / e : ℕ) : ℝ) ≤ (X : ℝ) / (e : ℝ) :=
          Nat.cast_div_le
        _ = (X : ℝ) * (e : ℝ)⁻¹ := by rw [div_eq_mul_inv]
    _ = (V : ℝ) * (X : ℝ) * (harmonic V : ℝ) := by
      rw [← Finset.mul_sum, ← cast_harmonic_eq_sum_Ioc_inv]
      ring

/-- Unconditional finite second-moment estimate. -/
@[surface_novel, surface_published]
theorem conductorThreeVaughanRightSecondMoment_le_harmonic
    (V X : ℕ) :
    conductorThreeVaughanRightSecondMoment V X ≤
      (V : ℝ) * (X : ℝ) * (harmonic V : ℝ) :=
  (conductorThreeVaughanRightSecondMoment_le_lcmEnvelope V X).trans
    (truncatedDivisorLcmEnvelope_le_harmonic V X)

/-! ## Theorem-audit boundary

The unconditional exported chain ends at
`conductorThreeVaughanRightSecondMoment_le_harmonic`:

1. `sum_truncatedDivisorCountReal_sq_eq_lcmEnvelope` is an exact finite
   lcm identity;
2. `conductorThreeVaughanRightSecondMoment_le_lcmEnvelope` compares the
   actual signed coefficient to that unsigned envelope;
3. `truncatedDivisorLcmEnvelope_le_harmonic` uses only
   `lcm d e ≥ e`, and therefore retains the factor `V`.

Removing that factor requires a separate, sharper gcd/lcm divisor-sum
estimate.  Such an estimate is not available in the Mathlib snapshot used
here and is not implied by the finite identities above.  Accordingly this
layer declares only the following proposition and no local theorem,
instance, structure field, or axiom producing it.  The downstream canonical
module `ConductorThreeVaughanRightHarmonicCube` supplies the separate finite
gcd/lcm reindex and inhabits it with constant `1`.
-/

/-- Sharpening the double lcm sum to a polylogarithmic envelope is a
separate elementary-number-theory obligation at this layer.  It is recorded
as a proposition rather than assumed; the downstream harmonic-cube module
proves it. -/
@[expose]
def LcmEnvelopePolylogarithmic : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ V X : ℕ,
    truncatedDivisorLcmEnvelope V X ≤
      C * (X : ℝ) * (harmonic V : ℝ) ^ 3

end

end Surface.Core.ConductorThreeVaughanRightSecondMoment

end
