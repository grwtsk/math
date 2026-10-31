/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.GroupTheory.QuotientGroup.Defs
import Mathlib.Algebra.Group.Subgroup.Ker
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Local additive fusion along an actual common seam

Given C →+ A and C →+ B, fuse the two (possibly nonisomorphic)
additive groups by quotienting A × B by the image of
c ↦ (left c, -right c). Unlike a mere equivalence of group
cardinalities, the quotient retains the chosen two homomorphisms
and the exact relation they impose. A seam-compatible additive
observer descends; an arbitrary signed arithmetic observable
does not do so without an additional proof.

The left inclusion is injective if the RIGHT seam map is injective,
and vice versa. Thus lossless source return requires real
hypotheses, not just the pushout label. No prime density, RH,
Navier--Stokes or delta-ring comparison follows.
-/

namespace GRWTSK.Algebra.AdditiveLocalFusion

universe u v w t

/-- Two original additive groups with an explicitly identified common cell.
Neither outer group is required to be isomorphic to the other. -/
structure Seam (C : Type u) (A : Type v) (B : Type w)
    [AddCommGroup C] [AddCommGroup A] [AddCommGroup B] where
  left : C →+ A
  right : C →+ B

variable {C : Type u} {A : Type v} {B : Type w}
variable [AddCommGroup C] [AddCommGroup A] [AddCommGroup B]

/-- The exact relations imposed by the common seam. -/
def Seam.relationMap (S : Seam C A B) : C →+ A × B where
  toFun c := (S.left c, -S.right c)
  map_zero' := by simp
  map_add' := by
    intro c d
    ext <;> simp [map_add, add_comm, add_left_comm, add_assoc]

/-- The image is already an additive subgroup; no artificial
additional pairwise identifications are permitted. -/
def Seam.relation (S : Seam C A B) : AddSubgroup (A × B) :=
  S.relationMap.range

/-- The actual amalgamated abelian group, not a card-count proxy. -/
def Seam.Fused (S : Seam C A B) : Type _ :=
  (A × B) ⧸ S.relation

instance (S : Seam C A B) : AddCommGroup S.Fused :=
  QuotientAddGroup.Quotient.addCommGroup S.relation

/-- The two source-summand homomorphisms before quotienting. -/
def leftSummand : A →+ A × B where
  toFun a := (a, 0)
  map_zero' := by simp
  map_add' := by intro a b; simp

def rightSummand : B →+ A × B where
  toFun b := (0, b)
  map_zero' := by simp
  map_add' := by intro a b; simp

/-- Canonical map from the full left group to the fused group. -/
def Seam.inLeft (S : Seam C A B) : A →+ S.Fused :=
  (QuotientAddGroup.mk' S.relation).comp leftSummand

/-- Canonical map from the full right group to the fused group. -/
def Seam.inRight (S : Seam C A B) : B →+ S.Fused :=
  (QuotientAddGroup.mk' S.relation).comp rightSummand

/-- The chosen seam is actually identified in the quotient. -/
theorem Seam.identifies (S : Seam C A B) (c : C) :
    S.inLeft (S.left c) = S.inRight (S.right c) := by
  have hmember : S.relationMap c ∈ S.relation := ⟨c, rfl⟩
  have hzero : (QuotientAddGroup.mk' S.relation) (S.relationMap c) = 0 := by
    have hk : S.relationMap c ∈
        (QuotientAddGroup.mk' S.relation).ker := by
      simpa only [QuotientAddGroup.ker_mk'] using hmember
    exact (AddMonoidHom.mem_ker).mp hk
  have hpair :
      leftSummand (S.left c) - rightSummand (S.right c) =
        S.relationMap c := by
    ext <;> simp [leftSummand, rightSummand, Seam.relationMap]
  have hdifference : S.inLeft (S.left c) - S.inRight (S.right c) = 0 := by
    change (QuotientAddGroup.mk' S.relation)
        (leftSummand (S.left c)) -
      (QuotientAddGroup.mk' S.relation)
        (rightSummand (S.right c)) = 0
    rw [← map_sub, hpair]
    exact hzero
  exact sub_eq_zero.mp hdifference

/-- Every pair of additive observations combines on the unquotiented
direct product, with no loss of either source channel. -/
def sumHom {D : Type t} [AddCommGroup D]
    (f : A →+ D) (g : B →+ D) : A × B →+ D where
  toFun x := f x.1 + g x.2
  map_zero' := by simp
  map_add' := by
    intro x y
    change f (x.1 + y.1) + g (x.2 + y.2) =
      (f x.1 + g x.2) + (f y.1 + g y.2)
    simp only [map_add]
    abel

/-- Genuine universal descent of an additive observation compatible
on the shared seam. Neither an additive observation nor seam
compatibility is automatic for the signed Möbius source. -/
def Seam.descend (S : Seam C A B)
    {D : Type t} [AddCommGroup D]
    (f : A →+ D) (g : B →+ D)
    (compatible : ∀ c, f (S.left c) = g (S.right c)) :
    S.Fused →+ D := by
  apply QuotientAddGroup.lift S.relation (sumHom f g)
  intro x hx
  obtain ⟨c, hc⟩ := hx
  rw [← hc]
  change f (S.left c) + g (-S.right c) = 0
  simp [map_neg, compatible c]

/-- The fused observation returns exactly to the original left
source, not just a coarse feature. -/
theorem Seam.descend_inLeft (S : Seam C A B)
    {D : Type t} [AddCommGroup D]
    (f : A →+ D) (g : B →+ D)
    (compatible : ∀ c, f (S.left c) = g (S.right c))
    (a : A) :
    S.descend f g compatible (S.inLeft a) = f a := by
  simp [Seam.descend, Seam.inLeft, leftSummand, sumHom]

/-- The symmetric return to the right original source. -/
theorem Seam.descend_inRight (S : Seam C A B)
    {D : Type t} [AddCommGroup D]
    (f : A →+ D) (g : B →+ D)
    (compatible : ∀ c, f (S.left c) = g (S.right c))
    (b : B) :
    S.descend f g compatible (S.inRight b) = g b := by
  simp [Seam.descend, Seam.inRight, rightSummand, sumHom]

/-- The left source is retained injectively whenever the RIGHT
seam identification is injective. This is an honest non-loss
condition, not a property of all quotient fusions. -/
theorem Seam.inLeft_injective_of_right_injective (S : Seam C A B)
    (hRight : Function.Injective S.right) :
    Function.Injective S.inLeft := by
  intro a b heq
  have hzero : S.inLeft (a - b) = 0 := by
    rw [map_sub, heq, sub_self]
  have hker : (a - b, (0 : B)) ∈ S.relation := by
    have hz : (QuotientAddGroup.mk' S.relation)
        (a - b, (0 : B)) = 0 := by
      simpa [Seam.inLeft, leftSummand] using hzero
    have hk : (a - b, (0 : B)) ∈
        (QuotientAddGroup.mk' S.relation).ker :=
      (AddMonoidHom.mem_ker).mpr hz
    simpa only [QuotientAddGroup.ker_mk'] using hk
  obtain ⟨c, hc⟩ := hker
  have hr : S.right c = 0 := by
    have hcoord := congrArg Prod.snd hc
    change -(S.right c) = (0 : B) at hcoord
    exact neg_eq_zero.mp hcoord
  have hc0 : c = 0 := hRight (by simpa using hr)
  have hl := congrArg Prod.fst hc
  change S.left c = a - b at hl
  rw [hc0, map_zero] at hl
  exact sub_eq_zero.mp hl.symm

/-- The right source is retained injectively when the LEFT seam map
is injective. The asymmetry of hypotheses is essential. -/
theorem Seam.inRight_injective_of_left_injective (S : Seam C A B)
    (hLeft : Function.Injective S.left) :
    Function.Injective S.inRight := by
  intro a b heq
  have hzero : S.inRight (a - b) = 0 := by
    rw [map_sub, heq, sub_self]
  have hker : ((0 : A), a - b) ∈ S.relation := by
    have hz : (QuotientAddGroup.mk' S.relation)
        ((0 : A), a - b) = 0 := by
      simpa [Seam.inRight, rightSummand] using hzero
    have hk : ((0 : A), a - b) ∈
        (QuotientAddGroup.mk' S.relation).ker :=
      (AddMonoidHom.mem_ker).mpr hz
    simpa only [QuotientAddGroup.ker_mk'] using hk
  obtain ⟨c, hc⟩ := hker
  have hl : S.left c = 0 := by
    have hcoord := congrArg Prod.fst hc
    exact hcoord
  have hc0 : c = 0 := hLeft (by simpa using hl)
  have hr := congrArg Prod.snd hc
  change -(S.right c) = a - b at hr
  rw [hc0, map_zero, neg_zero] at hr
  exact sub_eq_zero.mp hr.symm


/-- Universal uniqueness: every element of the quotient is generated
by its two original summand inclusions. The descended compatible
observation is therefore the UNIQUE additive map with these returns.
This is the universal-property part of the abelian-group pushout. -/
theorem Seam.descend_unique (S : Seam C A B)
    {D : Type t} [AddCommGroup D]
    (f : A →+ D) (g : B →+ D)
    (compatible : ∀ c, f (S.left c) = g (S.right c))
    (candidate : S.Fused →+ D)
    (onLeft : ∀ a, candidate (S.inLeft a) = f a)
    (onRight : ∀ b, candidate (S.inRight b) = g b) :
    candidate = S.descend f g compatible := by
  apply QuotientAddGroup.addMonoidHom_ext
  apply AddMonoidHom.ext
  rintro ⟨a, b⟩
  have hsum : (QuotientAddGroup.mk' S.relation) (a, b) =
      S.inLeft a + S.inRight b := by
    change (QuotientAddGroup.mk' S.relation) (a, b) =
      (QuotientAddGroup.mk' S.relation) (a, (0 : B)) +
        (QuotientAddGroup.mk' S.relation) ((0 : A), b)
    rw [← map_add]
    simp
  change candidate ((QuotientAddGroup.mk' S.relation) (a, b)) =
    (S.descend f g compatible) ((QuotientAddGroup.mk' S.relation) (a, b))
  rw [hsum, map_add, map_add, onLeft a, onRight b,
    S.descend_inLeft f g compatible a,
    S.descend_inRight f g compatible b]

/-- An arbitrary observation on the original product factors through
the fusion only if it is constant on every identified quotient fiber.
This is the exact question for signed arithmetic data, which need not
be an additive homomorphism. -/
def Seam.FactorsObservation (S : Seam C A B)
    {D : Type t} (observe : A × B → D) : Prop :=
  ∃ returned : S.Fused → D,
    ∀ pair : A × B,
      returned ((QuotientAddGroup.mk' S.relation) pair) = observe pair

/-- Every observation that descends is equal on any pair of original
states identified by the quotient. This includes multiplicity and
sign observations, not just additive homomorphisms. -/
theorem Seam.observation_eq_of_factors (S : Seam C A B)
    {D : Type t} (observe : A × B → D)
    (hreturn : S.FactorsObservation observe)
    (x y : A × B)
    (hglued : (QuotientAddGroup.mk' S.relation) x =
      (QuotientAddGroup.mk' S.relation) y) :
    observe x = observe y := by
  obtain ⟨returned, hreturned⟩ := hreturn
  calc
    observe x = returned ((QuotientAddGroup.mk' S.relation) x) :=
      (hreturned x).symm
    _ = returned ((QuotientAddGroup.mk' S.relation) y) :=
      congrArg returned hglued
    _ = observe y := hreturned y

/-- A concrete source observation collision is a complete no-go for
an EXACT factorization through this fused object. Enlarging the
representation later does not restore an already identified sign. -/
theorem Seam.no_observation_descent_of_collision (S : Seam C A B)
    {D : Type t} (observe : A × B → D)
    (x y : A × B)
    (hglued : (QuotientAddGroup.mk' S.relation) x =
      (QuotientAddGroup.mk' S.relation) y)
    (hdifferent : observe x ≠ observe y) :
    ¬ S.FactorsObservation observe := by
  intro hreturn
  exact hdifferent (S.observation_eq_of_factors observe hreturn x y hglued)

/-- A concrete obstruction: if the right seam kills a nonzero element
visible in the left source, left inclusion is NOT faithful. -/
theorem Seam.inLeft_not_injective_of_seam_collision (S : Seam C A B)
    (c : C) (hleft : S.left c ≠ 0) (hright : S.right c = 0) :
    ¬ Function.Injective S.inLeft := by
  intro hinj
  have hs := S.identifies c
  rw [hright, map_zero] at hs
  have heq : S.left c = 0 := hinj (by simpa using hs)
  exact hleft heq

/-- A local rotation need only respect the chosen seam. Under that
specific compatibility it induces an additive ENDOMORPHISM of the
fused group. No global arithmetic automorphism is inferred. -/
def Seam.rotate (S : Seam C A B)
    (rC : C ≃+ C) (rA : A ≃+ A) (rB : B ≃+ B)
    (hleft : ∀ c, rA (S.left c) = S.left (rC c))
    (hright : ∀ c, rB (S.right c) = S.right (rC c)) :
    S.Fused →+ S.Fused :=
  S.descend
    (S.inLeft.comp rA.toAddMonoidHom)
    (S.inRight.comp rB.toAddMonoidHom)
    (by
      intro c
      change S.inLeft (rA (S.left c)) =
        S.inRight (rB (S.right c))
      rw [hleft c, hright c]
      exact S.identifies (rC c))

/-- The local reflection acts on the left source exactly as specified. -/
theorem Seam.rotate_inLeft (S : Seam C A B)
    (rC : C ≃+ C) (rA : A ≃+ A) (rB : B ≃+ B)
    (hleft : ∀ c, rA (S.left c) = S.left (rC c))
    (hright : ∀ c, rB (S.right c) = S.right (rC c))
    (a : A) :
    S.rotate rC rA rB hleft hright (S.inLeft a) =
      S.inLeft (rA a) := by
  simp [Seam.rotate, Seam.descend_inLeft]

/-- The local reflection also acts on the entire right source. -/
theorem Seam.rotate_inRight (S : Seam C A B)
    (rC : C ≃+ C) (rA : A ≃+ A) (rB : B ≃+ B)
    (hleft : ∀ c, rA (S.left c) = S.left (rC c))
    (hright : ∀ c, rB (S.right c) = S.right (rC c))
    (b : B) :
    S.rotate rC rA rB hleft hright (S.inRight b) =
      S.inRight (rB b) := by
  simp [Seam.rotate, Seam.descend_inRight]


end GRWTSK.Algebra.AdditiveLocalFusion
