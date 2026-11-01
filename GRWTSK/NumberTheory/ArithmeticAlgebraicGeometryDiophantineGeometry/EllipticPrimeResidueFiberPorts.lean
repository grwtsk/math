/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Existing mathematical sources and their proof statuses are unchanged.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPowerSeriesLocalFactor
import GRWTSK.NumberTheory.OrderedPrimeGroupAddress
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PortFiberBasic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Curve-inherited, prime-residue-dependent ports

The base object is an ACTUAL integral Mathlib Weierstrass model W.
A local fiber has an ACTUAL good-reduction point-count certificate at its
prime p, a proof that the certificate describes W, a residue in ZMod p, and
a prime-power exponent. The complete state is a dependent sum over primes.

A port between curve-indexed fibers must supply a function between these
complete states, preserve the prime, certified count, residue address and
exponent, and separately carry an explicit arrow between any chosen
curve-property predicates. This is an OBSERVATION PORT, not automatically
an elliptic isogeny, field embedding, Galois representation or Selmer map.

This extends the existing GRWTSK.Topology.PortFiber, not a parallel port
calculus. Every old source and its accepted/NOT_RUN status remains unchanged.

Finite indexed samples distinguish occurrences even when two positions have
the same prime and residue. This is required for exact ordered-pair Putnam
counting. Source traces and all direct local Euler coefficients are preserved
under every such certified observation port.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort

open GRWTSK.NumberTheory.OrderedPrimeGroupAddress
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerInversion

/-- Reuse the existing dependent prime index and prime-local cyclic group. -/
abbrev PrimeIndex := GRWTSK.NumberTheory.OrderedPrimeGroupAddress.PrimeIndex

/-- A good-prime channel attached to the ACTUAL source integral curve W.
The type depends on the prime, so ZMod 7 and ZMod 19 cannot be silently
interchanged. A count record for a different W cannot be substituted. -/
structure ChannelAt (W : WeierstrassCurve ℤ) (p : PrimeIndex) where
  certificate : GoodPointCountCertificate p.1
  source_eq : certificate.model = W
  residue : ZMod p.1
  exponent : ℕ

/-- A curve-indexed total space, with a prime-dependent fiber at each p. -/
abbrev CurveFiber (W : WeierstrassCurve ℤ) : Type :=
  Sigma (ChannelAt W)

/-! ## The actual affine geometric fiber, not just a phase label -/

/-- The finite affine solution fiber of the chosen integral model W modulo p.
It is an actual dependent subtype of ZMod p × ZMod p. The missing point
at infinity is charged by one in the original integralModelCount. -/
def AffinePointFiber (W : WeierstrassCurve ℤ) (p : PrimeIndex) : Type :=
  { xy : ZMod p.1 × ZMod p.1 //
      xy.2 ^ 2 + (W.a₁ : ZMod p.1) * xy.1 * xy.2 +
        (W.a₃ : ZMod p.1) * xy.2 =
      xy.1 ^ 3 + (W.a₂ : ZMod p.1) * xy.1 ^ 2 +
        (W.a₄ : ZMod p.1) * xy.1 + (W.a₆ : ZMod p.1) }

/-- The geometric affine fiber has exactly the enumerated source's
affine count. The original point at infinity contributes one more. -/
theorem affineFiber_card_add_one (W : WeierstrassCurve ℤ)
    (p : PrimeIndex) :
    Fintype.card (AffinePointFiber W p) + 1 =
      integralModelCount W p.1 := by
  classical
  simp [AffinePointFiber, integralModelCount, Fintype.card_subtype,
    add_comm]

/-- An ACTUAL equivalence of affine geometric fibers at p.
Such an equivalence is evidence; it cannot be manufactured from
a common type label or just equality of point-count numerals. -/
structure GeometricFiberPort (W V : WeierstrassCurve ℤ)
    (p : PrimeIndex) where
  affineEquiv : AffinePointFiber W p ≃ AffinePointFiber V p

/-- Actual geometric-fiber equivalence preserves the full finite elliptic
point count, including the unique point at infinity. -/
theorem GeometricFiberPort.pointCount_eq
    {W V : WeierstrassCurve ℤ} {p : PrimeIndex}
    (f : GeometricFiberPort W V p) :
    integralModelCount W p.1 = integralModelCount V p.1 := by
  have hcard :
      Fintype.card (AffinePointFiber W p) =
        Fintype.card (AffinePointFiber V p) :=
    Fintype.card_congr f.affineEquiv
  have hW := affineFiber_card_add_one W p
  have hV := affineFiber_card_add_one V p
  omega

/-- The actual prime of a dependent channel, with its prime proof. -/
def prime {W : WeierstrassCurve ℤ} (x : CurveFiber W) : PrimeIndex := x.1

/-- Actual certified elliptic point count, not a freely chosen trace. -/
def pointCount {W : WeierstrassCurve ℤ} (x : CurveFiber W) : ℕ :=
  x.2.certificate.count

/-- Exact inherited Frobenius trace from the certified point count. -/
def trace {W : WeierstrassCurve ℤ} (x : CurveFiber W) : ℤ :=
  frobeniusTrace x.1.1 (pointCount x)

/-- Prime and residue class retain their separate natural-number addresses.
This key may identify distinct occurrences or exponents, and is NOT a lossless
serialization of the whole fiber. -/
def residueKey {W : WeierstrassCurve ℤ} (x : CurveFiber W) : ℕ × ℕ :=
  (x.1.1, x.2.residue.val)

/-- Actual good local reciprocal polynomial of the certified reduction. -/
def localReciprocal {W : WeierstrassCurve ℤ}
    (x : CurveFiber W) (T : ℚ) : ℚ :=
  goodReciprocal x.1.1 (pointCount x) T

/-- Complete direct local Euler coefficient, at any power exponent. -/
def localDirectCoeff {W : WeierstrassCurve ℤ}
    (x : CurveFiber W) (n : ℕ) : ℤ :=
  directCoeff x.1.1 (pointCount x) n

/-- Modify only the prime-power exponent inside the very same genuine
curve/prime/residue certificate. -/
def withExponent {W : WeierstrassCurve ℤ}
    (x : CurveFiber W) (n : ℕ) : CurveFiber W :=
  ⟨x.1, { x.2 with exponent := n }⟩

@[simp]
theorem residueKey_withExponent {W : WeierstrassCurve ℤ}
    (x : CurveFiber W) (n : ℕ) :
    residueKey (withExponent x n) = residueKey x := rfl

@[simp]
theorem exponent_withExponent {W : WeierstrassCurve ℤ}
    (x : CurveFiber W) (n : ℕ) :
    (withExponent x n).2.exponent = n := rfl

/-- Exact hostile collision: a prime-residue label cannot encode the
prime-power exponent, even for one fixed source certificate. In particular
a zero/prime-power comparison cannot be decoded from colors alone. -/
theorem residueKey_not_injective {W : WeierstrassCurve ℤ}
    (x : CurveFiber W) :
    ¬ Function.Injective (residueKey (W := W)) := by
  intro hinj
  have heq : withExponent x 0 = withExponent x 1 :=
    hinj (by simp)
  have hexp := congrArg (fun y : CurveFiber W => y.2.exponent) heq
  have hfalse : (0 : ℕ) = 1 := by
    simpa using hexp
  omega

/-- Good reduction is a theorem about the same original model W. -/
theorem inherited_good {W : WeierstrassCurve ℤ}
    (x : CurveFiber W) : (W.Δ : ZMod x.1.1) ≠ 0 := by
  have hg := x.2.certificate.good
  rw [x.2.source_eq] at hg
  exact hg

/-- Curve-level predicates are inherited by fibers, but are NOT automatically
established for a curve. E.g. CM requires a separate genuine CM proof. -/
def Inherits (C : WeierstrassCurve ℤ → Prop)
    {W : WeierstrassCurve ℤ} (_x : CurveFiber W) : Prop := C W

theorem inherits_iff (C : WeierstrassCurve ℤ → Prop)
    {W : WeierstrassCurve ℤ} (x : CurveFiber W) :
    Inherits C x ↔ C W := Iff.rfl

/-- Source-preserving observation port. No arbitrary cross-curve equivalence:
the maps and all observable preservation laws are explicit evidence.
The class arrow cannot be inferred from a matching visual curve shape. -/
structure ChannelPort (C : WeierstrassCurve ℤ → Prop)
    (W V : WeierstrassCurve ℤ) where
  toFiber : CurveFiber W → CurveFiber V
  prime_eq : ∀ x, prime (toFiber x) = prime x
  count_eq : ∀ x, pointCount (toFiber x) = pointCount x
  residue_eq : ∀ x, residueKey (toFiber x) = residueKey x
  exponent_eq : ∀ x, (toFiber x).2.exponent = x.2.exponent
  class_forward : C W → C V

namespace ChannelPort

/-- An actual source-indexed identity port. -/
def identity (C : WeierstrassCurve ℤ → Prop)
    (W : WeierstrassCurve ℤ) : ChannelPort C W W where
  toFiber := id
  prime_eq := by intro x; rfl
  count_eq := by intro x; rfl
  residue_eq := by intro x; rfl
  exponent_eq := by intro x; rfl
  class_forward := id

/-- Composition preserves every original certified observation, including
the complete exponent and the class proof. -/
def comp {C : WeierstrassCurve ℤ → Prop}
    {W V U : WeierstrassCurve ℤ}
    (f : ChannelPort C W V) (g : ChannelPort C V U) :
    ChannelPort C W U where
  toFiber := g.toFiber ∘ f.toFiber
  prime_eq := by
    intro x
    exact (g.prime_eq (f.toFiber x)).trans (f.prime_eq x)
  count_eq := by
    intro x
    exact (g.count_eq (f.toFiber x)).trans (f.count_eq x)
  residue_eq := by
    intro x
    exact (g.residue_eq (f.toFiber x)).trans (f.residue_eq x)
  exponent_eq := by
    intro x
    exact (g.exponent_eq (f.toFiber x)).trans (f.exponent_eq x)
  class_forward := fun h => g.class_forward (f.class_forward h)

/-- Every port preserves the actual source-derived Frobenius trace. -/
theorem trace_eq {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ} (f : ChannelPort C W V)
    (x : CurveFiber W) :
    trace (f.toFiber x) = trace x := by
  unfold trace
  rw [f.prime_eq x, f.count_eq x]

/-- The local reciprocal good-prime factor is exactly preserved. -/
theorem localReciprocal_eq {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ} (f : ChannelPort C W V)
    (x : CurveFiber W) (T : ℚ) :
    localReciprocal (f.toFiber x) T = localReciprocal x T := by
  unfold localReciprocal
  rw [f.prime_eq x, f.count_eq x]

/-- All prime-power coefficients of the actual local direct recurrence
are preserved, not merely p and p². -/
theorem localDirectCoeff_eq {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ} (f : ChannelPort C W V)
    (x : CurveFiber W) (n : ℕ) :
    localDirectCoeff (f.toFiber x) n = localDirectCoeff x n := by
  unfold localDirectCoeff
  rw [f.prime_eq x, f.count_eq x]

/-- Source class inheritance is part of the port evidence. -/
theorem inherits_target {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ} (f : ChannelPort C W V)
    (x : CurveFiber W) (h : Inherits C x) :
    Inherits C (f.toFiber x) :=
  f.class_forward h

end ChannelPort

/-- This is the existing canonical composable PortFiber structure, with
arithmetically constrained ports rather than arbitrary functions. -/
def system (C : WeierstrassCurve ℤ → Prop) : GRWTSK.Topology.PortFiber where
  Obj := WeierstrassCurve ℤ
  Fiber := CurveFiber
  Port := ChannelPort C
  identity := ChannelPort.identity C
  comp := ChannelPort.comp
  map := fun f => f.toFiber
  map_identity := by
    intro W x
    rfl
  map_comp := by
    intro W V U f g x
    rfl

/-- Bind a typed elliptic observation port to the repository's EXISTING
immutable SourceIdentity and invalidation key. SameSource must be proved
before these source-bound ports compose; the supplied revision is not
inferred from a curve class or silently refreshed. -/
def sourceBound {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ}
    (f : ChannelPort C W V)
    (source : GRWTSK.Topology.PortFiber.SourceIdentity)
    (invalidationKey : String) :
    GRWTSK.Topology.PortFiber.SourceBoundPort
      (system C) (A := W) (B := V) where
  port := f
  source := source
  invalidationKey := invalidationKey

/-- Source binding does not change the mathematical fiber map. -/
@[simp]
theorem sourceBound_map {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ} (f : ChannelPort C W V)
    (source : GRWTSK.Topology.PortFiber.SourceIdentity)
    (key : String) (x : CurveFiber W) :
    (system C).map (sourceBound f source key).port x = f.toFiber x := rfl

/-- A finite occurrence inventory with a fixed prime bound. Unlike
a set of channel keys, a finite index type retains duplicates and ordering. -/
structure BoundedSample (W : WeierstrassCurve ℤ) (ι : Type*) where
  observation : ι → CurveFiber W
  primeBound : ℕ
  within : ∀ i, (prime (observation i)).1 ≤ primeBound

namespace BoundedSample

/-- Route all observations along a source-preserving port. The prime bound
is inherited *exactly*, rather than enlarged or reinterpreted. -/
def route {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι) (f : ChannelPort C W V) :
    BoundedSample V ι where
  observation := f.toFiber ∘ F.observation
  primeBound := F.primeBound
  within := by
    intro i
    change (prime (f.toFiber (F.observation i))).1 ≤ F.primeBound
    rw [f.prime_eq (F.observation i)]
    exact F.within i

/-- Inherited prime and residue addresses remain equal at every occurrence. -/
theorem route_residueKey {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι) (f : ChannelPort C W V) (i : ι) :
    residueKey ((F.route f).observation i) =
      residueKey (F.observation i) :=
  f.residue_eq (F.observation i)

/-- Same observation-class relation in a routed sample. It does not claim
the two complete states are identical. -/
theorem route_sameResidue {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι) (f : ChannelPort C W V) (i j : ι) :
    (residueKey ((F.route f).observation i) =
      residueKey ((F.route f).observation j)) ↔
    (residueKey (F.observation i) = residueKey (F.observation j)) := by
  rw [F.route_residueKey f i, F.route_residueKey f j]

/-- Exact finite source Frobenius sum, with indexed multiplicity retained. -/
theorem route_sum_trace {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι) (f : ChannelPort C W V)
    (S : Finset ι) :
    (∑ i ∈ S, trace ((F.route f).observation i)) =
      ∑ i ∈ S, trace (F.observation i) := by
  apply Finset.sum_congr rfl
  intro i hi
  exact f.trace_eq (F.observation i)

/-- The p-power coefficient sum retains both prime occurrences and exponents. -/
theorem route_sum_directCoeff {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι) (f : ChannelPort C W V)
    (S : Finset ι) (n : ℕ) :
    (∑ i ∈ S, localDirectCoeff ((F.route f).observation i) n) =
      ∑ i ∈ S, localDirectCoeff (F.observation i) n := by
  apply Finset.sum_congr rfl
  intro i hi
  exact f.localDirectCoeff_eq (F.observation i) n

end BoundedSample

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
