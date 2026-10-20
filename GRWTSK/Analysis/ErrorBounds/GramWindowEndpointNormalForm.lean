/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalWindowEnclosure

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# Endpoint normal form of a complete Gram window

With canonical net forcing and canonical adjoint corrections, each complete
step is EXACTLY the next residual observation minus the previous one. Thus the
whole complex window equals its terminal residual observation plus the tail,
for arbitrary gains and intermediate tests. This is exact cancellation before
enclosure arithmetic, not permission to delete terms from an inequality.

The endpoint evaluator uses only independently justified terminal residual,
test and tail disks. It can avoid uncertainty introduced by redundant interior
expressions. No universal comparison of enclosure widths is asserted. Both
forms enclose the same quantity, so independently sound lower bounds can be
combined. An endpoint residual estimate is not produced by the normal form.

For source S and the SAME positive feature Gram G, the real endpoint is
actual - Re(z*Gz). It cannot exceed actual. Auxiliary gain changes therefore
cannot create a positive source margin; independent source identification and
arithmetic estimates are essential. The full window remains useful when its
local analytic estimates are easier to prove than a terminal enclosure.

No arithmetic input supplier, admissible global Weil witness, strict arithmetic
margin, universal zero exclusion or imported choice-free audit is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Execution and merge holds unchanged.
-/

namespace GRWTSK.Analysis.ErrorBounds.GramWindowEndpointNormalForm

open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
open GRWTSK.Analysis.ErrorBounds.AdjointGramWitnessWindow
open GRWTSK.Analysis.ErrorBounds.InexactAdjointGramWindow
open GRWTSK.Analysis.ErrorBounds.RationalComplexDisk
open GRWTSK.Analysis.ErrorBounds.RationalGramModelDefect
open GRWTSK.Analysis.ErrorBounds.RationalNetGramWindow
open GRWTSK.Analysis.ErrorBounds.RationalWindowEnclosure

variable {ι τ κ : Type*} [Fintype ι] [Fintype τ] [Fintype κ]

/-- Compute the terminal expression after cancelling the complete interior telescope. -/
def endpointDisk (test : ι → Disk) (residual : ι × ι → Disk) (tail : Disk) : Disk :=
  diskAdd (readoutDisk test residual) tail

noncomputable section

/-- Net forcing and the canonical pullback correction cancel their shared transported term.
Neither term is individually zero, and no exact-backward or contraction premise is used. -/
theorem complete_step_eq_increment (gain : τ → ι → ℂ)
    (residual : ι × ι → ℂ) (nextResidual : τ × τ → ℂ)
    (test : ι → ℂ) (nextTest : τ → ℂ) :
    complexReadout nextTest (netResidual gain residual nextResidual) +
        readoutCorrection test (pullbackDefect gain nextTest test) residual =
      complexReadout nextTest nextResidual - complexReadout test residual := by
  have evolution (p : τ × τ) : nextResidual p =
      complexTransport gain residual p + netResidual gain residual nextResidual p := by
    unfold netResidual
    ring
  have step := inexact_readout_residual_step gain nextTest test residual nextResidual
    (netResidual gain residual nextResidual) evolution
  calc
    _ = (complexReadout test residual +
        (complexReadout nextTest (netResidual gain residual nextResidual) +
          readoutCorrection test (pullbackDefect gain nextTest test) residual)) -
        complexReadout test residual := by ring
    _ = _ := by rw [← step]

section Window

variable {I : ℕ → Type*} [∀ n, Fintype (I n)]

/-- Full COMPLEX endpoint identity, not just equality of real parts.
The retained initial observation cancels exactly; it is not reset to zero. -/
theorem windowValue_eq_terminal (gain : ∀ n, I (n + 1) → I n → ℂ)
    (residual : ∀ n, I n × I n → ℂ) (test : ∀ n, I n → ℂ) (tail : ℝ) (k : ℕ) :
    windowValue gain residual test tail k = complexReadout (test k) (residual k) + (tail : ℂ) := by
  have evolution (j : ℕ) (_hj : j < k) (p : I (j + 1) × I (j + 1)) :
      residual (j + 1) p = complexTransport (gain j) (residual j) p +
        netResidual (gain j) (residual j) (residual (j + 1)) p := by
    unfold netResidual
    ring
  have telescope := inexact_adjoint_window_identity gain residual
    (fun j => netResidual (gain j) (residual j) (residual (j + 1))) test k evolution
  simpa only [windowValue, windowCorrection] using
    congrArg (fun value : ℂ => value + (tail : ℂ)) telescope.symm

/-- Changing auxiliary gains cannot change the exact value while terminal data are retained.
Numerical enclosure widths and the difficulty of proving local estimates can still change. -/
theorem windowValue_gain_independent
    (gain replacement : ∀ n, I (n + 1) → I n → ℂ)
    (residual : ∀ n, I n × I n → ℂ) (test : ∀ n, I n → ℂ) (tail : ℝ) (k : ℕ) :
    windowValue gain residual test tail k = windowValue replacement residual test tail k := by
  simp only [windowValue_eq_terminal]

/-- Different interior histories have the same exact window value when their endpoints agree.
This does not identify two actual quantities merely because their disks are equal. -/
theorem windowValue_history_independent
    (gain replacement : ∀ n, I (n + 1) → I n → ℂ)
    (residual otherResidual : ∀ n, I n × I n → ℂ)
    (test otherTest : ∀ n, I n → ℂ) (tail : ℝ) (k : ℕ)
    (sameResidual : residual k = otherResidual k) (sameTest : test k = otherTest k) :
    windowValue gain residual test tail k = windowValue replacement otherResidual otherTest tail k := by
  simp only [windowValue_eq_terminal, sameResidual, sameTest]

end Window

/-- Terminal input containment alone suffices for the endpoint evaluator.
The residual disk must enclose the COMPLETE actual terminal residual. -/
theorem endpointDisk_contains (testDisk : ι → Disk) (residualDisk : ι × ι → Disk)
    (tailDisk : Disk) (test : ι → ℂ) (residual : ι × ι → ℂ) (tail : ℝ)
    (testEnclosure : ∀ i, Contains (testDisk i) (test i))
    (residualEnclosure : ∀ p, Contains (residualDisk p) (residual p))
    (tailEnclosure : Contains tailDisk (tail : ℂ)) :
    Contains (endpointDisk testDisk residualDisk tailDisk)
      (complexReadout test residual + (tail : ℂ)) :=
  contains_add (readoutDisk_contains testDisk residualDisk test residual
    testEnclosure residualEnclosure) tailEnclosure

/-- The endpoint disk encloses the SAME window value without interior enclosure premises. -/
theorem endpointDisk_contains_window {I : ℕ → Type*} [∀ n, Fintype (I n)]
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (residual : ∀ n, I n × I n → ℂ) (test : ∀ n, I n → ℂ) (tail : ℝ) (k : ℕ)
    (testDisk : I k → Disk) (residualDisk : I k × I k → Disk) (tailDisk : Disk)
    (testEnclosure : ∀ i, Contains (testDisk i) (test k i))
    (residualEnclosure : ∀ p, Contains (residualDisk p) (residual k p))
    (tailEnclosure : Contains tailDisk (tail : ℂ)) :
    Contains (endpointDisk testDisk residualDisk tailDisk) (windowValue gain residual test tail k) := by
  rw [windowValue_eq_terminal]
  exact endpointDisk_contains testDisk residualDisk tailDisk (test k) (residual k) tail
    testEnclosure residualEnclosure tailEnclosure

/-- Exact terminal relation to the independent real source; source positivity is not assumed. -/
theorem terminalResidual_real_identity (test : ι → ℂ) (source : ι × ι → ℂ)
    (feature : κ → ι → ℂ) (tail actual : ℝ)
    (sourceReadout : actual = (complexReadout test source).re + tail) :
    (complexReadout test (fun p => source p - complexGram feature p) + (tail : ℂ)).re =
      actual - (complexReadout test (complexGram feature)).re := by
  rw [readout_sub, Complex.add_re, Complex.sub_re, Complex.ofReal_re, sourceReadout]
  ring

/-- Subtracting the actual positive Gram cannot raise the exact source value.
Any useful margin must come from independently proved arithmetic bounds, not the decomposition. -/
theorem terminalResidual_real_le_source (test : ι → ℂ) (source : ι × ι → ℂ)
    (feature : κ → ι → ℂ) (tail actual : ℝ)
    (sourceReadout : actual = (complexReadout test source).re + tail) :
    (complexReadout test (fun p => source p - complexGram feature p) + (tail : ℂ)).re ≤ actual := by
  rw [terminalResidual_real_identity test source feature tail actual sourceReadout]
  have positive := complex_gram_readout_nonnegative test feature
  linarith

/-- Independently sound enclosures of ONE value may contribute their better lower endpoint.
There is no unconditional claim that the endpoint disk dominates the expanded-window disk. -/
theorem two_enclosures_lower {left right : Disk} {value : ℂ}
    (leftContains : Contains left value) (rightContains : Contains right value) :
    max (lower left : ℝ) (lower right : ℝ) ≤ value.re :=
  max_le (contains_real_interval leftContains).1 (contains_real_interval rightContains).1

/-- Source-bound endpoint consumer. No interior gain, transition, or correction-cost inputs remain.
Endpoint containment and the complete terminal source identity are still substantive premises. -/
theorem no_fixed_negative_of_endpoint
    (testDisk : ι → Disk) (residualDisk : ι × ι → Disk) (tailDisk : Disk)
    (test : ι → ℂ) (source : ι × ι → ℂ) (feature : κ → ι → ℂ)
    (tail actual : ℝ) (strength : ℚ)
    (testEnclosure : ∀ i, Contains (testDisk i) (test i))
    (residualEnclosure : ∀ p, Contains (residualDisk p) (source p - complexGram feature p))
    (tailEnclosure : Contains tailDisk (tail : ℂ))
    (sourceReadout : actual = (complexReadout test source).re + tail)
    (negative : actual ≤ -(strength : ℝ))
    (accepted : lowerClears (endpointDisk testDisk residualDisk tailDisk) (-strength) = true) :
    False := by
  have enclosed := endpointDisk_contains testDisk residualDisk tailDisk test
    (fun p => source p - complexGram feature p) tail testEnclosure residualEnclosure tailEnclosure
  have strict := lowerClears_sound (-strength) accepted enclosed
  have ceiling := terminalResidual_real_le_source test source feature tail actual sourceReadout
  have strictReal : -(strength : ℝ) <
      (complexReadout test (fun p => source p - complexGram feature p) + (tail : ℂ)).re := by
    simpa only [Rat.cast_neg] using strict
  linarith

/-- With sound terminal data a genuine negative target cannot pass this threshold check.
This is a correctness guard, not proof that an arithmetic negative witness cannot exist. -/
theorem endpoint_rejects_negative
    (testDisk : ι → Disk) (residualDisk : ι × ι → Disk) (tailDisk : Disk)
    (test : ι → ℂ) (source : ι × ι → ℂ) (feature : κ → ι → ℂ)
    (tail actual : ℝ) (strength : ℚ)
    (testEnclosure : ∀ i, Contains (testDisk i) (test i))
    (residualEnclosure : ∀ p, Contains (residualDisk p) (source p - complexGram feature p))
    (tailEnclosure : Contains tailDisk (tail : ℂ))
    (sourceReadout : actual = (complexReadout test source).re + tail)
    (negative : actual ≤ -(strength : ℝ)) :
    lowerClears (endpointDisk testDisk residualDisk tailDisk) (-strength) = false := by
  cases outcome : lowerClears (endpointDisk testDisk residualDisk tailDisk) (-strength) with
  | false => rfl
  | true =>
      exact (no_fixed_negative_of_endpoint testDisk residualDisk tailDisk test source feature
        tail actual strength testEnclosure residualEnclosure tailEnclosure sourceReadout negative
        outcome).elim

/-- Redundant interior uncertainty can widen the old evaluator even with an exact terminal value.
These are the same terminal disks; the intermediate uncertainty cancels algebraically. -/
theorem interior_uncertainty_fixture :
    lower (windowDisk (I := fun _ => Unit) (fun _ _ _ => point 0 0)
      (fun n _ => if n = 0 then (⟨0, 0, 1⟩ : Disk) else point 1 0)
      (fun _ _ => point 1 0) (point 0 0) 1) = -3 ∧
    lower (endpointDisk (fun _ : Unit => point 1 0)
      (fun _ : Unit × Unit => point 1 0) (point 0 0)) = 1 := by
  norm_num [windowDisk, prefixDisk, stepDisk, correctionDisk, mixedDisk, pullbackDisk,
    adjointDisk, netResidualDisk, transportDisk, endpointDisk, lower, readoutDisk, diskSum,
    diskSub, diskAdd, diskNeg, diskMul, diskConj, centerSize, point]

/-- Endpoint reduction retains a negative residual and refuses to erase it through auxiliary gains. -/
theorem retained_negative_endpoint_fixture :
    lowerClears (endpointDisk (fun _ : Unit => point 1 0)
      (fun _ : Unit × Unit => point (-2) 0) (point 0 0)) (-1) = false := by
  norm_num [lowerClears, endpointDisk, lower, readoutDisk, diskSum,
    diskAdd, diskMul, diskConj, centerSize, point]

end

end GRWTSK.Analysis.ErrorBounds.GramWindowEndpointNormalForm
