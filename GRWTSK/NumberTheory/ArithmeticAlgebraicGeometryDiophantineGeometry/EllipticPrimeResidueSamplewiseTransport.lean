/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPrimeResidueFiberCounting
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Samplewise transport from congruent elliptic residue fibers

The predecessor source constructs an actual equivalence of affine solution
fibers when the five integral Weierstrass coefficients agree modulo one prime.
This module turns that local geometry into the certificate and finite-sample
transport actually consumed by the prime-residue port system.

Coefficient congruence also preserves the discriminant modulo the same prime,
so good reduction of the source certificate automatically gives good reduction
of the target model. A finite sample can therefore be routed occurrence by
occurrence using only congruence at its observed primes; no all-prime curve port
or global curve isomorphism is required.

The complete signed trace packet, every direct local Euler coefficient and each
finite local reciprocal product are preserved. Conversely, a finite product of
sampled primes admits nontrivial integral a6-deformations with the same selected
fibers and local factors. This is a hostile check: finite local data do not
identify a global elliptic curve or its global L-function zeros.

No elliptic isogeny, global L-function equality, BSD statement, Möbius endpoint
comparison, RH estimate, compilation or kernel acceptance is claimed.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueSamplewiseTransport

open GRWTSK.NumberTheory.OrderedPrimeGroupAddress
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberCounting

/-- Equality of all five source Weierstrass coefficients after reduction
at one actual prime. This is a local condition, not a global isomorphism. -/
structure CoefficientsModPrime
    (W V : WeierstrassCurve ℤ) (p : PrimeIndex) : Prop where
  a1 : (W.a₁ : ZMod p.1) = (V.a₁ : ZMod p.1)
  a2 : (W.a₂ : ZMod p.1) = (V.a₂ : ZMod p.1)
  a3 : (W.a₃ : ZMod p.1) = (V.a₃ : ZMod p.1)
  a4 : (W.a₄ : ZMod p.1) = (V.a₄ : ZMod p.1)
  a6 : (W.a₆ : ZMod p.1) = (V.a₆ : ZMod p.1)

/-- The actual reduced Weierstrass model over the prime residue field. -/
def reducedCurve (W : WeierstrassCurve ℤ) (p : PrimeIndex) :
    WeierstrassCurve (ZMod p.1) :=
  W.map (Int.castRingHom (ZMod p.1))

namespace CoefficientsModPrime

/-- Componentwise congruence is exactly equality of the reduced models. -/
theorem reducedCurve_eq {W V : WeierstrassCurve ℤ} {p : PrimeIndex}
    (h : CoefficientsModPrime W V p) :
    reducedCurve W p = reducedCurve V p := by
  ext <;> simp [reducedCurve, h.a1, h.a2, h.a3, h.a4, h.a6]

/-- The discriminants have the same residue at the selected prime. -/
theorem discriminant_mod_eq {W V : WeierstrassCurve ℤ} {p : PrimeIndex}
    (h : CoefficientsModPrime W V p) :
    (W.Δ : ZMod p.1) = (V.Δ : ZMod p.1) := by
  have hΔ := congrArg
    (fun U : WeierstrassCurve (ZMod p.1) => U.Δ)
    (h.reducedCurve_eq)
  simpa [reducedCurve] using hΔ

/-- Good reduction is preserved in both directions by the same local model
identity. No separate target-good premise is needed. -/
theorem good_iff {W V : WeierstrassCurve ℤ} {p : PrimeIndex}
    (h : CoefficientsModPrime W V p) :
    ((W.Δ : ZMod p.1) ≠ 0) ↔ ((V.Δ : ZMod p.1) ≠ 0) := by
  rw [h.discriminant_mod_eq]

/-- Reuse the predecessor's actual affine-fiber equivalence. -/
def geometricPort {W V : WeierstrassCurve ℤ} {p : PrimeIndex}
    (h : CoefficientsModPrime W V p) :
    GeometricFiberPort W V p :=
  geometricPort_of_coefficients_mod_prime W V p
    h.a1 h.a2 h.a3 h.a4 h.a6

/-- The complete finite point count, including infinity, is preserved. -/
theorem pointCount_eq {W V : WeierstrassCurve ℤ} {p : PrimeIndex}
    (h : CoefficientsModPrime W V p) :
    integralModelCount W p.1 = integralModelCount V p.1 :=
  h.geometricPort.pointCount_eq

end CoefficientsModPrime

/-- The good-reduction proof carried by a genuine source channel refers to
the source model itself after applying its source-equality witness. -/
theorem channelAt_source_good {W : WeierstrassCurve ℤ} {p : PrimeIndex}
    (x : ChannelAt W p) :
    (W.Δ : ZMod p.1) ≠ 0 := by
  have hg := x.certificate.good
  simpa [x.source_eq] using hg

/-- Transport the actual point-count certificate to a coefficient-congruent
target model. Count equality and target good reduction are both derived. -/
def transportCertificate {W V : WeierstrassCurve ℤ} {p : PrimeIndex}
    (x : ChannelAt W p) (h : CoefficientsModPrime W V p) :
    GoodPointCountCertificate p.1 where
  model := V
  prime := x.certificate.prime
  good := h.good_iff.mp (channelAt_source_good x)
  count := x.certificate.count
  count_eq := by
    calc
      x.certificate.count =
          integralModelCount x.certificate.model p.1 :=
        x.certificate.count_eq
      _ = integralModelCount W p.1 := by rw [x.source_eq]
      _ = integralModelCount V p.1 := h.pointCount_eq

/-- Local channel transport preserves the original residue and prime-power
exponent while rebuilding the target certificate from actual geometry. -/
def transportChannelAt {W V : WeierstrassCurve ℤ} {p : PrimeIndex}
    (x : ChannelAt W p) (h : CoefficientsModPrime W V p) :
    ChannelAt V p where
  certificate := transportCertificate x h
  source_eq := rfl
  residue := x.residue
  exponent := x.exponent

/-- Transport one complete dependent prime channel. -/
def transportFiber {W V : WeierstrassCurve ℤ}
    (x : CurveFiber W) (h : CoefficientsModPrime W V x.1) :
    CurveFiber V :=
  ⟨x.1, transportChannelAt x.2 h⟩

@[simp]
theorem prime_transportFiber {W V : WeierstrassCurve ℤ}
    (x : CurveFiber W) (h : CoefficientsModPrime W V x.1) :
    prime (transportFiber x h) = prime x := rfl

@[simp]
theorem pointCount_transportFiber {W V : WeierstrassCurve ℤ}
    (x : CurveFiber W) (h : CoefficientsModPrime W V x.1) :
    pointCount (transportFiber x h) = pointCount x := rfl

@[simp]
theorem residueKey_transportFiber {W V : WeierstrassCurve ℤ}
    (x : CurveFiber W) (h : CoefficientsModPrime W V x.1) :
    residueKey (transportFiber x h) = residueKey x := rfl

@[simp]
theorem exponent_transportFiber {W V : WeierstrassCurve ℤ}
    (x : CurveFiber W) (h : CoefficientsModPrime W V x.1) :
    (transportFiber x h).2.exponent = x.2.exponent := rfl

@[simp]
theorem trace_transportFiber {W V : WeierstrassCurve ℤ}
    (x : CurveFiber W) (h : CoefficientsModPrime W V x.1) :
    trace (transportFiber x h) = trace x := rfl

@[simp]
theorem localReciprocal_transportFiber {W V : WeierstrassCurve ℤ}
    (x : CurveFiber W) (h : CoefficientsModPrime W V x.1)
    (T : ℚ) :
    localReciprocal (transportFiber x h) T = localReciprocal x T := rfl

@[simp]
theorem localDirectCoeff_transportFiber {W V : WeierstrassCurve ℤ}
    (x : CurveFiber W) (h : CoefficientsModPrime W V x.1)
    (n : ℕ) :
    localDirectCoeff (transportFiber x h) n =
      localDirectCoeff x n := rfl

/-- If coefficient congruence is available at every prime, it produces a
full existing ChannelPort. The class arrow remains separate evidence. -/
def channelPort_of_all_prime_coefficients
    (C : WeierstrassCurve ℤ → Prop)
    (W V : WeierstrassCurve ℤ)
    (hcoeff : ∀ p : PrimeIndex, CoefficientsModPrime W V p)
    (hclass : C W → C V) :
    ChannelPort C W V where
  toFiber := fun x => transportFiber x (hcoeff x.1)
  prime_eq := by intro x; rfl
  count_eq := by intro x; rfl
  residue_eq := by intro x; rfl
  exponent_eq := by intro x; rfl
  class_forward := hclass

namespace BoundedSample

/-- A finite sample needs coefficient congruence only at each occurrence's
actual observed prime. Repeated occurrences remain repeated. -/
def routeByCoefficients {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1) :
    BoundedSample V ι where
  observation := fun i => transportFiber (F.observation i) (hcoeff i)
  primeBound := F.primeBound
  within := by
    intro i
    exact F.within i

@[simp]
theorem routeByCoefficients_prime {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1)
    (i : ι) :
    prime ((F.routeByCoefficients hcoeff).observation i) =
      prime (F.observation i) := rfl

@[simp]
theorem routeByCoefficients_pointCount
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1)
    (i : ι) :
    pointCount ((F.routeByCoefficients hcoeff).observation i) =
      pointCount (F.observation i) := rfl

@[simp]
theorem routeByCoefficients_residueKey
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1)
    (i : ι) :
    residueKey ((F.routeByCoefficients hcoeff).observation i) =
      residueKey (F.observation i) := rfl

/-- The exact ordered occurrence set in each prime-residue fiber is
unchanged by samplewise transport. -/
theorem sameResiduePairs_routeByCoefficients
    {W V : WeierstrassCurve ℤ} {ι : Type*} [DecidableEq ι]
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1)
    (S : Finset ι) :
    sameResiduePairs (F.routeByCoefficients hcoeff) S =
      sameResiduePairs F S := by
  classical
  ext ij
  simp [sameResiduePairs, routeByCoefficients]

@[simp]
theorem routeByCoefficients_exponent
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1)
    (i : ι) :
    ((F.routeByCoefficients hcoeff).observation i).2.exponent =
      (F.observation i).2.exponent := rfl

/-- All original signed trace occurrences are preserved by the samplewise
geometric route. -/
theorem routeByCoefficients_sum_trace
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1)
    (S : Finset ι) :
    (∑ i ∈ S, trace ((F.routeByCoefficients hcoeff).observation i)) =
      ∑ i ∈ S, trace (F.observation i) := by
  apply Finset.sum_congr rfl
  intro i hi
  rfl

/-- The complete local direct coefficient packet is preserved in every
degree, including repeated prime occurrences. -/
theorem routeByCoefficients_sum_directCoeff
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1)
    (S : Finset ι) (n : ℕ) :
    (∑ i ∈ S,
      localDirectCoeff ((F.routeByCoefficients hcoeff).observation i) n) =
      ∑ i ∈ S, localDirectCoeff (F.observation i) n := by
  apply Finset.sum_congr rfl
  intro i hi
  rfl

/-- The complete signed ordered trace packet is invariant. No sector or
orientation is dropped. -/
theorem tracePacket_routeByCoefficients
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1)
    (S : Finset ι) :
    orderedPacket (F.routeByCoefficients hcoeff) S traceKernel =
      orderedPacket F S traceKernel := by
  classical
  unfold orderedPacket traceKernel
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  by_cases hij : i = j
  · simp [hij]
  · simp [hij, routeByCoefficients]

/-- Exact signed source-minus-target defect for an occurrencewise geometric
route. It retains every off-diagonal pair and both orientations. -/
def samplewiseTransportDefect
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1)
    (S : Finset ι)
    (K : CurveFiber W → CurveFiber W → ℝ)
    (L : CurveFiber V → CurveFiber V → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S,
    if i = j then 0 else
      K (F.observation i) (F.observation j) -
        L ((F.routeByCoefficients hcoeff).observation i)
          ((F.routeByCoefficients hcoeff).observation j)

/-- The source packet equals the routed packet plus the complete signed
defect. A local geometric port does not erase a change of kernel. -/
theorem orderedPacket_eq_routeByCoefficients_add_defect
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1)
    (S : Finset ι)
    (K : CurveFiber W → CurveFiber W → ℝ)
    (L : CurveFiber V → CurveFiber V → ℝ) :
    orderedPacket F S K =
      orderedPacket (F.routeByCoefficients hcoeff) S L +
        samplewiseTransportDefect F hcoeff S K L := by
  classical
  unfold orderedPacket samplewiseTransportDefect
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  by_cases hij : i = j
  · simp [hij]
  · simp [hij]
    ring

/-- Every finite product of actual local reciprocal factors is invariant
under the samplewise geometric route. -/
theorem finite_good_euler_window_routeByCoefficients
    {W V : WeierstrassCurve ℤ} {ι : Type*}
    (F : BoundedSample W ι)
    (hcoeff : ∀ i, CoefficientsModPrime W V (F.observation i).1)
    (S : Finset ι) (T : ℚ) :
    (∏ i ∈ S,
      localReciprocal ((F.routeByCoefficients hcoeff).observation i) T) =
      ∏ i ∈ S, localReciprocal (F.observation i) T := by
  apply Finset.prod_congr rfl
  intro i hi
  rfl

end BoundedSample

/-! ## A finite local-data non-identification family -/

/-- Product of the selected prime values. -/
def primeProduct (S : Finset PrimeIndex) : ℕ :=
  ∏ p in S, p.1

/-- Change only a6 by a multiple of every selected prime. -/
def finitePrimeA6Shift
    (W : WeierstrassCurve ℤ) (S : Finset PrimeIndex) (t : ℤ) :
    WeierstrassCurve ℤ :=
  { W with a₆ := W.a₆ + (primeProduct S : ℤ) * t }

/-- Every selected prime divides the finite prime product. -/
theorem prime_dvd_primeProduct
    (S : Finset PrimeIndex) {p : PrimeIndex} (hp : p ∈ S) :
    p.1 ∣ primeProduct S := by
  unfold primeProduct
  exact Finset.dvd_prod_of_mem (fun q : PrimeIndex => q.1) hp

/-- The shifted model has the exact same five residue coefficients at each
selected prime. -/
theorem finitePrimeA6Shift_coefficients
    (W : WeierstrassCurve ℤ) (S : Finset PrimeIndex) (t : ℤ)
    {p : PrimeIndex} (hp : p ∈ S) :
    CoefficientsModPrime W (finitePrimeA6Shift W S t) p := by
  refine ⟨rfl, rfl, rfl, rfl, ?_⟩
  have hpdiv : p.1 ∣ primeProduct S :=
    prime_dvd_primeProduct S hp
  obtain ⟨m, hm⟩ := hpdiv
  have hzero : ((primeProduct S : ℤ) : ZMod p.1) = 0 := by
    simp [hm]
  simp [finitePrimeA6Shift, hzero]

/-- All selected full finite point counts are unchanged by the deformation. -/
theorem finitePrimeA6Shift_pointCount_eq
    (W : WeierstrassCurve ℤ) (S : Finset PrimeIndex) (t : ℤ)
    {p : PrimeIndex} (hp : p ∈ S) :
    integralModelCount W p.1 =
      integralModelCount (finitePrimeA6Shift W S t) p.1 :=
  (finitePrimeA6Shift_coefficients W S t hp).pointCount_eq

/-- Good reduction at every selected prime is also unchanged. -/
theorem finitePrimeA6Shift_good_iff
    (W : WeierstrassCurve ℤ) (S : Finset PrimeIndex) (t : ℤ)
    {p : PrimeIndex} (hp : p ∈ S) :
    ((W.Δ : ZMod p.1) ≠ 0) ↔
      (((finitePrimeA6Shift W S t).Δ : ZMod p.1) ≠ 0) :=
  (finitePrimeA6Shift_coefficients W S t hp).good_iff

/-- The complete selected finite Euler window cannot distinguish the source
model from this integral a6-deformation. -/
theorem finitePrimeA6Shift_euler_window
    (W : WeierstrassCurve ℤ) (S : Finset PrimeIndex)
    (t : ℤ) (T : ℚ) :
    (∏ p ∈ S,
      goodReciprocal p.1
        (integralModelCount (finitePrimeA6Shift W S t) p.1) T) =
      ∏ p ∈ S,
        goodReciprocal p.1 (integralModelCount W p.1) T := by
  apply Finset.prod_congr rfl
  intro p hp
  rw [← finitePrimeA6Shift_pointCount_eq W S t hp]

/-- The prime product is nonzero, including for the empty sample. -/
theorem primeProduct_ne_zero (S : Finset PrimeIndex) :
    primeProduct S ≠ 0 := by
  unfold primeProduct
  exact Finset.prod_ne_zero_iff.mpr fun p hp => p.2.ne_zero

/-- A nonzero deformation parameter gives a genuinely different integral
model even though all selected fibers and Euler factors agree. -/
theorem finitePrimeA6Shift_ne
    (W : WeierstrassCurve ℤ) (S : Finset PrimeIndex) (t : ℤ)
    (ht : t ≠ 0) :
    finitePrimeA6Shift W S t ≠ W := by
  intro h
  have h6 := congrArg WeierstrassCurve.a₆ h
  have hmul : (primeProduct S : ℤ) * t = 0 := by
    dsimp [finitePrimeA6Shift] at h6
    linarith
  have hprod : (primeProduct S : ℤ) ≠ 0 := by
    exact_mod_cast (primeProduct_ne_zero S)
  exact ht ((mul_eq_zero.mp hmul).resolve_left hprod)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueSamplewiseTransport
