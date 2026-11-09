/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. Lean elaboration, fresh kernel replay,
transitive axiom audit and independent review NOT_RUN. -/
import GRWTSK.ManifoldsAndCellComplexes.PrimeHopfKnotProjection
import Mathlib

/-!
# A lossless equatorial Hopf channel with source-returning phase coordinates

The ACTUAL consumer is the preceding PrimeHopfKnotProjection source for
K_p = T(2,2p+1), together with PrimePair and the existing prime-offset
records. This module constructs the missing base-plus-fiber readout rather
than pretending that a projection onto S^2 is injective.

## Complete elementary analytical proof

Represent a unit complex phase u by (Re u, Im u) with Re(u)^2+Im(u)^2=1.
For u,v in S^1 let

  F(u,v) = (u, u*v)/sqrt(2) in S^3 subset C^2.

The Hopf map h(z,w) = (2 Re(conj(z)*w), 2 Im(conj(z)*w),
|z|^2-|w|^2) sends F(u,v) to (Re v,Im v,0), the equator of S^2.
The full inverse on the Clifford torus h^(-1)(equator) is

  u = sqrt(2)*z,    v = 2*conj(z)*w.

The algebraic phase-pair operation (u,v) |-> (u,u*v) formalized below
is therefore an exact normalization-free coordinate model of this
two-way Hopf channel. Its total squared radius is 2, so division by
sqrt(2) embeds it in the unit S^3. Recovering both phases is essential:
forgetting u is NOT injective even on the Clifford torus.

The standard prime knot is recovered with u(t)=exp(2it) and
v(t)=exp(i(2p-1)t). Then

  F(u(t),v(t))=(exp(2it),exp(i(2p+1)t))/sqrt(2).

Since gcd(2,2p-1)=1, its parameterization is embedded as the
(2,2p+1) torus knot. The base winding is 2p-1 and the fiber winding
is 2. These windings are properties of the CHOSEN standard
representative and the CHOSEN equatorial trivialization; they are not
invariants of arbitrary isotopic embeddings.

## Equatorial gauge transition and the global obstruction

Two local equatorial sections may be written

  s_N(v)=(1,v)/sqrt(2),  s_S(v)=(conj(v),1)/sqrt(2).

The exact identity s_N(v)=v*s_S(v) is proved algebraically below,
with simultaneous fiber multiplication on both coordinates. It has
clutching degree 1 in the chosen orientation. Thus the Hopf fibration
is not the global product S^2 x S^1: a global continuous section
would trivialize the principal circle bundle, contradicting
pi_1(S^3)=0 and pi_1(S^2 x S^1)=Z. This global topological
nontriviality is a WRITTEN theorem, not a Lean theorem in this file.

A concrete hostile example: F(exp(it),exp(it)) is T(1,2), an unknot;
F(exp(2it),exp(it)) is T(2,3), a trefoil. Their projected base paths
are identical, but their fiber windings and knot types differ.
This demonstrates why a purported lossless S^3->S^2 projection
without the marked fiber is mathematically impossible.

## Global three-dimensional prime-gap channel (written analytical proof)

For a positive integer d, let mu_d be the dth roots of unity acting
diagonally on S^3 by zeta*(z,w)=(zeta*z,zeta*w). This action is free:
a nontrivial zeta fixing any S^3 point would force both complex
coordinates zero. It consists of round isometries and leaves the Hopf
map invariant. Therefore the quotient E_d=S^3/mu_d is the lens space
L(d,1), carrying an induced circle fibration E_d -> S^2.

Over the equatorial overlap, the Hopf fiber gauges change by v,
as proved below. The quotient fiber S^1/mu_d is identified with S^1
through [u] |-> u^d. Therefore the induced clutching map is v^d,
of degree d (or -d if the base/bundle orientation is reversed).
The total space is a spherical three-manifold, because the round
metric descends through the finite free isometry quotient.

Since S^3 is simply connected, it is the universal cover of E_d.
Consequently pi_1(E_d)=mu_d ~= Z/dZ and H_1(E_d;Z)=Z/dZ.
Thus for the ACTUAL source PrimePair x and d=gap x=q-p>0,
the cardinal of the fundamental group of the ASSOCIATED LENS SPACE
is the original arithmetic gap, not a new prime estimate.
For d=1 it is S^3; for d=2 it is RP^3.

This auxiliary closed 3-manifold is NOT the original prime link
exterior X_(p,q). The quotient also forgets some absolute fiber
position, so the full source prime pair and original ordered loop
history must be retained in the separate marked spherical anchor
and the exact VoltageCover path erasure. The Lean lemma below
formalizes the finite deck SHEET CARDINALITY, not a construction
of pi_1 or a homeomorphism to a lens space.

Primary topological comparison: P. Albers et al., A Symplectic Dynamics
Proof of the Degree-Genus Formula, Arnold Mathematical Journal 9 (2023),
Section 3.1, explicitly identifying L(d,1) with the diagonal Hopf
quotient and Euler number -d. The exact orientation convention is
retained rather than silently changing the sign.

The original prime-link L_(p,q) and its prescribed linking number
q-p are SEPARATE from two standard Clifford-torus knot
representatives. Their simultaneous embedding, peripheral gluing,
minimal JSJ decomposition and full arithmetic Weil source return
remain unresolved. This file neither proves an intrinsic geometry
of primes nor RH/GRH.

References: classical Hopf fibration; A. Hatcher, Algebraic Topology
(coverings/homotopy groups), and Vector Bundles and K-Theory (clutching).
No hidden axioms or new alternative source types are introduced.
-/

namespace GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
namespace PrimeHopfFiberChannel

/-- A unit real two-component phase representing one unit complex number. -/
structure Phase where
  re : ℝ
  im : ℝ
  unit : re ^ 2 + im ^ 2 = 1

/-- Unit phases are equal if both real components coincide; proof
irrelevance handles the unit-circle witnesses. -/
theorem phase_eq {u v : Phase}
    (hr : u.re = v.re) (hi : u.im = v.im) : u = v := by
  rcases u with ⟨a, b, hu⟩
  rcases v with ⟨c, d, hv⟩
  change a = c at hr
  change b = d at hi
  subst c
  subst d
  rfl

def phaseOne : Phase where
  re := 1
  im := 0
  unit := by norm_num

def phaseMinusOne : Phase where
  re := -1
  im := 0
  unit := by norm_num

/-- Complex conjugation restricted to the actual unit circle. -/
def phaseConj (u : Phase) : Phase where
  re := u.re
  im := -u.im
  unit := by
    dsimp
    nlinarith [u.unit]

/-- Complex multiplication, with its unit-modulus proof paid in full. -/
def phaseMul (u v : Phase) : Phase where
  re := u.re * v.re - u.im * v.im
  im := u.re * v.im + u.im * v.re
  unit := by
    dsimp
    calc
      (u.re * v.re - u.im * v.im) ^ 2 +
          (u.re * v.im + u.im * v.re) ^ 2 =
          (u.re ^ 2 + u.im ^ 2) * (v.re ^ 2 + v.im ^ 2) := by ring
      _ = 1 := by rw [u.unit, v.unit]; norm_num

theorem phaseMul_one (u : Phase) : phaseMul u phaseOne = u := by
  apply phase_eq
  · change u.re * 1 - u.im * 0 = u.re
    ring
  · change u.re * 0 + u.im * 1 = u.im
    ring

theorem phaseMul_comm (u v : Phase) :
    phaseMul u v = phaseMul v u := by
  apply phase_eq
  · change u.re * v.re - u.im * v.im =
      v.re * u.re - v.im * u.im
    ring
  · change u.re * v.im + u.im * v.re =
      v.re * u.im + v.im * u.re
    ring

theorem phaseMul_assoc (u v w : Phase) :
    phaseMul (phaseMul u v) w = phaseMul u (phaseMul v w) := by
  apply phase_eq
  · change (u.re * v.re - u.im * v.im) * w.re -
        (u.re * v.im + u.im * v.re) * w.im =
        u.re * (v.re * w.re - v.im * w.im) -
        u.im * (v.re * w.im + v.im * w.re)
    ring
  · change (u.re * v.re - u.im * v.im) * w.im +
        (u.re * v.im + u.im * v.re) * w.re =
        u.re * (v.re * w.im + v.im * w.re) +
        u.im * (v.re * w.re - v.im * w.im)
    ring

theorem phaseMul_conj (u : Phase) :
    phaseMul u (phaseConj u) = phaseOne := by
  apply phase_eq
  · change u.re * u.re - u.im * (-u.im) = 1
    nlinarith [u.unit]
  · change u.re * (-u.im) + u.im * u.re = 0
    ring

theorem phaseConj_invol (u : Phase) :
    phaseConj (phaseConj u) = u := by
  apply phase_eq
  · rfl
  · change -(-u.im) = u.im
    ring

/-- A phase and its conjugate cancel without discarding the OTHER
phase, proving the fundamental lossless decoder algebra. -/
theorem phaseConj_left_cancel (u v : Phase) :
    phaseMul (phaseConj u) (phaseMul u v) = v := by
  apply phase_eq
  · change u.re * (u.re * v.re - u.im * v.im) +
      u.im * (u.re * v.im + u.im * v.re) = v.re
    calc
      _ = (u.re ^ 2 + u.im ^ 2) * v.re := by ring
      _ = v.re := by rw [u.unit]; ring
  · change u.re * (u.re * v.im + u.im * v.re) -
      u.im * (u.re * v.re - u.im * v.im) = v.im
    calc
      _ = (u.re ^ 2 + u.im ^ 2) * v.im := by ring
      _ = v.im := by rw [u.unit]; ring

theorem phaseMul_conj_left_cancel (u v : Phase) :
    phaseMul u (phaseMul (phaseConj u) v) = v := by
  simpa only [phaseConj_invol] using
    (phaseConj_left_cancel (phaseConj u) v)

/-- The actual circle phases form a group, permitting use of the
EXISTING Path.holonomy and VoltageCover source, not a new path type. -/
instance : Group Phase where
  mul := phaseMul
  one := phaseOne
  inv := phaseConj
  mul_assoc := phaseMul_assoc
  mul_one := phaseMul_one
  one_mul := fun x => by
    change phaseMul phaseOne x = x
    rw [phaseMul_comm, phaseMul_one]
  inv_mul_cancel := fun x => by
    change phaseMul (phaseConj x) x = phaseOne
    rw [phaseMul_comm]
    exact phaseMul_conj x

/-- A pair of unit phases parametrizes the unnormalized Clifford torus
of squared radius two in R^4, equivalently the unit Clifford torus
after dividing both complex coordinates by sqrt(2). -/
def cliffordLift (fiber base : Phase) : Phase × Phase :=
  (fiber, phaseMul fiber base)

/-- The base observable is the normalized relative complex phase,
not a complete 3-sphere coordinate. -/
def baseReadout (P : Phase × Phase) : Phase :=
  phaseMul (phaseConj P.1) P.2

/-- The marked initial fiber coordinate is retained separately. -/
def fiberReadout (P : Phase × Phase) : Phase := P.1

/-- Full decoder. The original endpoint in S^3 can be reconstructed
from the base AND fiber, with a chosen equatorial trivialization. -/
def decode (P : Phase × Phase) : Phase × Phase :=
  (fiberReadout P, baseReadout P)

@[simp] theorem baseReadout_lift (fiber base : Phase) :
    baseReadout (cliffordLift fiber base) = base := by
  exact phaseConj_left_cancel fiber base

@[simp] theorem fiberReadout_lift (fiber base : Phase) :
    fiberReadout (cliffordLift fiber base) = fiber := rfl

@[simp] theorem decode_lift (fiber base : Phase) :
    decode (cliffordLift fiber base) = (fiber, base) := by
  apply Prod.ext
  · rfl
  · exact baseReadout_lift fiber base

@[simp] theorem lift_decode (P : Phase × Phase) :
    cliffordLift (decode P).1 (decode P).2 = P := by
  rcases P with ⟨fiber, point⟩
  apply Prod.ext
  · rfl
  · exact phaseMul_conj_left_cancel fiber point

/-- The explicit two-sided inverse is a genuine equivalence of ALL
phase-pair points of the Clifford torus. -/
def channelEquiv : (Phase × Phase) ≃ (Phase × Phase) where
  toFun := fun x => cliffordLift x.1 x.2
  invFun := decode
  left_inv := by
    intro x
    rcases x with ⟨fiber, base⟩
    exact decode_lift fiber base
  right_inv := lift_decode

/-- The image has two unit-circle factors, hence total squared radius
two before dividing both complex coordinates by sqrt(2). -/
theorem clifford_total_squared_radius (fiber base : Phase) :
    fiber.re ^ 2 + fiber.im ^ 2 +
      (phaseMul fiber base).re ^ 2 +
      (phaseMul fiber base).im ^ 2 = 2 := by
  nlinarith [fiber.unit, (phaseMul fiber base).unit]

/-- The north and south equatorial gauges are different local
sections of the SAME principal S1 bundle. -/
def northSection (base : Phase) : Phase × Phase :=
  (phaseOne, base)

def southSection (base : Phase) : Phase × Phase :=
  (phaseConj base, phaseOne)

/-- Rotate both complex coordinates by the same fiber phase. -/
def fiberAction (g : Phase) (P : Phase × Phase) : Phase × Phase :=
  (phaseMul g P.1, phaseMul g P.2)

/-- Equatorial overlap transition: s_N(v)=v*s_S(v).
Its degree-one clutching interpretation over S2 is a separate
topological theorem, not proved by this algebraic equality alone. -/
theorem north_south_transition (base : Phase) :
    northSection base = fiberAction base (southSection base) := by
  apply Prod.ext
  · change phaseOne = phaseMul base (phaseConj base)
    exact (phaseMul_conj base).symm
  · change base = phaseMul base phaseOne
    exact (phaseMul_one base).symm

/-- The north gauge reconstructs the identical Clifford point. -/
theorem lift_as_north (fiber base : Phase) :
    cliffordLift fiber base = fiberAction fiber (northSection base) := by
  apply Prod.ext
  · change fiber = phaseMul fiber phaseOne
    exact (phaseMul_one fiber).symm
  · rfl

/-- Changing to the south gauge changes the fiber coordinate by
multiplication by base; no 3D point is altered. -/
theorem lift_as_south (fiber base : Phase) :
    cliffordLift fiber base =
      fiberAction (phaseMul fiber base) (southSection base) := by
  apply Prod.ext
  · change fiber = phaseMul (phaseMul fiber base) (phaseConj base)
    rw [phaseMul_assoc, phaseMul_conj, phaseMul_one]
  · change phaseMul fiber base =
      phaseMul (phaseMul fiber base) phaseOne
    exact (phaseMul_one _).symm

/-- The projection alone loses an independent fiber coordinate:
the base readouts agree but the 3D Clifford points differ. -/
theorem baseReadout_not_injective :
    ¬ Function.Injective baseReadout := by
  intro hinj
  have heq : cliffordLift phaseOne phaseOne =
      cliffordLift phaseMinusOne phaseOne :=
    hinj (by simp only [baseReadout_lift])
  have hre : (1 : ℝ) = -1 := by
    have h := congrArg (fun P : Phase × Phase => P.1.re) heq
    simpa [cliffordLift, phaseOne, phaseMinusOne] using h
  norm_num at hre

/-- The prior source's original prime torus knot has exactly two
fiber turns and (2p-1) base turns, with second torus exponent 2p+1. -/
theorem prime_winding_reconstruction (p : ℕ) (hp : 0 < p) :
    2 + PrimeHopfKnotProjection.projectedWinding p = 2 * p + 1 := by
  dsimp [PrimeHopfKnotProjection.projectedWinding]
  omega

/-- Two distinct primes have distinct standard base windings, but
base-only recovery is restricted to this family with fixed fiber=2. -/
theorem prime_winding_injective_on_positive
    {p q : ℕ} (hp : 0 < p) (hq : 0 < q)
    (h : PrimeHopfKnotProjection.projectedWinding p =
      PrimeHopfKnotProjection.projectedWinding q) : p = q := by
  dsimp [PrimeHopfKnotProjection.projectedWinding] at h
  omega


/-! ### Return to the literal identity-bearing relational Path -/

section OriginalPathChannel

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy

universe u v
variable {V : Type u} (E : V → V → Type v)
variable (Ufiber Ubase : ∀ {a b : V}, E a b → Phase)

/-- On the SAME original dependent Path, two group-valued transport
readouts specify a Clifford point. The base and fiber components
are both exactly recovered. A group holonomy alone may lose
edge order; that is addressed by the separate erasure theorem. -/
theorem readout_original_path {a b : V} (p : Path E a b) :
    baseReadout
        (cliffordLift (Path.holonomy Ufiber p) (Path.holonomy Ubase p)) =
          Path.holonomy Ubase p ∧
    fiberReadout
        (cliffordLift (Path.holonomy Ufiber p) (Path.holonomy Ubase p)) =
          Path.holonomy Ufiber p := by
  exact ⟨baseReadout_lift _ _, fiberReadout_lift _ _⟩

/-- Exact edge-by-edge recovery from the already-published source
VoltageCover on each channel: the two marked lifted paths erase to
the ORIGINAL p, not only to its endpoint or holonomy class. -/
theorem source_path_erasure {a b : V} (p : Path E a b)
    (gFiber gBase : Phase) :
    VoltageCover.erasePath E Ufiber
        (VoltageCover.liftPath E Ufiber p gFiber).2 = p ∧
    VoltageCover.erasePath E Ubase
        (VoltageCover.liftPath E Ubase p gBase).2 = p := by
  exact ⟨VoltageCover.erase_liftPath E Ufiber p gFiber,
    VoltageCover.erase_liftPath E Ubase p gBase⟩

end OriginalPathChannel


/-! ### Exact finite cyclic sheet inventory for the auxiliary lens quotient -/

/-- A finite index set for the d sheets of the cyclic universal-cover
quotient S^3 -> L(d,1), where d is the SAME source prime gap.
The geometric covering map and deck group law are written inputs;
this is an exact count of the indicated labels, not a constructed
lens-space fundamental group. -/
abbrev gapDeckSheets (pair : PrimePair) : Type :=
  Fin (gap pair)

theorem gapDeckSheets_card (pair : PrimePair) :
    Fintype.card (gapDeckSheets pair) = gap pair := by
  simp [gapDeckSheets]

/-- The original prime-order hypothesis guarantees a nonempty
finite fiber for the auxiliary lens-space construction. -/
theorem gapDeckSheets_nonempty (pair : PrimePair) :
    Nonempty (gapDeckSheets pair) := by
  exact ⟨⟨0, gap_pos pair⟩⟩

/-- A pair's gap determines the deck-sheet count, and this
integer is returned unchanged through the spherical channel data. -/
theorem gapDeckSheets_return (pair : PrimePair) :
    Fintype.card (gapDeckSheets pair) = pair.q - pair.p := by
  simpa only [gap] using gapDeckSheets_card pair

end PrimeHopfFiberChannel
end GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
