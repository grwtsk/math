/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalComplexDisk

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# Rational enclosures for complete Gram model-update defects

A proposed injection J need not give an exact model update. The canonical defect
D = G_next - A G A* - J is derived from the SAME actual feature Grams. If the
source defect is M = S_next - A S A* - J, the complete residual forcing is M-D.
Changing J changes both defects and cannot change their exact difference.

Pure rational disk operations now propagate feature, transition and injection
input enclosures into an enclosure of D and its signed quadratic observation.
All old/new feature rows are used; no independence, fixed-rank or exact-update
premise is added. Semantic input containment is still required. The disk result
is an enclosure, not an assertion that its center matrix is positive.

The signed-window consumer replaces the exact-update premise by an UPPER bound
on the model-defect observation, since that observation is SUBTRACTED. Initial
residual, source mismatch, inexact-adjoint correction and terminal source tail
remain charged. A negative certified upper bound may help; a negative center
alone is insufficient. Rational dependency overestimation can prevent success.
No arithmetic input supplier, actual Weil window, build or axiom audit is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Execution and merge holds unchanged.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalGramModelDefect

open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
open GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual
open GRWTSK.Analysis.ErrorBounds.AdjointGramWitnessWindow
open GRWTSK.Analysis.ErrorBounds.InexactAdjointGramWindow
open GRWTSK.Analysis.ErrorBounds.RationalComplexDisk

variable {ι τ κ ν : Type*} [ιFinite : Fintype ι] [τFinite : Fintype τ] [κFinite : Fintype κ] [νFinite : Fintype ν]

/-- Enclose the actual conjugate Gram using every supplied feature row. -/
def gramDisk (feature : κ → ι → Disk) (p : ι × ι) : Disk :=
  diskSum fun k => diskMul (feature k p.1) (diskConj (feature k p.2))

/-- Rectangular conjugate congruence in rational disk arithmetic. -/
def transportDisk (gain : τ → ι → Disk) (H : ι × ι → Disk) (p : τ × τ) : Disk :=
  diskSum fun q => diskMul (diskMul (gain p.1 q.1) (H q)) (diskConj (gain p.2 q.2))

/-- The complete defect of either supplied path, including its proposed injection. -/
def stepDefectDisk (gain : τ → ι → Disk) (current : ι × ι → Disk)
    (next injection : τ × τ → Disk) (p : τ × τ) : Disk :=
  diskSub (diskSub (next p) (transportDisk gain current p)) (injection p)

/-- The model path is constructed from features, not from an assumed positive matrix. -/
def modelDefectDisk (gain : τ → ι → Disk) (feature : κ → ι → Disk)
    (nextFeature : ν → τ → Disk) (injection : τ × τ → Disk) : τ × τ → Disk :=
  stepDefectDisk gain (gramDisk feature) (gramDisk nextFeature) injection

/-- A full signed observation of the model defect, with all disk interactions retained. -/
def modelDefectReadoutDisk (test : τ → Disk) (gain : τ → ι → Disk)
    (feature : κ → ι → Disk) (nextFeature : ν → τ → Disk)
    (injection : τ × τ → Disk) : Disk :=
  readoutDisk test (modelDefectDisk gain feature nextFeature injection)

noncomputable section

omit ιFinite in
/-- Feature enclosures imply containment of every actual Gram entry. -/
theorem gramDisk_contains [Fintype ι] (featureDisk : κ → ι → Disk) (feature : κ → ι → ℂ)
    (enclosed : ∀ k i, Contains (featureDisk k i) (feature k i)) (p : ι × ι) :
    Contains (gramDisk featureDisk p) (complexGram feature p) := by
  unfold gramDisk complexGram
  apply contains_sum
  intro k
  exact contains_mul (enclosed k p.1) (contains_conj (enclosed k p.2))

omit τFinite in
/-- Transition and matrix enclosures refer to the SAME conjugate transport. -/
theorem transportDisk_contains [Fintype τ] (gainDisk : τ → ι → Disk) (matrixDisk : ι × ι → Disk)
    (gain : τ → ι → ℂ) (H : ι × ι → ℂ)
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (matrixEnclosure : ∀ p, Contains (matrixDisk p) (H p)) (p : τ × τ) :
    Contains (transportDisk gainDisk matrixDisk p) (complexTransport gain H p) := by
  unfold transportDisk complexTransport
  apply contains_sum
  intro q
  exact contains_mul (contains_mul (gainEnclosure p.1 q.1) (matrixEnclosure q))
    (contains_conj (gainEnclosure p.2 q.2))

/-- Both path defects can be enclosed without assuming either path satisfies its update. -/
theorem stepDefectDisk_contains (gainDisk : τ → ι → Disk) (currentDisk : ι × ι → Disk)
    (nextDisk injectionDisk : τ × τ → Disk)
    (gain : τ → ι → ℂ) (current : ι × ι → ℂ) (next injection : τ × τ → ℂ)
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (currentEnclosure : ∀ p, Contains (currentDisk p) (current p))
    (nextEnclosure : ∀ p, Contains (nextDisk p) (next p))
    (injectionEnclosure : ∀ p, Contains (injectionDisk p) (injection p)) (p : τ × τ) :
    Contains (stepDefectDisk gainDisk currentDisk nextDisk injectionDisk p)
      (next p - complexTransport gain current p - injection p) := by
  exact contains_sub (contains_sub (nextEnclosure p)
    (transportDisk_contains gainDisk currentDisk gain current gainEnclosure currentEnclosure p))
    (injectionEnclosure p)

/-- Actual model-update error is enclosed even when feature counts or coordinates change. -/
theorem modelDefectDisk_contains (gainDisk : τ → ι → Disk)
    (featureDisk : κ → ι → Disk) (nextFeatureDisk : ν → τ → Disk)
    (injectionDisk : τ × τ → Disk) (gain : τ → ι → ℂ)
    (feature : κ → ι → ℂ) (nextFeature : ν → τ → ℂ) (injection : τ × τ → ℂ)
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (featureEnclosure : ∀ k i, Contains (featureDisk k i) (feature k i))
    (nextFeatureEnclosure : ∀ k i, Contains (nextFeatureDisk k i) (nextFeature k i))
    (injectionEnclosure : ∀ p, Contains (injectionDisk p) (injection p)) (p : τ × τ) :
    Contains (modelDefectDisk gainDisk featureDisk nextFeatureDisk injectionDisk p)
      (complexGram nextFeature p - complexTransport gain (complexGram feature) p - injection p) := by
  exact stepDefectDisk_contains gainDisk (gramDisk featureDisk) (gramDisk nextFeatureDisk)
    injectionDisk gain (complexGram feature) (complexGram nextFeature) injection gainEnclosure
    (gramDisk_contains featureDisk feature featureEnclosure)
    (gramDisk_contains nextFeatureDisk nextFeature nextFeatureEnclosure) injectionEnclosure p

/-- The UPPER endpoint supplies the correct signed-window cost for a subtracted defect. -/
theorem model_defect_readout_upper (testDisk : τ → Disk) (gainDisk : τ → ι → Disk)
    (featureDisk : κ → ι → Disk) (nextFeatureDisk : ν → τ → Disk)
    (injectionDisk : τ × τ → Disk) (test : τ → ℂ) (gain : τ → ι → ℂ)
    (feature : κ → ι → ℂ) (nextFeature : ν → τ → ℂ) (injection : τ × τ → ℂ)
    (testEnclosure : ∀ i, Contains (testDisk i) (test i))
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (featureEnclosure : ∀ k i, Contains (featureDisk k i) (feature k i))
    (nextFeatureEnclosure : ∀ k i, Contains (nextFeatureDisk k i) (nextFeature k i))
    (injectionEnclosure : ∀ p, Contains (injectionDisk p) (injection p)) :
    (complexReadout test (fun p => complexGram nextFeature p -
      complexTransport gain (complexGram feature) p - injection p)).re ≤
        (upper (modelDefectReadoutDisk testDisk gainDisk featureDisk nextFeatureDisk injectionDisk) : ℝ) := by
  exact (contains_real_interval (readoutDisk_contains testDisk
    (modelDefectDisk gainDisk featureDisk nextFeatureDisk injectionDisk) test
    (fun p => complexGram nextFeature p - complexTransport gain (complexGram feature) p - injection p)
    testEnclosure (modelDefectDisk_contains gainDisk featureDisk nextFeatureDisk injectionDisk
      gain feature nextFeature injection gainEnclosure featureEnclosure nextFeatureEnclosure
      injectionEnclosure))).2

omit τFinite in
/-- Exact net forcing is independent of the proposed common injection.
Separate disk bounds may still widen because the evaluator does not exploit this correlation. -/
theorem net_defect_injection_invariant [Fintype τ] (gain : τ → ι → ℂ)
    (source model : ι × ι → ℂ) (nextSource nextModel injection replacement : τ × τ → ℂ)
    (p : τ × τ) :
    (nextSource p - complexTransport gain source p - injection p) -
      (nextModel p - complexTransport gain model p - injection p) =
    (nextSource p - complexTransport gain source p - replacement p) -
      (nextModel p - complexTransport gain model p - replacement p) := by
  ring

section Window

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- Canonical error of the SAME positive feature model relative to a proposed injection. -/
def modelDefect (gain : ∀ n, I (n + 1) → I n → ℂ)
    (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ)
    (n : ℕ) (p : I (n + 1) × I (n + 1)) : ℂ :=
  complexGram (feature (n + 1)) p -
    complexTransport (gain n) (complexGram (feature n)) p - injection n p

/-- Charging the actual defect restores an identity, not an assumption of small error. -/
theorem model_update_with_defect (gain : ∀ n, I (n + 1) → I n → ℂ)
    (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (n : ℕ)
    (p : I (n + 1) × I (n + 1)) :
    complexGram (feature (n + 1)) p =
      complexTransport (gain n) (complexGram (feature n)) p +
        (injection n p + modelDefect gain feature injection n p) := by
  unfold modelDefect
  ring

/-- Exact previous model updates recover zero defect. -/
theorem modelDefect_zero_of_update (gain : ∀ n, I (n + 1) → I n → ℂ)
    (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (n : ℕ)
    (update : ∀ p, complexGram (feature (n + 1)) p =
      complexTransport (gain n) (complexGram (feature n)) p + injection n p) :
    modelDefect gain feature injection n = fun _ => 0 := by
  funext p
  unfold modelDefect
  rw [update p]
  ring

/-- The arithmetic mismatch loses the model defect; it does not gain it. -/
theorem corrected_mismatch (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (n : ℕ) :
    complexMismatch gain source (fun j p => injection j p + modelDefect gain feature injection j p) n =
      fun p => complexMismatch gain source injection n p - modelDefect gain feature injection n p := by
  funext p
  unfold complexMismatch
  ring

/-- The complete residual equation retains the model defect with its negative sign. -/
theorem residual_evolution_with_model_defect (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (n : ℕ)
    (p : I (n + 1) × I (n + 1)) :
    source (n + 1) p - complexGram (feature (n + 1)) p =
      complexTransport (gain n) (fun q => source n q - complexGram (feature n) q) p +
        (complexMismatch gain source injection n p - modelDefect gain feature injection n p) := by
  simp only [complexMismatch, modelDefect, complexTransport, mul_sub, sub_mul,
    Finset.sum_sub_distrib]
  ring

/-- No exact model-update premise is needed when the actual model defect is separately bounded.
Every bound concerns the SAME source, feature model and terminal witness. -/
theorem no_fixed_negative_of_model_defect_window
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (test : ∀ n, I n → ℂ)
    (k : ℕ) (actual strength tail initialLower tailLower : ℝ)
    (forcingLower modelUpper correctionCost : ℕ → ℝ)
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail)
    (initialEstimate : initialLower ≤
      (complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re)
    (forcingEstimate : ∀ j, j < k → forcingLower j ≤
      (complexReadout (test (j + 1)) (complexMismatch gain source injection j)).re)
    (modelEstimate : ∀ j, j < k →
      (complexReadout (test (j + 1)) (modelDefect gain feature injection j)).re ≤ modelUpper j)
    (correctionEstimate : ∀ j, j < k → -(correctionCost j) ≤
      (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)
    (tailEstimate : tailLower ≤ tail) (negative : actual ≤ -strength)
    (margin : -strength < initialLower +
      (∑ j ∈ Finset.range k, (forcingLower j - modelUpper j - correctionCost j)) + tailLower) :
    False := by
  apply no_fixed_negative_of_inexact_gram_window gain source feature
    (fun j p => injection j p + modelDefect gain feature injection j p) test k
    actual strength tail initialLower tailLower
    (fun j => forcingLower j - modelUpper j) correctionCost
  · intro j _ p
    exact model_update_with_defect gain feature injection j p
  · exact sourceReadout
  · exact initialEstimate
  · intro j hj
    rw [corrected_mismatch, readout_sub, Complex.sub_re]
    exact sub_le_sub (forcingEstimate j hj) (modelEstimate j hj)
  · exact correctionEstimate
  · exact tailEstimate
  · exact negative
  · exact margin

end Window

/-- An unmodelled newborn unit feature creates a unit defect, even with zero proposed injection. -/
theorem newborn_model_defect_fixture :
    modelDefectReadoutDisk (fun _ : Unit => point 1 0)
      (fun (_ : Unit) (_ : Unit) => point 0 0)
      (fun (_ : Unit) (_ : Unit) => point 0 0)
      (fun (_ : Unit) (_ : Unit) => point 1 0)
      (fun _ : Unit × Unit => point 0 0) = point 1 0 := by
  norm_num [modelDefectReadoutDisk, modelDefectDisk, stepDefectDisk,
    transportDisk, gramDisk, readoutDisk, diskSum, diskSub, diskAdd, diskNeg,
    diskMul, diskConj, centerSize, point]

/-- A proposed injection larger than the model update gives a negative defect, not an absolute cost. -/
theorem negative_model_defect_fixture :
    modelDefectReadoutDisk (fun _ : Unit => point 1 0)
      (fun (_ : Unit) (_ : Unit) => point 0 0)
      (fun (_ : Unit) (_ : Unit) => point 0 0)
      (fun (_ : Unit) (_ : Unit) => point 1 0)
      (fun _ : Unit × Unit => point 2 0) = point (-1) 0 := by
  norm_num [modelDefectReadoutDisk, modelDefectDisk, stepDefectDisk,
    transportDisk, gramDisk, readoutDisk, diskSum, diskSub, diskAdd, diskNeg,
    diskMul, diskConj, centerSize, point]

/-- Uncertain features remain uncertain after Gram formation; a point center is not an exact Gram. -/
theorem uncertain_feature_gram_fixture :
    (gramDisk (fun (_ : Unit) (_ : Unit) => (⟨1, 0, 1 / 2⟩ : Disk)) ((), ())).radius = 5 / 4 := by
  norm_num [gramDisk, diskSum, diskMul, diskConj, centerSize]

/-- Subtracting a certified upper endpoint uses the opposite endpoint of the negative interval. -/
theorem subtracted_defect_endpoint_fixture :
    lower (diskNeg (⟨1, 0, 1 / 4⟩ : Disk)) = -5 / 4 ∧
      -(lower (⟨1, 0, 1 / 4⟩ : Disk)) = -3 / 4 ∧ (-5 / 4 : ℚ) < -3 / 4 := by
  norm_num [lower, diskNeg]

end

end GRWTSK.Analysis.ErrorBounds.RationalGramModelDefect
