/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationRefinement
import GRWTSK.ComputerScience.TheoryOfData.DataStructures.CacheFactorization
import Mathlib.Data.Set.Function

/-!
# Observation refinement, function descent, and sufficient cache keys

This connects the existing observation and cache libraries rather than creating
another information order or factorization construction. `Refines f g` and
`GRWTSK.Cache.FiberConstant f g` express exactly the same kernel inclusion.
The cache library's realized-key factorization therefore gives function-valued
observation descent and uniqueness on `Set.range f`, including empty types.
Predicate preservation and existence of a sound covering cache characterize
the same refinement through the existing theorems in those two libraries.

The substantive extension from image decoding to total decoding explicitly
requires surjectivity. Independence of an auxiliary coordinate is characterized
by factorization through the other coordinate, using a nonempty auxiliary type
to make the projection surjective. No factual independence is inferred for a
particular policy or observation.

Analytic argument: equality of observations forces equality of the requested
result; the existing choice-on-image construction supplies the converse.
Surjectivity identifies the entire codomain with realizable observations.
The off-image uniqueness example and the cache library's empty-output example
separate these exact statements from stronger unsupported extensions.
Dependencies inspected at f81464dccb75b45f736523c70950d48e76876c2d.
No prior-art novelty or independent-review claim is made.
-/

namespace GRWTSK.Logic.Observation

universe u v w

variable {X : Type u} {Y : Type v} {Z : Type w}

/-- The observation order and the existing cache sufficiency predicate coincide. -/
theorem refines_iff_fiberConstant (f : X → Y) (g : X → Z) :
    Refines f g ↔ GRWTSK.Cache.FiberConstant f g := Iff.rfl

/-- Reuse realized-key factorization without assuming any arbitrary default output. -/
theorem refines_iff_factors_on_range (f : X → Y) (g : X → Z) :
    Refines f g ↔
      ∃ decoder : Set.range f → Z,
        ∀ x, decoder ⟨f x, ⟨x, rfl⟩⟩ = g x :=
  GRWTSK.Cache.fiberConstant_iff_factorization f g

/-- Existing cache factorization uniqueness applies to precisely the realized observations. -/
theorem range_decoder_unique (f : X → Y) (g : X → Z)
    {d e : Set.range f → Z}
    (hd : ∀ x, d ⟨f x, ⟨x, rfl⟩⟩ = g x)
    (he : ∀ x, e ⟨f x, ⟨x, rfl⟩⟩ = g x) : d = e :=
  GRWTSK.Cache.factorization_unique f g d e hd he

/-- The universal property remains valid when the observation has empty image. -/
theorem refines_iff_unique_range_decoder (f : X → Y) (g : X → Z) :
    Refines f g ↔
      ∃! decoder : Set.range f → Z,
        ∀ x, decoder ⟨f x, ⟨x, rfl⟩⟩ = g x := by
  constructor
  · intro hfg
    obtain ⟨decoder, correct⟩ := (refines_iff_factors_on_range f g).mp hfg
    exact ⟨decoder, correct, fun other otherCorrect =>
      range_decoder_unique f g otherCorrect correct⟩
  · rintro ⟨decoder, correct, _⟩
    exact (refines_iff_factors_on_range f g).mpr ⟨decoder, correct⟩

/-- Surjectivity supplies the precise bridge from image decoding to total decoding. -/
theorem refines_iff_function_factors (f : X → Y) (g : X → Z)
    (hf : Function.Surjective f) :
    Refines f g ↔ ∃ decoder : Y → Z, ∀ x, decoder (f x) = g x := by
  constructor
  · intro hfg
    obtain ⟨decoder, correct⟩ := (refines_iff_factors_on_range f g).mp hfg
    refine ⟨fun y => decoder ⟨y, hf y⟩, ?_⟩
    intro x
    exact correct x
  · rintro ⟨decoder, correct⟩
    exact (refines_iff_factors_on_range f g).mpr
      ⟨fun y => decoder y.val, correct⟩

theorem function_decoder_unique {f : X → Y} {g : X → Z}
    (hf : Function.Surjective f) {d e : Y → Z}
    (hd : ∀ x, d (f x) = g x) (he : ∀ x, e (f x) = g x) : d = e := by
  funext y
  obtain ⟨x, rfl⟩ := hf y
  exact (hd x).trans (he x).symm

/-- A collapsed pair with different requested values obstructs every exact decoder. -/
theorem no_function_decoder_of_collision {f : X → Y} {g : X → Z}
    {x x' : X} (same : f x = f x') (different : g x ≠ g x') :
    ¬ ∃ decoder : Y → Z, ∀ a, decoder (f a) = g a := by
  rintro ⟨decoder, correct⟩
  have refined : Refines f g :=
    (refines_iff_factors_on_range f g).mpr ⟨fun y => decoder y.val, correct⟩
  exact different (refined x x' same)

/-- Independent variation of an auxiliary coordinate is exactly projection factorization. -/
theorem factors_fst_iff [Nonempty Y] (g : X × Y → Z) :
    (∀ x y y', g (x, y) = g (x, y')) ↔
      ∃ decoder : X → Z, ∀ x y, decoder x = g (x, y) := by
  constructor
  · intro independent
    have refined : Refines (Prod.fst : X × Y → X) g := by
      rintro ⟨x, y⟩ ⟨x', y'⟩ heq
      change x = x' at heq
      subst x'
      exact independent x y y'
    have surjective : Function.Surjective (Prod.fst : X × Y → X) :=
      fun x => ⟨(x, Classical.choice (inferInstance : Nonempty Y)), rfl⟩
    obtain ⟨decoder, correct⟩ :=
      (refines_iff_function_factors Prod.fst g surjective).mp refined
    exact ⟨decoder, fun x y => correct (x, y)⟩
  · rintro ⟨decoder, correct⟩ x y y'
    exact (correct x y).symm.trans (correct x y')

/-- Predicate preservation and function descent compare the same actual fibers. -/
theorem function_descent_iff_predicate_preservation (f : X → Y) (g : X → Z) :
    (∃ decoder : Set.range f → Z, ∀ x, decoder ⟨f x, ⟨x, rfl⟩⟩ = g x) ↔
      ∀ P : X → Prop, Determined g P → Determined f P := by
  rw [← refines_iff_factors_on_range, refines_iff_determined]

/-- A sound covering cache is possible exactly at a sufficient observation boundary. -/
theorem refines_iff_sound_cover (f : X → Y) (g : X → Z) :
    Refines f g ↔
      ∃ store : GRWTSK.Cache.Store Y Z,
        GRWTSK.Cache.Sound f g store ∧ GRWTSK.Cache.Covers f store :=
  GRWTSK.Cache.fiberConstant_iff_sound_cover f g

/-- Compatible decoders can disagree at observations outside the source's image. -/
theorem total_decoder_nonuniqueness_off_range :
    (∀ x : Unit, (fun _ : Bool => false) false = (fun _ : Unit => false) x) ∧
      (∀ x : Unit, (fun b : Bool => b) false = (fun _ : Unit => false) x) ∧
      (fun _ : Bool => false) ≠ (fun b : Bool => b) := by
  refine ⟨fun _ => rfl, fun _ => rfl, ?_⟩
  intro heq
  have impossible : false = true := congrFun heq true
  cases impossible

/-- Refinement does not create an output value at an impossible observation. -/
theorem total_extension_requires_an_additional_hypothesis :
    Refines (Empty.elim : Empty → Unit) (fun x : Empty => x) ∧
      ¬ ∃ decoder : Unit → Empty, ∀ x : Empty, decoder (Empty.elim x) = x := by
  constructor
  · intro x
    cases x
  · rintro ⟨decoder, _⟩
    exact GRWTSK.Cache.full_key_extension_can_fail ⟨decoder⟩

end GRWTSK.Logic.Observation
