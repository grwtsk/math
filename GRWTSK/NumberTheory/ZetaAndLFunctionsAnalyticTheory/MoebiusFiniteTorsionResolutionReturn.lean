/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AutomircronCanonicalPrimeTyping
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPrimeResidueFiberPorts
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature
import Mathlib

/-!
# Finite torsion resolution, immutable source, and signed endpoint return

A finite additive torsion phase has a bounded number of states. Phase alone
cannot distinguish arbitrarily many original integers. Keeping each integer
index prevents aliasing, at exact cost |support| * |phase|. A genuine affine
elliptic point fiber over F_p also has a finite capacity, but counting affine
points is NOT an identification with E(Q)_tors or an RH estimate.

This file uses existing canonical prime typing to preserve the original
Möbius response Gram under any phase change. A phase-only decoder pays its
complete original-minus-observed signed defect, including both mixed terms.
The existing quarter-unit endpoint curvature bound survives with that full
defect retained. No all-positive-rate arithmetic estimate or RH proof is
claimed or assumed.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

universe u v

/-! ## Explicit finite phase capacity and faithful source indexing -/

/-- Retain each source occurrence together with a finite phase. -/
abbrev FramedSupport (S : Finset ℕ) (G : Type u) := (↥S) × G

/-- Finite type overhead multiplies the number of original indices. -/
theorem framedSupport_card (S : Finset ℕ) (G : Type u) [Fintype G] :
    Fintype.card (FramedSupport S G) = S.card * Fintype.card G := by
  classical
  simp [FramedSupport]

/-- Source labels fit injectively only if the phase has enough states. -/
theorem phase_label_capacity {G : Type u} [Fintype G]
    (S : Finset ℕ) (label : (↥S) → G)
    (hinj : Function.Injective label) :
    S.card ≤ Fintype.card G := by
  classical
  simpa using Fintype.card_le_of_injective label hinj

/-- A larger source inventory forces some finite phase-label collision. -/
theorem phase_label_not_injective {G : Type u} [Fintype G]
    (S : Finset ℕ) (label : (↥S) → G)
    (hlarge : Fintype.card G < S.card) :
    ¬ Function.Injective label := by
  intro hinj
  exact (not_le.mpr hlarge) (phase_label_capacity S label hinj)

/-- No single finite phase code can injectively encode every natural index. -/
theorem no_global_finite_phase_injection {G : Type u} [Fintype G]
    (label : ℕ → G) :
    ¬ Function.Injective label := by
  intro hinj
  let S : Finset ℕ := Finset.range (Fintype.card G + 1)
  have hrestr : Function.Injective
      (fun n : (↥S) => label n.1) := by
    intro a b h
    exact Subtype.ext (hinj h)
  have hcap := phase_label_capacity S
    (fun n : (↥S) => label n.1) hrestr
  simp only [S, Finset.card_range] at hcap
  omega

/-- The capacity theorem applies to any *proved finite* additive group,
including a torsion subgroup only when its finiteness is supplied. -/
theorem finite_torsion_capacity {G : Type u}
    [AddCommGroup G] [Fintype G]
    (S : Finset ℕ) (label : (↥S) → G)
    (hinj : Function.Injective label) :
    S.card ≤ Fintype.card G :=
  phase_label_capacity S label hinj

/-- The paired original index prevents a phase collision from merging
distinct sources, even if the label itself is noninjective. -/
theorem indexed_phase_injective {G : Type u}
    (S : Finset ℕ) (label : (↥S) → G) :
    Function.Injective (fun n : (↥S) =>
      ((n, label n) : FramedSupport S G)) := by
  intro a b h
  exact congrArg Prod.fst h

/-! ## Actual finite affine elliptic fiber, not assumed rational torsion -/

/-- An injection into genuine affine Weierstrass solutions over F_p
requires no more than the original enumerated point count minus one.
The omitted point at infinity is charged exactly by the imported theorem.
No elliptic group law, Mordell-Weil rank, or torsion comparison is inferred. -/
theorem affine_elliptic_label_capacity
    (W : WeierstrassCurve ℤ) (p : PrimeIndex)
    (S : Finset ℕ)
    (label : (↥S) → AffinePointFiber W p)
    (hinj : Function.Injective label) :
    S.card + 1 ≤ integralModelCount W p.1 := by
  classical
  have hcard : S.card ≤ Fintype.card (AffinePointFiber W p) := by
    simpa using Fintype.card_le_of_injective label hinj
  have hpoint := affineFiber_card_add_one W p
  omega

/-! ## The original canonical positive integer is never replaced -/

/-- A source atom from the existing faithful prime typing plus a phase. -/
structure IndexedPhase (G : Type u) where
  atom : SourceAtom
  phase : G

def attach {G : Type u} (phase : SourceAtom → G)
    (a : SourceAtom) : IndexedPhase G :=
  ⟨a, phase a⟩

/-- The whole original integer is still available, including n=1. -/
def originalIndex {G : Type u} (x : IndexedPhase G) : ℕ :=
  sourceIndex x.atom

@[simp] theorem originalIndex_attach {G : Type u}
    (phase : SourceAtom → G) (a : SourceAtom) :
    originalIndex (attach phase a) = sourceIndex a := rfl

/-- No phase collision can merge two source atoms in the paired state. -/
theorem attach_injective {G : Type u} (phase : SourceAtom → G) :
    Function.Injective (attach phase) := by
  intro a b h
  exact congrArg IndexedPhase.atom h

/-- Arbitrary geometric/typed phase reframe; original atom is untouched. -/
def reframe {G : Type u} {H : Type v} (f : G → H)
    (x : IndexedPhase G) : IndexedPhase H :=
  ⟨x.atom, f x.phase⟩

@[simp] theorem originalIndex_reframe {G : Type u} {H : Type v}
    (f : G → H) (x : IndexedPhase G) :
    originalIndex (reframe f x) = originalIndex x := rfl

/-- Literally the old signed Möbius Gram on the two original atoms. -/
def originalGram {G : Type u} (T : ℝ)
    (x y : IndexedPhase G) : ℝ :=
  typedSignedGram T x.atom y.atom

@[simp] theorem originalGram_reframe {G : Type u} {H : Type v}
    (f : G → H) (T : ℝ) (x y : IndexedPhase G) :
    originalGram T (reframe f x) (reframe f y) =
      originalGram T x y := rfl

/-- Complete ordered off-diagonal source, original integer support and cutoff. -/
def originalCross {G : Type u} (phase : SourceAtom → G)
    (T : ℝ) : ℝ :=
  ∑ a ∈ typedInventory ⌊Real.exp T⌋₊,
    ∑ b ∈ typedInventory ⌊Real.exp T⌋₊,
      if originalIndex (attach phase a) ≠ originalIndex (attach phase b)
      then originalGram T (attach phase a) (attach phase b) else 0

/-- Arbitrary phase decoration returns exactly the original pickupCross. -/
theorem originalCross_eq_pickupCross {G : Type u}
    (phase : SourceAtom → G) (T : ℝ) :
    originalCross phase T = pickupCross T := by
  change typedCross T = pickupCross T
  exact typedCross_eq_pickupCross T

/-- Even a noninjective change of phase cannot change the source Gram. -/
theorem originalCross_reframe {G : Type u} {H : Type v}
    (phase : SourceAtom → G) (f : G → H) (T : ℝ) :
    originalCross (fun a => f (phase a)) T =
      originalCross phase T := by
  rw [originalCross_eq_pickupCross, originalCross_eq_pickupCross]

/-! ## Incomplete phase-only readout and complete signed residual -/

/-- A phase-only decoder is not an arithmetic oracle for μ(n). -/
def observedCoeff {G : Type u} (phase : SourceAtom → G)
    (decode : G → ℝ) (n : ℕ) : ℝ :=
  decode (phase (encode n))

def observedKernel {G : Type u} (phase : SourceAtom → G)
    (decode : G → ℝ) (T : ℝ) (m n : ℕ) : ℝ :=
  observedCoeff phase decode m *
    observedCoeff phase decode n * pickupResponseGram T m n

/-- Both ordered orientations of every off-diagonal pair survive. -/
def observedCross {G : Type u} (phase : SourceAtom → G)
    (decode : G → ℝ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n then observedKernel phase decode T m n else 0

/-- Original source-minus-decoded source, without erasing bad phase labels. -/
def signedLoss {G : Type u} (phase : SourceAtom → G)
    (decode : G → ℝ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n then
      sourceKernel T m n - observedKernel phase decode T m n
    else 0

/-- Complete signed Gram identity for EVERY phase code and decoder. -/
theorem pickupCross_eq_observed_add_signedLoss {G : Type u}
    (phase : SourceAtom → G) (decode : G → ℝ) (T : ℝ) :
    pickupCross T = observedCross phase decode T +
      signedLoss phase decode T := by
  classical
  unfold pickupCross observedCross signedLoss
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n
  · simp only [if_pos h]
    simp only [sourceKernel, observedKernel]
    ring
  · simp [h]

/-- This coefficient difference remains signed. -/
def coefficientError {G : Type u} (phase : SourceAtom → G)
    (decode : G → ℝ) (n : ℕ) : ℝ :=
  moebiusReal n - observedCoeff phase decode n

/-- Both original/observed mixed error terms are retained exactly. -/
theorem signedLoss_eq_mixed_error_terms {G : Type u}
    (phase : SourceAtom → G) (decode : G → ℝ) (T : ℝ) :
    signedLoss phase decode T =
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        if m ≠ n then
          (coefficientError phase decode m * moebiusReal n +
            observedCoeff phase decode m *
              coefficientError phase decode n) *
            pickupResponseGram T m n
        else 0 := by
  classical
  unfold signedLoss
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n
  · simp only [if_pos h]
    simp only [sourceKernel, observedKernel, coefficientError]
    ring
  · simp [h]

/-- A collided finite phase cannot decode distinct Möbius values exactly. -/
theorem incompatible_phase_collision {G : Type u}
    (phase : SourceAtom → G) (decode : G → ℝ)
    (a b : SourceAtom)
    (hphase : phase a = phase b)
    (hcoeff : moebiusReal (sourceIndex a) ≠
      moebiusReal (sourceIndex b)) :
    ¬ (decode (phase a) = moebiusReal (sourceIndex a) ∧
        decode (phase b) = moebiusReal (sourceIndex b)) := by
  rintro ⟨ha, hb⟩
  apply hcoeff
  exact ha.symm.trans ((congrArg decode hphase).trans hb)

/-- An exact decoder needs an explicit source-exactness premise. -/
theorem observedCoeff_eq_of_exact {G : Type u}
    (phase : SourceAtom → G) (decode : G → ℝ)
    (hexact : ∀ a : SourceAtom,
      decode (phase a) = moebiusReal (sourceIndex a))
    (n : ℕ) (hn : 1 ≤ n) :
    observedCoeff phase decode n = moebiusReal n := by
  simpa only [observedCoeff, sourceIndex_encode hn] using
    (hexact (encode n))

/-- Exact decoding returns the original complete ordered arithmetic Gram. -/
theorem observedCross_eq_pickupCross_of_exact {G : Type u}
    (phase : SourceAtom → G) (decode : G → ℝ)
    (hexact : ∀ a : SourceAtom,
      decode (phase a) = moebiusReal (sourceIndex a))
    (T : ℝ) :
    observedCross phase decode T = pickupCross T := by
  classical
  unfold observedCross pickupCross
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n
  · simp only [if_pos h, observedKernel, sourceKernel,
      observedCoeff_eq_of_exact phase decode hexact m
        (Finset.mem_Icc.mp hm).1,
      observedCoeff_eq_of_exact phase decode hexact n
        (Finset.mem_Icc.mp hn).1]
  · simp [h]

/-- Exact decoding entails zero signed loss; not analytic cancellation. -/
theorem signedLoss_zero_of_exact {G : Type u}
    (phase : SourceAtom → G) (decode : G → ℝ)
    (hexact : ∀ a : SourceAtom,
      decode (phase a) = moebiusReal (sourceIndex a))
    (T : ℝ) :
    signedLoss phase decode T = 0 := by
  have h := pickupCross_eq_observed_add_signedLoss phase decode T
  rw [observedCross_eq_pickupCross_of_exact phase decode hexact] at h
  linarith

/-! ## Endpoint return, preserving the complete signed decoder loss -/

/-- Exact quarter-unit endpoint bound AFTER paying all decoder loss. -/
theorem endpoint_observed_signed_allowance {G : Type u}
    (phase : SourceAtom → G) (decode : G → ℝ)
    {T : ℝ} (hT : 0 ≤ T) :
    |endpointSum T -
      (observedCross phase decode T + signedLoss phase decode T)| ≤ 1 / 4 := by
  rw [← pickupCross_eq_observed_add_signedLoss phase decode T]
  exact endpointSum_error hT

/-- One-sided original endpoint upper certificate. The signed loss must
still be controlled on affinely frequent scales to obtain RH. -/
theorem endpoint_le_observed_add_signedLoss_quarter {G : Type u}
    (phase : SourceAtom → G) (decode : G → ℝ)
    {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      observedCross phase decode T + signedLoss phase decode T + 1 / 4 := by
  have h := (abs_le.mp
    (endpoint_observed_signed_allowance phase decode hT)).2
  linarith

end GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
