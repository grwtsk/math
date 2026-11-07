/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import Mathlib

/-!
# The canonical doubled lattice spin pairing

For any integral lattice L, its algebraic dual L^vee = Hom_Z(L,Z) gives
a doubled integral module L x L^vee. It carries the canonical alternating
pairing

  B((x,l),(y,m)) = m(x) - l(y)

and the quadratic refinement q(x,l)=l(x), with

  q(u+v) = q(u) + q(v) + B(u,v) + 2*l_u(x_v).

Consequently alpha(u)=(-1)^q(u) obeys the same semicharacter equation
as the source CM Appell-Humbert phase. This is exact universal integral
linear algebra; it does NOT identify the double of the Mordell-Weil
lattice with a CM period lattice, or transport the Neron-Tate height
to the CM Riemann form. Those geometric/arithmetic adapters remain open.

Closest source comparison: the integral CM trace semicharacter in
CMRiemannSemicharacter and the separate height Schur source
HeegnerHeightSchur. Neither is imported or replaced by this generic leaf.
No BSD, RH or GRH assertion is present.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.DoubledHeightLatticeSpin

variable {L : Type*} [AddCommGroup L] [Module ℤ L]

/-- Full integral dual; it is not an arbitrary second copy of L. -/
abbrev IntegralDual (L : Type*) [AddCommGroup L] [Module ℤ L] :=
  L →ₗ[ℤ] ℤ

abbrev DoubledLattice (L : Type*) [AddCommGroup L] [Module ℤ L] :=
  L × IntegralDual L

/-- Anti-symmetric integer intersection analogue on a lattice and its dual. -/
def canonicalAlternating (u v : DoubledLattice L) : ℤ :=
  v.2 u.1 - u.2 v.1

def canonicalQuadratic (u : DoubledLattice L) : ℤ :=
  u.2 u.1

theorem canonicalAlternating_self (u : DoubledLattice L) :
    canonicalAlternating u u = 0 := by
  simp [canonicalAlternating]

theorem canonicalAlternating_skew (u v : DoubledLattice L) :
    canonicalAlternating v u = -canonicalAlternating u v := by
  simp [canonicalAlternating]
  ring

theorem canonicalAlternating_add_left (u v w : DoubledLattice L) :
    canonicalAlternating (u + v) w =
      canonicalAlternating u w + canonicalAlternating v w := by
  simp [canonicalAlternating, map_add, LinearMap.add_apply]
  ring

theorem canonicalAlternating_add_right (u v w : DoubledLattice L) :
    canonicalAlternating u (v + w) =
      canonicalAlternating u v + canonicalAlternating u w := by
  simp [canonicalAlternating, map_add, LinearMap.add_apply]
  ring

/-- Exact integral quadratic-refinement identity, not only a congruence. -/
theorem canonicalQuadratic_add (u v : DoubledLattice L) :
    canonicalQuadratic (u + v) =
      canonicalQuadratic u + canonicalQuadratic v +
        canonicalAlternating u v + 2 * u.2 v.1 := by
  simp [canonicalQuadratic, canonicalAlternating, map_add, LinearMap.add_apply]
  ring

/-- The mod-two spin form is a quadratic refinement of the alternating
intersection pairing on the FULL doubled integral lattice. -/
theorem canonicalQuadratic_mod_two (u v : DoubledLattice L) :
    (canonicalQuadratic (u + v) - canonicalQuadratic u -
      canonicalQuadratic v - canonicalAlternating u v) % 2 = 0 := by
  rw [canonicalQuadratic_add]
  omega

/-- The source-style Appell-Humbert sign on the doubled integral lattice. -/
def canonicalSemicharacter (u : DoubledLattice L) : ℂ :=
  (-1 : ℂ) ^ canonicalQuadratic u

theorem canonicalSemicharacter_add (u v : DoubledLattice L) :
    canonicalSemicharacter (u + v) =
      canonicalSemicharacter u * canonicalSemicharacter v *
        (-1 : ℂ) ^ canonicalAlternating u v := by
  have heven : (-1 : ℂ) ^ (2 * u.2 v.1) = 1 := by
    rw [← zpow_mul]
    norm_num
  unfold canonicalSemicharacter
  rw [canonicalQuadratic_add, zpow_add, zpow_add, zpow_add]
  rw [heven, mul_one]
  ring

theorem canonicalSemicharacter_norm_one (u : DoubledLattice L) :
    ‖canonicalSemicharacter u‖ = 1 := by
  simp [canonicalSemicharacter]

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.DoubledHeightLatticeSpin
