/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Two distinct additive sources with isomorphic lower shadows

This is a pullback, NOT the pushout in LocalAdditiveFusion.
Two original groups A and B retain distinct identities and have
homomorphisms to lower observations L and R, respectively. Only
those lower observations are identified through an explicit
additive equivalence L ≃+ R. The matched relation is an actual
additive subgroup of A × B, with both original source projections.

The canonical reified record stores the complete matched source
pair AND its common shadow. Decoding it is exact. It is deliberately
not a compressed byte serialization: an external byte serializer
must be shown injective/round-tripping separately.

An isomorphic shadow is not an isomorphism of original sources.
Even an exact common shadow need not have a decoder: distinct
paired states can collide on its shadow. The retained two-source
record does not make that mistake. No symplectic form, prism,
prismatic complex, signed arithmetic estimate or RH implication
is manufactured by this additive construction.
-/

namespace GRWTSK.Algebra.SharedShadowPullback

universe u v w t

/-- The lower shadows, NOT the original groups, are isomorphic. -/
structure SharedShadow
    (A : Type u) (B : Type v) (L : Type w) (R : Type t)
    [AddCommGroup A] [AddCommGroup B]
    [AddCommGroup L] [AddCommGroup R] where
  left : A →+ L
  right : B →+ R
  shadowEquiv : L ≃+ R

/-- A common *additive* code constructs the isomorphism of LOWER
shadows. This is not an isomorphism of the upper source objects.
The coding maps are required to be genuine additive equivalences,
not merely equal-length bit strings or cardinality witnesses. -/
def SharedShadow.ofCommonCode
    {C : Type*} [AddCommGroup C]
    {A : Type u} {B : Type v} {L : Type w} {R : Type t}
    [AddCommGroup A] [AddCommGroup B]
    [AddCommGroup L] [AddCommGroup R]
    (fromLeft : A →+ L) (fromRight : B →+ R)
    (encodeLeft : L ≃+ C) (encodeRight : R ≃+ C) :
    SharedShadow A B L R where
  left := fromLeft
  right := fromRight
  shadowEquiv := encodeLeft.trans encodeRight.symm

variable {A : Type u} {B : Type v} {L : Type w} {R : Type t}
variable [AddCommGroup A] [AddCommGroup B]
variable [AddCommGroup L] [AddCommGroup R]

/-- The exact common-shadow relation is CLOSED under the actual
addition of both source groups. There is no quotient or forced
identification of distinct original states. -/
def SharedShadow.matched (S : SharedShadow A B L R) :
    AddSubgroup (A × B) where
  carrier := {ab | S.shadowEquiv (S.left ab.1) = S.right ab.2}
  zero_mem' := by simp
  add_mem' := by
    rintro ⟨a, b⟩ ⟨c, d⟩ hab hcd
    change S.shadowEquiv (S.left (a + c)) = S.right (b + d)
    simp only [map_add]
    rw [hab, hcd]
  neg_mem' := by
    rintro ⟨a, b⟩ hab
    change S.shadowEquiv (S.left (-a)) = S.right (-b)
    simpa only [map_neg] using congrArg Neg.neg hab

/-- Type of pairs of complete ORIGINAL states with matched shadows. -/
abbrev SharedShadow.Paired (S : SharedShadow A B L R) := S.matched

/-- Build a matched pair only with an actual lower-shadow equality. -/
def SharedShadow.pair (S : SharedShadow A B L R)
    (a : A) (b : B)
    (h : S.shadowEquiv (S.left a) = S.right b) : S.Paired :=
  ⟨(a, b), h⟩

/-- The two original sources remain directly readable. -/
def SharedShadow.toLeft (S : SharedShadow A B L R) :
    S.Paired →+ A where
  toFun x := x.1.1
  map_zero' := by rfl
  map_add' := by intro x y; rfl

def SharedShadow.toRight (S : SharedShadow A B L R) :
    S.Paired →+ B where
  toFun x := x.1.2
  map_zero' := by rfl
  map_add' := by intro x y; rfl

/-- The common lower observation is an additive map. -/
def SharedShadow.shadow (S : SharedShadow A B L R) :
    S.Paired →+ R :=
  S.right.comp S.toRight

/-- Exact matching, not approximate numerical agreement. -/
theorem SharedShadow.shadow_agrees (S : SharedShadow A B L R)
    (x : S.Paired) :
    S.shadowEquiv (S.left (S.toLeft x)) = S.shadow x :=
  x.property

/-- The full pair is recoverable from its two original coordinates. -/
theorem SharedShadow.sources_jointly_injective
    (S : SharedShadow A B L R) :
    Function.Injective (fun x : S.Paired => (S.toLeft x, S.toRight x)) := by
  intro x y h
  apply Subtype.ext
  exact h

/-- If the right shadow map covers every lower observation, every
left source occurs in at least one matched pair. This is NOT a
canonical section or an isomorphism of A with B. -/
theorem SharedShadow.toLeft_surjective_of_right_surjective
    (S : SharedShadow A B L R)
    (hRight : Function.Surjective S.right) :
    Function.Surjective S.toLeft := by
  intro a
  obtain ⟨b, hb⟩ := hRight (S.shadowEquiv (S.left a))
  exact ⟨S.pair a b hb.symm, rfl⟩

theorem SharedShadow.toRight_surjective_of_left_surjective
    (S : SharedShadow A B L R)
    (hLeft : Function.Surjective S.left) :
    Function.Surjective S.toRight := by
  intro b
  obtain ⟨a, ha⟩ := hLeft (S.shadowEquiv.symm (S.right b))
  have h : S.shadowEquiv (S.left a) = S.right b := by
    rw [ha]
    simp
  exact ⟨S.pair a b h, rfl⟩

/-- The paired source has zero lower observation exactly when BOTH
original states lie in their respective shadow kernels. No
separate residual or multiplicity is identified with zero. -/
theorem SharedShadow.shadow_zero_iff
    (S : SharedShadow A B L R) (x : S.Paired) :
    S.shadow x = 0 ↔
      S.left (S.toLeft x) = 0 ∧ S.right (S.toRight x) = 0 := by
  constructor
  · intro hz
    have hleft : S.left (S.toLeft x) = 0 := by
      apply S.shadowEquiv.injective
      rw [map_zero]
      exact (S.shadow_agrees x).trans hz
    exact ⟨hleft, hz⟩
  · rintro ⟨_, hr⟩
    exact hr

/-- A completely explicit source-reifying record: its shadow field
is redundant ON PURPOSE; both original source coordinates survive. -/
structure SharedShadow.Reified (S : SharedShadow A B L R) where
  lower : R
  leftOriginal : A
  rightOriginal : B
  leftShadow : S.shadowEquiv (S.left leftOriginal) = lower
  rightShadow : S.right rightOriginal = lower

/-- Source-to-record encoding, not a claim of bit compression. -/
def SharedShadow.encode (S : SharedShadow A B L R)
    (x : S.Paired) : S.Reified where
  lower := S.shadow x
  leftOriginal := S.toLeft x
  rightOriginal := S.toRight x
  leftShadow := S.shadow_agrees x
  rightShadow := rfl

/-- Decode the two original states, using BOTH consistency proofs. -/
def SharedShadow.decode (S : SharedShadow A B L R)
    (c : S.Reified) : S.Paired :=
  S.pair c.leftOriginal c.rightOriginal
    (c.leftShadow.trans c.rightShadow.symm)

/-- The complete two-source record is lossless, even though its
common lower-shadow field by itself may be lossy. -/
theorem SharedShadow.decode_encode (S : SharedShadow A B L R)
    (x : S.Paired) :
    S.decode (S.encode x) = x := by
  apply Subtype.ext
  rfl

theorem SharedShadow.encode_injective (S : SharedShadow A B L R) :
    Function.Injective S.encode :=
  (S.decode_encode).injective

/-- A shadow-only decoder is impossible as soon as two different
original pairs share the same lower shadow. Exact round-trip
coding MUST retain sufficient residual/source information. -/
theorem SharedShadow.no_shadow_only_decoder_of_collision
    (S : SharedShadow A B L R)
    (x y : S.Paired)
    (hsame : S.shadow x = S.shadow y) (hdiff : x ≠ y) :
    ¬ ∃ decode : R → S.Paired,
      ∀ z : S.Paired, decode (S.shadow z) = z := by
  rintro ⟨decode, hdecode⟩
  apply hdiff
  calc
    x = decode (S.shadow x) := (hdecode x).symm
    _ = decode (S.shadow y) := congrArg decode hsame
    _ = y := hdecode y

/-- A genuine two-sided cellular dynamic. The original dynamics
need not be isomorphic, but each must cover a compatible
lower-shadow evolution, and the lower isomorphism must commute. -/
structure SharedShadow.Dynamics (S : SharedShadow A B L R) where
  onLeft : A →+ A
  onRight : B →+ B
  onLowerLeft : L →+ L
  onLowerRight : R →+ R
  left_commutes : ∀ a,
    S.left (onLeft a) = onLowerLeft (S.left a)
  right_commutes : ∀ b,
    S.right (onRight b) = onLowerRight (S.right b)
  lower_commutes : ∀ l,
    S.shadowEquiv (onLowerLeft l) =
      onLowerRight (S.shadowEquiv l)

/-- The paired relation is forward invariant under precisely
the supplied commuting maps; no global rotation is assumed. -/
def SharedShadow.Dynamics.evolve (S : SharedShadow A B L R)
    (D : S.Dynamics) : S.Paired →+ S.Paired where
  toFun x :=
    S.pair (D.onLeft (S.toLeft x)) (D.onRight (S.toRight x)) (by
      rw [D.left_commutes, D.lower_commutes, D.right_commutes]
      exact congrArg D.onLowerRight (S.shadow_agrees x))
  map_zero' := by
    apply Subtype.ext
    simp [SharedShadow.pair, SharedShadow.toLeft, SharedShadow.toRight]
  map_add' := by
    intro x y
    apply Subtype.ext
    simp [SharedShadow.pair, SharedShadow.toLeft, SharedShadow.toRight,
      map_add]

theorem SharedShadow.Dynamics.shadow_evolve
    (S : SharedShadow A B L R) (D : S.Dynamics) (x : S.Paired) :
    S.shadow (D.evolve x) = D.onLowerRight (S.shadow x) :=
  D.right_commutes (S.toRight x)

/-- The next state can always be reified and decoded exactly.
This is a representational statement, NOT a source estimate. -/
theorem SharedShadow.Dynamics.decode_evolved
    (S : SharedShadow A B L R) (D : S.Dynamics) (x : S.Paired) :
    S.decode (S.encode (D.evolve x)) = D.evolve x :=
  S.decode_encode (D.evolve x)

end GRWTSK.Algebra.SharedShadowPullback
