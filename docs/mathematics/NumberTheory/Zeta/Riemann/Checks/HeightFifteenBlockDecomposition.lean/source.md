# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenBlockDecomposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06b3aa7f3cbe130682a62541f829a7973e7cd18d` · SHA-256 `3e462af278a23d20dbc1434d07fbd5ce3015317b775324da43041cc6751908c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.JetContourBlocks
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenJetCandidate

set_option autoImplicit false

/-!
# A bounded-cell decomposition of the unchanged literal target equality

Thirty-seven blocks of 64 cells and one of 11 cover exactly 2379 cells. The
candidate's mesh, plans, generated source expressions and shared images are
unchanged. Direct indexed expressions refine the old list accessors, avoiding
an extra supplied data table. No theorem asserts any large block acceptance.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenBlockDecomposition

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open RationalPoleContour (pointAt)
open ConstructedRectangleCount (planAt)
open HeightFifteenJetCandidate

/-- These are proof-decomposition widths, not new geometric mesh blocks. -/
def widths : List ℕ := List.replicate 37 64 ++ [11]

/-- A proposed signed contribution per block, recomputed before use. -/
def expected : List ℤ := List.replicate 4 0 ++ [1] ++ List.replicate 33 0

theorem partition_checked : partition edges 64 widths = true := by decide

theorem widths_sum : widths.sum = edges := by decide

theorem expected_shape : expected.length = widths.length ∧ expected.sum = 1 := by decide

/-- On the consumed interval, the final image is the SAME closing vertex. -/
def directImage (i : ℕ) : Coordinates := if i < edges then imageAt i else imageAt 0

theorem plan_at {i : ℕ} (hi : i < edges) : planAt plans i = plan i := by
  unfold planAt plans
  rw [List.getD_eq_getElem _ _ (by simpa only [List.length_map,List.length_range] using hi)]
  simp

theorem image_at {i : ℕ} (hi : i < edges) : pointAt image i = imageAt i := by
  unfold pointAt image
  rw [List.getD_append _ _ _ _ (by simpa only [List.length_map,List.length_range] using hi)]
  rw [List.getD_eq_getElem _ _ (by simpa only [List.length_map,List.length_range] using hi)]
  simp

theorem image_last : pointAt image edges = imageAt 0 := by
  unfold pointAt image
  rw [List.getD_append_right _ _ _ _ (by simp)]
  simp

theorem image_at_eq_direct {i : ℕ} (hi : i ≤ edges) :
    pointAt image i = directImage i := by
  by_cases hlt : i < edges
  · simp only [directImage,if_pos hlt,image_at hlt]
  · have he : i = edges := by omega
    subst i
    simpa only [directImage,lt_self_iff_false,if_false] using image_last

theorem vertex_eq_direct {i : ℕ} (hi : i ≤ edges) :
    RationalPolygonIndex.vertex image i = directImage i := image_at_eq_direct hi

/-- Never close a block independently: consume the literal global successor. -/
def directTest (i : ℕ) : Bool :=
  decide (JetPoleContour.EdgeValid (pointAt domain i) (pointAt domain (i+1))
    (directImage i) (directImage (i+1)) (plan i) ∧
    RationalPolygonIndex.EdgeValid (directImage i) (directImage (i+1)))

def directTerm (i : ℕ) : ℤ :=
  RationalPolygonIndex.increment (directImage i) (directImage (i+1))

theorem test_refines {i : ℕ} (hi : i < edges) :
    directTest i = JetContourBlocks.cellTest domain plans image i := by
  simp only [directTest,JetContourBlocks.cellTest,plan_at hi,
    image_at_eq_direct hi.le,image_at_eq_direct (show i+1 ≤ edges by omega),
    vertex_eq_direct hi.le,vertex_eq_direct (show i+1 ≤ edges by omega)]

theorem term_refines {i : ℕ} (hi : i < edges) :
    directTerm i = JetContourBlocks.term image i := by
  simp only [directTerm,JetContourBlocks.term,vertex_eq_direct hi.le,
    vertex_eq_direct (show i+1 ≤ edges by omega)]

/-- Length and closure proofs do not evaluate thousands of generated source balls. -/
theorem header : JetContourBlocks.Header edges domain plans image := by
  have hmesh := (RationalRectangleMesh.check_iff_valid _ _).mp mesh_shape.2
  refine ⟨by decide,?_,plan_length,image_length,?_,?_⟩
  · simpa only [domain,RationalRectangleMesh.vertices_length] using mesh_shape.1
  · change (RationalRectangleMesh.vertices _ _ marks).getD edges zero =
      (RationalRectangleMesh.vertices _ _ marks).getD 0 zero
    rw [RationalRectangleMesh.vertex_at _ _ (by rw [mesh_shape.1]; omega),
      RationalRectangleMesh.vertex_at _ _ (by rw [mesh_shape.1]; omega),
      hmesh.2.2.2.1,hmesh.2.2.1,
      RationalRectangleMesh.point_four,RationalRectangleMesh.point_zero]
  · rw [image_last,image_at (show 0 < edges by decide)]

theorem allRange_refines : allRange directTest 0 edges =
    allRange (JetContourBlocks.cellTest domain plans image) 0 edges := by
  apply allRange_congr
  intro i hi
  simpa only [Nat.zero_add] using test_refines hi

theorem sumRange_refines : sumRange directTerm 0 edges =
    sumRange (JetContourBlocks.term image) 0 edges := by
  apply sumRange_congr
  intro i hi
  simpa only [Nat.zero_add] using term_refines hi

/-- The old literal Success is retained, not renamed to a weaker block predicate. -/
theorem success_iff_ranges : Success ↔
    allRange directTest 0 edges = true ∧ sumRange directTerm 0 edges = 1 := by
  have hg : RationalRectangleCount.lower.1 < (RationalRectangleCount.upper 15).1 ∧
      RationalRectangleCount.lower.2 < (RationalRectangleCount.upper 15).2 := by
    norm_num [RationalRectangleCount.lower,RationalRectangleCount.upper]
  change JetRectangleCount.evaluateBox _ _ edges marks plans image = some 1 ↔ _
  rw [JetRectangleCount.evaluateBox_eq_some_iff]
  constructor
  · rintro ⟨_,_,h⟩
    have hs := (JetContourBlocks.old_evaluate_iff _ _ _ _ _).mp h
    refine ⟨?_,?_⟩
    · simpa only [allRange_refines] using hs.2.1
    · simpa only [sumRange_refines] using hs.2.2
  · rintro ⟨hall,hsum⟩
    refine ⟨hg,mesh_shape.2,(JetContourBlocks.old_evaluate_iff _ _ _ _ _).mpr ?_⟩
    refine ⟨header,?_,?_⟩
    · simpa only [allRange_refines] using hall
    · simpa only [sumRange_refines] using hsum

/-- Exact completeness of the decomposition. A block's integer is just its
signed contribution; it is not required to be nonnegative or be a loop index. -/
theorem success_iff_exists_blocks : Success ↔
    ∃ claims, Pieces directTest directTerm 0 widths claims ∧ claims.sum = 1 := by
  rw [exists_pieces_iff,widths_sum]
  exact success_iff_ranges

/-- UNPROVED target-specific obligations: 38 local finite equalities. -/
def BlockObligations : Prop := Pieces directTest directTerm 0 widths expected

/-- This computes and verifies local results; it does not import reported flags. -/
def verifyExpected : Bool := verify directTest directTerm 0 widths expected

theorem success_of_blocks (h : BlockObligations) : Success :=
  success_iff_exists_blocks.mpr ⟨expected,h,expected_shape.2⟩

theorem success_of_verified (h : verifyExpected = true) : Success :=
  success_of_blocks ((verify_iff_pieces _ _ _ _ _).mp h)

theorem count_one_of_blocks (h : BlockObligations) :
    MirrorCountingRectangle.count (15 : ℝ) = 1 :=
  count_one_of_success (success_of_blocks h)

theorem complete_pair_of_blocks (h : BlockObligations) :
    ∃ z : CanonicalZeroDivisor.ZeroPoint, CanonicalZeroDivisor.multiplicity z = 1 ∧
      z.1.re = (1/2 : ℝ) ∧ CanonicalZeroDivisor.heightHead (15 : ℝ) =
        {z, LocalZeroSymmetry.conjugatePoint z} :=
  complete_pair_of_success (success_of_blocks h)

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenBlockDecomposition
```
