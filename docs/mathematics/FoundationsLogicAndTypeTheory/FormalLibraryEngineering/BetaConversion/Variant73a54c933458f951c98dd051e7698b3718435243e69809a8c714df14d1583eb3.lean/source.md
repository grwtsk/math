# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetaConversion.Variant73a54c933458f951c98dd051e7698b3718435243e69809a8c714df14d1583eb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd45c6d0ffb90ff613efc339859c893cebb61ac5` · SHA-256 `73a54c933458f951c98dd051e7698b3718435243e69809a8c714df14d1583eb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer

/-!
Executable supported beta conversion uses actual representative equality.
It reports failure when either supplied fuel is insufficient. On accessible
starts, certified exact heights guarantee a decision of actual source
conversion. This does not claim typechecking without effective source rules.
Human research direction and evaluation: grwtsk contributors.
Formal construction and pinned replay: Codex.
-/

namespace FormalResearch.TypeTheory.BetaReduction

open OAI.PureTypeSystem

universe u

variable {S : Type u}

/-- Source conversion is reflected by equality of two actually reached normal forms. -/
theorem conversion_iff_normal_eq {first second firstNormal secondNormal : Expr S}
    (firstPath : Reduces first firstNormal) (secondPath : Reduces second secondNormal)
    (normalFirst : Normal firstNormal) (normalSecond : Normal secondNormal) :
    Converts first second ↔ firstNormal = secondNormal := by
  constructor
  · intro converted
    have normalized : Converts firstNormal secondNormal :=
      .trans _ _ _ (.symm _ _ firstPath.converts)
        (.trans _ _ _ converted secondPath.converts)
    obtain ⟨joined, left, right⟩ := normalized.join
    exact (normalFirst.reduces_eq left).trans (normalSecond.reduces_eq right).symm
  · intro equality
    exact .trans _ _ _ firstPath.converts (equality ▸ .symm _ _ secondPath.converts)

/-- The normalizer and an effective sort equality give an executable partial conversion checker. -/
def conversionFuel [DecidableEq S] (firstFuel secondFuel : ℕ)
    (first second : Expr S) : Option Bool :=
  match normalizeFuel firstFuel first with
  | none => none
  | some firstNormal =>
      match normalizeFuel secondFuel second with
      | none => none
      | some secondNormal => some (decide (firstNormal = secondNormal))

/-- Every actual returned conversion bit has exactly the original source meaning. -/
theorem conversionFuel_correct [DecidableEq S] {firstFuel secondFuel : ℕ}
    {first second : Expr S} {result : Bool}
    (success : conversionFuel firstFuel secondFuel first second = some result) :
    result = true ↔ Converts first second := by
  cases firstRun : normalizeFuel firstFuel first with
  | none => simp [conversionFuel, firstRun] at success
  | some firstNormal =>
      cases secondRun : normalizeFuel secondFuel second with
      | none => simp [conversionFuel, firstRun, secondRun] at success
      | some secondNormal =>
          have equality : decide (firstNormal = secondNormal) = result := by
            simpa [conversionFuel, firstRun, secondRun] using success
          obtain ⟨firstPath, normalFirst⟩ := normalizeFuel_sound firstRun
          obtain ⟨secondPath, normalSecond⟩ := normalizeFuel_sound secondRun
          rw [← equality, decide_eq_true_eq]
          exact (conversion_iff_normal_eq firstPath secondPath normalFirst normalSecond).symm

/-- Certified heights decide conversion without restricting the actual source transitions. -/
theorem conversionFuel_complete [DecidableEq S] (first second : AccessibleState S)
    (firstFuel secondFuel : ℕ) (firstSufficient : height first ≤ firstFuel)
    (secondSufficient : height second ≤ secondFuel) :
    ∃ result, conversionFuel firstFuel secondFuel first.val second.val = some result ∧
      (result = true ↔ Converts first.val second.val) := by
  obtain ⟨firstNormal, firstRun⟩ := normalizeFuel_complete first firstFuel firstSufficient
  obtain ⟨secondNormal, secondRun⟩ := normalizeFuel_complete second secondFuel secondSufficient
  have success : conversionFuel firstFuel secondFuel first.val second.val =
      some (decide (firstNormal = secondNormal)) := by
    simp [conversionFuel, firstRun, secondRun]
  exact ⟨_, success, conversionFuel_correct success⟩

end FormalResearch.TypeTheory.BetaReduction
```
