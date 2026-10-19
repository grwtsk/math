import Mathlib.GroupTheory.MonoidLocalization.GrothendieckGroup

namespace GRWTSK.Algebra.KTheory

universe u v w

/-- The universal `K₀`-shaped group completion of a commutative monoid of stable objects.

The monoid operation is the selected stable sum. This definition does not choose a category or
assert that an arbitrary monoid is the `K₀` of a geometric source. -/
abbrev GrothendieckKZero (M : Type u) [CommMonoid M] : Type u :=
  Algebra.GrothendieckGroup M

namespace GrothendieckKZero

variable {M : Type u} {N : Type v} {P : Type w}
variable [CommMonoid M] [CommMonoid N] [CommMonoid P]

/-- A stable-object map induces a homomorphism on universal group completions. -/
noncomputable def map (f : M →* N) : GrothendieckKZero M →* GrothendieckKZero N :=
  Algebra.GrothendieckGroup.lift
    ((Algebra.GrothendieckGroup.of (M := N)).comp f)

@[simp]
theorem map_of (f : M →* N) (x : M) :
    map f (Algebra.GrothendieckGroup.of (M := M) x) =
      Algebra.GrothendieckGroup.of (M := N) (f x) := by
  exact DFunLike.congr_fun
    (Algebra.GrothendieckGroup.lift.symm_apply_apply
      ((Algebra.GrothendieckGroup.of (M := N)).comp f)) x

/-- Group-completion transport preserves composition. -/
theorem map_comp (g : N →* P) (f : M →* N) :
    map (g.comp f) = (map g).comp (map f) := by
  apply Algebra.GrothendieckGroup.lift.symm.injective
  ext x
  change map (g.comp f) (Algebra.GrothendieckGroup.of x) =
    map g (map f (Algebra.GrothendieckGroup.of x))
  simp only [map_of, MonoidHom.comp_apply]

/-- Group-completion transport preserves identities. -/
theorem map_id :
    map (MonoidHom.id M) = MonoidHom.id (GrothendieckKZero M) := by
  apply Algebra.GrothendieckGroup.lift.symm.injective
  ext x
  change map (MonoidHom.id M) (Algebra.GrothendieckGroup.of x) =
    Algebra.GrothendieckGroup.of x
  exact map_of (MonoidHom.id M) x

end GrothendieckKZero

/-- A typed stable port. Its object-level map and induced group-completion map remain explicit. -/
structure StablePort (M : Type u) (N : Type v) [CommMonoid M] [CommMonoid N] where
  objectMap : M →* N

namespace StablePort

variable {M : Type u} {N : Type v} {P : Type w}
variable [CommMonoid M] [CommMonoid N] [CommMonoid P]

/-- Composition retains the exact middle stable-object monoid. -/
def comp (g : StablePort N P) (f : StablePort M N) : StablePort M P where
  objectMap := g.objectMap.comp f.objectMap

/-- The induced universal `K₀` transport. -/
noncomputable def kZeroMap (f : StablePort M N) :
    GrothendieckKZero M →* GrothendieckKZero N :=
  GrothendieckKZero.map f.objectMap

/-- Stable-port composition induces composition on universal `K₀`. -/
theorem kZeroMap_comp (g : StablePort N P) (f : StablePort M N) :
    (comp g f).kZeroMap = g.kZeroMap.comp f.kZeroMap := by
  exact GrothendieckKZero.map_comp g.objectMap f.objectMap

end StablePort

end GRWTSK.Algebra.KTheory
