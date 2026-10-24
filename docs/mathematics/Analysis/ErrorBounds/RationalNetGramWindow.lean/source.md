# Complete source: GRWTSK.Analysis.ErrorBounds.RationalNetGramWindow

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8870dc4933603c71b20c05ccb6a6235f0017f5c` · SHA-256 `11981fb980d6ec1cb948d6daccb93587dcc91f0b12a90c316de49523d4eb1f6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalGramModelDefect

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# Cancel common injections before enclosing the complete net forcing

Source and model defects contain the SAME proposed injection. Their difference
is the complete net residual forcing, so that injection can be cancelled BEFORE
interval arithmetic. Enclosing its two occurrences separately instead introduces
twice its radius at each entry. This is an algebraic identity, not cancellation
inferred from two equal disks or from two inputs with the same name.

Two rational producers are provided: subtract the injection-free path defects,
or transport independently enclosed complete residuals directly. The latter can
use separately proved correlated residual enclosures. It is not asserted always
tighter than the former: other repeated uncertainties may still overestimate.
The guaranteed interval improvement concerns removal of the common injection
from the SAME two precomputed path disks.

The signed finite-window consumer uses a lower bound on the joint net observation
instead of separate source-lower and model-upper bounds. The SAME feature Gram,
initial residual, adjoint correction and terminal source tail remain present.
No model-update error is omitted and no favorable arithmetic sign is assumed.
Input containment and source identification remain independent obligations.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No choice-free dependency audit.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalNetGramWindow

open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
open GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual
open GRWTSK.Analysis.ErrorBounds.AdjointGramWitnessWindow
open GRWTSK.Analysis.ErrorBounds.InexactAdjointGramWindow
open GRWTSK.Analysis.ErrorBounds.RationalComplexDisk
open GRWTSK.Analysis.ErrorBounds.RationalGramModelDefect

variable {ι τ κ : Type*} [ιFinite : Fintype ι] [τFinite : Fintype τ] [κFinite : Fintype κ]

/-- Cancel the common injection before separately enclosing the two path differences. -/
def cancelledPathDisk (gain : τ → ι → Disk) (source model : ι × ι → Disk)
    (nextSource nextModel : τ × τ → Disk) (p : τ × τ) : Disk :=
  diskSub (diskSub (nextSource p) (transportDisk gain source p))
    (diskSub (nextModel p) (transportDisk gain model p))

/-- Alternative producer using enclosures of the COMPLETE source-minus-model residuals. -/
def netResidualDisk (gain : τ → ι → Disk) (residual : ι × ι → Disk)
    (nextResidual : τ × τ → Disk) (p : τ × τ) : Disk :=
  diskSub (nextResidual p) (transportDisk gain residual p)

/-- The cancelled expression has the same center and removes exactly two injection radii. -/
theorem shared_injection_disk_identity (a b injection : Disk) :
    (diskSub (diskSub a injection) (diskSub b injection)).re = (diskSub a b).re ∧
    (diskSub (diskSub a injection) (diskSub b injection)).im = (diskSub a b).im ∧
    (diskSub (diskSub a injection) (diskSub b injection)).radius =
      (diskSub a b).radius + 2 * injection.radius := by
  refine ⟨?_, ?_, ?_⟩ <;> simp only [diskSub, diskAdd, diskNeg] <;> ring

/-- For these SAME base disks, eliminating a nonnegative shared radius narrows both endpoints.
This statement alone supplies no semantic identification of the two injection values. -/
theorem shared_injection_interval_improves (a b injection : Disk)
    (radiusNonnegative : 0 ≤ injection.radius) :
    lower (diskSub (diskSub a injection) (diskSub b injection)) ≤ lower (diskSub a b) ∧
      upper (diskSub a b) ≤ upper (diskSub (diskSub a injection) (diskSub b injection)) := by
  dsimp [lower, upper, diskSub, diskAdd, diskNeg]
  constructor <;> linarith

noncomputable section

/-- Complete signed forcing, defined without an auxiliary injection. -/
def netResidual (gain : τ → ι → ℂ) (residual : ι × ι → ℂ)
    (nextResidual : τ × τ → ℂ) (p : τ × τ) : ℂ :=
  nextResidual p - complexTransport gain residual p

omit τFinite in
/-- Linearity identifies this forcing with the difference of the two injection-free defects. -/
theorem netResidual_eq_path_difference [Fintype τ] (gain : τ → ι → ℂ)
    (source model : ι × ι → ℂ) (nextSource nextModel : τ × τ → ℂ) (p : τ × τ) :
    netResidual gain (fun q => source q - model q) (fun q => nextSource q - nextModel q) p =
      (nextSource p - complexTransport gain source p) -
        (nextModel p - complexTransport gain model p) := by
  simp only [netResidual, complexTransport, mul_sub, sub_mul, Finset.sum_sub_distrib]
  ring

/-- This cancellation uses one actual common injection, not equality of enclosure data. -/
theorem netResidual_eq_common_defects (gain : τ → ι → ℂ)
    (source model : ι × ι → ℂ) (nextSource nextModel injection : τ × τ → ℂ) (p : τ × τ) :
    netResidual gain (fun q => source q - model q) (fun q => nextSource q - nextModel q) p =
      (nextSource p - complexTransport gain source p - injection p) -
        (nextModel p - complexTransport gain model p - injection p) := by
  rw [netResidual_eq_path_difference]
  ring

/-- Different actual injections leave a remainder even when their enclosing disks coincide. -/
theorem unequal_injection_remainder (a b leftInjection rightInjection : ℂ) :
    (a - leftInjection) - (b - rightInjection) =
      (a - b) + (rightInjection - leftInjection) := by
  ring

/-- A conservative residual enclosure is available from the actual source and feature Gram. -/
theorem source_gram_residual_contains (sourceDisk : ι × ι → Disk)
    (featureDisk : κ → ι → Disk) (source : ι × ι → ℂ) (feature : κ → ι → ℂ)
    (sourceEnclosure : ∀ p, Contains (sourceDisk p) (source p))
    (featureEnclosure : ∀ k i, Contains (featureDisk k i) (feature k i)) (p : ι × ι) :
    Contains (diskSub (sourceDisk p) (gramDisk featureDisk p)) (source p - complexGram feature p) :=
  contains_sub (sourceEnclosure p) (gramDisk_contains featureDisk feature featureEnclosure p)

/-- The injection-free path producer still encloses the FULL net forcing. -/
theorem cancelledPathDisk_contains (gainDisk : τ → ι → Disk)
    (sourceDisk modelDisk : ι × ι → Disk) (nextSourceDisk nextModelDisk : τ × τ → Disk)
    (gain : τ → ι → ℂ) (source model : ι × ι → ℂ) (nextSource nextModel : τ × τ → ℂ)
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (sourceEnclosure : ∀ p, Contains (sourceDisk p) (source p))
    (modelEnclosure : ∀ p, Contains (modelDisk p) (model p))
    (nextSourceEnclosure : ∀ p, Contains (nextSourceDisk p) (nextSource p))
    (nextModelEnclosure : ∀ p, Contains (nextModelDisk p) (nextModel p)) (p : τ × τ) :
    Contains (cancelledPathDisk gainDisk sourceDisk modelDisk nextSourceDisk nextModelDisk p)
      (netResidual gain (fun q => source q - model q) (fun q => nextSource q - nextModel q) p) := by
  rw [netResidual_eq_path_difference]
  exact contains_sub
    (contains_sub (nextSourceEnclosure p)
      (transportDisk_contains gainDisk sourceDisk gain source gainEnclosure sourceEnclosure p))
    (contains_sub (nextModelEnclosure p)
      (transportDisk_contains gainDisk modelDisk gain model gainEnclosure modelEnclosure p))

/-- Independently supplied residual enclosures may preserve correlations unavailable in separate disks. -/
theorem netResidualDisk_contains (gainDisk : τ → ι → Disk)
    (residualDisk : ι × ι → Disk) (nextResidualDisk : τ × τ → Disk)
    (gain : τ → ι → ℂ) (residual : ι × ι → ℂ) (nextResidual : τ × τ → ℂ)
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (residualEnclosure : ∀ p, Contains (residualDisk p) (residual p))
    (nextEnclosure : ∀ p, Contains (nextResidualDisk p) (nextResidual p)) (p : τ × τ) :
    Contains (netResidualDisk gainDisk residualDisk nextResidualDisk p)
      (netResidual gain residual nextResidual p) :=
  contains_sub (nextEnclosure p)
    (transportDisk_contains gainDisk residualDisk gain residual gainEnclosure residualEnclosure p)

/-- The lower endpoint bounds the JOINT signed forcing observation, not two unrelated estimates. -/
theorem net_readout_lower (testDisk : τ → Disk) (forcingDisk : τ × τ → Disk)
    (test : τ → ℂ) (gain : τ → ι → ℂ)
    (residual : ι × ι → ℂ) (nextResidual : τ × τ → ℂ)
    (testEnclosure : ∀ i, Contains (testDisk i) (test i))
    (forcingEnclosure : ∀ p, Contains (forcingDisk p) (netResidual gain residual nextResidual p)) :
    (lower (readoutDisk testDisk forcingDisk) : ℝ) ≤
      (complexReadout test (netResidual gain residual nextResidual)).re :=
  (contains_real_interval (readoutDisk_contains testDisk forcingDisk test
    (netResidual gain residual nextResidual) testEnclosure forcingEnclosure)).1

section Window

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- Net forcing is tied to the SAME actual source and positive feature model. -/
def gramNetForcing (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (n : ℕ) : I (n + 1) × I (n + 1) → ℂ :=
  netResidual (gain n) (fun p => source n p - complexGram (feature n) p)
    (fun p => source (n + 1) p - complexGram (feature (n + 1)) p)

/-- Exact compatibility with the previous source-defect minus model-defect formulation. -/
theorem gramNetForcing_eq_defects (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (n : ℕ) (p : I (n + 1) × I (n + 1)) :
    gramNetForcing gain source feature n p =
      complexMismatch gain source injection n p - modelDefect gain feature injection n p := by
  exact netResidual_eq_common_defects (gain n) (source n) (complexGram (feature n))
    (source (n + 1)) (complexGram (feature (n + 1))) (injection n) p

/-- The previous inexact-adjoint telescope consumes canonical net forcing without any update premise. -/
theorem gram_net_window_identity
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (test : ∀ n, I n → ℂ) (k : ℕ) (actual tail : ℝ)
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail) :
    actual - (complexReadout (test k) (complexGram (feature k))).re =
      (complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re +
        (∑ j ∈ Finset.range k,
          ((complexReadout (test (j + 1)) (gramNetForcing gain source feature j)).re +
            (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)) +
        tail := by
  have evolution (j : ℕ) (_hj : j < k) (p : I (j + 1) × I (j + 1)) :
      source (j + 1) p - complexGram (feature (j + 1)) p =
        complexTransport (gain j) (fun q => source j q - complexGram (feature j) q) p +
          gramNetForcing gain source feature j p := by
    unfold gramNetForcing netResidual
    ring
  have identity := inexact_adjoint_window_identity gain
    (fun n p => source n p - complexGram (feature n) p)
    (gramNetForcing gain source feature) test k evolution
  have realIdentity := congrArg Complex.re identity
  simp only [readout_sub, Complex.sub_re, Complex.add_re, Complex.re_sum] at realIdentity
  rw [sourceReadout, readout_sub, Complex.sub_re]
  linarith

/-- Joint forcing bounds can retain proved cancellations. Every correction and the tail remain charged. -/
theorem no_fixed_negative_of_net_window
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (test : ∀ n, I n → ℂ) (k : ℕ) (actual strength tail initialLower tailLower : ℝ)
    (netLower correctionCost : ℕ → ℝ)
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail)
    (initialEstimate : initialLower ≤
      (complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re)
    (netEstimate : ∀ j, j < k → netLower j ≤
      (complexReadout (test (j + 1)) (gramNetForcing gain source feature j)).re)
    (correctionEstimate : ∀ j, j < k → -(correctionCost j) ≤
      (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)
    (tailEstimate : tailLower ≤ tail) (negative : actual ≤ -strength)
    (margin : -strength < initialLower +
      (∑ j ∈ Finset.range k, (netLower j - correctionCost j)) + tailLower) : False := by
  apply no_fixed_negative_of_signed_window (test k) (feature k) actual strength
    ((complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re)
    tail initialLower tailLower
    (fun j => (complexReadout (test (j + 1)) (gramNetForcing gain source feature j)).re +
      (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)
    (fun j => netLower j - correctionCost j) k
  · exact gram_net_window_identity gain source feature test k actual tail sourceReadout
  · exact initialEstimate
  · intro j hj
    simpa only [sub_eq_add_neg] using add_le_add (netEstimate j hj) (correctionEstimate j hj)
  · exact tailEstimate
  · exact negative
  · exact margin

end Window

/-- Identical shared injection uncertainty widens a separately evaluated difference by 200. -/
theorem shared_uncertainty_fixture :
    lower (diskSub (diskSub (point 1 0) (⟨10, 0, 100⟩ : Disk))
      (diskSub (point 0 0) (⟨10, 0, 100⟩ : Disk))) = -199 ∧
      lower (diskSub (point 1 0) (point 0 0)) = 1 := by
  norm_num [lower, diskSub, diskAdd, diskNeg, point]

/-- Equal disks do not imply equal enclosed values, so they cannot authorize cancellation. -/
theorem same_disk_distinct_values_fixture :
    Contains (⟨0, 0, 1⟩ : Disk) (1 : ℂ) ∧
      Contains (⟨0, 0, 1⟩ : Disk) (-1 : ℂ) ∧ (1 : ℂ) - (-1) = 2 := by
  norm_num [Contains, center, Complex.norm_def, Complex.normSq]

/-- Cancelling an auxiliary injection does not make the actual negative net forcing vanish. -/
theorem retained_negative_forcing_fixture :
    (complexReadout (fun _ : Unit => (1 : ℂ))
      (netResidual (fun (_ : Unit) (_ : Unit) => (0 : ℂ))
        (fun _ : Unit × Unit => (0 : ℂ)) (fun _ : Unit × Unit => (-1 : ℂ)))).re = -1 := by
  norm_num [complexReadout, netResidual, complexTransport]

end

end GRWTSK.Analysis.ErrorBounds.RationalNetGramWindow
```
