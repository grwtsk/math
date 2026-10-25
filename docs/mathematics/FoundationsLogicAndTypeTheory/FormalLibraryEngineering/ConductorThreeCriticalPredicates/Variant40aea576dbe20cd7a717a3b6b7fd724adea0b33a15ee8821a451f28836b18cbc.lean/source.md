# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeCriticalPredicates.Variant40aea576dbe20cd7a717a3b6b7fd724adea0b33a15ee8821a451f28836b18cbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94e372a5c8ea43ecdb4a35b0fbe21d387a298d91` · SHA-256 `cba7ef65bd4099782e8bb2d57a407c887955f8325b538a52e9640d1a1c69b259`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwistedPsiCriticalRate.Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TwistedPsiCriticalRate.Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeCriticalPredicates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreePrimePowerRemoval
import Mathlib.Tactic

/-!
# Named critical-bound predicates for the conductor-three criterion graph

These definitions make the intended analytic factorization explicit without
asserting any missing implication.  The exact finite prime-two correction is
strong enough to identify the unweighted prime-character criterion with the
actual residue-six count criterion.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwistedPsiCriticalRate.Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60

public section

namespace Surface.Core.ConductorThreeCriticalPredicates

noncomputable section

open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCritical
open Surface.Core.ConductorThreePrimePowerRemoval
open Surface.Core.ConductorThreeVonMangoldt

/-- Critical size for the twisted Chebyshev and twisted theta sums. -/
@[expose]
def twistedPsiCriticalRate (x : ℕ) : ℝ :=
  Real.sqrt (x : ℝ) * Real.log (x : ℝ) ^ 2

/-- Critical size for the unweighted signed prime count. -/
@[expose]
def residueDifferenceCriticalRate (x : ℕ) : ℝ :=
  Real.sqrt (x : ℝ) * Real.log (x : ℝ)

@[surface_novel, surface_published]
theorem twistedPsiCriticalRate_nonneg {x : ℕ} (hx : 1 ≤ x) :
    0 ≤ twistedPsiCriticalRate x := by
  unfold twistedPsiCriticalRate
  positivity

@[surface_novel, surface_published]
theorem residueDifferenceCriticalRate_nonneg {x : ℕ} (hx : 1 ≤ x) :
    0 ≤ residueDifferenceCriticalRate x := by
  unfold residueDifferenceCriticalRate
  have hlog : 0 ≤ Real.log (x : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hx)
  positivity

@[surface_novel, surface_published]
theorem one_le_residueDifferenceCriticalRate {x : ℕ} (hx : 3 ≤ x) :
    (1 : ℝ) ≤ residueDifferenceCriticalRate x := by
  have hsqrt : 1 ≤ Real.sqrt (x : ℝ) := by
    rw [Real.one_le_sqrt]
    exact_mod_cast (by omega : 1 ≤ x)
  have hlog : 1 ≤ Real.log (x : ℝ) := by
    rw [← Real.exp_le_exp, Real.exp_log (by positivity)]
    exact le_trans Real.exp_one_lt_three.le (by exact_mod_cast hx)
  unfold residueDifferenceCriticalRate
  nlinarith

/-- The explicit-formula-scale bound for `Ψχ₃`. -/
@[expose]
def TwistedPsiCriticalBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ x₀ : ℕ, 2 ≤ x₀ ∧
    ∀ x : ℕ, x₀ ≤ x →
      |Surface.Core.ConductorThreeVonMangoldt.conductorThreePsi x| ≤
        C * twistedPsiCriticalRate x

/-- The same scale for the prime-only logarithmic sum. -/
@[expose]
def TwistedThetaCriticalBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ x₀ : ℕ, 2 ≤ x₀ ∧
    ∀ x : ℕ, x₀ ≤ x →
      |conductorThreeTheta x| ≤ C * twistedPsiCriticalRate x

/-- Square-root/log bound for the unweighted character sum over primes. -/
@[expose]
def PrimeCharacterCriticalBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ x₀ : ℕ, 2 ≤ x₀ ∧
    ∀ x : ℕ, x₀ ≤ x →
      |(conductorThreePrimeCharacterSum x : ℝ)| ≤
        C * residueDifferenceCriticalRate x

/-- Square-root/log bound for supplied residue-six counts. -/
@[expose]
def ResidueDifferenceCriticalBound (counts : ResidueSixCounts) : Prop :=
  HasSqrtLogCountDifferenceBound counts

/-- The new criterion name is exactly the pre-existing, explicitly scoped
count-bound predicate. -/
@[surface_adapter, surface_published]
theorem residueDifferenceCriticalBound_iff_hasSqrtLogCountDifferenceBound
    (counts : ResidueSixCounts) :
    ResidueDifferenceCriticalBound counts ↔
      HasSqrtLogCountDifferenceBound counts := by
  rfl

/-- The exceptional prime `2` changes the two unweighted criteria only by a
bounded additive term, so their critical bounds are equivalent. -/
@[surface_novel, surface_published]
theorem primeCharacterCriticalBound_iff_residueDifferenceCriticalBound :
    PrimeCharacterCriticalBound ↔
      ResidueDifferenceCriticalBound actualResidueSixCounts := by
  constructor
  · rintro ⟨C, hC, x₀, hx₀, hBound⟩
    refine ⟨C + 1, by linarith, max x₀ 3, by omega, ?_⟩
    intro x hx
    have hx₀x : x₀ ≤ x := le_trans (le_max_left _ _) hx
    have hx3 : 3 ≤ x := le_trans (le_max_right _ _) hx
    have hPrime := hBound x hx₀x
    suffices hGoal : |countDifference actualResidueSixCounts x| ≤
        (C + 1) * residueDifferenceCriticalRate x by
      simpa [residueDifferenceCriticalRate, mul_assoc] using hGoal
    have hCorrection :=
      conductorThreePrimeCharacterSum_real_eq_countDifference x
    simp only [if_pos (by omega : 2 ≤ x)] at hCorrection
    have hCount :
        countDifference actualResidueSixCounts x =
          (conductorThreePrimeCharacterSum x : ℝ) + 1 := by
      linarith
    rw [hCount]
    calc
      |(conductorThreePrimeCharacterSum x : ℝ) + 1| ≤
          |(conductorThreePrimeCharacterSum x : ℝ)| + |(1 : ℝ)| :=
        abs_add_le _ _
      _ ≤ C * residueDifferenceCriticalRate x + 1 := by
        simpa using add_le_add hPrime (show |(1 : ℝ)| ≤ 1 by norm_num)
      _ ≤ (C + 1) * residueDifferenceCriticalRate x := by
        have hRate := one_le_residueDifferenceCriticalRate hx3
        nlinarith
  · rintro ⟨C, hC, x₀, hx₀, hBound⟩
    refine ⟨C + 1, by linarith, max x₀ 3, by omega, ?_⟩
    intro x hx
    have hx₀x : x₀ ≤ x := le_trans (le_max_left _ _) hx
    have hx3 : 3 ≤ x := le_trans (le_max_right _ _) hx
    have hCount := hBound x hx₀x
    have hCount' :
        |countDifference actualResidueSixCounts x| ≤
          C * residueDifferenceCriticalRate x := by
      simpa [residueDifferenceCriticalRate, mul_assoc] using hCount
    have hCorrection :=
      conductorThreePrimeCharacterSum_real_eq_countDifference x
    simp only [if_pos (by omega : 2 ≤ x)] at hCorrection
    rw [hCorrection]
    calc
      |countDifference actualResidueSixCounts x - 1| ≤
          |countDifference actualResidueSixCounts x| + |(1 : ℝ)| :=
        abs_sub _ _
      _ ≤ C * residueDifferenceCriticalRate x + 1 := by
        simpa using add_le_add hCount' (show |(1 : ℝ)| ≤ 1 by norm_num)
      _ ≤ (C + 1) * residueDifferenceCriticalRate x := by
        have hRate := one_le_residueDifferenceCriticalRate hx3
        nlinarith

/-- The unconditional prime-power remainder is lower order than the critical
`sqrt(x) log(x)^2` scale. -/
@[surface_novel, surface_published]
theorem conductorThreePsi_sub_theta_abs_le_two_criticalRate
    {x : ℕ} (hx : 3 ≤ x) :
    |conductorThreePsi x - conductorThreeTheta x| ≤
      2 * twistedPsiCriticalRate x := by
  have hBase := conductorThreePsi_sub_theta_abs_le_sqrt_mul_log
    (x := x) (by omega)
  have hlog : 1 ≤ Real.log (x : ℝ) := by
    rw [← Real.exp_le_exp, Real.exp_log (by positivity)]
    exact le_trans Real.exp_one_lt_three.le (by exact_mod_cast hx)
  have hsqrt : 0 ≤ Real.sqrt (x : ℝ) := Real.sqrt_nonneg _
  have hscale :
      Real.sqrt (x : ℝ) * Real.log (x : ℝ) ≤
        Real.sqrt (x : ℝ) * Real.log (x : ℝ) ^ 2 := by
    gcongr
    nlinarith
  exact hBase.trans <| by
    calc
      2 * Real.sqrt (x : ℝ) * Real.log (x : ℝ) =
          2 * (Real.sqrt (x : ℝ) * Real.log (x : ℝ)) := by ring
      _ ≤ 2 * (Real.sqrt (x : ℝ) * Real.log (x : ℝ) ^ 2) :=
        mul_le_mul_of_nonneg_left hscale (by norm_num)
      _ = 2 * twistedPsiCriticalRate x := by
        rfl

/-- Removing higher prime powers loses no critical information. -/
@[surface_novel, surface_published]
theorem twistedPsiCriticalBound_iff_twistedThetaCriticalBound :
    TwistedPsiCriticalBound ↔ TwistedThetaCriticalBound := by
  constructor
  · rintro ⟨C, hC, x₀, hx₀, hPsi⟩
    refine ⟨C + 2, by linarith, max x₀ 3, by omega, ?_⟩
    intro x hx
    have hx₀x : x₀ ≤ x := le_trans (le_max_left _ _) hx
    have hx3 : 3 ≤ x := le_trans (le_max_right _ _) hx
    have hMain := hPsi x hx₀x
    have hError := conductorThreePsi_sub_theta_abs_le_two_criticalRate hx3
    have hIdentity :
        conductorThreeTheta x =
          conductorThreePsi x -
            (conductorThreePsi x - conductorThreeTheta x) := by ring
    rw [hIdentity]
    calc
      |conductorThreePsi x -
          (conductorThreePsi x - conductorThreeTheta x)| ≤
          |conductorThreePsi x| +
            |conductorThreePsi x - conductorThreeTheta x| :=
        abs_sub _ _
      _ ≤ C * twistedPsiCriticalRate x +
          2 * twistedPsiCriticalRate x := add_le_add hMain hError
      _ = (C + 2) * twistedPsiCriticalRate x := by ring
  · rintro ⟨C, hC, x₀, hx₀, hTheta⟩
    refine ⟨C + 2, by linarith, max x₀ 3, by omega, ?_⟩
    intro x hx
    have hx₀x : x₀ ≤ x := le_trans (le_max_left _ _) hx
    have hx3 : 3 ≤ x := le_trans (le_max_right _ _) hx
    have hMain := hTheta x hx₀x
    have hError := conductorThreePsi_sub_theta_abs_le_two_criticalRate hx3
    have hIdentity :
        conductorThreePsi x =
          conductorThreeTheta x +
            (conductorThreePsi x - conductorThreeTheta x) := by ring
    rw [hIdentity]
    calc
      |conductorThreeTheta x +
          (conductorThreePsi x - conductorThreeTheta x)| ≤
          |conductorThreeTheta x| +
            |conductorThreePsi x - conductorThreeTheta x| :=
        abs_add_le _ _
      _ ≤ C * twistedPsiCriticalRate x +
          2 * twistedPsiCriticalRate x := add_le_add hMain hError
      _ = (C + 2) * twistedPsiCriticalRate x := by ring

end

end Surface.Core.ConductorThreeCriticalPredicates
```
