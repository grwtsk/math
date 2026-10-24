import Mathlib.Data.Set.Basic

/-!
# Independent operational effects

Effects are independent coordinates.  In particular, observing an element
does not imply permission to retain, transmit, train on, transform, or execute
it.
-/

namespace Mathematics.Capability

inductive Effect
  | observe
  | retain
  | transmit
  | transform
  | train
  | execute
  deriving DecidableEq, Repr

structure EffectProfile where
  admits : Set Effect

def EffectProfile.Refines
    (child parent : EffectProfile) : Prop :=
  child.admits ⊆ parent.admits

instance : LE EffectProfile :=
  ⟨EffectProfile.Refines⟩

namespace EffectProfile

@[refl] theorem le_refl (profile : EffectProfile) :
    profile ≤ profile :=
  Set.Subset.rfl

theorem le_trans
    {first second third : EffectProfile}
    (first_le_second : first ≤ second)
    (second_le_third : second ≤ third) :
    first ≤ third :=
  Set.Subset.trans first_le_second second_le_third

def meet (left right : EffectProfile) : EffectProfile where
  admits := left.admits ∩ right.admits

theorem meet_le_left (left right : EffectProfile) :
    meet left right ≤ left :=
  Set.inter_subset_left

theorem meet_le_right (left right : EffectProfile) :
    meet left right ≤ right :=
  Set.inter_subset_right

end EffectProfile

end Mathematics.Capability
