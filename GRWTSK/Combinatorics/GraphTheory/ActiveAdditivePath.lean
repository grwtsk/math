/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RelationSandwich
import Mathlib.Algebra.Group.Hom.Defs

set_option autoImplicit false
noncomputable section

/-!
# Active graph growth with local additive maps

The existing RelationSandwich.Path carries ACTUAL certified edges.
Each edge may transport between DIFFERENT additive group types, so it
is not required to be an automorphism of one global group. Local
additive homomorphisms compose along a complete certified path.
If every local map is injective, the resulting path transport is
injective. Any exact source observation is retained only if EACH
edge supplies its own compatibility proof.

Increasing the certified edge set preserves old paths and old
transports only if the new edge maps AGREE on those old edges.
Reachability and arithmetic cancellation are not consequences of
growth, group addition or candidate-only graph edges.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich

universe u v w

variable {V : Type u} {Fiber : V → Type v}
variable [∀ x, AddCommGroup (Fiber x)]
variable {edge more : EdgeRelation V}

/-- Actual local additive transition for each accepted edge, allowing
nonisomorphic source/target groups and genuine noninvertible maps. -/
abbrev LocalAdditiveMaps (Fiber : V → Type v)
    [∀ x, AddCommGroup (Fiber x)]
    (edge : EdgeRelation V) :=
  ∀ ⦃x y : V⦄, edge x y → (Fiber x →+ Fiber y)

/-- Transport along an existing directed path by composing its local maps.
No path is manufactured by the construction. -/
def Path.additiveTransport (fit : LocalAdditiveMaps Fiber edge)
    {x y : V} (path : Path edge x y) : Fiber x →+ Fiber y := by
  induction path with
  | single h =>
      exact fit h
  | tail path h ih =>
      exact (fit h).comp ih

/-- Additive structure is actually preserved at each composed path,
without a hypothesis that all fibers are isomorphic. -/
theorem Path.additiveTransport_add
    (fit : LocalAdditiveMaps Fiber edge)
    {x y : V} (path : Path edge x y) (a b : Fiber x) :
    Path.additiveTransport fit path (a + b) =
      Path.additiveTransport fit path a +
        Path.additiveTransport fit path b :=
  map_add _ a b

/-- Local source-comparison data are AND-premises: each edge needs the
actual observation equation before it can be transported along a path.
The observation need not be additive (e.g. signed arithmetic data). -/
theorem Path.additiveTransport_observation
    {Source : Type w}
    (fit : LocalAdditiveMaps Fiber edge)
    (observe : ∀ x : V, Fiber x → Source)
    (compatible : ∀ ⦃x y : V⦄ (h : edge x y) (a : Fiber x),
      observe y (fit h a) = observe x a)
    {x y : V} (path : Path edge x y) (a : Fiber x) :
    observe y (Path.additiveTransport fit path a) = observe x a := by
  induction path generalizing a with
  | single h =>
      exact compatible h a
  | tail path h ih =>
      exact (compatible h (Path.additiveTransport fit path a)).trans (ih a)

/-- If each local transition is faithful, the entire composed
transport is faithful. Without this condition, active fusion can
collapse information and the path argument cannot recover it. -/
theorem Path.additiveTransport_injective
    (fit : LocalAdditiveMaps Fiber edge)
    (faithful : ∀ ⦃x y : V⦄ (h : edge x y),
      Function.Injective (fit h))
    {x y : V} (path : Path edge x y) :
    Function.Injective (Path.additiveTransport fit path) := by
  induction path with
  | single h =>
      exact faithful h
  | tail path h ih =>
      exact (faithful h).comp ih

/-- Additive transport is stable under enlargement of certified
edges IF the newly supplied edge maps restrict to the old maps. -/
theorem Path.additiveTransport_mono
    (include : Subrelation edge more)
    (oldFit : LocalAdditiveMaps Fiber edge)
    (newFit : LocalAdditiveMaps Fiber more)
    (coherent : ∀ ⦃x y : V⦄ (h : edge x y),
      newFit (include h) = oldFit h)
    {x y : V} (path : Path edge x y) :
    Path.additiveTransport newFit (Path.mono include path) =
      Path.additiveTransport oldFit path := by
  induction path with
  | single h =>
      simpa [Path.additiveTransport, Path.mono] using coherent h
  | tail path h ih =>
      simpa [Path.additiveTransport, Path.mono, ih, coherent h]

/-- Existing RelationSandwich lower-path certification is a real
consumer: a certified lower path is first converted to an ACTUAL
middle path, then its local additive maps are composed. -/
def Sandwich.additivePathTransport
    (s : Sandwich V)
    (fit : LocalAdditiveMaps Fiber s.middle)
    {x y : V} (path : Path s.lower x y) : Fiber x →+ Fiber y :=
  Path.additiveTransport fit (s.lower_path_to_middle path)

/-- The SAME signed/source observation returns along a certified
lower path, provided it commutes with every actual middle-edge map. -/
theorem Sandwich.additivePathObservation
    {Source : Type w}
    (s : Sandwich V)
    (fit : LocalAdditiveMaps Fiber s.middle)
    (observe : ∀ x : V, Fiber x → Source)
    (compatible : ∀ ⦃x y : V⦄ (h : s.middle x y) (a : Fiber x),
      observe y (fit h a) = observe x a)
    {x y : V} (path : Path s.lower x y) (a : Fiber x) :
    observe y (s.additivePathTransport fit path a) = observe x a :=
  Path.additiveTransport_observation fit observe compatible
    (s.lower_path_to_middle path) a

/-- Certified transport is injective under the SAME independently
verified local injectivity premises, not merely graph connectivity. -/
theorem Sandwich.additivePathInjective
    (s : Sandwich V)
    (fit : LocalAdditiveMaps Fiber s.middle)
    (faithful : ∀ ⦃x y : V⦄ (h : s.middle x y),
      Function.Injective (fit h))
    {x y : V} (path : Path s.lower x y) :
    Function.Injective (s.additivePathTransport fit path) :=
  Path.additiveTransport_injective fit faithful
    (s.lower_path_to_middle path)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
