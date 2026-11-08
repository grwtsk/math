/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddModeDependentTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBorderedFiniteReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddInclusionWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinalMassFloor
import Mathlib.Tactic

/-!
# Mode-dependent Schur completion on every actual odd zeta Weil window

## First unsupported implication and exact source

The existing \`OddModeDependentTail.shiftedOddBorderedEnergy_two_lower_weighted\`
proves a mode-dependent mixed-Schur lower bound at the physical radius T=2,
with specialized radius-two prime and odd-boundary prices. The ORIGINAL
gamma, all-prime-power von Mangoldt, and boundary estimates are already
available for general positive T in
\`OddModeDependentTail.shiftedOddCoreEnergy_ge_weightedTail\`.
What was missing was their general-T mixed trial/residual consumer.

For T>0, let
  w_m(T,beta) =
    gammaConstant 1 0 - beta - primeMass T - 4
      + periodicMultiplier 0 (frequency T m).
The original high cutoff is
  OddHighComplement.highCutoff T beta 4 gamma.
For gamma>0 and N above this cutoff, existing monotonicity ensures
  gamma <= w_(N+1+j)(T,beta) for ALL j>=0.

Use the SOURCE finite trial
  f_x = OddSineForm.finiteSine T (fun i : Fin M => x(i.val+1))
and its actual physical bordered output
  F_x,a = OddConcreteResidual.borderedTrialOutput T beta trial a.
The original signed residual for receiving mode N+1+j is
  r_j = OddResidualSourceComparison.literalAugmentedRow
          M T x a beta (N+1+j),
including the rank-one scalar pole column and EVERY prime shift.
The same L² Fourier convention is used throughout: no replacement
quadratic, fitted heat kernel, or preferred finite subset is introduced.

The exact algebra is
  Q_border(T,beta,f_x+g,a)
      = Q_border(T,beta,f_x,a)
        + 2*integral(g*F_x,a) + Core(T,beta,g).
The existing \`highSine_pair_hasSum\` returns the cross-term as
\`sum_j r_j b_j(g)\` on the actual source high complement, and the
general weighted-core theorem returns
\`sum_j w_(N+1+j) b_j(g)^2 <= Core(T,beta,g)\`.
Complete each square:
  w*b² + 2*r*b >= -r²/w,     w>0.
The \`weightedCompletion_tsum\` source already proves convergence
of this ENTIRE signed price and its complete infinite comparison.
Thus, without a supplied positivity certificate or spectral gap,
  Q_border(f_x+g,a) >= Q_border(f_x,a)
      - sum_j r_j²/w_(N+1+j).

This generalizes the radius-two mixed-Schur return to every T>0,
using the correct original full primeMass(T) and boundary loss 4.
It is a genuine improvement over replacing all receiving weights
by the single uniform gamma cutoff: each remote row is paid at
its true mode weight.

## Direct full-window consumer

For an arbitrary measurable real odd supported L² test f in its
actual finite gamma-energy domain, choose exactly its first N
source sine coefficients u, the source inclusion reconstruction
\`OddInclusionWindow.inclusionTrial u\`, and its high remainder
\`OddSineHeadRemoval.removeSineHead T N f\`.
The source supplies L², support, oddness, gamma-domain closure
and vanished low coefficients for this remainder.

The literal finite bordered trial is identified with the EXISTING
\`OddSchurAccounting.borderedSourceMatrix\` by
\`OddBorderedFiniteReturn.shiftedOddBorderedEnergy_finiteSine_eq_quadratic\`.
Therefore the same FULL-WINDOW lower bound holds with the genuine
finite bordered matrix and ALL high-mode residual prices, not just
a fixed finite observed middle.

Finally choose the ACTUAL minimizing pole coordinate
  a = -2 * OddLiteralCofinalMassFloor.oddPoleMoment f.
\`OddLiteralWindow.shiftedOddBorderedEnergy_eq_weil_add_square\`
then removes the completed scalar square with zero remainder,
returning a signed lower bound for the original
\`OddLiteralWindow.shiftedOddWeilEnergy\`.

## Essential boundary and comparison to existing routes

There is NO assertion that the finite bordered quadratic exceeds
the (generally positive) weighted residual price. A positivity
certificate for that *joint* source inequality is STILL required,
as are a cofinal family and independent primitive nonprincipal
Dirichlet sectors. A passing finite head alone does not suffice.
The actual finite squared residuals, remote modes, source prime
inventory, gamma/parity, pole sign -2 and full form domain survive.

A smaller scalar gamma floor only gives the weaker uniform price
\`sum_j r_j²/gamma\`; because w_j>=gamma, the weighted price
cannot be larger. Conversely if low weights or the bordered
Schur margin are negative, this sufficient comparison may fail
without implying a negative eigenvalue of the genuine Weil
operator. Failure of a sufficient test is NOT a disproof of RH.

Nearest primary mathematical source: Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1, formulae (3.19)-(3.20).
Proof mechanism: original Fourier/Parseval Hilbert coefficients,
exact prime and gamma return, complete signed Schur square. This
is a source-specific generalization of existing local radius-two
calculations, not an asserted new independent proof of RH/GRH.
Independent mathematical review and theorem-level novelty
assessment NOT_RUN; native Lean elaboration, fresh kernel and
transitive axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddModeWeightedWholeWindowSchur

open OddRootProjection OddHighComplement OddMultiplierBounds
open OddSineForm OddSineParseval OddSineHeadRemoval OddGammaOutput
open OddWrapEnergy OddBorderedExpansion OddConcreteResidual
open OddResidualSourceComparison OddModeDependentTail
open OddSchurAccounting OddBorderedFiniteReturn OddInclusionWindow
open OddLiteralWindow OddLiteralCofinalMassFloor LowSchur
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

/-- All receiving weights beyond the original high cutoff have the
requested positive floor, by the SOURCE high-frequency multiplier. -/
theorem modeWeight_ge_highCutoff
    (T : ℝ) (hT : 0 < T) (beta gamma : ℝ) {N : ℕ}
    (hcut : highCutoff T beta 4 gamma ≤ N) (j : ℕ) :
    gamma ≤ modeWeight T beta (primeMass T) 4 (N + 1 + j) := by
  have hbase :=
    floor_le_of_highCutoff T hT beta 4 gamma hcut
  have hfirst :
      gamma ≤ modeWeight T beta (primeMass T) 4 (N + 1) := by
    unfold modeWeight
    linarith only [hbase]
  have hmono := modeWeight_mono T hT beta (primeMass T) 4
  exact hfirst.trans (hmono (by omega : N + 1 ≤ N + 1 + j))

/-- General-T complete signed Schur return with every physical high
mode paid at its OWN original gamma-minus-prime weight. The weight
lower hypothesis has no hidden source sign or finite head PSD claim. -/
theorem weighted_bordered_trial_lower
    (T : ℝ) (hT : 0 < T) (beta : ℝ)
    {M N : ℕ} (x : ℕ → ℝ) (a : ℝ)
    {floor : ℝ} (hfloor : 0 < floor)
    (hweight : ∀ j : ℕ,
      floor ≤ modeWeight T beta (primeMass T) 4 (N + 1 + j))
    {g : ℝ → ℝ} (hg : MemLp g 2 volume)
    (hgm : Measurable g) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n + 1) = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    let trial : Fin M → ℝ := fun i => x (i.val + 1)
    let price : ℕ → ℝ := fun j =>
      (literalAugmentedRow M T x a beta (N + 1 + j)) ^ 2 /
        modeWeight T beta (primeMass T) 4 (N + 1 + j)
    Summable price ∧
    shiftedOddBorderedEnergy T beta (finiteSine T trial) a -
        (∑' j, price j) ≤
      shiftedOddBorderedEnergy T beta (finiteSine T trial + g) a := by
  let trial : Fin M → ℝ := fun i => x (i.val + 1)
  let F := borderedTrialOutput T beta trial a
  have hF := borderedTrialOutput_memLp T hT beta trial a
  have hFo := borderedTrialOutput_odd T beta trial a
  have hFs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → F t = 0 :=
    Eventually.of_forall (fun _ ht =>
      borderedTrialOutput_support T beta trial a ht)
  have hCross := highSine_pair_hasSum T hT hF hg hFo hgo hFs hgs hhead
  have hResid : ∀ j : ℕ,
      sineCoefficient T F (N + 1 + j) =
        literalAugmentedRow M T x a beta (N + 1 + j) := fun j => by
    rw [show N + 1 + j = N + j + 1 by omega]
    exact sineCoefficient_borderedTrialOutput T hT beta x a (N + j)
  have hFMass :=
    hasSum_source_sineCoefficient_sq_ae T hT hF
      (Eventually.of_forall hFo) hFs
  have hFSq :
      Summable (fun j : ℕ => sineCoefficient T F (N + 1 + j) ^ 2) := by
    simpa only [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
      (summable_nat_add_iff N).2 hFMass.summable
  dsimp only [F] at hResid hFSq
  simp_rw [hResid] at hCross hFSq
  have hprime :
      primeEnergy T g ≤ primeMass T * (∫ t : ℝ, ‖g t‖ ^ 2) := by
    have hp := (le_abs_self (primeEnergy T g)).trans
      (abs_primeEnergy_le T g hg.integrable_sq)
    simpa only [Real.norm_eq_abs, sq_abs] using hp
  have hboundary :
      -(4 * ∫ t in Ioo 0 T, g t ^ 2) ≤
        ∫ t in Ioo 0 T, ∫ s in Ioo 0 T,
          OddBoundaryNorm.oddKernel T t s * g t * g s :=
    OddBoundaryNorm.oddKernel_quadratic_ge T g hgm
      hg.integrable_sq.integrableOn
  obtain ⟨hTailSum, hTail⟩ :=
    shiftedOddCoreEnergy_ge_weightedTail T hT beta (primeMass T) 4
      hgm hg hgo hgs hhead henergy hprime hboundary
  obtain ⟨hPrice, hComplete⟩ :=
    weightedCompletion_tsum hfloor hweight hTailSum
      hCross.summable hFSq
  refine ⟨hPrice, ?_⟩
  rw [hCross.tsum_eq] at hComplete
  rw [shiftedOddBorderedEnergy_add_finiteSine T hT beta trial a
    hg hgm hgs henergy]
  have hPair : (∫ t : ℝ, F t * g t) =
      ∫ t : ℝ, g t * F t := by simp only [mul_comm]
  dsimp only [F] at hPair
  rw [hPair] at hComplete
  linarith only [hComplete, hTail]

/-- The explicit SOURCE cutoff, rather than an assumed family of
positive receiving weights, suffices for the general weighted return. -/
theorem weighted_bordered_trial_lower_of_cutoff
    (T : ℝ) (hT : 0 < T) (beta gamma : ℝ)
    (hgamma : 0 < gamma) {M N : ℕ} (x : ℕ → ℝ) (a : ℝ)
    (hcut : highCutoff T beta 4 gamma ≤ N)
    {g : ℝ → ℝ} (hg : MemLp g 2 volume)
    (hgm : Measurable g) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n + 1) = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    let trial : Fin M → ℝ := fun i => x (i.val + 1)
    let price : ℕ → ℝ := fun j =>
      (literalAugmentedRow M T x a beta (N + 1 + j)) ^ 2 /
        modeWeight T beta (primeMass T) 4 (N + 1 + j)
    Summable price ∧
    shiftedOddBorderedEnergy T beta (finiteSine T trial) a -
        (∑' j, price j) ≤
      shiftedOddBorderedEnergy T beta (finiteSine T trial + g) a := by
  exact weighted_bordered_trial_lower T hT beta x a hgamma
    (modeWeight_ge_highCutoff T hT beta gamma hcut)
    hg hgm hgo hgs hhead henergy

/-- The complete source weighted Schur lower bound for EVERY admissible
supported real odd input, with no supplied residual-price estimate or
low-block sign. The finite trial is the EXACT first N sine coordinates
of f; the mixed price includes ALL high modes via a convergent tsum. -/
theorem full_window_weighted_bordered_lower
    (T : ℝ) (hT : 0 < T) (beta gamma : ℝ)
    (hgamma : 0 < gamma) {N : ℕ}
    (hcut : highCutoff T beta 4 gamma ≤ N)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0))
    (a : ℝ) :
    let u : Fin N → ℝ := sineCoordinates T N f
    let x : ℕ → ℝ := inclusionTrial u
    let price : ℕ → ℝ := fun j =>
      (literalAugmentedRow N T x a beta (N + 1 + j)) ^ 2 /
        modeWeight T beta (primeMass T) 4 (N + 1 + j)
    Summable price ∧
      quadratic (shiftedBlock (borderedSourceMatrix T N) poleShiftMetric beta)
        (Sum.elim u fun _ => a) -
        (∑' j, price j) ≤ shiftedOddBorderedEnergy T beta f a := by
  let u : Fin N → ℝ := sineCoordinates T N f
  let x : ℕ → ℝ := inclusionTrial u
  let trial : Fin N → ℝ := fun i => x (i.val + 1)
  let g : ℝ → ℝ := removeSineHead T N f
  have htrial : trial = u := by
    funext i
    change inclusionTrial u (i.val + 1) = u i
    exact inclusionTrial_succ u i
  have hg : MemLp g 2 volume := removeSineHead_memLp T N hf
  obtain ⟨K, hK⟩ := finiteSine_exists_lipschitzWith T hT u
  have hgm : Measurable g := by
    change Measurable (f - finiteSine T u)
    exact hfm.sub hK.continuous.measurable
  have hgo : Function.Odd g := by
    intro t
    change f (-t) - finiteSine T u (-t) =
      -(f t - finiteSine T u t)
    rw [hfo t, finiteSine_odd T u t]
    ring
  have hgs :
      ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0 :=
    removeSineHead_support T N hfs
  have hhead (n : ℕ) (hn : n < N) :
      sineCoefficient T g (n + 1) = 0 :=
    sineCoefficient_removeSineHead_low T hT hf hn
  have hgEnergy :
      IntegrableOn
        (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0) := by
    change IntegrableOn
      (fun r => parityKernel 0 r *
        zeroShiftEnergy r (f - finiteSine T u)) (Ioi 0)
    exact integrableOn_gammaEnergy_sub_finiteSine T hT u hf hfm henergy
  have heq : finiteSine T trial + g = f := by
    funext t
    change finiteSine T trial t + (f t - finiteSine T u t) = f t
    rw [htrial]
    ring
  obtain ⟨hsummable, hbound⟩ :=
    weighted_bordered_trial_lower_of_cutoff
      T hT beta gamma hgamma x a hcut
      hg hgm hgo hgs hhead hgEnergy
  refine ⟨hsummable, ?_⟩
  rw [shiftedOddBorderedEnergy_finiteSine_eq_quadratic
    T hT beta trial a] at hbound
  rw [heq, htrial] at hbound
  exact hbound

/-- Return the complete mode-dependent lower bound to the ORIGINAL
unbordered odd zeta Weil quadratic by choosing its exact minimizing
pole coordinate. The negative -2*poleMoment² is already included
in the literal source matrix and all mixed rows. -/
theorem full_window_weighted_weil_lower
    (T : ℝ) (hT : 0 < T) (beta gamma : ℝ)
    (hgamma : 0 < gamma) {N : ℕ}
    (hcut : highCutoff T beta 4 gamma ≤ N)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    let a : ℝ := -2 * oddPoleMoment f
    let u : Fin N → ℝ := sineCoordinates T N f
    let x : ℕ → ℝ := inclusionTrial u
    let price : ℕ → ℝ := fun j =>
      (literalAugmentedRow N T x a beta (N + 1 + j)) ^ 2 /
        modeWeight T beta (primeMass T) 4 (N + 1 + j)
    Summable price ∧
      quadratic (shiftedBlock (borderedSourceMatrix T N) poleShiftMetric beta)
        (Sum.elim u fun _ => a) -
        (∑' j, price j) ≤ shiftedOddWeilEnergy T beta f := by
  let a : ℝ := -2 * oddPoleMoment f
  obtain ⟨hsummable, hbound⟩ :=
    full_window_weighted_bordered_lower
      T hT beta gamma hgamma hcut hf hfm hfo hfs henergy a
  have hreturn : shiftedOddBorderedEnergy T beta f a =
      shiftedOddWeilEnergy T beta f := by
    rw [shiftedOddBorderedEnergy_eq_weil_add_square]
    simp only [a, oddPoleMoment]
    ring
  rw [hreturn] at hbound
  exact ⟨hsummable, hbound⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddModeWeightedWholeWindowSchur
