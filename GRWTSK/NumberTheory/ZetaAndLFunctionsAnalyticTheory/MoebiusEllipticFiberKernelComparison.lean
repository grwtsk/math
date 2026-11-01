/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPrimeResidueFiberCounting
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointLeastPrimeTypeII
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Actual Möbius endpoint kernel through elliptic prime fibers: signed return

The original source is pickupCross T, not a new surrogate kernel.
Reuse the EXISTING source theorem pickupCross_eq_firstTag_sectors:
  rough/rough + both rough/matched orientations + matched/matched.
A finite prime bank contains actual good-prime point-count certificates
for one genuine integral Weierstrass model. Routing selects the original
firstSelectedDivisor and stores its p-free cofactor residue and exponent.

On matched ordered source pairs, replace the literal Möbius response Gram
by the actual source-derived elliptic Frobenius trace product. The EXACT
difference of the two kernels is the signed transport defect. Unmatched
indices remain in the original rough and mixed sectors; both ordered
orientations and the diagonal exclusion are preserved.

This is not an arithmetic cancellation estimate, Goldfeld's criterion,
a prime-zero bijection or a proof of Riemann Hypothesis.
-/

namespace GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.LiouvilleSignedBuchstabTypeII
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberCounting
open GRWTSK.NumberTheory.OrderedPrimeGroupAddress

/-- Finite GOOD prime bank for one actual integral Weierstrass source.
Its certificates have primehood, genuine nonzero discriminant, exact
enumerated count and actual source-model equality. -/
structure GoodPrimeBank (W : WeierstrassCurve ℤ) where
  primes : Finset PrimeIndex
  bound : ℕ
  within : ∀ p ∈ primes, p.1 ≤ bound
  certificate : ∀ p : PrimeIndex, p ∈ primes → GoodPointCountCertificate p.1
  model_eq : ∀ (p : PrimeIndex) (hp : p ∈ primes),
    (certificate p hp).model = W

namespace GoodPrimeBank

variable {W : WeierstrassCurve ℤ}

/-- Existing least-selected-prime source uses natural prime values. -/
def support (B : GoodPrimeBank W) : Finset ℕ :=
  B.primes.image (fun p : PrimeIndex => p.1)

/-- Reuse the existing Nat.find-based least-selected-divisor definition. -/
def tag (B : GoodPrimeBank W) (m : ℕ) : ℕ :=
  firstSelectedDivisor B.support m

/-- A nonzero selected tag comes from a genuine certified prime. -/
theorem exists_tagged_prime (B : GoodPrimeBank W) (m : ℕ)
    (h : B.tag m ≠ 0) :
    ∃ p : PrimeIndex, p ∈ B.primes ∧ p.1 = B.tag m := by
  have hs : firstSelectedDivisor B.support m ∈ B.support :=
    firstSelectedDivisor_mem_of_ne_zero h
  rcases Finset.mem_image.mp hs with ⟨p, hp, heq⟩
  exact ⟨p, hp, heq⟩

/-- The selected prime divides the ORIGINAL source integer. -/
theorem tag_dvd (B : GoodPrimeBank W) (m : ℕ)
    (h : B.tag m ≠ 0) : B.tag m ∣ m := by
  classical
  by_cases hex : ∃ p : ℕ, p ∈ B.support ∧ p ∣ m
  · simpa [GoodPrimeBank.tag, firstSelectedDivisor, hex]
      using (Nat.find_spec hex).2
  · have hz : B.tag m = 0 := by
      simp [GoodPrimeBank.tag, firstSelectedDivisor, hex]
    exact (h hz).elim

/-- Certified prime selected by the literal least-divisor source. -/
noncomputable def selectedPrime (B : GoodPrimeBank W) (m : ℕ)
    (h : B.tag m ≠ 0) : PrimeIndex :=
  Classical.choose (B.exists_tagged_prime m h)

theorem selectedPrime_mem (B : GoodPrimeBank W) (m : ℕ)
    (h : B.tag m ≠ 0) :
    B.selectedPrime m h ∈ B.primes :=
  (Classical.choose_spec (B.exists_tagged_prime m h)).1

theorem selectedPrime_val (B : GoodPrimeBank W) (m : ℕ)
    (h : B.tag m ≠ 0) :
    (B.selectedPrime m h).1 = B.tag m :=
  (Classical.choose_spec (B.exists_tagged_prime m h)).2

/-- Complete channel for a matched integer. Its residue is the p-free UNIT
COFACTOR modulo p, after removing its entire actual p-adic exponent.
Using m mod p here would color every selected p-divisible integer zero. -/
noncomputable def channel (B : GoodPrimeBank W) (m : ℕ)
    (h : B.tag m ≠ 0) : CurveFiber W := by
  classical
  let p := B.selectedPrime m h
  have hp : p ∈ B.primes := B.selectedPrime_mem m h
  exact ⟨p,
    { certificate := B.certificate p hp
      source_eq := B.model_eq p hp
      residue := ((m / p.1 ^ (Nat.factorization m p.1)) : ZMod p.1)
      exponent := Nat.factorization m p.1 }⟩

theorem channel_prime_eq_tag (B : GoodPrimeBank W) (m : ℕ)
    (h : B.tag m ≠ 0) :
    (prime (B.channel m h)).1 = B.tag m := by
  change (B.selectedPrime m h).1 = B.tag m
  exact B.selectedPrime_val m h

theorem channel_within_bound (B : GoodPrimeBank W) (m : ℕ)
    (h : B.tag m ≠ 0) :
    (prime (B.channel m h)).1 ≤ B.bound := by
  change (B.selectedPrime m h).1 ≤ B.bound
  exact B.within _ (B.selectedPrime_mem m h)

/-- Real partial routing. NONE is not replaced by a fictitious certificate. -/
noncomputable def route (B : GoodPrimeBank W) (m : ℕ) :
    Option (CurveFiber W) :=
  if h : B.tag m ≠ 0 then some (B.channel m h) else none

theorem route_none_iff (B : GoodPrimeBank W) (m : ℕ) :
    B.route m = none ↔ B.tag m = 0 := by
  classical
  by_cases h : B.tag m = 0
  · simp [GoodPrimeBank.route, h]
  · simp [GoodPrimeBank.route, h]

/-- A nonzero original least-prime tag genuinely produces a channel.
No matched index falls through the NONE branch. -/
theorem route_some_of_tag (B : GoodPrimeBank W) (m : ℕ)
    (h : B.tag m ≠ 0) :
    B.route m = some (B.channel m h) := by
  simp [GoodPrimeBank.route, h]

/-- Index 1 is ALWAYS unmatched by least-prime-divisor routing. -/
theorem one_unmatched (B : GoodPrimeBank W) : B.tag 1 = 0 := by
  classical
  have hn : ¬ ∃ p : ℕ, p ∈ B.support ∧ p ∣ 1 := by
    rintro ⟨p, hp, hdiv⟩
    rcases Finset.mem_image.mp hp with ⟨q, hq, heq⟩
    have hp1 : p = 1 := Nat.dvd_one.mp hdiv
    have hq1 : q.1 = 1 := heq.trans hp1
    exact q.2.ne_one hq1
  simp [GoodPrimeBank.tag, firstSelectedDivisor, hn]

@[simp]
theorem route_one_none (B : GoodPrimeBank W) :
    B.route 1 = none :=
  (B.route_none_iff 1).2 B.one_unmatched

/-- Original integer inventory assigned to one actual certified prime. -/
def matched (B : GoodPrimeBank W) (T : ℝ) : Finset ℕ :=
  (endpointIndex T).filter (fun m => B.tag m ≠ 0)

/-- Full original integer inventory without a selected certified prime. -/
def unmatched (B : GoodPrimeBank W) (T : ℝ) : Finset ℕ :=
  (endpointIndex T).filter (fun m => B.tag m = 0)

/-- No original endpoint integer is dropped at the routing boundary. -/
theorem matched_union_unmatched (B : GoodPrimeBank W) (T : ℝ) :
    B.matched T ∪ B.unmatched T = endpointIndex T := by
  classical
  ext m
  simp only [Finset.mem_union, GoodPrimeBank.matched,
    GoodPrimeBank.unmatched, Finset.mem_filter]
  constructor
  · rintro (⟨hm, _⟩ | ⟨hm, _⟩) <;> exact hm
  · intro hm
    by_cases ht : B.tag m = 0
    · exact Or.inr ⟨hm, ht⟩
    · exact Or.inl ⟨hm, ht⟩

theorem matched_disjoint_unmatched (B : GoodPrimeBank W) (T : ℝ) :
    Disjoint (B.matched T) (B.unmatched T) := by
  classical
  apply Finset.disjoint_left.mpr
  intro m hm hu
  have hne : B.tag m ≠ 0 := (Finset.mem_filter.mp hm).2
  have heq : B.tag m = 0 := (Finset.mem_filter.mp hu).2
  exact hne heq

/-- An empty bank routes no integer, testing that no elliptic factor was
silently supplied for unmatched original Möbius coefficients. -/
def empty (W : WeierstrassCurve ℤ) : GoodPrimeBank W where
  primes := ∅
  bound := 0
  within := by intro p hp; simp at hp
  certificate := by intro p hp; simp at hp
  model_eq := by intro p hp; simp at hp

theorem empty_tag (W : WeierstrassCurve ℤ) (m : ℕ) :
    (empty W).tag m = 0 := by
  simp [GoodPrimeBank.tag, GoodPrimeBank.support,
    GoodPrimeBank.empty, firstSelectedDivisor]

end GoodPrimeBank

/-- The LITERAL original Möbius signed response Gram. -/
def sourceKernel (T : ℝ) (m n : ℕ) : ℝ :=
  moebiusReal m * moebiusReal n * pickupResponseGram T m n

/-- Elliptic trace readout on the actually selected complete channels.
A NONE branch never invents a source point count. -/
def ellipticKernel {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (m n : ℕ) : ℝ :=
  match B.route m, B.route n with
  | some x, some y => traceKernel x y
  | _, _ => 0

/-- On a genuinely selected pair, the elliptic readout is exactly the
trace product of the two actual certified channels, never a fallback zero. -/
theorem ellipticKernel_of_matched {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (m n : ℕ)
    (hm : B.tag m ≠ 0) (hn : B.tag n ≠ 0) :
    ellipticKernel B m n =
      traceKernel (B.channel m hm) (B.channel n hn) := by
  unfold ellipticKernel
  rw [B.route_some_of_tag m hm, B.route_some_of_tag n hn]

/-- One matched integer contributes its actual certified Frobenius trace;
unmatched original integers have no elliptic trace observation. -/
def assignedTrace {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (m : ℕ) : ℝ :=
  match B.route m with
  | some x => (trace x : ℝ)
  | none => 0

theorem assignedTrace_zero_of_unmatched {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (m : ℕ) (h : B.tag m = 0) :
    assignedTrace B m = 0 := by
  have hr := (B.route_none_iff m).2 h
  simp [assignedTrace, hr]

theorem assignedTrace_of_matched {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (m : ℕ) (h : B.tag m ≠ 0) :
    assignedTrace B m = (trace (B.channel m h) : ℝ) := by
  rw [assignedTrace, B.route_some_of_tag m h]
  rfl

/-- The elliptic readout is a rank-one trace kernel on the EXACT
integer occurrence set. In the NONE case the factor is genuinely zero. -/
theorem ellipticKernel_eq_mul_assigned {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (m n : ℕ) :
    ellipticKernel B m n = assignedTrace B m * assignedTrace B n := by
  unfold ellipticKernel assignedTrace
  cases h1 : B.route m with
  | none => simp [h1]
  | some x =>
      cases h2 : B.route n with
      | none => simp [h1, h2]
      | some y => simp [h1, h2, traceKernel]

/-- Complete ordered matched elliptic packet, still on original integer
indices, retaining every orientation and excluding m=n. -/
def matchedEllipticPacket {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 then
      ellipticKernel B m n else 0

/-- Removing the matched filter is legitimate only because every
UNMATCHED original integer carries a provably zero elliptic readout.
Both original ordered orientations and the diagonal exclusion remain. -/
theorem matchedEllipticPacket_eq_offdiagonal_assigned
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) (T : ℝ) :
    matchedEllipticPacket B T =
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        if m = n then 0 else assignedTrace B m * assignedTrace B n := by
  classical
  unfold matchedEllipticPacket
  apply Finset.sum_congr rfl
  intro m hm'
  apply Finset.sum_congr rfl
  intro n hn'
  by_cases hmn : m = n
  · simp [hmn]
  · by_cases hm : B.tag m ≠ 0
    · by_cases hn : B.tag n ≠ 0
      · have hmatch : m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 :=
          ⟨hmn, hm, hn⟩
        simp only [if_pos hmatch, if_neg hmn]
        exact ellipticKernel_eq_mul_assigned B m n
      · have hzero : assignedTrace B n = 0 :=
          assignedTrace_zero_of_unmatched B n (by simpa using hn)
        simp [hmn, hm, hn, hzero]
    · have hzero : assignedTrace B m = 0 :=
        assignedTrace_zero_of_unmatched B m (by simpa using hm)
      simp [hmn, hm, hzero]

/-- Exact finite Putnam counting for any REAL indexed source weights.
Complete ordered off-diagonal = square of total minus original diagonal. -/
theorem ordered_rank_one_pair_square_sub_diagonal
    (S : Finset ℕ) (w : ℕ → ℝ) :
    (∑ m ∈ S, ∑ n ∈ S, if m = n then 0 else w m * w n) =
      (∑ m ∈ S, w m) ^ 2 - ∑ m ∈ S, w m ^ 2 := by
  classical
  have hfull :
      (∑ m ∈ S, ∑ n ∈ S, w m * w n) =
        (∑ m ∈ S, w m) ^ 2 := by
    rw [pow_two, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro m hm
    rw [Finset.mul_sum]
  have hsplit :
      (∑ m ∈ S, ∑ n ∈ S, w m * w n) =
        (∑ m ∈ S, w m ^ 2) +
          (∑ m ∈ S, ∑ n ∈ S,
            if m = n then 0 else w m * w n) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro m hm
    calc
      (∑ n ∈ S, w m * w n) =
          (∑ n ∈ S, if m = n then w m * w n else 0) +
            (∑ n ∈ S, if m = n then 0 else w m * w n) := by
        rw [← Finset.sum_add_distrib]
        apply Finset.sum_congr rfl
        intro n hn
        by_cases hmn : m = n <;> simp [hmn]
      _ = w m ^ 2 +
            (∑ n ∈ S, if m = n then 0 else w m * w n) := by
        congr 1
        simp [Finset.sum_ite_eq, hm, pow_two]
  linarith

/-- Exact finite counting consumer: the COMPLETE matched elliptic trace
packet is a square minus the COMPLETE original matched diagonal.
The Möbius signed defect is independent and cannot be dropped. -/
theorem matchedEllipticPacket_eq_square_sub_diagonal
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) (T : ℝ) :
    matchedEllipticPacket B T =
      (∑ m ∈ endpointIndex T, assignedTrace B m) ^ 2 -
        ∑ m ∈ endpointIndex T, (assignedTrace B m) ^ 2 := by
  rw [matchedEllipticPacket_eq_offdiagonal_assigned]
  exact ordered_rank_one_pair_square_sub_diagonal
    (endpointIndex T) (assignedTrace B)

/-- Exact SIGNED difference of literal Möbius and elliptic trace kernels on
the same original matched ordered pairs; never an adjustable error field. -/
def matchedSignedDefect {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 then
      sourceKernel T m n - ellipticKernel B m n else 0

/-- Existing true Möbius Type II sector = actual matched elliptic packet +
the exact signed source-minus-target defect. -/
theorem firstTagTypeII_eq_elliptic_add_defect
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) (T : ℝ) :
    firstTagTypeIICross B.support T =
      matchedEllipticPacket B T + matchedSignedDefect B T := by
  classical
  unfold firstTagTypeIICross matchedEllipticPacket matchedSignedDefect
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  change
    (if m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 then sourceKernel T m n else 0) =
      (if m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 then ellipticKernel B m n else 0) +
      (if m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 then
        sourceKernel T m n - ellipticKernel B m n else 0)
  by_cases h : m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0
  · simp only [if_pos h]
    ring
  · simp [h]

/-- All original RH endpoint pairs are exactly conserved:
rough/rough, both mixed orientations, elliptic matched/matched and the
entire signed kernel defect. No analytic estimate is used. -/
theorem pickupCross_eq_rough_mixed_elliptic_defect
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) (T : ℝ) :
    pickupCross T =
      firstTagRoughCross B.support T +
      firstTagMixedCross B.support T +
      matchedEllipticPacket B T +
      matchedSignedDefect B T := by
  calc
    pickupCross T =
        firstTagRoughCross B.support T +
        firstTagMixedCross B.support T +
        firstTagTypeIICross B.support T :=
      pickupCross_eq_firstTag_sectors B.support T
    _ = _ := by rw [firstTagTypeII_eq_elliptic_add_defect]; ring

/-- The FULL signed original-source residual: both unmatched sectors and the
entire matched-kernel defect. There is no dropped diagonal or omitted
orientation, and no residual is a freely chosen upper bound. -/
def fullSignedResidual {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (T : ℝ) : ℝ :=
  firstTagRoughCross B.support T +
    firstTagMixedCross B.support T +
      matchedSignedDefect B T

/-- The literal Möbius endpoint cross is exactly the elliptic matched packet
plus the complete original signed residual. This is the source-exact
comparison consumed by further RH research. -/
theorem pickupCross_eq_elliptic_add_full_residual
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) (T : ℝ) :
    pickupCross T = matchedEllipticPacket B T + fullSignedResidual B T := by
  rw [pickupCross_eq_rough_mixed_elliptic_defect B T]
  unfold fullSignedResidual
  ring

/-- Original signed chord/curvature correction from the endpoint source.
It is NOT replaced by its absolute upper bound in the exact identity. -/
def signedEndpointCorrection (T : ℝ) : ℝ := endpointSum T - pickupCross T

/-- Exact endpoint comparison with every signed sector and correction intact. -/
theorem endpointSum_eq_elliptic_residual_correction
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) (T : ℝ) :
    endpointSum T =
      matchedEllipticPacket B T + fullSignedResidual B T +
        signedEndpointCorrection T := by
  unfold signedEndpointCorrection
  rw [pickupCross_eq_elliptic_add_full_residual B T]
  ring

/-- The only allowed uniform quadrature payment is the old source's
already proved quarter-unit bound, under its actual T >= 0 hypothesis. -/
theorem signedEndpointCorrection_abs_le {T : ℝ} (hT : 0 ≤ T) :
    |signedEndpointCorrection T| ≤ (1 / 4 : ℝ) :=
  endpointSum_error hT

/-- Actual RH endpoint consumer using the already-proved 1/4 quadrature
allowance. This is a reduction, not an all-rate signed bound. -/
theorem endpointSum_le_routed_complete
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W)
    {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      firstTagRoughCross B.support T +
      firstTagMixedCross B.support T +
      matchedEllipticPacket B T +
      matchedSignedDefect B T + (1 / 4 : ℝ) := by
  have herr := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_rough_mixed_elliptic_defect B T] at herr
  linarith

/-- A squareful index p² has literal Möbius coefficient zero; a trace
kernel can be nonzero, so the difference must remain in the defect. -/
theorem sourceKernel_square_zero (T : ℝ) (p n : ℕ)
    (hp : Nat.Prime p) : sourceKernel T (p * p) n = 0 := by
  have hz : moebiusReal (p * p) = 0 :=
    moebiusReal_prime_mul_eq_zero_of_dvd p p hp (dvd_refl p)
  simp [sourceKernel, hz]

theorem sourceKernel_fortynine_seven_zero (T : ℝ) :
    sourceKernel T 49 7 = 0 := by
  simpa only [show (7 : ℕ) * 7 = 49 by norm_num] using
    (sourceKernel_square_zero T 7 7 (by norm_num))

/-- The correctly quantified single-scale return from an actual signed
bound. No unproved all-positive-rate supplier is supplied here. -/
theorem endpointSum_le_of_signed_total_bound
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W)
    {T M : ℝ} (hT : 0 ≤ T)
    (hBound :
      firstTagRoughCross B.support T +
      firstTagMixedCross B.support T +
      matchedEllipticPacket B T +
      matchedSignedDefect B T ≤ M) :
    endpointSum T ≤ M + (1 / 4 : ℝ) := by
  have h := endpointSum_le_routed_complete B hT
  linarith

end GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
