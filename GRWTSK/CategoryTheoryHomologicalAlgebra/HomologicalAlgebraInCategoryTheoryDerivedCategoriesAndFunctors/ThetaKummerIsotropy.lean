/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Kummer isotropy from the original period-index (theta) obstruction

For the ACTUAL elliptic local cohomology, theta is not an
arbitrarily chosen function: it must be the source-defined
period-index obstruction of the theta-group central extension
for the canonical symmetric degree-n line bundle on E.

Clark--Sharif (2010), §2.2 (O'Neil's theorem), gives for
the ORIGINAL geometric theta obstruction Δ_n:
  Δ_n(δ(P)) = 0, and
  B_n(x,δ(P)) = Δ_n(x+δ(P)) - Δ_n(x) - Δ_n(δ(P)),
where B_n is the genuine Weil cup/Brauer invariant.
The latter formula includes the source sign convention;
the opposite Weil orientation would require adjustment.

The purely algebraic consequence is Kummer-Kummer isotropy.
This file proves that consequence exactly and supplies an
independent noncircular proof obligation for future source
theta construction. It does NOT define the actual theta
group, pull back geometric divisors, manufacture a
Poincare pairing, or assert that its two geometric
hypotheses already hold in Lean.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaKummerIsotropy

variable {H P Z : Type*}
variable [AddCommGroup H] [AddCommGroup P] [AddCommGroup Z]

/-- Data exposing the TWO actual geometric theta identities.
Future elliptic instances MUST use the genuine period-index
obstruction and genuine Kummer map, not an arbitrary function
fitted to a desired Selmer answer. -/
structure ThetaKummerData (H P Z : Type*)
    [AddCommGroup H] [AddCommGroup P] [AddCommGroup Z] where
  delta : P →+ H
  cup : H →+ H →+ Z
  theta : H → Z
  theta_kummer_zero : ∀ p, theta (delta p) = 0
  theta_polar_kummer :
    ∀ x p, cup x (delta p) =
      theta (x + delta p) - theta x - theta (delta p)

/-- The source theta identities imply isotropy of the
original Kummer connecting image. This is a mathematical
lemma, not a proof of those geometric theta identities. -/
theorem ThetaKummerData.kummer_isotropic (D : ThetaKummerData H P Z) :
    ∀ p q : P, D.cup (D.delta p) (D.delta q) = 0 := by
  intro p q
  rw [D.theta_polar_kummer]
  rw [← map_add D.delta, D.theta_kummer_zero (p + q),
    D.theta_kummer_zero p, D.theta_kummer_zero q]
  simp

/-- With the ORIGINAL Kummer exact sequence, a theta
polarization proves vanishing of the finite Weil cup on
the kernel of the source Weil--Chatelet quotient. This
is the input to the explicit Tate cup-descent construction. -/
theorem ThetaKummerData.kernel_cup_vanish
    (D : ThetaKummerData H P Z)
    (Q : Type*) [AddCommGroup Q] (q : H →+ Q)
    (hexact : D.delta.range = q.ker) :
    ∀ x : H, q x = 0 → ∀ p : P,
      D.cup x (D.delta p) = 0 := by
  intro x hx p
  have hk : x ∈ D.delta.range := by
    rw [hexact]
    exact hx
  obtain ⟨y, hy⟩ := hk
  rw [← hy]
  exact D.kummer_isotropic y p

/-- The obstruction for an individual Kummer cup is zero
even for n=2, with no division by 2 or discarded
archimedean H0. The geometric hypotheses retain the
full arithmetic force of O'Neil's theta calculation. -/
theorem ThetaKummerData.kummer_diagonal_zero
    (D : ThetaKummerData H P Z) (p : P) :
    D.cup (D.delta p) (D.delta p) = 0 :=
  D.kummer_isotropic p p

end GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaKummerIsotropy
