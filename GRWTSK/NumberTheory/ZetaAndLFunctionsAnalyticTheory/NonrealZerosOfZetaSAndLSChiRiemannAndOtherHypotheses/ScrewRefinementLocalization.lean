/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib declarations retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ScrewKernelRefinement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CertifiedZeroHeight
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.LinearMomentComponents
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.RadicalLogEntropy
import GRWTSK.FunctionalAnalysis.NormedLinearSpacesAndBanachSpacesBanachLattices.ObservationSandwich

/-!
# Returned RS errors bind the actual finite-zero-bin observation graph

Apply, rather than restate, the existing source-preserving RS estimate to the
literal multiplicity-weighted screw payload. The resulting graph sandwich
compares the actual signed scalar readouts. Its upper-minus-lower relation marks
unresolved comparisons, NOT certified zeta zeros. Root validity, analytic tails,
jet remainder and multiplicity-completeness remain at their original scopes.

The radical theorem applies the already proved prime-log identity to support
refinement; it never substitutes radical data for multiplicity or source identity.
SOURCE_PROOF_CANDIDATE / compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Zeta.Riemann.ScrewRefinementLocalization

open GRWTSK.Algebra.LinearAlgebra.LinearMap.ReedSolomonRefinement
open GRWTSK.NumberTheory.Zeta.Riemann.ScrewKernelRefinement
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich

/-- The existing terminal error allowance, with all decoder-conditioning factors. -/
def returnedBudget {ι : Type*} (s : Finset ι)
    (parent : QuadraticEvaluationCode ℂ) (child : ι → QuadraticEvaluationCode ℂ)
    (seam : ℝ) (childError : ι → ℝ) : ℝ :=
  ‖screwFunctional.comp parent.decode‖ * seam +
    ∑ i ∈ s, ‖screwFunctional.comp (child i).decode‖ * childError i

/-- Direct application of the pre-existing error theorem to the original screw readout. -/
theorem returned_screw_error {ι : Type*} (s : Finset ι)
    (parent : QuadraticEvaluationCode ℂ) (child : ι → QuadraticEvaluationCode ℂ)
    (g : ℝ → ℂ) (childFunction : ι → ℝ → ℂ) (t u : ℝ)
    (parentData : Symbols) (childData : ι → Symbols)
    (seam : ℝ) (childError : ι → ℝ)
    (coverage : CoverageCertificate s (sourcePayload g t u)
      (fun i => sourcePayload (childFunction i) t u))
    (seamBound : ‖parentData - ∑ i ∈ s,
      transport parent.toCode (child i).toCode (childData i)‖ ≤ seam)
    (childBound : ∀ i ∈ s,
      ‖childData i - (child i).encode (sourcePayload (childFunction i) t u)‖ ≤ childError i) :
    ‖screwFunctional (parent.decode parentData) - screwContribution g t u‖ ≤
      returnedBudget s parent child seam childError := by
  simpa only [returnedBudget, screwContribution, QuadraticEvaluationCode.toCode] using
    source_error_bound s parent.toCode (fun i => (child i).toCode)
      screwFunctional (sourcePayload g t u)
      (fun i => sourcePayload (childFunction i) t u)
      parentData childData childError seam coverage seamBound childBound

/-- The actual signed source is a two-sample observation of its quadratic encoding.
Nodes 0 and 1 are hypotheses about the supplied encoder, not assumed conventions. -/
theorem screw_from_zero_one_samples (code : QuadraticEvaluationCode ℂ)
    (i0 i1 : Fin 4) (h0 : code.nodes i0 = 0) (h1 : code.nodes i1 = 1)
    (x : SourcePayload) :
    screwFunctional x = 2 * code.encode x i0 - code.encode x i1 := by
  rw [screwFunctional_apply, code.encode_apply, code.encode_apply, h0, h1]
  ring

/-- Target-specific uncertainty. The other two symbols remain available for audits,
but their errors need not be paid to recover this particular scalar. -/
theorem two_sample_screw_error (code : QuadraticEvaluationCode ℂ)
    (i0 i1 : Fin 4) (h0 : code.nodes i0 = 0) (h1 : code.nodes i1 = 1)
    (x : SourcePayload) (received : Symbols) (e0 e1 : ℝ)
    (bound0 : ‖received i0 - code.encode x i0‖ ≤ e0)
    (bound1 : ‖received i1 - code.encode x i1‖ ≤ e1) :
    ‖2 * received i0 - received i1 - screwFunctional x‖ ≤ 2 * e0 + e1 := by
  rw [screw_from_zero_one_samples code i0 i1 h0 h1]
  have hid : 2 * received i0 - received i1 -
      (2 * code.encode x i0 - code.encode x i1) =
      2 * (received i0 - code.encode x i0) -
        (received i1 - code.encode x i1) := by ring
  rw [hid]
  calc
    ‖(2 : ℂ) * (received i0 - code.encode x i0) -
        (received i1 - code.encode x i1)‖ ≤
        ‖(2 : ℂ) * (received i0 - code.encode x i0)‖ +
          ‖received i1 - code.encode x i1‖ := norm_sub_le _ _
    _ = 2 * ‖received i0 - code.encode x i0‖ +
        ‖received i1 - code.encode x i1‖ := by rw [norm_mul]; norm_num
    _ ≤ 2 * e0 + e1 := by linarith

/-- Both sample indices are necessarily different; no confluent-node premise is hidden. -/
theorem zero_one_sample_indices_distinct (code : QuadraticEvaluationCode ℂ)
    (i0 i1 : Fin 4) (h0 : code.nodes i0 = 0) (h1 : code.nodes i1 = 1) : i0 ≠ i1 := by
  intro h
  subst i1
  have bad : (0 : ℂ) = 1 := h0.symm.trans h1
  exact zero_ne_one bad

/-- Direct application to the literal finite zero-bin signed observable. No global
zeta reconstruction, root existence, or omitted-zero tail is inferred. -/
def twoSampleZeroBinSandwich {V α : Type*}
    (code : V → QuadraticEvaluationCode ℂ) (i0 i1 : Fin 4)
    (h0 : ∀ v, (code v).nodes i0 = 0) (h1 : ∀ v, (code v).nodes i1 = 1)
    (bin : V → Finset α) (root : α → ℂ) (multiplicity : α → ℕ)
    (t u : ℝ) (received : V → Symbols) (e0 e1 : V → ℝ)
    (bound0 : ∀ v, ‖received v i0 -
      (code v).encode (zeroBinSourcePayload (bin v) root multiplicity t u) i0‖ ≤ e0 v)
    (bound1 : ∀ v, ‖received v i1 -
      (code v).encode (zeroBinSourcePayload (bin v) root multiplicity t u) i1‖ ≤ e1 v)
    (guard : EdgeRelation V) (tolerance : V → V → ℝ) : Sandwich V :=
  fromErrorBounds guard
    (fun v => screwContribution (zeroBinFunction (bin v) root multiplicity) t u)
    (fun v => 2 * received v i0 - received v i1)
    (fun v => 2 * e0 v + e1 v) tolerance (fun v =>
      two_sample_screw_error (code v) i0 i1 (h0 v) (h1 v)
        (zeroBinSourcePayload (bin v) root multiplicity t u)
        (received v) (e0 v) (e1 v) (bound0 v) (bound1 v))

/-- Construct a sandwich for literal zero-bin readouts from proved RS source-error inputs.
The guard is an independently supplied source/sector/transport compatibility relation;
no such relationship is inferred from matching radicals, syndromes, or nearby values. -/
def zeroBinSandwich {V ι α : Type*} (s : Finset ι)
    (parent : V → QuadraticEvaluationCode ℂ)
    (child : V → ι → QuadraticEvaluationCode ℂ)
    (bin : V → Finset α) (root : α → ℂ) (multiplicity : α → ℕ)
    (childFunction : V → ι → ℝ → ℂ) (t u : ℝ)
    (parentData : V → Symbols) (childData : V → ι → Symbols)
    (seam : V → ℝ) (childError : V → ι → ℝ)
    (coverage : ∀ v, CoverageCertificate s
      (zeroBinSourcePayload (bin v) root multiplicity t u)
      (fun i => sourcePayload (childFunction v i) t u))
    (seamBound : ∀ v, ‖parentData v - ∑ i ∈ s,
      transport (parent v).toCode (child v i).toCode (childData v i)‖ ≤ seam v)
    (childBound : ∀ v i, i ∈ s →
      ‖childData v i - (child v i).encode (sourcePayload (childFunction v i) t u)‖ ≤
        childError v i)
    (guard : EdgeRelation V) (tolerance : V → V → ℝ) : Sandwich V :=
  fromErrorBounds guard
    (fun v => screwContribution (zeroBinFunction (bin v) root multiplicity) t u)
    (fun v => screwFunctional ((parent v).decode (parentData v)))
    (fun v => returnedBudget s (parent v) (child v) (seam v) (childError v))
    tolerance (fun v => returned_screw_error s (parent v) (child v)
      (zeroBinFunction (bin v) root multiplicity) (childFunction v) t u
      (parentData v) (childData v) (seam v) (childError v)
      (coverage v) (seamBound v) (childBound v))

/-- Existing radical-log theorem prices precisely the NEW distinct-prime support.
Repeated prime powers produce no new support charge and still require multiplicity data. -/
theorem radical_log_increment {q r : ℕ}
    (support : q.primeFactors ⊆ r.primeFactors) :
    (∑ p ∈ r.primeFactors \ q.primeFactors, Real.log (p : ℝ)) =
      Real.log ((UniqueFactorizationMonoid.radical r : ℕ) : ℝ) -
        Real.log ((UniqueFactorizationMonoid.radical q : ℕ) : ℝ) := by
  rw [← GRWTSK.NumberTheory.Primes.RadicalLogEntropy.sum_log_primeFactors r,
    ← GRWTSK.NumberTheory.Primes.RadicalLogEntropy.sum_log_primeFactors q]
  have h := Finset.sum_sdiff (f := fun p : ℕ => Real.log (p : ℝ)) support
  linarith

/-- Equal prime support gives the same radical-log observation, not equal source states. -/
theorem radical_log_eq_of_same_support {q r : ℕ}
    (support : q.primeFactors = r.primeFactors) :
    Real.log ((UniqueFactorizationMonoid.radical q : ℕ) : ℝ) =
      Real.log ((UniqueFactorizationMonoid.radical r : ℕ) : ℝ) := by
  rw [← GRWTSK.NumberTheory.Primes.RadicalLogEntropy.sum_log_primeFactors q,
    ← GRWTSK.NumberTheory.Primes.RadicalLogEntropy.sum_log_primeFactors r, support]

/-- Apply the generic cell exclusion to the actual zeta function, retaining its REAL
variation and sample-error suppliers. This is not an interpolation estimate for zeta. -/
theorem zeta_cell_nonzero_of_certified_variation
    (cell : Set ℂ) (center sample : ℂ) (radius variation sampleError : ℝ)
    (hvariation : 0 ≤ variation)
    (hcell : ∀ z ∈ cell, ‖z - center‖ ≤ radius)
    (hsource : ∀ z ∈ cell,
      ‖riemannZeta z - riemannZeta center‖ ≤ variation * ‖z - center‖)
    (hsample : ‖sample - riemannZeta center‖ ≤ sampleError)
    (margin : sampleError + variation * radius < ‖sample‖) :
    ∀ z ∈ cell, riemannZeta z ≠ 0 :=
  cell_nonzero_of_variation riemannZeta cell center sample radius variation sampleError
    hvariation hcell hsource hsample margin

/-- Decimal stopping uses the already-certified SAME height in every producer interval.
Neither an overlap graph nor a radical label supplies those membership hypotheses. -/
theorem synchronized_height_digits {Producer : Type*} [Fintype Producer]
    (consensus : CertifiedZeroHeight.ConsensusCertificate Producer)
    (digits : ℕ) (stable : consensus.consensus.DigitsCertified digits)
    {height : ℝ} (sameHeight : ∀ producer,
      height ∈ (consensus.interval producer).carrier) :
    ⌊CertifiedZeroHeight.ClosedInterval.decimalScale digits * height⌋ =
      consensus.consensus.digitValue digits :=
  consensus.common_digit digits stable sameHeight

end GRWTSK.NumberTheory.Zeta.Riemann.ScrewRefinementLocalization
