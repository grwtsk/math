/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalJetStateFold
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenBlockDecomposition

set_option autoImplicit false

/-!
# Exact state-fold route to the SAME thirty-eight target block equations

Every mesh mark, plan, cutoff, correction, dyadic precision and shared-image
formula comes from the unchanged frozen candidate. This source changes evaluation
recurrences, not the mathematical test or the proposed count. It proves equality
of the new and old test/sum computations. No large block success is asserted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenFoldRefinement

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open GRWTSK.Analysis.Complex GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open RationalPoleContour (pointAt)
open HeightFifteenJetCandidate

/-- Generated state at the SAME original plan, without a supplied approximation. -/
def state (i : ℕ) : RationalJetStateFold.PatchState :=
  let p := plan i
  RationalJetStateFold.patch p.center p.inner p.outer p.parameters

/-- Only the arithmetic implementation changes; these are the OLD value midpoints. -/
def foldedImageAt (i : ℕ) : Coordinates :=
  let j := prior i
  let li := lengthAt i
  let lj := lengthAt j
  let vi := (state i).value.mid
  let vj := (state j).value.mid
  mul (1/(li+lj),0) (add (mul (li,0) vj) (mul (lj,0) vi))

theorem foldedImageAt_eq (i : ℕ) : foldedImageAt i = imageAt i := by
  simp only [foldedImageAt, state, RationalJetStateFold.patch_value,
    imageAt, JetPoleContour.value]

def foldedImage (i : ℕ) : Coordinates :=
  if i < edges then foldedImageAt i else foldedImageAt 0

theorem foldedImage_eq (i : ℕ) :
    foldedImage i = HeightFifteenBlockDecomposition.directImage i := by
  simp only [foldedImage, foldedImageAt_eq, HeightFifteenBlockDecomposition.directImage]

/-- No rounded operation is reassociated; the same radius checks both endpoints. -/
def test (i : ℕ) : Bool :=
  let p := plan i
  let q := state i
  let u := foldedImage i
  let v := foldedImage (i+1)
  decide ((q.accepted = true ∧
    inBall (sub (pointAt domain i) p.center) p.inner = true ∧
    inBall (sub (pointAt domain (i+1)) p.center) p.inner = true ∧
    inBall (sub u q.value.mid) q.radius = true ∧
    inBall (sub v q.value.mid) q.radius = true) ∧ RationalPolygonIndex.EdgeValid u v)

def term (i : ℕ) : ℤ := RationalPolygonIndex.increment (foldedImage i) (foldedImage (i+1))

/-- Exact Boolean equality, including false results; not merely a successful direction. -/
theorem test_eq (i : ℕ) : test i = HeightFifteenBlockDecomposition.directTest i := by
  simp only [test, state, RationalJetStateFold.patch_accepted,
    RationalJetStateFold.patch_value, RationalJetStateFold.patch_radius, foldedImage_eq,
    HeightFifteenBlockDecomposition.directTest, JetPoleContour.EdgeValid,
    JetPoleContour.value, JetPoleContour.radius]

theorem term_eq (i : ℕ) : term i = HeightFifteenBlockDecomposition.directTerm i := by
  simp only [term, foldedImage_eq, HeightFifteenBlockDecomposition.directTerm]

theorem chunk_eq (start count : ℕ) : chunk test term start count =
    chunk HeightFifteenBlockDecomposition.directTest HeightFifteenBlockDecomposition.directTerm
      start count := by
  rw [show test = HeightFifteenBlockDecomposition.directTest from funext test_eq,
    show term = HeightFifteenBlockDecomposition.directTerm from funext term_eq]

/-- Still UNPROVED for the frozen target; same widths and proposed signed claims. -/
def FoldBlockObligations : Prop := Pieces test term 0
  HeightFifteenBlockDecomposition.widths HeightFifteenBlockDecomposition.expected

def verifyExpected : Bool := verify test term 0
  HeightFifteenBlockDecomposition.widths HeightFifteenBlockDecomposition.expected

theorem obligations_iff : FoldBlockObligations ↔
    HeightFifteenBlockDecomposition.BlockObligations := by
  unfold FoldBlockObligations HeightFifteenBlockDecomposition.BlockObligations
  rw [show test = HeightFifteenBlockDecomposition.directTest from funext test_eq,
    show term = HeightFifteenBlockDecomposition.directTerm from funext term_eq]

theorem verifyExpected_eq : verifyExpected = HeightFifteenBlockDecomposition.verifyExpected := by
  unfold verifyExpected HeightFifteenBlockDecomposition.verifyExpected
  rw [show test = HeightFifteenBlockDecomposition.directTest from funext test_eq,
    show term = HeightFifteenBlockDecomposition.directTerm from funext term_eq]

theorem success_of_fold_blocks (h : FoldBlockObligations) : Success :=
  HeightFifteenBlockDecomposition.success_of_blocks (obligations_iff.mp h)

theorem success_of_verified (h : verifyExpected = true) : Success :=
  HeightFifteenBlockDecomposition.success_of_verified (verifyExpected_eq ▸ h)

theorem count_one_of_fold_blocks (h : FoldBlockObligations) :
    MirrorCountingRectangle.count (15 : ℝ) = 1 :=
  count_one_of_success (success_of_fold_blocks h)

theorem complete_pair_of_fold_blocks (h : FoldBlockObligations) :
    ∃ z : CanonicalZeroDivisor.ZeroPoint, CanonicalZeroDivisor.multiplicity z = 1 ∧
      z.1.re = (1/2 : ℝ) ∧ CanonicalZeroDivisor.heightHead (15 : ℝ) =
        {z, LocalZeroSymmetry.conjugatePoint z} :=
  complete_pair_of_success (success_of_fold_blocks h)

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenFoldRefinement
