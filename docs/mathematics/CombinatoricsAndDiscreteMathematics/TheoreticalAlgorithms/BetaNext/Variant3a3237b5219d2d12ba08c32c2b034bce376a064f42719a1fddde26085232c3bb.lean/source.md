# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BetaNext.Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47a455cb5d79cfe3193e2458ba7f981bdbbf82c6` · SHA-256 `3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.TypeTheory.PureTypeSystem.Reduction
import FormalResearch.MathematicalTooling.Reduction.FiniteHeight

/-!
Complete finite successors for the actual annotated PTS beta relation.
Reductions inside annotations and both product children are enumerated.
Accessibility is required on an explicit source state; no raw-syntax termination
claim is made. The accessible-state subtype retains every source transition.
Human research direction and evaluation: grwtsk contributors.
Formal construction and pinned replay: Codex.
-/

namespace FormalResearch.TypeTheory.BetaReduction

open OAI.PureTypeSystem

universe u

variable {S : Type u}

/-- The actual root contraction, if the application function is a lambda. -/
def headNext (function argument : Expr S) : List (Expr S) :=
  match function with
  | .lam _ body => [body.instantiate argument]
  | _ => []

/-- All actual one-step successors, including every annotated child position. -/
def next : Expr S → List (Expr S)
  | .var _ => []
  | .sort _ => []
  | .app function argument =>
      headNext function argument ++
        ((next function).map (fun successor => .app successor argument) ++
          (next argument).map (fun successor => .app function successor))
  | .lam annotation body =>
      (next annotation).map (fun successor => .lam successor body) ++
        (next body).map (fun successor => .lam annotation successor)
  | .pi domain codomain =>
      (next domain).map (fun successor => .pi successor codomain) ++
        (next codomain).map (fun successor => .pi domain successor)

private theorem headNext_sound {function argument target : Expr S}
    (member : target ∈ headNext function argument) : Beta (.app function argument) target := by
  cases function with
  | lam annotation body =>
      have equality : target = body.instantiate argument := by simpa [headNext] using member
      subst target
      exact .head annotation body argument
  | var _ => simp [headNext] at member
  | sort _ => simp [headNext] at member
  | app _ _ => simp [headNext] at member
  | pi _ _ => simp [headNext] at member

/-- Enumeration produces only licensed actual source reductions. -/
theorem next_sound {term target : Expr S} (member : target ∈ next term) : Beta term target := by
  induction term generalizing target with
  | var _ => simp [next] at member
  | sort _ => simp [next] at member
  | app function argument ihFunction ihArgument =>
      rcases List.mem_append.mp member with head | children
      · exact headNext_sound head
      · rcases List.mem_append.mp children with left | right
        · obtain ⟨successor, child, rfl⟩ := List.mem_map.mp left
          exact .app_left (ihFunction child)
        · obtain ⟨successor, child, rfl⟩ := List.mem_map.mp right
          exact .app_right (ihArgument child)
  | lam annotation body ihAnnotation ihBody =>
      rcases List.mem_append.mp member with left | right
      · obtain ⟨successor, child, rfl⟩ := List.mem_map.mp left
        exact .lam_domain (ihAnnotation child)
      · obtain ⟨successor, child, rfl⟩ := List.mem_map.mp right
        exact .lam_body (ihBody child)
  | pi domain codomain ihDomain ihCodomain =>
      rcases List.mem_append.mp member with left | right
      · obtain ⟨successor, child, rfl⟩ := List.mem_map.mp left
        exact .pi_domain (ihDomain child)
      · obtain ⟨successor, child, rfl⟩ := List.mem_map.mp right
        exact .pi_body (ihCodomain child)

/-- Every source beta transition appears, rather than only one chosen strategy. -/
theorem next_complete {term target : Expr S} (step : Beta term target) : target ∈ next term := by
  induction step with
  | head annotation body argument => simp [next, headNext]
  | app_left _ ih =>
      exact List.mem_append.mpr (Or.inr (List.mem_append.mpr
        (Or.inl (List.mem_map.mpr ⟨_, ih, rfl⟩))))
  | app_right _ ih =>
      exact List.mem_append.mpr (Or.inr (List.mem_append.mpr
        (Or.inr (List.mem_map.mpr ⟨_, ih, rfl⟩))))
  | lam_domain _ ih => exact List.mem_append.mpr (Or.inl (List.mem_map.mpr ⟨_, ih, rfl⟩))
  | lam_body _ ih => exact List.mem_append.mpr (Or.inr (List.mem_map.mpr ⟨_, ih, rfl⟩))
  | pi_domain _ ih => exact List.mem_append.mpr (Or.inl (List.mem_map.mpr ⟨_, ih, rfl⟩))
  | pi_body _ ih => exact List.mem_append.mpr (Or.inr (List.mem_map.mpr ⟨_, ih, rfl⟩))

/-- Exact successor correctness requires no decidable equality on arbitrary sorts. -/
theorem next_correct (term target : Expr S) : target ∈ next term ↔ Beta term target :=
  ⟨next_sound, next_complete⟩

/-- A start with accessibility carries all its actual descendants. -/
abbrev AccessibleState (S : Type u) := {term : Expr S // StronglyNormalizing term}

/-- The whole actual beta relation on accessible source states. -/
def step (source target : AccessibleState S) : Prop := Beta source.val target.val

/-- Accessibility survives every enumerated transition; no successor is filtered out. -/
def accessibleNext (source : AccessibleState S) : List (AccessibleState S) :=
  (next source.val).attach.map fun target =>
    ⟨target.val, source.property.step (next_sound target.property)⟩

/-- The lifted enumeration retains precisely all source transitions. -/
theorem accessibleNext_correct (source target : AccessibleState S) :
    target ∈ accessibleNext source ↔ step source target := by
  constructor
  · intro member
    obtain ⟨successor, _, equality⟩ := List.mem_map.mp member
    have equation := congrArg Subtype.val equality
    change Beta source.val target.val
    change successor.val = target.val at equation
    rw [← equation]
    exact next_sound successor.property
  · intro reduction
    have member := next_complete reduction
    apply List.mem_map.mpr
    exact ⟨⟨target.val, member⟩, by simp, Subtype.ext rfl⟩

/-- Reversed accessibility on the subtype is inherited from the complete raw relation. -/
theorem accessible_wellFounded : WellFounded (fun target source : AccessibleState S =>
    step source target) := by
  refine ⟨fun source => ?_⟩
  exact FormalResearch.MathematicalTooling.Reduction.strongly_normalizing_of_strict_simulation
    Subtype.val (fun reduction => Relation.TransGen.single reduction) source.property

/-- Complete actual beta successors and accessibility supply the generic exact-height API. -/
def reducer (S : Type u) : FormalResearch.MathematicalTooling.Reduction.FiniteReducer
    (AccessibleState S) where
  step := step
  next := accessibleNext
  next_correct := accessibleNext_correct
  wellFounded := accessible_wellFounded

/-- Exact mathematical height for an individually accessible actual annotated source term. -/
noncomputable def height (source : AccessibleState S) : ℕ := (reducer S).height source

/-- Every counted actual trace, including descendants outside a starting catalogue, is bounded. -/
theorem trace_height_bound {source target : AccessibleState S} {count : ℕ}
    (trace : FormalResearch.MathematicalTooling.Reduction.Trace step count source target) :
    count + height target ≤ height source :=
  (reducer S).trace_height_bound trace

/-- The exact source height is attained by a longest trace ending in a source normal form. -/
theorem longest_trace (source : AccessibleState S) :
    ∃ target,
      FormalResearch.MathematicalTooling.Reduction.Trace step (height source) source target ∧
      Normal target.val := by
  obtain ⟨target, trace, normal⟩ := (reducer S).longest_trace source
  refine ⟨target, trace, fun term reduction => ?_⟩
  exact normal ⟨term, target.property.step reduction⟩ reduction

end FormalResearch.TypeTheory.BetaReduction
```
