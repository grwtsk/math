-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ConductorThreeCharacterIntervalSum.Variant571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.ConductorThreeCharacterIntervalSum.Variant571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeVaughanRightInterval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanTypeI
public import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.Tactic

/-!
# Interval cancellation for the conductor-three Vaughan right coefficient

The right coefficient is the conductor-three character multiplied by the
truncated Möbius divisor sum.  Factoring the character through Dirichlet
convolution reduces each interval to at most one unit of character mass per
truncation index.  The resulting bound is `V`, not the length of the
ambient interval.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ConductorThreeCharacterIntervalSum.Variant571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb

public section

namespace Surface.Core.ConductorThreeVaughanRightInterval

noncomputable section

open scoped ArithmeticFunction BigOperators
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.ConductorThreeVaughanTypeI

/-! ## The period-three interval bound -/

/-- Character mass on the natural interval `(a,b]`. -/
@[expose]
def conductorThreeCharacterIntervalSum (a b : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc a b, (conductorThreeIntegerValue n : ℝ)

@[surface_novel, surface_published]
theorem conductorThreeCharacterIntervalSum_eq
    {a b : ℕ} (hab : a ≤ b) :
    conductorThreeCharacterIntervalSum a b =
      conductorThreeCharacterPartialSum (b + 1) -
        conductorThreeCharacterPartialSum (a + 1) := by
  rw [conductorThreeCharacterIntervalSum]
  have hfinset : Finset.Ioc a b = Finset.Ico (a + 1) (b + 1) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_Ico]
    omega
  rw [hfinset, Finset.sum_Ico_eq_sub _ (by omega)]
  rfl

/-- Exact period-three cancellation on every natural interval. -/
@[surface_novel, surface_published]
theorem abs_conductorThreeCharacterIntervalSum_le_one
    (a b : ℕ) :
    |conductorThreeCharacterIntervalSum a b| ≤ 1 := by
  by_cases hab : a ≤ b
  · rw [conductorThreeCharacterIntervalSum_eq hab,
      conductorThreeCharacterPartialSum_eq,
      conductorThreeCharacterPartialSum_eq]
    split_ifs <;> norm_num
  · have hempty : Finset.Ioc a b = ∅ := Finset.Ioc_eq_empty_of_le
      (Nat.le_of_not_ge hab)
    simp [conductorThreeCharacterIntervalSum, hempty]

/-! ## Exact convolution provenance -/

/-- The real conductor-three character as an arithmetic function. -/
@[expose]
def conductorThreeRealCharacter : ArithmeticFunction ℝ where
  toFun n := (conductorThreeIntegerValue n : ℝ)
  map_zero' := by simp

/-- The character-twisted, truncated Möbius factor. -/
@[expose]
def conductorThreeTwistedMoebiusBelow (V : ℕ) : ArithmeticFunction ℝ where
  toFun n := (conductorThreeIntegerValue n : ℝ) *
    vaughanMoebiusBelow V n
  map_zero' := by simp

@[surface_novel, surface_published, simp]
theorem conductorThreeRealCharacter_apply (n : ℕ) :
    conductorThreeRealCharacter n = (conductorThreeIntegerValue n : ℝ) :=
  rfl

@[surface_novel, surface_published, simp]
theorem conductorThreeTwistedMoebiusBelow_apply (V n : ℕ) :
    conductorThreeTwistedMoebiusBelow V n =
      (conductorThreeIntegerValue n : ℝ) * vaughanMoebiusBelow V n :=
  rfl

/-- Twisting commutes with this finite Dirichlet convolution: the right
coefficient is exactly `(chi * mu_{≤V}) * chi`. -/
@[surface_novel, surface_published]
theorem twistedMoebius_mul_character_apply (V k : ℕ) :
    (conductorThreeTwistedMoebiusBelow V *
        conductorThreeRealCharacter) k =
      (conductorThreeIntegerValue k : ℝ) *
        vaughanDivisorCoefficient V k := by
  rw [ArithmeticFunction.mul_apply, vaughanDivisorCoefficient,
    ArithmeticFunction.mul_apply]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro q hq
  have hprod := (Nat.mem_divisorsAntidiagonal.mp hq).1
  have hchi := conductorThreeIntegerValue_mul q.1 q.2
  rw [hprod] at hchi
  simp only [conductorThreeTwistedMoebiusBelow_apply,
    conductorThreeRealCharacter_apply]
  rw [hchi]
  have hq2 : q.2 ≠ 0 :=
    Nat.right_ne_zero_of_mem_divisorsAntidiagonal hq
  simp [ArithmeticFunction.zeta_apply, hq2]
  ring

/-! ## Prefix and interval factorization -/

/-- Inclusive prefix of the real Vaughan right coefficient. -/
@[expose]
def conductorThreeVaughanRightPrefix (V x : ℕ) : ℝ :=
  ∑ k ∈ Finset.Ioc 0 x,
    (conductorThreeIntegerValue k : ℝ) *
      vaughanDivisorCoefficient V k

/-- Vaughan right coefficient mass on `(a,b]`. -/
@[expose]
def conductorThreeVaughanRightInterval (V a b : ℕ) : ℝ :=
  ∑ k ∈ Finset.Ioc a b,
    (conductorThreeIntegerValue k : ℝ) *
      vaughanDivisorCoefficient V k

private theorem sum_Ioc_character_eq_partialSum (x : ℕ) :
    (∑ n ∈ Finset.Ioc 0 x, conductorThreeRealCharacter n) =
      conductorThreeCharacterPartialSum (x + 1) := by
  have hfinset : Finset.Ioc 0 x = Finset.Ico 1 (x + 1) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_Ico]
    omega
  rw [hfinset, Finset.sum_Ico_eq_sub _ (by omega)]
  simp [conductorThreeCharacterPartialSum,
    conductorThreeRealCharacter]

@[surface_novel, surface_published]
theorem conductorThreeVaughanRightPrefix_eq_factorized (V x : ℕ) :
    conductorThreeVaughanRightPrefix V x =
      ∑ d ∈ Finset.Ioc 0 x,
        conductorThreeTwistedMoebiusBelow V d *
          conductorThreeCharacterPartialSum (x / d + 1) := by
  calc
    conductorThreeVaughanRightPrefix V x =
        ∑ k ∈ Finset.Ioc 0 x,
          (conductorThreeTwistedMoebiusBelow V *
            conductorThreeRealCharacter) k := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [twistedMoebius_mul_character_apply]
    _ = ∑ d ∈ Finset.Ioc 0 x,
        conductorThreeTwistedMoebiusBelow V d *
          (∑ r ∈ Finset.Ioc 0 (x / d),
            conductorThreeRealCharacter r) :=
      ArithmeticFunction.sum_Ioc_mul_eq_sum_sum
        (conductorThreeTwistedMoebiusBelow V)
        conductorThreeRealCharacter x
    _ = _ := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [sum_Ioc_character_eq_partialSum]

private theorem factorizedPrefix_extend {V a b : ℕ} (hab : a ≤ b) :
    (∑ d ∈ Finset.Ioc 0 a,
      conductorThreeTwistedMoebiusBelow V d *
        conductorThreeCharacterPartialSum (a / d + 1)) =
      ∑ d ∈ Finset.Ioc 0 b,
        conductorThreeTwistedMoebiusBelow V d *
          conductorThreeCharacterPartialSum (a / d + 1) := by
  apply Finset.sum_subset
  · intro d hd
    simp only [Finset.mem_Ioc] at hd ⊢
    omega
  · intro d hdb hda
    have hda' : a < d := by
      simp only [Finset.mem_Ioc] at hdb hda
      omega
    have hdiv : a / d = 0 := Nat.div_eq_of_lt hda'
    simp [hdiv, conductorThreeCharacterPartialSum_eq]

/-- Exact interval factorization.  The inner sum is an interval of the
period-three character and therefore costs at most one for each active
Möbius index. -/
@[surface_novel, surface_published]
theorem conductorThreeVaughanRightInterval_eq_factorized
    {V a b : ℕ} (hab : a ≤ b) :
    conductorThreeVaughanRightInterval V a b =
      ∑ d ∈ Finset.Ioc 0 b,
        conductorThreeTwistedMoebiusBelow V d *
          conductorThreeCharacterIntervalSum (a / d) (b / d) := by
  have hinter : conductorThreeVaughanRightInterval V a b =
      conductorThreeVaughanRightPrefix V b -
        conductorThreeVaughanRightPrefix V a := by
    rw [conductorThreeVaughanRightInterval,
      conductorThreeVaughanRightPrefix,
      conductorThreeVaughanRightPrefix]
    have hfinset : Finset.Ioc a b =
        Finset.Ioc 0 b \ Finset.Ioc 0 a := by
      ext n
      simp only [Finset.mem_Ioc, Finset.mem_sdiff]
      omega
    rw [hfinset]
    apply Finset.sum_sdiff_eq_sub
    intro n hn
    simp only [Finset.mem_Ioc] at hn ⊢
    omega
  rw [hinter, conductorThreeVaughanRightPrefix_eq_factorized,
    conductorThreeVaughanRightPrefix_eq_factorized,
    factorizedPrefix_extend hab, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  rw [conductorThreeCharacterIntervalSum_eq]
  · ring
  · exact Nat.div_le_div_right hab

private theorem abs_twistedMoebiusBelow_le_one (V d : ℕ) :
    |conductorThreeTwistedMoebiusBelow V d| ≤
      if d ≤ V then 1 else 0 := by
  rw [conductorThreeTwistedMoebiusBelow_apply, abs_mul]
  by_cases hdV : d ≤ V
  · rw [if_pos hdV]
    simp only [vaughanMoebiusBelow,
      truncateArithmeticFunction_apply, if_pos hdV,
      ArithmeticFunction.intCoe_apply]
    have hchi : |(conductorThreeIntegerValue d : ℝ)| ≤ 1 := by
      rcases conductorThreeIntegerValue_cases d with h | h | h
      · rw [h.2]; norm_num
      · rw [h.2]; norm_num
      · rw [h.2]; norm_num
    have hmu : |(ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
      rcases ArithmeticFunction.moebius_eq_or d with h | h | h
      · norm_num [h]
      · norm_num [h]
      · norm_num [h]
    simpa only [one_mul] using
      (mul_le_mul hchi hmu (abs_nonneg _) (by norm_num))
  · rw [if_neg hdV]
    simp [vaughanMoebiusBelow, truncateArithmeticFunction_apply, hdV]

private theorem sum_active_truncation_indicator_le
    (V b : ℕ) :
    (∑ d ∈ Finset.Ioc 0 b, if d ≤ V then (1 : ℝ) else 0) ≤ V := by
  rw [← Finset.sum_filter]
  have hfilter : (Finset.Ioc 0 b).filter (fun d ↦ d ≤ V) =
      Finset.Ioc 0 (min b V) := by
    ext d
    simp only [Finset.mem_filter, Finset.mem_Ioc]
    omega
  rw [hfilter]
  simp

/-- Uniform interval cancellation for the Vaughan right coefficient. -/
@[surface_novel, surface_published]
theorem abs_conductorThreeVaughanRightInterval_le
    (V a b : ℕ) :
    |conductorThreeVaughanRightInterval V a b| ≤ V := by
  by_cases hab : a ≤ b
  · rw [conductorThreeVaughanRightInterval_eq_factorized hab]
    calc
      |∑ d ∈ Finset.Ioc 0 b,
          conductorThreeTwistedMoebiusBelow V d *
            conductorThreeCharacterIntervalSum (a / d) (b / d)| ≤
          ∑ d ∈ Finset.Ioc 0 b,
            |conductorThreeTwistedMoebiusBelow V d *
              conductorThreeCharacterIntervalSum (a / d) (b / d)| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ d ∈ Finset.Ioc 0 b,
          if d ≤ V then (1 : ℝ) else 0 := by
        apply Finset.sum_le_sum
        intro d hd
        rw [abs_mul]
        have hleft := abs_twistedMoebiusBelow_le_one V d
        have hright := abs_conductorThreeCharacterIntervalSum_le_one
          (a / d) (b / d)
        by_cases hdV : d ≤ V
        · rw [if_pos hdV] at hleft ⊢
          nlinarith [abs_nonneg (conductorThreeTwistedMoebiusBelow V d),
            abs_nonneg (conductorThreeCharacterIntervalSum (a / d) (b / d))]
        · rw [if_neg hdV] at hleft ⊢
          have hz : |conductorThreeTwistedMoebiusBelow V d| = 0 :=
            le_antisymm hleft (abs_nonneg _)
          rw [hz, zero_mul]
      _ ≤ V := sum_active_truncation_indicator_le V b
  · have hempty : Finset.Ioc a b = ∅ :=
      Finset.Ioc_eq_empty_of_le (Nat.le_of_not_ge hab)
    simp [conductorThreeVaughanRightInterval, hempty]

/-- The fixed conductor-three truncation requested by the Vaughan route. -/
@[surface_adapter, surface_published]
theorem abs_conductorThreeVaughanRightInterval_le_cutoff
    (N a b : ℕ) :
    |conductorThreeVaughanRightInterval
        (vaughanFourthRootCutoff N) a b| ≤
      vaughanFourthRootCutoff N :=
  abs_conductorThreeVaughanRightInterval_le _ _ _

end

end Surface.Core.ConductorThreeVaughanRightInterval

end
