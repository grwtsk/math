/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RelationSandwich
import Mathlib.GroupTheory.GroupAction.Basic

set_option autoImplicit false

/-!
# Equivariant refinement of a source-bound graph sandwich

This is a *new consumer of the existing RelationSandwich.Sandwich*, not a
replacement for its lower/middle/upper relations. A rotation is useful only
when it preserves the ACTUAL middle relation; a symmetry of a feature, a
candidate graph, or a radical-weighted kernel does not supply that premise.

The lower envelope takes all rotated certified edges; the upper envelope
retains only candidates valid in every orientation. Both preserve the same
middle relation. These are maximal/minimal invariant envelopes, without a
finite-group assumption. An application to arithmetic must separately prove
that the action preserves the specified full source, multiplicities, signs,
type-fiber observations and any quantitative residuals.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich

universe u v

variable {V : Type u}

/-- Source-visible invariance of a directed relation under a group action.
The orientation is chosen so that no inverse is silently dropped. -/
def ActionInvariant (G : Type v) [Group G] [MulAction G V]
    (edge : EdgeRelation V) : Prop :=
  ∀ (g : G) (x y : V), edge (g • x) (g • y) ↔ edge x y

/-- The union of all rotated certified lower edges. -/
def Sandwich.rotatedLower (G : Type v) [Group G] [MulAction G V]
    (s : Sandwich V) : EdgeRelation V :=
  fun x y => ∃ g : G, s.lower (g • x) (g • y)

/-- The intersection of all rotated candidate upper edges. -/
def Sandwich.rotatedUpper (G : Type v) [Group G] [MulAction G V]
    (s : Sandwich V) : EdgeRelation V :=
  fun x y => ∀ g : G, s.upper (g • x) (g • y)

/-- A valid middle-relation symmetry upgrades *both* certificates while
keeping the original middle relation byte-for-byte as a proposition. -/
def Sandwich.rotatedRefinement (G : Type v) [Group G] [MulAction G V]
    (s : Sandwich V) (hmid : ActionInvariant G s.middle) : Sandwich V where
  lower := s.rotatedLower G
  middle := s.middle
  upper := s.rotatedUpper G
  lower_le_middle := by
    intro x y hxy
    obtain ⟨g, hg⟩ := hxy
    exact (hmid g x y).mp (s.lower_le_middle hg)
  middle_le_upper := by
    intro x y hxy g
    exact s.middle_le_upper ((hmid g x y).mpr hxy)

/-- The refined lower certificate never loses an original certified edge. -/
theorem Sandwich.lower_le_rotatedLower
    (G : Type v) [Group G] [MulAction G V] (s : Sandwich V) :
    Subrelation s.lower (s.rotatedLower G) := by
  intro x y hxy
  refine ⟨1, ?_⟩
  simpa only [one_smul] using hxy

/-- The refined upper certificate never invents an original candidate. -/
theorem Sandwich.rotatedUpper_le_upper
    (G : Type v) [Group G] [MulAction G V] (s : Sandwich V) :
    Subrelation (s.rotatedUpper G) s.upper := by
  intro x y hxy
  simpa only [one_smul] using hxy (1 : G)

/-- The union of rotated lower certificates is itself invariant. -/
theorem Sandwich.rotatedLower_invariant
    (G : Type v) [Group G] [MulAction G V] (s : Sandwich V) :
    ActionInvariant G (s.rotatedLower G) := by
  intro g x y
  constructor
  · rintro ⟨h, hh⟩
    refine ⟨h * g, ?_⟩
    simpa only [mul_smul] using hh
  · rintro ⟨h, hh⟩
    refine ⟨h * g⁻¹, ?_⟩
    simpa [mul_smul] using hh

/-- The intersection of rotated upper certificates is itself invariant. -/
theorem Sandwich.rotatedUpper_invariant
    (G : Type v) [Group G] [MulAction G V] (s : Sandwich V) :
    ActionInvariant G (s.rotatedUpper G) := by
  intro g x y
  constructor
  · intro h k
    have hk := h (k * g⁻¹)
    simpa [mul_smul] using hk
  · intro h k
    have hk := h (k * g)
    simpa only [mul_smul] using hk

/-- Optimality: any invariant certified lower enlargement contains the
rotated lower hull. This does not assume that the candidate is the middle. -/
theorem Sandwich.rotatedLower_smallestInvariant
    (G : Type v) [Group G] [MulAction G V]
    (s : Sandwich V) (candidate : EdgeRelation V)
    (hinc : Subrelation s.lower candidate)
    (hinv : ActionInvariant G candidate) :
    Subrelation (s.rotatedLower G) candidate := by
  intro x y hxy
  obtain ⟨g, hg⟩ := hxy
  exact (hinv g x y).mp (hinc hg)

/-- Optimality: any invariant subrelation of the upper certificate
lies inside the rotated upper core. -/
theorem Sandwich.rotatedUpper_largestInvariant
    (G : Type v) [Group G] [MulAction G V]
    (s : Sandwich V) (candidate : EdgeRelation V)
    (hinc : Subrelation candidate s.upper)
    (hinv : ActionInvariant G candidate) :
    Subrelation candidate (s.rotatedUpper G) := by
  intro x y hxy g
  exact hinc ((hinv g x y).mpr hxy)

/-- The stronger certificate is compatible with both standard downstream
consumers: upward-closed lower properties and downward-closed upper properties.
A candidate-only symmetry does not inhabit the required middle witness. -/
theorem Sandwich.rotated_middle_properties
    (G : Type v) [Group G] [MulAction G V]
    (s : Sandwich V) (hmid : ActionInvariant G s.middle)
    (lowerProperty upperProperty : EdgeRelation V → Prop)
    (hup : UpwardClosed lowerProperty)
    (hdown : DownwardClosed upperProperty)
    (hlow : lowerProperty (s.rotatedLower G))
    (hupper : upperProperty (s.rotatedUpper G)) :
    lowerProperty s.middle ∧ upperProperty s.middle := by
  constructor
  · exact (s.rotatedRefinement G hmid).middle_of_lower_upward
      lowerProperty hup hlow
  · exact (s.rotatedRefinement G hmid).middle_of_upper_downward
      upperProperty hdown hupper

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
