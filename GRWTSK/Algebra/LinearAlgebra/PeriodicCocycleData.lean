/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Imported mathematical code retains upstream source identity and license.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Do not promote this standalone mathematical source to a public-root theorem
until exact-commit elaboration, fresh kernel checking, and a transitive
axiom/unsafe/native audit are supported by real execution receipts.
-/
import GRWTSK.Algebra.LinearAlgebra.CocycleProduct
import Mathlib.Tactic

/-!
# Periodic-data necessity for an exact group-valued cocycle coboundary

This is the elementary NECESSARY periodic-obstruction direction associated
with the method in Boris Kalinin, "Livšic Theorem for matrix cocycles",
Annals of Mathematics 173 (2011), 1025–1042,
DOI 10.4007/annals.2011.173.2.11, Theorem 1.1 / introduction.

Kalinin's SUFFICIENT direction concerns Hölder GL(m,R) cocycles over a
specified hyperbolic system, with ALL periodic products trivial and the
conclusion of a Hölder transfer map. None of those dynamical, analytic,
topological or global regularity hypotheses is supplied in this file.
The elementary necessary direction here holds for ANY group G and ANY
self-map T of ANY base carrier S: no hyperbolicity or Hölder regularity.

The actual source cocycle product convention is the chronological order
A(T^[n-1] x) * ... * A(T x) * A(x), newest factor leftmost.
A pure coboundary has the convention A(x)=B(T x)*B(x)⁻¹, so the product
telescopes to B(T^[n] x)*B(x)⁻¹.

The EXISTING source gauge convention is different but compatible:
gauge(A,B)(x)=(B(T x))⁻¹*A(x)*B(x); at a periodic basepoint the
gauged product is conjugate to the original one, never arbitrarily
equivalent to the identity unless the periodic data really are trivial.

This is a periodic consistency gate useful before attempting any Farey
nonperiodic scalarization. It neither constructs a regular transfer
nor turns a finite Farey shear orbit into a hyperbolic base system.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.PeriodicCocycleData

open GRWTSK.Algebra.LinearAlgebra.CocycleProduct

universe u v

variable {S : Type u} {G : Type v} [Group G]

/-- A pure group coboundary in the orientation of Kalinin's periodic
product, not the opposite source gauge convention. -/
def IsPureCoboundary (T : S → S) (A : S → G) : Prop :=
  ∃ B : S → G, ∀ x : S, A x = B (T x) * (B x)⁻¹

/-- Identity coefficients have identity ordered products for all
natural lengths, with no assumption on the base map. -/
theorem cocycleProduct_one (T : S → S) (n : ℕ) (x : S) :
    cocycleProduct T (fun _ => (1 : G)) n x = 1 := by
  induction n with
  | zero => rfl
  | succ n ih =>
      rw [cocycleProduct_succ, ih]
      simp

/-- An EXACT coboundary telescopes, for every basepoint and finite
number of steps, to the correct endpoint-ordered product.
This is not a regularity or existence theorem for B. -/
theorem pureCoboundary_product (T : S → S) (B : S → G)
    (n : ℕ) (x : S) :
    cocycleProduct T (fun y => B (T y) * (B y)⁻¹) n x =
      B (T^[n] x) * (B x)⁻¹ := by
  have hA :
      (fun y : S => B (T y) * (B y)⁻¹) =
        cocycleGaugeTransfer T (fun _ => (1 : G))
          (fun y => (B y)⁻¹) := by
    funext y
    simp [cocycleGaugeTransfer]
  rw [hA, cocycleProduct_gauge, cocycleProduct_one]
  simp

/-- The exact periodic-point hypothesis is explicitly T^[n] p=p.
Any pure coboundary has identity product at such a point, for
arbitrary group coefficients and even for a noninvertible T. -/
theorem pureCoboundary_periodic_identity
    (T : S → S) (A : S → G)
    (hCoboundary : IsPureCoboundary T A)
    (n : ℕ) (p : S) (hp : T^[n] p = p) :
    cocycleProduct T A n p = 1 := by
  obtain ⟨B, hB⟩ := hCoboundary
  have hA : A = fun y => B (T y) * (B y)⁻¹ := by
    funext y
    exact hB y
  rw [hA, pureCoboundary_product, hp]
  simp

/-- A witnessed nonidentity periodic monodromy is an exact
obstruction to a pure coboundary, with no assumptions that
S is compact, T is hyperbolic, or A is Hölder. -/
theorem nontrivial_periodic_product_not_coboundary
    (T : S → S) (A : S → G) (n : ℕ) (p : S)
    (hp : T^[n] p = p)
    (hne : cocycleProduct T A n p ≠ 1) :
    ¬ IsPureCoboundary T A := by
  intro hCoboundary
  exact hne (pureCoboundary_periodic_identity T A hCoboundary n p hp)

/-- Under the EXISTING source gauge transfer, a periodic product
is conjugated by the same basepoint gauge on BOTH sides.
A nonclosed orbit has distinct endpoint gauges and need not
obey this single-conjugator formula. -/
theorem periodic_gauge_product_conjugate
    (T : S → S) (A B : S → G) (n : ℕ) (p : S)
    (hp : T^[n] p = p) :
    cocycleProduct T (cocycleGaugeTransfer T A B) n p =
      (B p)⁻¹ * cocycleProduct T A n p * B p := by
  simpa only [hp] using cocycleProduct_gauge T A B n p

/-- On a genuinely closed orbit, the predicate "product is 1"
is gauge-invariant, but the full product need only be conjugate.
No equality of noncentral holonomies is implied. -/
theorem periodic_gauge_product_one_iff
    (T : S → S) (A B : S → G) (n : ℕ) (p : S)
    (hp : T^[n] p = p) :
    cocycleProduct T (cocycleGaugeTransfer T A B) n p = 1 ↔
      cocycleProduct T A n p = 1 := by
  rw [periodic_gauge_product_conjugate T A B n p hp]
  constructor
  · intro h
    have hh := congrArg (fun g : G => B p * g * (B p)⁻¹) h
    simpa [mul_assoc] using hh
  · intro h
    rw [h]
    simp

/-- A nontrivial periodic product cannot be transformed into the
identity by ANY choice of the supplied endpoint gauge function.
This is a necessary obstruction, not Kalinin's sufficiency theorem. -/
theorem periodic_nontrivial_persists_under_gauge
    (T : S → S) (A B : S → G) (n : ℕ) (p : S)
    (hp : T^[n] p = p)
    (hne : cocycleProduct T A n p ≠ 1) :
    cocycleProduct T (cocycleGaugeTransfer T A B) n p ≠ 1 := by
  intro h
  exact hne ((periodic_gauge_product_one_iff T A B n p hp).mp h)

/-- Full quantification over all candidate gauges makes the
nonidentity periodic obstruction explicit without claiming
a universal periodic orbit for arbitrary base dynamics. -/
theorem no_gauge_trivializes_nontrivial_period
    (T : S → S) (A : S → G) (n : ℕ) (p : S)
    (hp : T^[n] p = p)
    (hne : cocycleProduct T A n p ≠ 1) :
    ¬ ∃ B : S → G,
      cocycleProduct T (cocycleGaugeTransfer T A B) n p = 1 := by
  rintro ⟨B, hB⟩
  exact periodic_nontrivial_persists_under_gauge T A B n p hp hne hB

end GRWTSK.Algebra.LinearAlgebra.PeriodicCocycleData
