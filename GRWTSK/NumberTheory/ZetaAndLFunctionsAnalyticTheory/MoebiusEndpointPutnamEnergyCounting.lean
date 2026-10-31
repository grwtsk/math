/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointTerminalGapLocalization
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleRoughSignedConsumerTransfer
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointGapLocalization
open GRWTSK.NumberTheory.MoebiusEndpointTerminalGapLocalization
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-!
# Putnam-style counting with endpoint Gram energy

This source records an elementary double-counting mechanism for the unchanged
Möbius endpoint source.

For a finite set `A` of positive additive gaps, each endpoint index has at most
`2 * A.card` neighbours at distances in `A`.  The two-vector Gram inequality
then bounds the complete signed packet by `2 * A.card` times the actual Möbius
diagonal energy.  Using the existing diagonal estimate gives

`|X_A(T)| <= 4 * A.card * T^2`.

The gap values may be arbitrarily large; only their number matters.

A second source-exact estimate removes every ordered pair touching one of the
last `M` births.  The later response has only a short physical-time lifetime,
and a row count gives

`|X_birth(M,T)| <= 16 * M^3 / N^2`

for `N = floor(exp T)` and `2*M <= N`.  At
`M = floor(exp(2*T/3))` this is eventually at most `64`.

Together these estimates reduce the endpoint problem to a dense core with
large additive distance and both source indices below the terminal birth strip.
Pure degree counting cannot control that core: a constant positive Gram on a
dense regular graph saturates the degree-times-energy loss.

All analytical and finite-counting claims remain source proof candidates until
compilation and fresh-kernel audit.  No complete endpoint estimate, uniform
energy theorem, or Riemann Hypothesis claim is made.
-/

namespace GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting

classical

/-- Complete ordered endpoint packet whose additive distances belong to `A`.
No interval or smallness assumption is imposed on the gap values. -/
def endpointGapSetCross (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ Nat.dist m n ∈ A then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Ordered pairs touching one of the final `M` source indices.  The strict
condition gives exactly `M` terminal layers when `M <= floor(exp T)`. -/
def endpointTerminalBirthStripCross (M : ℕ) (T : ℝ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ N < max m n + M then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Terminal-birth contribution not already assigned to the selected gap set.
This makes the final three-sector partition disjoint. -/
def endpointTerminalBirthOutsideGapCross
    (A : Finset ℕ) (M : ℕ) (T : ℝ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ Nat.dist m n ∉ A ∧ N < max m n + M then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Exact remaining packet after deleting a chosen gap set and the disjoint
terminal birth strip. -/
def endpointPutnamCoreCross
    (A : Finset ℕ) (M : ℕ) (T : ℝ) : ℝ :=
  pickupCross T -
    endpointGapSetCross A T -
      endpointTerminalBirthOutsideGapCross A M T

theorem pickupCross_eq_gap_birth_core
    (A : Finset ℕ) (M : ℕ) (T : ℝ) :
    pickupCross T =
      endpointGapSetCross A T +
        endpointTerminalBirthOutsideGapCross A M T +
          endpointPutnamCoreCross A M T := by
  unfold endpointPutnamCoreCross
  ring

/-- Scalar Young inequality used by the Gram-energy count. -/
theorem two_abs_mul_le_sq_add_sq (a b : ℝ) :
    2 * |a * b| ≤ a ^ 2 + b ^ 2 := by
  rw [abs_mul]
  nlinarith [sq_nonneg (|a| - |b|), sq_abs a, sq_abs b]

/-- Pointwise two-vector Gram inequality for the literal Möbius responses.
Its proof is an interval-integral application of
`two_abs_mul_le_sq_add_sq`; it remains visible as a source qualification
target rather than being hidden inside the counting theorem. -/
def EndpointMobiusGramYoung : Prop :=
  ∀ (T : ℝ), 0 ≤ T →
    ∀ m n ∈ endpointIndex T,
      2 * |moebiusReal m * moebiusReal n *
        pickupResponseGram T m n| ≤
      moebiusReal m ^ 2 * pickupResponseGram T m m +
        moebiusReal n ^ 2 * pickupResponseGram T n n

/-- Elementary neighbour count: each selected positive distance gives at most
one neighbour on either side of a fixed source index. -/
def GapSetNeighbourCount : Prop :=
  ∀ (A S : Finset ℕ) (m : ℕ),
    ((S.filter fun n => m ≠ n ∧ Nat.dist m n ∈ A).card) ≤
      2 * A.card

/-- Putnam-style double-counting energy estimate.

The complete signed packet is formed first.  Triangle inequality is then used
only once, and every local edge is paid by half of each endpoint's actual
Möbius diagonal energy. -/
def PutnamGapEnergyBound : Prop :=
  EndpointMobiusGramYoung →
    GapSetNeighbourCount →
      ∀ (A : Finset ℕ) (T : ℝ), 0 ≤ T →
        |endpointGapSetCross A T| ≤
          2 * (A.card : ℝ) * pickupDiagonal T

/-- Numerical consequence of the existing diagonal estimate
`pickupDiagonal <= 2*T^2`. -/
def PutnamGapQuadraticBound : Prop :=
  PutnamGapEnergyBound →
    ∀ (A : Finset ℕ) (T : ℝ), 0 ≤ T →
      |endpointGapSetCross A T| ≤
        4 * (A.card : ℝ) * T ^ 2

/-- Rate-dependent contiguous gap set.  Compared with the earlier harmonic
argument, the energy count leaves half the requested exponent for the
quadratic factor and permits the larger cutoff `exp(epsilon*T/2)`. -/
def putnamRateGapSet (ε T : ℝ) : Finset ℕ :=
  Finset.Icc 1 ⌊Real.exp ((ε / 2) * T)⌋₊

/-- The selected gap packet is all-positive-rate after the degree-energy
estimate. -/
def PutnamRateGapSectorAllRate : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        |endpointGapSetCross (putnamRateGapSet ε T) T| ≤
          C * Real.exp (ε * T)

/-- Exact terminal-birth-strip count.

For the later index `n=N-j`, one has `j<M`,
`T-log n <= 2*(j+1)/N`, and
`K_T(m,n) <= (T-log n)^2/sqrt(m*n)`.  Summing the earlier index and both
orientations gives the displayed constant.  The gap-set exclusion is harmless
because the proof is termwise absolute. -/
def TerminalBirthStripAbsoluteBound : Prop :=
  ∀ (A : Finset ℕ) (M : ℕ) (T : ℝ), 0 ≤ T →
    let N := ⌊Real.exp T⌋₊
    1 ≤ M → 1 ≤ N → 2 * M ≤ N →
      |endpointTerminalBirthOutsideGapCross A M T| ≤
        16 * (M : ℝ) ^ 3 / (N : ℝ) ^ 2

/-- The robust terminal birth-strip width. -/
def terminalBirthStripWidth (T : ℝ) : ℕ :=
  ⌊Real.exp ((2 / 3 : ℝ) * T)⌋₊

/-- At the tuned width the disjoint terminal birth strip is uniformly bounded,
independently of the selected gap set. -/
def TunedTerminalBirthStripBound : Prop :=
  ∃ R : ℝ, 0 ≤ R ∧
    ∀ (A : Finset ℕ) (T : ℝ), R ≤ T →
      |endpointTerminalBirthOutsideGapCross A
        (terminalBirthStripWidth T) T| ≤ 64

/-- The disjoint terminal birth strip is all-positive-rate for the
rate-dependent gap set. -/
def TunedTerminalBirthOutsideGapAllRate : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        |endpointTerminalBirthOutsideGapCross
          (putnamRateGapSet ε T)
          (terminalBirthStripWidth T) T| ≤
            C * Real.exp (ε * T)

theorem tunedTerminalBirthStripBound_to_allRate
    (h : TunedTerminalBirthStripBound) :
    TunedTerminalBirthOutsideGapAllRate := by
  intro ε hε
  obtain ⟨R₀, hR₀, hb⟩ := h
  refine ⟨64, R₀, by norm_num, hR₀, ?_⟩
  intro T hT
  have hT0 : 0 ≤ T := hR₀.trans hT
  have hexp : 1 ≤ Real.exp (ε * T) :=
    Real.one_le_exp (mul_nonneg hε.le hT0)
  exact (hb (putnamRateGapSet ε T) T hT).trans
    (by simpa using
      mul_le_mul_of_nonneg_left hexp (by norm_num : (0 : ℝ) ≤ 64))

/-- The remaining signed core after paying an energy-counted gap set and every
pair touching the final `exp(2T/3)` births. -/
def PutnamCoreEndpointSupplier : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        endpointPutnamCoreCross
          (putnamRateGapSet ε T)
          (terminalBirthStripWidth T) T ≤
            C * Real.exp (ε * T)

/-- Endpoint comparison with all counted sectors visible. -/
theorem endpointSum_le_gap_birth_core
    (A : Finset ℕ) (M : ℕ) {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      |endpointGapSetCross A T| +
        |endpointTerminalBirthOutsideGapCross A M T| +
          endpointPutnamCoreCross A M T + 1 / 4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_gap_birth_core A M T] at he
  have hg : endpointGapSetCross A T ≤ |endpointGapSetCross A T| :=
    le_abs_self _
  have hb :
      endpointTerminalBirthOutsideGapCross A M T ≤
        |endpointTerminalBirthOutsideGapCross A M T| :=
    le_abs_self _
  linarith

/-- Complete logical return from the two counting sectors and the remaining
signed dense core. -/
theorem putnamCoreEndpointReturn
    (hgap : PutnamRateGapSectorAllRate)
    (hbirth : TunedTerminalBirthOutsideGapAllRate)
    (hcore : PutnamCoreEndpointSupplier) :
    EventualAllRateUpper endpointSum := by
  intro ε hε
  obtain ⟨Cg, Rg, hCg, hRg, hg⟩ := hgap ε hε
  obtain ⟨Cb, Rb, hCb, hRb, hb⟩ := hbirth ε hε
  obtain ⟨Cc, Rc, hCc, hRc, hc⟩ := hcore ε hε
  let R := max Rg (max Rb Rc)
  refine ⟨Cg + Cb + Cc + 1 / 4, R, by positivity, by
    dsimp [R]
    positivity, ?_⟩
  intro T hT
  have hTg : Rg ≤ T := (le_max_left Rg (max Rb Rc)).trans hT
  have hTb : Rb ≤ T :=
    (le_trans (le_max_left Rb Rc) (le_max_right Rg (max Rb Rc))).trans hT
  have hTc : Rc ≤ T :=
    (le_trans (le_max_right Rb Rc) (le_max_right Rg (max Rb Rc))).trans hT
  have hT0 : 0 ≤ T := hRg.trans hTg
  have hmain := endpointSum_le_gap_birth_core
    (putnamRateGapSet ε T) (terminalBirthStripWidth T) hT0
  have hgT := hg T hTg
  have hbT := hb T hTb
  have hcT := hc T hTc
  have hexp : 1 ≤ Real.exp (ε * T) :=
    Real.one_le_exp (mul_nonneg hε.le hT0)
  nlinarith

/-- Dense relations saturate a pure degree-times-energy argument.  This is a
method obstruction, not a Möbius counterexample: without source-specific sign
information the remaining core may have degree comparable to the complete
endpoint inventory. -/
def PureDegreeEnergyDenseNoGo : Prop :=
  ∀ N : ℕ, 2 ≤ N →
    ∃ (diagonal packet degree : ℝ),
      0 < diagonal ∧
      degree = ((N - 1 : ℕ) : ℝ) ∧
      packet = degree * diagonal

theorem pureDegreeEnergyDenseNoGo :
    PureDegreeEnergyDenseNoGo := by
  intro N hN
  refine ⟨(N : ℝ), (N : ℝ) * ((N - 1 : ℕ) : ℝ),
    ((N - 1 : ℕ) : ℝ), by positivity, rfl, ?_⟩
  ring

/-- Research disposition. -/
def PutnamEnergyCountingDisposition : Prop :=
  EndpointMobiusGramYoung ∧
    GapSetNeighbourCount ∧
      PutnamGapEnergyBound ∧
        PutnamGapQuadraticBound ∧
          PutnamRateGapSectorAllRate ∧
            TerminalBirthStripAbsoluteBound ∧
              TunedTerminalBirthStripBound ∧
                TunedTerminalBirthOutsideGapAllRate ∧
                  PutnamCoreEndpointSupplier ∧
                    PureDegreeEnergyDenseNoGo

end GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
