/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

Base grwtsk/math@c8647ad4784c33299f63044bb2d8d3e107138252.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCofinalHighComplementSource

/-!
# Source-paid finite heads for the cofinal zeta stages

The existing cofinal source has two logically separate parts.

* `CofinalHighComplement.cofinal_highFloor` is the existing source theorem
  for the complete physical-L2
  high-complement floor at every dyadic stage, retaining the full prime mass,
  zero-extension boundary interaction and the exact stage shift.
* `OddLiteralWindow.shiftedOddWeilEnergy_nonneg_of_checked_lower` returns a
  checked rational bordered lower matrix to the entire literal pole-inclusive
  source, provided every finite source observation, residual row and remote
  allowance is paid.

This module joins those consumers without assuming the missing finite sign.
`StageHeadCertificate` contains a checkable finite sign witness and the exact
source comparisons required by the existing whole-window theorem; it has no
field asserting `StageLower`. A certificate at every stage therefore yields the
same-source cofinal nonnegativity theorem consumed by the zeta route.

The result is conditional on the existence of the finite certificates. This is a
source interoperability/assembly result; theorem-level novelty is not claimed. It does
not prove that such a certificate exists at any new stage, does not identify the
literal form with the completed zero formula, and does not prove RH or Dirichlet
GRH. The unit-window source modules remain the existing first-stage suppliers.

Proof comparison and hostile boundary. A positive finite compression alone would
not meet `source`: the complete intermediate residual and infinite remote
allowance occur in its quantified inequality. Positive branch-coverage heat also
does not meet `sign_checked`. Conversely, once these exact premises are supplied,
the proof is only the existing bordered square completion followed by the same-
source cofinal limit; no minimizer, prolate or weighted-norm substitution enters.

Representable evidence is kept separate from the analytic proposition. The
finite `StageHeadRecord` below reuses the existing dependent lossless codec; its
roundtrip does not encode arbitrary real test functions or establish any source
comparison. The exact countable coverage tail remains nonzero at every finite
cutoff and is stated separately from finite Euler sign heat.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal.CofinalHeadAssembly

open OddLiteralWindow OddWrapEnergy OddBorderedExpansion OddResidualSourceComparison OddResidualMajorant
open GRWTSK.LinearAlgebra.SchurObserver
open CofinalHighComplement
open OddRootProjection OddSineForm OddHighComplement OddShiftEnergy
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory
open GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage

/-- The retained physical head plus the actual auxiliary pole coordinate. -/
abbrev HeadIndex (j : ℕ) := Fin (stageHighIndex j) ⊕ Unit

/-- A complete, source-paid finite-head witness for one exact cofinal stage.

The sign is supplied by the existing Boolean finite certificate checker, not by
an assumed positivity field. The `source` field is the required interpretation
of the finite rational matrix against the unchanged literal source: trial error,
every intermediate residual row, and the complete remote allowance all remain
on the same side of the lower comparison. -/
structure StageHeadCertificate (j M L J : ℕ) (ν : Type*) [Fintype ν] where
  hNM : stageHighIndex j ≤ M
  hML : M ≤ L
  hL : 0 < L
  hLJ : L ≤ J
  s : ℝ
  hs : 0 < s
  trial : (Fin (stageHighIndex j) → ℝ) → ℝ → ℕ → ℝ
  trial_low : ∀ u a (i : Fin (stageHighIndex j)),
    trial u a (i.val + 1) = u i
  lower : Matrix (HeadIndex j) (HeadIndex j) ℚ
  sign : Certificate ℚ (HeadIndex j) Empty Empty ν
  sign_checked : check (matrixProblem lower) sign = true
  source : ∀ u a, ∃ observed error finiteGram remote : ℝ,
    |shiftedOddBorderedEnergy (stageRadius j) (stageShift j)
      (finiteSine (stageRadius j) (fun i : Fin M => trial u a (i.val + 1))) a -
        observed| ≤ error ∧
    (∑ n ∈ Finset.range (L - stageHighIndex j),
      (literalAugmentedRow M (stageRadius j) (trial u a) a (stageShift j)
        (stageHighIndex j + 1 + n)) ^ 2) ≤ finiteGram ∧
    completeRemoteAllowance M L J (stageRadius j) (trial u a) a s ≤ remote ∧
    quadratic (fun i k => (lower i k : ℝ)) (Sum.elim u (fun _ => a)) ≤
      observed - error - (finiteGram + remote) / (1 / 5 : ℝ)

/-- The source-paid finite head and the existing complete high-floor theorem return
to the exact pole-inclusive `StageLower j`. -/
theorem stageLower_of_certificate {j M L J : ℕ} {ν : Type*} [Fintype ν]
    (cert : StageHeadCertificate j M L J ν) : StageLower j := by
  intro f hf hfm hfo hfs henergy
  simpa [stageRadius, stageShift] using
    (shiftedOddWeilEnergy_nonneg_of_checked_lower
      cert.hNM cert.hML cert.hL cert.hLJ
      (stageRadius j) (stageRadius_pos j) (stageShift j) cert.s (1 / 5 : ℝ)
      cert.hs (by norm_num) (le_refl _)
      cert.trial cert.trial_low cert.lower cert.sign cert.sign_checked cert.source
      hf hfm hfo hfs henergy)

/-- Existence of an actual finite witness, retaining its certificate index type. -/
def HasStageHeadCertificate (j : ℕ) : Prop :=
  ∃ (M L J : ℕ) (ν : Type) (inst : Fintype ν),
    Nonempty (@StageHeadCertificate j M L J ν inst)

/-- Existential packaging does not change the mathematical consumer. -/
theorem stageLower_of_hasCertificate {j : ℕ}
    (h : HasStageHeadCertificate j) : StageLower j := by
  rcases h with ⟨M, L, J, ν, inst, ⟨cert⟩⟩
  exact @stageLower_of_certificate j M L J ν inst cert

/-- A source-paid certificate at every stage supplies every exact dyadic lower
bound, with no finite prefix promoted to a universal family. -/
theorem all_stageLower_of_certificate_family
    (hcert : ∀ j : ℕ, HasStageHeadCertificate j) :
    ∀ j : ℕ, StageLower j :=
  fun j => stageLower_of_hasCertificate (hcert j)

/-- Forward replay to the unchanged literal zeta source on any compact support.
The separate completed-source/root bridge is not asserted here. -/
theorem unshifted_nonnegative_of_certificate_family
    (hcert : ∀ j : ℕ, HasStageHeadCertificate j)
    {T : ℝ} {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T 0 f :=
  nonnegative_of_stageLower (all_stageLower_of_certificate_family hcert)
    hf hfm hfo hfs henergy

/-! ## Representable evidence and coverage

The analytic structure above contains real functions and quantified source
comparisons and is not assigned a finite encoding. A finite producer may instead
serialize its exact descriptor tokens and rational observations together, then
prove that their interpretation supplies `StageHeadCertificate`.
-/

/-- Finite source/role/stage tokens with an exact rational payload. The caller
retains the source revision and interpretation convention in the token list. -/
abbrev StageHeadRecord := Sigma (fun _ : List ℕ => List ℚ)

/-- Canonical finite record for a stage and its three retained dimensions. -/
def stageHeadRecord (j M L J : ℕ) (payload : List ℚ) : StageHeadRecord :=
  ⟨[j, stageHighIndex j, M, L, J], payload⟩

/-- Exact reconstruction of every representable finite stage record. -/
theorem stageHeadRecord_roundtrip (j M L J : ℕ) (payload : List ℚ) :
    cofinalStageRecordCodec.decode
      (cofinalStageRecordCodec.encode (stageHeadRecord j M L J payload)) =
        some (stageHeadRecord j M L J payload) :=
  cofinalStageRecord_roundtrip _

/-- Coverage heat reaches the stage label but does not establish its certificate. -/
theorem every_stageHead_label_covered
    {x : ℕ → ℝ} (hx : ∀ n, 0 ≤ x n)
    (hm : 0 < ∑' n : ℕ, x n) (j : ℕ) :
    ∃ n : ℕ, Encodable.decode n = some j ∧
      0 < stageCoverageStep x n :=
  every_cofinalStage_covered hx hm j

/-- The complete unobserved coverage tail remains explicit at every cutoff. -/
theorem stageHeadCoverage_tail (J : ℕ) :
    (∑' k : ℕ, stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  cofinalStageCoverage_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal.CofinalHeadAssembly
