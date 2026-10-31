/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamEnergyCounting
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory Filter
open scoped Topology
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleRoughSignedConsumerTransfer
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-!
# Endpoint completion equivalence and the Putnam absorption ceiling

The geometric gap and terminal-birth packets are already all-positive-rate once
their named source estimates are supplied.  This file proves the converse
logical reduction: under those same geometric estimates, controlling the
remaining Putnam core is equivalent to controlling the complete endpoint sum.

It also records the exact scalar obstruction to a proposed completion
bootstrap.  If a paid degree-`d` packet is bounded by `d * diagonal` and its
removal creates only the geometric contraction
`q = 1 - d / (N - 1)`, then division by `1-q` restores exactly the full
factor `N-1`.  The cutoff choice cannot improve this loss.

The abstract fixture is a method obstruction, not a Möbius counterexample.
No complete endpoint estimate, uniform energy theorem, or Riemann Hypothesis
claim is made.
-/

namespace GRWTSK.NumberTheory.MoebiusEndpointPutnamAbsorptionObstruction

classical

/-- Eventual all-positive-rate control of the exact endpoint consumer. -/
def CompleteEndpointEstimate : Prop :=
  EventualAllRateUpper endpointSum

theorem completeEndpointEstimate_of_putnamCore
    (hgap : PutnamRateGapSectorAllRate)
    (hbirth : TunedTerminalBirthOutsideGapAllRate)
    (hcore : PutnamCoreEndpointSupplier) :
    CompleteEndpointEstimate :=
  putnamCoreEndpointReturn hgap hbirth hcore

/-- The converse reduction.  Once both removed packets are controlled in
absolute value, a complete endpoint estimate already controls the signed core.
Thus the remaining dense-core supplier is not a weaker terminal problem. -/
theorem putnamCore_of_completeEndpoint
    (hendpoint : CompleteEndpointEstimate)
    (hgap : PutnamRateGapSectorAllRate)
    (hbirth : TunedTerminalBirthOutsideGapAllRate) :
    PutnamCoreEndpointSupplier := by
  intro ε hε
  obtain ⟨Ce, Re, hCe, hRe, he⟩ := hendpoint ε hε
  obtain ⟨Cg, Rg, hCg, hRg, hg⟩ := hgap ε hε
  obtain ⟨Cb, Rb, hCb, hRb, hb⟩ := hbirth ε hε
  let R := max Re (max Rg Rb)
  refine ⟨Ce + Cg + Cb + 1 / 4, R, by positivity, by
    dsimp [R]
    positivity, ?_⟩
  intro T hT
  have hTe : Re ≤ T := (le_max_left Re (max Rg Rb)).trans hT
  have hTg : Rg ≤ T :=
    (le_trans (le_max_left Rg Rb) (le_max_right Re (max Rg Rb))).trans hT
  have hTb : Rb ≤ T :=
    (le_trans (le_max_right Rg Rb) (le_max_right Re (max Rg Rb))).trans hT
  have hT0 : 0 ≤ T := hRe.trans hTe
  let A := putnamRateGapSet ε T
  let M := terminalBirthStripWidth T
  have herr := endpointSum_error hT0
  have hcross : pickupCross T ≤ endpointSum T + 1 / 4 := by
    have hlow := (abs_le.mp herr).1
    linarith
  have heT := he T hTe
  have hgT := hg T hTg
  have hbT := hb T hTb
  have hga : -endpointGapSetCross A T ≤ |endpointGapSetCross A T| :=
    neg_le_abs _
  have hba :
      -endpointTerminalBirthOutsideGapCross A M T ≤
        |endpointTerminalBirthOutsideGapCross A M T| :=
    neg_le_abs _
  have hexp : 1 ≤ Real.exp (ε * T) :=
    Real.one_le_exp (mul_nonneg hε.le hT0)
  change endpointPutnamCoreCross A M T ≤
    (Ce + Cg + Cb + 1 / 4) * Real.exp (ε * T)
  unfold endpointPutnamCoreCross
  nlinarith

theorem putnamCore_iff_completeEndpoint_of_geometric_inputs
    (hgap : PutnamRateGapSectorAllRate)
    (hbirth : TunedTerminalBirthOutsideGapAllRate) :
    PutnamCoreEndpointSupplier ↔ CompleteEndpointEstimate := by
  constructor
  · exact completeEndpointEstimate_of_putnamCore hgap hbirth
  · intro h
    exact putnamCore_of_completeEndpoint h hgap hbirth

/-! ## Exact scalar ceiling for degree-energy absorption -/

/-- Ordered complete-graph packet for a constant unit Gram fixture. -/
def completePacket (N : ℝ) : ℝ := N * (N - 1)

/-- Packet paid by a `d`-regular ordered relation in the same fixture. -/
def paidPacket (N d : ℝ) : ℝ := N * d

/-- Complementary packet after deleting the paid relation. -/
def corePacket (N d : ℝ) : ℝ := N * (N - 1 - d)

theorem completePacket_eq_paid_add_core (N d : ℝ) :
    completePacket N = paidPacket N d + corePacket N d := by
  unfold completePacket paidPacket corePacket
  ring

/-- The geometric contraction factor left by deleting degree `d`. -/
def geometricContraction (N d : ℝ) : ℝ :=
  1 - d / (N - 1)

/-- Dividing the paid degree cost by the geometric spectral gap restores the
full degree `N-1`, independently of `d`. -/
theorem paidDegree_over_geometricGap
    {N d : ℝ} (hN : 1 < N) (hd : 0 < d) :
    d / (1 - geometricContraction N d) = N - 1 := by
  unfold geometricContraction
  have hNm : N - 1 ≠ 0 := ne_of_gt (sub_pos.mpr hN)
  have hd0 : d ≠ 0 := ne_of_gt hd
  field_simp [hNm, hd0] <;> ring

/-- Exact ordered count for the complement of the additive band
`1 <= |m-n| <= H` on `V` vertices. -/
def bandCorePacket (V H : ℝ) : ℝ :=
  (V - H - 1) * (V - H)

theorem completePacket_sub_bandCorePacket (V H : ℝ) :
    completePacket V - bandCorePacket V H =
      2 * V * H - H ^ 2 - H := by
  unfold completePacket bandCorePacket
  ring

/-- The finite source count that connects `bandCorePacket` to actual ordered
pairs.  It remains a named proposition pending the Finset cardinality proof. -/
def CorePairCountFormula : Prop :=
  ∀ (V H : ℕ), H < V →
    (((Finset.Icc 1 V).product (Finset.Icc 1 V)).filter
      (fun mn => mn.1 ≠ mn.2 ∧ H < Nat.dist mn.1 mn.2)).card =
      (V - H - 1) * (V - H)

/-- For the rate gap and terminal strip used by the Putnam reduction, the
remaining abstract relation has density tending to one.  This is a
formalization target for the elementary floor/exponential asymptotics. -/
def TunedCoreDensityTendsToOne : Prop :=
  ∀ ε : ℝ, 0 < ε → ε < 2 →
    Tendsto
      (fun T : ℝ =>
        let N := (⌊Real.exp T⌋₊ : ℝ)
        let V := N - (terminalBirthStripWidth T : ℝ)
        let H := ((putnamRateGapSet ε T).card : ℝ)
        bandCorePacket V H / completePacket V)
      atTop (𝓝 1)

/-- No fixed contraction strictly below one follows from the geometric
deletion alone.  The companion review proves this from the exact count and
the tuned density limit. -/
def NoUniformGeometricCoreContraction : Prop :=
  CorePairCountFormula →
    TunedCoreDensityTendsToOne →
      ∀ q : ℝ, q < 1 →
        ∀ ε : ℝ, 0 < ε → ε < 2 →
          ∃ T : ℝ,
            q <
              (let N := (⌊Real.exp T⌋₊ : ℝ)
               let V := N - (terminalBirthStripWidth T : ℝ)
               let H := ((putnamRateGapSet ε T).card : ℝ)
               bandCorePacket V H / completePacket V)

/-- Research disposition: the geometric sectors reduce the problem exactly,
but degree/energy absorption has coefficient one after its inverse gap is
paid.  Completion requires a source-specific signed arithmetic gain. -/
def EndpointCompletionAbsorptionDisposition : Prop :=
  CompleteEndpointEstimate ∧
    PutnamCoreEndpointSupplier ∧
      CorePairCountFormula ∧
        TunedCoreDensityTendsToOne ∧
          NoUniformGeometricCoreContraction

end GRWTSK.NumberTheory.MoebiusEndpointPutnamAbsorptionObstruction
