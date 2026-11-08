/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@0d7adb3bca0a87868e928b625bdad1ba1b281552.
Canonical workflow source: grwtsk/noeaaeue@
e6d3f58a62c9285a3bd1060f7018552b0788f492.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCofinalHeadAssembly
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCertificatePacket
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignDyadicLDL

/-!
# Flexible source-paid heads for the cofinal zeta stages

`CofinalHeadAssembly.StageHeadCertificate` deliberately uses the canonical
cutoff `stageHighIndex j` and the existing rational Gram checker.  The actual
radius-two source chain has a second legitimate shape:

* an independently proved physical high floor at a possibly smaller cutoff;
* a source-paid bordered lower matrix at that same cutoff; and
* an exact dyadic weighted-LDL sign certificate.

The whole-window consumer already accepts that data through
`shiftedOddWeilEnergy_nonneg_of_positive_lower`.  This file exposes the missing
typed adapter without changing the arithmetic source, the physical norm, the
negative pole, the support, or any quantifier.

`FlexibleStageHeadSource` contains only the source interpretation data.  The
high-floor theorem and the finite sign remain separate arguments.  Two
consumers return either the existing Gram check or the exact dyadic LDL check
to `StageLower j`.  The canonical cofinal packet is recovered as a special
case.

The radius-two theorem below fixes the assembly boundary as well: a genuine
specialized `StageLower 1` may be combined with canonical source-paid
certificates at every other stage.  It does not construct
`RadiusTwoCertificatePacket.Accepted`, the mode-64 high floor, any later-stage
certificate, or any character-sector sign.  Positive Markov diffusion,
coverage heat, and lossless coding are not used as arithmetic sign premises.
No RH or Dirichlet-GRH theorem is asserted.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal.CofinalFlexibleHead

open OddLiteralWindow
open CofinalHighComplement
open OddRootProjection OddSineForm OddHighComplement OddShiftEnergy
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- A retained physical head of arbitrary proved cutoff, together with the
actual auxiliary zeta-pole coordinate. -/
abbrev HeadIndexAt (N : ℕ) := Fin N ⊕ Unit

/-- Source interpretation for one finite bordered lower matrix.

No positivity or high-floor assertion is stored here.  The quantified
comparison retains the finite trial error, every intermediate residual row,
and the complete remote allowance on the same literal source. -/
structure FlexibleStageHeadSource (j N M L J : ℕ) where
  hNM : N ≤ M
  hML : M ≤ L
  hL : 0 < L
  hLJ : L ≤ J
  s : ℝ
  hs : 0 < s
  trial : (Fin N → ℝ) → ℝ → ℕ → ℝ
  trial_low : ∀ u a (i : Fin N), trial u a (i.val + 1) = u i
  lower : Matrix (HeadIndexAt N) (HeadIndexAt N) ℚ
  source : ∀ u a, ∃ observed error finiteGram remote : ℝ,
    |shiftedOddBorderedEnergy (stageRadius j) (stageShift j)
      (finiteSine (stageRadius j) (fun i : Fin M => trial u a (i.val + 1))) a -
        observed| ≤ error ∧
    (∑ n ∈ Finset.range (L - N),
      (literalAugmentedRow M (stageRadius j) (trial u a) a (stageShift j)
        (N + 1 + n)) ^ 2) ≤ finiteGram ∧
    completeRemoteAllowance M L J (stageRadius j) (trial u a) a s ≤ remote ∧
    quadratic (fun i k => (lower i k : ℝ)) (Sum.elim u (fun _ => a)) ≤
      observed - error - (finiteGram + remote) / (1 / 5 : ℝ)

/-- An independently proved high floor and a genuine finite lower sign return
the flexible packet to the exact pole-inclusive cofinal stage. -/
theorem stageLower_of_positiveLower {j N M L J : ℕ}
    (packet : FlexibleStageHeadSource j N M L J)
    (hfloor : HighFloor (stageRadius j) (stageShift j) (1 / 5 : ℝ) N)
    (hpositive : ∀ v,
      0 ≤ quadratic (fun i k => (packet.lower i k : ℝ)) v) :
    StageLower j := by
  intro f hf hfm hfo hfs henergy
  simpa [stageRadius, stageShift] using
    (shiftedOddWeilEnergy_nonneg_of_positive_lower
      packet.hNM packet.hML packet.hL packet.hLJ
      (stageRadius j) (stageRadius_pos j) (stageShift j)
      packet.s (1 / 5 : ℝ) packet.hs (by norm_num)
      hfloor packet.trial packet.trial_low
      (fun i k => (packet.lower i k : ℝ)) hpositive packet.source
      hf hfm hfo hfs henergy)

/-- The existing rational Gram checker is one sound finite sign supplier for a
flexible source packet. -/
theorem stageLower_of_checkedGram {j N M L J : ℕ}
    {ν : Type*} [Fintype ν]
    (packet : FlexibleStageHeadSource j N M L J)
    (hfloor : HighFloor (stageRadius j) (stageShift j) (1 / 5 : ℝ) N)
    (sign : Certificate ℚ (HeadIndexAt N) Empty Empty ν)
    (hsign : check (matrixProblem packet.lower) sign = true) :
    StageLower j :=
  stageLower_of_positiveLower packet hfloor
    (checked_rational_matrix_nonneg packet.lower sign hsign)

/-- The exact weighted dyadic LDL checker is a second sound sign supplier.

The source packet must interpret precisely the checked dyadic target.  Any
comparison from an assembled interval lower matrix to this target remains an
explicit source-construction theorem; it is not hidden in this consumer. -/
theorem stageLower_of_checkedDyadicLDL {j N M L J : ℕ}
    (packet : FlexibleStageHeadSource j N M L J)
    (hfloor : HighFloor (stageRadius j) (stageShift j) (1 / 5 : ℝ) N)
    (bits : ℕ)
    (target factor : Matrix (HeadIndexAt N) (HeadIndexAt N) ℤ)
    (pivots : HeadIndexAt N → ℤ)
    (hlower : packet.lower =
      GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL.targetValue bits target)
    (hsign :
      GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL.check
        target factor pivots = true) :
    StageLower j := by
  apply stageLower_of_positiveLower packet hfloor
  intro v
  have h :=
    GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL.check_quadratic_nonneg
      bits hsign v
  simpa only [hlower, Matrix.map_apply, Rat.coe_castHom] using h

/-- Forget only the canonical-cutoff restriction of the previous assembly.
No source comparison or sign evidence is changed. -/
def ofCanonical {j M L J : ℕ} {ν : Type*} [Fintype ν]
    (cert :
      CofinalHeadAssembly.StageHeadCertificate j M L J ν) :
    FlexibleStageHeadSource j (stageHighIndex j) M L J where
  hNM := cert.hNM
  hML := cert.hML
  hL := cert.hL
  hLJ := cert.hLJ
  s := cert.s
  hs := cert.hs
  trial := cert.trial
  trial_low := cert.trial_low
  lower := cert.lower
  source := cert.source

/-- The old canonical packet is recovered through the flexible consumer with
the unchanged complete high-complement theorem. -/
theorem stageLower_of_canonical {j M L J : ℕ}
    {ν : Type*} [Fintype ν]
    (cert :
      CofinalHeadAssembly.StageHeadCertificate j M L J ν) :
    StageLower j :=
  stageLower_of_checkedGram (ofCanonical cert)
    (cofinal_highFloor j) cert.sign cert.sign_checked

/-- One source-valid specialized stage may be spliced into a canonical
certificate family without relabelling it as a canonical-cutoff packet. -/
theorem all_stageLower_of_stage_one_and_canonical_rest
    (hOne : StageLower 1)
    (hrest : ∀ j : ℕ, j ≠ 1 →
      CofinalHeadAssembly.HasStageHeadCertificate j) :
    ∀ j : ℕ, StageLower j := by
  intro j
  by_cases hj : j = 1
  · subst j
    exact hOne
  · exact CofinalHeadAssembly.stageLower_of_hasCertificate (hrest j hj)

/-- Return the mixed supplier family to the unchanged literal zeta source.
The completed-zero/root bridge remains separate. -/
theorem unshifted_nonnegative_of_stage_one_and_canonical_rest
    (hOne : StageLower 1)
    (hrest : ∀ j : ℕ, j ≠ 1 →
      CofinalHeadAssembly.HasStageHeadCertificate j)
    {T : ℝ} {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy :
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T 0 f :=
  nonnegative_of_stageLower
    (all_stageLower_of_stage_one_and_canonical_rest hOne hrest)
    hf hfm hfo hfs henergy

/-- Direct radius-two adapter.  Every arithmetic premise of the specialized
packet remains explicit, including the actual mode-64 high floor. -/
theorem unshifted_nonnegative_of_radiusTwo_and_canonical_rest
    (p : RadiusTwoCertificatePacket.Data)
    (ha : RadiusTwoCertificatePacket.Accepted p)
    (hfloor : HighFloor 2 (-1 / 2) (1 / 5) 64)
    (hrest : ∀ j : ℕ, j ≠ 1 →
      CofinalHeadAssembly.HasStageHeadCertificate j)
    {T : ℝ} {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy :
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T 0 f :=
  unshifted_nonnegative_of_stage_one_and_canonical_rest
    (RadiusTwoCertificatePacket.stageLower_one p ha hfloor) hrest
    hf hfm hfo hfs henergy

end GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal.CofinalFlexibleHead
