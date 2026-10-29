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

/-!
## Joint K₀-shaped and radical-signature collision boundary

The source's K₀-shaped invariant below is only the universal group completion
already formalized in this module. The second coordinate is an explicitly
supplied radical/support feature, not a coercion between arithmetic, ideal,
and polynomial radicals. A collision proves loss of exact type identification,
not the impossibility of probabilistic coverage of the types.
-/

namespace JointCollision

universe x y z t

variable {Source : Type x} {Stable : Type y} [CommMonoid Stable]
  {RadicalSignal : Type z} {TypeLabel : Type t}

/-- The jointly observed K₀-shaped class and radical signature. -/
def feature
    (kClass : Source → GrothendieckKZero Stable)
    (radical : Source → RadicalSignal) :
    Source → GrothendieckKZero Stable × RadicalSignal :=
  fun source => (kClass source, radical source)

/-- An exact decoder must be constant on every joint feature fiber. -/
theorem type_eq_of_joint_feature_collision
    (kClass : Source → GrothendieckKZero Stable)
    (radical : Source → RadicalSignal)
    (typeOf : Source → TypeLabel)
    (decode : GrothendieckKZero Stable × RadicalSignal → TypeLabel)
    (correct : ∀ source, decode (feature kClass radical source) = typeOf source)
    {a b : Source}
    (sameK : kClass a = kClass b)
    (sameRadical : radical a = radical b) :
    typeOf a = typeOf b := by
  have hfeature : feature kClass radical a = feature kClass radical b := by
    simp [feature, sameK, sameRadical]
  calc
    typeOf a = decode (feature kClass radical a) := (correct a).symm
    _ = decode (feature kClass radical b) := congrArg decode hfeature
    _ = typeOf b := correct b

/-- A collision which merges different exact types blocks every decoder
factoring only through the paired K₀-shaped class and radical signature. -/
theorem no_exact_type_decoder_of_collision
    (kClass : Source → GrothendieckKZero Stable)
    (radical : Source → RadicalSignal)
    (typeOf : Source → TypeLabel)
    {a b : Source}
    (sameK : kClass a = kClass b)
    (sameRadical : radical a = radical b)
    (differentType : typeOf a ≠ typeOf b) :
    ¬ ∃ decode : GrothendieckKZero Stable × RadicalSignal → TypeLabel,
        ∀ source, decode (feature kClass radical source) = typeOf source := by
  rintro ⟨decode, correct⟩
  exact differentType
    (type_eq_of_joint_feature_collision kClass radical typeOf
      decode correct sameK sameRadical)

end JointCollision

end GRWTSK.Algebra.KTheory
