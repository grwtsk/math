import FormalResearch.TypeTheory.PureTypeSystem.Typing
import FormalResearch.TypeTheory.PureTypeSystem.BetaNext

/-!
Executable fuelled normalization for the complete actual annotated beta reducer.
A separately certified exact height is sufficient fuel; failure is explicit.
Success preserves reachability and typing and returns the unique source normal
form by the actual beta confluence theorem. Fuel bounds count steps, not time.
Human research direction and evaluation: grwtsk contributors.
Formal construction and pinned replay: Codex.
-/

namespace FormalResearch.TypeTheory.BetaReduction

open OAI.PureTypeSystem

universe u

variable {S : Type u}

/-- An executable deterministic strategy; the underlying successor list remains complete. -/
def normalizeFuel : ℕ → Expr S → Option (Expr S)
  | 0, term =>
      match next term with
      | [] => some term
      | _ :: _ => none
  | fuel + 1, term =>
      match next term with
      | [] => some term
      | target :: _ => normalizeFuel fuel target

/-- Every successful execution is a real source path with a fully beta-normal endpoint. -/
theorem normalizeFuel_sound {fuel : ℕ} {term target : Expr S}
    (success : normalizeFuel fuel term = some target) : Reduces term target ∧ Normal target := by
  induction fuel generalizing term with
  | zero =>
      cases successors : next term with
      | nil =>
          have equality : term = target := by simpa [normalizeFuel, successors] using success
          subst target
          refine ⟨.refl, fun successor reduction => ?_⟩
          have member := next_complete reduction
          simp [successors] at member
      | cons successor rest => simp [normalizeFuel, successors] at success
  | succ fuel ih =>
      cases successors : next term with
      | nil =>
          have equality : term = target := by simpa [normalizeFuel, successors] using success
          subst target
          refine ⟨.refl, fun successor reduction => ?_⟩
          have member := next_complete reduction
          simp [successors] at member
      | cons successor rest =>
          have recursive : normalizeFuel fuel successor = some target := by
            simpa [normalizeFuel, successors] using success
          obtain ⟨path, normal⟩ := ih recursive
          have reduction : Beta term successor := next_sound (by simp [successors])
          exact ⟨Relation.ReflTransGen.head reduction path, normal⟩

/-- Exact mathematical height certifies sufficient executable fuel. -/
theorem normalizeFuel_complete (source : AccessibleState S) (fuel : ℕ)
    (sufficient : height source ≤ fuel) :
    ∃ target, normalizeFuel fuel source.val = some target := by
  induction fuel generalizing source with
  | zero =>
      cases successors : next source.val with
      | nil => exact ⟨source.val, by simp [normalizeFuel, successors]⟩
      | cons target rest =>
          have reduction : Beta source.val target := next_sound (by simp [successors])
          let descendant : AccessibleState S := ⟨target, source.property.step reduction⟩
          have decrease : height descendant < height source :=
            (reducer S).height_decreases reduction
          omega
  | succ fuel ih =>
      cases successors : next source.val with
      | nil => exact ⟨source.val, by simp [normalizeFuel, successors]⟩
      | cons target rest =>
          have reduction : Beta source.val target := next_sound (by simp [successors])
          let descendant : AccessibleState S := ⟨target, source.property.step reduction⟩
          have decrease : height descendant < height source :=
            (reducer S).height_decreases reduction
          obtain ⟨normal, success⟩ := ih descendant (by omega)
          exact ⟨normal, by simpa [normalizeFuel, successors, descendant] using success⟩

/-- The supported executable strategy succeeds at the exact height, with all source semantics. -/
theorem normalizeFuel_certified (source : AccessibleState S) :
    ∃ target, normalizeFuel (height source) source.val = some target ∧
      Reduces source.val target ∧ Normal target := by
  obtain ⟨target, success⟩ := normalizeFuel_complete source (height source) (Nat.le_refl _)
  exact ⟨target, success, normalizeFuel_sound success⟩

/-- Source typing is preserved under every successful execution, at the original type. -/
theorem normalizeFuel_preserves_typing {P : Specification S} {context : List (Expr S)}
    {term type target : Expr S} {fuel : ℕ} (typed : HasType P context term type)
    (success : normalizeFuel fuel term = some target) : HasType P context target type :=
  typed.subject_reduces (normalizeFuel_sound success).1

/-- The actual source confluence theorem supplies canonical normal forms. -/
theorem normal_forms_unique {term first second : Expr S}
    (firstPath : Reduces term first) (secondPath : Reduces term second)
    (firstNormal : Normal first) (secondNormal : Normal second) : first = second := by
  have conversion : Converts first second :=
    .trans _ _ _ (.symm _ _ firstPath.converts) secondPath.converts
  obtain ⟨joined, left, right⟩ := conversion.join
  exact (firstNormal.reduces_eq left).trans (secondNormal.reduces_eq right).symm

/-- Any two successful executions agree, independently of the supplied fuel. -/
theorem normalizeFuel_unique {term first second : Expr S} {firstFuel secondFuel : ℕ}
    (firstSuccess : normalizeFuel firstFuel term = some first)
    (secondSuccess : normalizeFuel secondFuel term = some second) : first = second := by
  obtain ⟨firstPath, firstNormal⟩ := normalizeFuel_sound firstSuccess
  obtain ⟨secondPath, secondNormal⟩ := normalizeFuel_sound secondSuccess
  exact normal_forms_unique firstPath secondPath firstNormal secondNormal

end FormalResearch.TypeTheory.BetaReduction
