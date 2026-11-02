/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Constructing an abelian local pairing by descent of the finite Weil cup

This proves the actual algebraic descent construction, not merely
an interface that assumes a preexisting abelian pairing.

For the SOURCE ORIGINAL elliptic cohomology objects, specialize:
  H = continuous H¹(F,E[n])
  Q = original H¹(F,E)[n]
  P = actual E(F)/nE(F)
  Z = ZMod n
  q = original coefficient / Weil--Chatelet map
  δ = original Kummer point-quotient map
  B = genuine Weil cup with normalized Brauer invariant.

If the finite Weil cup B vanishes on the image of δ × δ
(Kummer isotropy), and im δ = ker q (original Kummer exactness),
then B(x,δ P) depends ONLY on q(x) and P. The theorem constructs
the unique additive pairing T:Q×P→Z with

                 T(q x,P) = B(x,δ P).

It does NOT invent a pairing, choose a regulator, assume an analytic
rank, or assert that the needed Kummer isotropy is already proved.
Geometric Kummer isotropy is precisely the genuine arithmetic
input; identifying this descended T with the independently defined
Poincare/divisor local Tate pairing, and proving separation of Q,
remain separate arithmetic obligations. The finite Weil cup
and original Kummer maps must be supplied verbatim when instantiated.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.LocalAbelianTateCupDescent

variable {H Q P Z : Type*}
variable [AddCommGroup H] [AddCommGroup Q]
variable [AddCommGroup P] [AddCommGroup Z]

/-- An explicit additive section is only a CHOICE OF LIFTS of the
surjective source quotient q, not a choice of pairing or rank. -/
def quotientSection (q : H →+ Q) (hq : Function.Surjective q) : Q → H :=
  fun a => Classical.choose (hq a)

theorem quotientSection_spec (q : H →+ Q)
    (hq : Function.Surjective q) (a : Q) :
    q (quotientSection q hq a) = a :=
  Classical.choose_spec (hq a)

/-- Construct the abelian cup descent from a given source H¹
section, using nothing other than finite-cup biadditivity
and vanishing on the kernel of the original quotient. -/
def cupDescentWithSection
    (q : H →+ Q) (δ : P →+ H) (B : H →+ H →+ Z)
    (s : Q → H) (hs : ∀ a, q (s a) = a)
    (hvanish : ∀ k : H, q k = 0 → ∀ p : P, B k (δ p) = 0) :
    Q →+ P →+ Z := by
  refine {
    toFun := fun a => (B (s a)).comp δ
    map_zero' := ?_
    map_add' := ?_
  }
  · apply AddMonoidHom.ext
    intro p
    change B (s 0) (δ p) = 0
    exact hvanish (s 0) (by simpa using hs 0) p
  · intro a b
    apply AddMonoidHom.ext
    intro p
    change B (s (a + b)) (δ p) =
      B (s a) (δ p) + B (s b) (δ p)
    have hk : q (s (a + b) - s a - s b) = 0 := by
      rw [map_sub, map_sub, hs, hs, hs]
      abel
    have hv := hvanish (s (a + b) - s a - s b) hk p
    have hh : B (s (a + b)) (δ p) -
        B (s a) (δ p) - B (s b) (δ p) = 0 := by
      simpa only [map_sub, AddMonoidHom.sub_apply] using hv
    apply sub_eq_zero.mp
    calc
      B (s (a + b)) (δ p) -
          (B (s a) (δ p) + B (s b) (δ p)) =
        B (s (a + b)) (δ p) -
          B (s a) (δ p) - B (s b) (δ p) := by abel
      _ = 0 := hh

/-- The constructed pairing has EXACTLY the desired signed
comparison with the genuine finite Weil cup (sign +1 in
the selected argument orientation). No adjunction is assumed:
this is a property of the quotient construction. -/
theorem cupDescentWithSection_lift
    (q : H →+ Q) (δ : P →+ H) (B : H →+ H →+ Z)
    (s : Q → H) (hs : ∀ a, q (s a) = a)
    (hvanish : ∀ k : H, q k = 0 → ∀ p : P, B k (δ p) = 0)
    (x : H) (p : P) :
    cupDescentWithSection q δ B s hs hvanish (q x) p =
      B x (δ p) := by
  have hk : q (s (q x) - x) = 0 := by
    rw [map_sub, hs]
    exact sub_self _
  have hv := hvanish (s (q x) - x) hk p
  change B (s (q x)) (δ p) = B x (δ p)
  have hh : B (s (q x)) (δ p) - B x (δ p) = 0 := by
    simpa only [map_sub, AddMonoidHom.sub_apply] using hv
  exact sub_eq_zero.mp hh

/-- A source quotient surjection supplies a section automatically.
The returned local abelian pairing is a CONSTRUCTION from the
finite Weil cup, conditional only on vanishing on ker q. -/
def abelianCupDescent
    (q : H →+ Q) (hq : Function.Surjective q)
    (δ : P →+ H) (B : H →+ H →+ Z)
    (hvanish : ∀ k : H, q k = 0 → ∀ p : P, B k (δ p) = 0) :
    Q →+ P →+ Z :=
  cupDescentWithSection q δ B
    (quotientSection q hq) (quotientSection_spec q hq) hvanish

/-- The constructed abelian pairing is independent of the
chosen lift and satisfies the EXACT finite-cup identity. -/
theorem abelianCupDescent_lift
    (q : H →+ Q) (hq : Function.Surjective q)
    (δ : P →+ H) (B : H →+ H →+ Z)
    (hvanish : ∀ k : H, q k = 0 → ∀ p : P, B k (δ p) = 0)
    (x : H) (p : P) :
    abelianCupDescent q hq δ B hvanish (q x) p =
      B x (δ p) :=
  cupDescentWithSection_lift q δ B _ _ hvanish x p

/-- A pairing on the quotient satisfying the same original
cup/connecting identity is UNIQUE. This is the precise
place where comparison with the classical divisor/Poincare
Tate pairing may be inserted, once that construction exists. -/
theorem abelianCupDescent_unique
    (q : H →+ Q) (hq : Function.Surjective q)
    (δ : P →+ H) (B : H →+ H →+ Z)
    (hvanish : ∀ k : H, q k = 0 → ∀ p : P, B k (δ p) = 0)
    (T : Q →+ P →+ Z)
    (hT : ∀ (x : H) (p : P), T (q x) p = B x (δ p)) :
    T = abelianCupDescent q hq δ B hvanish := by
  apply AddMonoidHom.ext
  intro y
  apply AddMonoidHom.ext
  intro p
  obtain ⟨x, rfl⟩ := hq y
  rw [hT, abelianCupDescent_lift]

/-- A TRUE source Kummer exact row turns the remaining
vanishing-on-kernel input into a SINGLE geometric isotropy
statement on the actual Kummer image. -/
theorem kernel_vanishing_of_kummer_isotropy
    (q : H →+ Q) (δ : P →+ H) (B : H →+ H →+ Z)
    (hexact : δ.range = q.ker)
    (hisotropic : ∀ p p' : P, B (δ p) (δ p') = 0) :
    ∀ k : H, q k = 0 → ∀ p : P, B k (δ p) = 0 := by
  intro k hk p
  have hrange : k ∈ δ.range := by
    rw [hexact]
    exact hk
  obtain ⟨p', hp'⟩ := hrange
  rw [← hp']
  exact hisotropic p' p

/-- The finished algebraic construction from finite source cup,
original Kummer short exactness, and one independently proved
GEOMETRIC Kummer isotropy theorem. The missing isotropy proof
must come from the original theta/Poincare/divisor comparison,
not from an assumption that the desired annihilator holds. -/
def abelianCupDescentOfKummerIsotropy
    (q : H →+ Q) (hq : Function.Surjective q)
    (δ : P →+ H) (B : H →+ H →+ Z)
    (hexact : δ.range = q.ker)
    (hisotropic : ∀ p p' : P, B (δ p) (δ p') = 0) :
    Q →+ P →+ Z :=
  abelianCupDescent q hq δ B
    (kernel_vanishing_of_kummer_isotropy q δ B hexact hisotropic)

/-- The genuine original Kummer/finite-cup adjunction follows
from the construction, with no freestanding abelian pairing
or signed identity furnished as axioms. -/
theorem abelianCupDescentOfKummerIsotropy_lift
    (q : H →+ Q) (hq : Function.Surjective q)
    (δ : P →+ H) (B : H →+ H →+ Z)
    (hexact : δ.range = q.ker)
    (hisotropic : ∀ p p' : P, B (δ p) (δ p') = 0)
    (x : H) (p : P) :
    abelianCupDescentOfKummerIsotropy
        q hq δ B hexact hisotropic (q x) p =
      B x (δ p) :=
  abelianCupDescent_lift q hq δ B _ x p

end GRWTSK.CategoryTheoryHomologicalAlgebra.LocalAbelianTateCupDescent
