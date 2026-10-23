/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
import GRWTSK.NumberTheory.Zeta.Riemann.JetRectangleCount

set_option autoImplicit false

/-!
# Contiguous local computations refine the unchanged jet-contour checker

Every local test uses the GLOBAL adjacent domain/image vertices and the SAME
source plan. A block is not closed artificially and its integer is not called
its winding. Lengths and both global closures remain independent checks.
No source value, derivative, radius, index or acceptance flag is trusted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.JetContourBlocks

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open ConstructedRectangleCount (Plan planAt)
open RationalPoleContour (pointAt)

/-- Exactly the nonlocal shape requirements of the old tube and polygon checks. -/
def Header (n : ℕ) (v : List Coordinates) (p : List Plan) (y : List Coordinates) : Prop :=
  0 < n ∧ v.length = n+1 ∧ p.length = n ∧ y.length = n+1 ∧
    pointAt v n = pointAt v 0 ∧ pointAt y n = pointAt y 0

instance headerDecidable (n : ℕ) (v : List Coordinates) (p : List Plan) (y : List Coordinates) :
    Decidable (Header n v p y) := by unfold Header; infer_instance

/-- All source/jet/domain/image checks AND the logarithm chart for this full edge. -/
def cellTest (v : List Coordinates) (p : List Plan) (y : List Coordinates) (i : ℕ) : Bool :=
  decide (JetPoleContour.EdgeValid (pointAt v i) (pointAt v (i+1))
    (pointAt y i) (pointAt y (i+1)) (planAt p i) ∧
    RationalPolygonIndex.EdgeValid (RationalPolygonIndex.vertex y i)
      (RationalPolygonIndex.vertex y (i+1)))

/-- The old signed negative-ray increment, without a fresh branch convention. -/
def term (y : List Coordinates) (i : ℕ) : ℤ :=
  RationalPolygonIndex.increment (RationalPolygonIndex.vertex y i)
    (RationalPolygonIndex.vertex y (i+1))

theorem sum_eq_prefix (y : List Coordinates) (n : ℕ) :
    sumRange (term y) 0 n = RationalPolygonIndex.prefix y n := by
  simp only [sumRange_eq_finset,term,Nat.zero_add,RationalPolygonIndex.prefix]

/-- Exact finite equivalence before invoking any analytic soundness theorem. -/
theorem old_evaluate_iff (n : ℕ) (v : List Coordinates) (p : List Plan)
    (y : List Coordinates) (k : ℤ) :
    JetPoleContour.evaluate n v p y = some k ↔
      Header n v p y ∧ allRange (cellTest v p y) 0 n = true ∧ sumRange (term y) 0 n = k := by
  rw [JetPoleContour.evaluate_eq_some_iff,RationalPolygonIndex.evaluate_eq_some_iff,
    JetPoleContour.check_iff,RationalPolygonIndex.check_iff_valid]
  constructor
  · rintro ⟨⟨hn,hv,hp,hy,hvc,hyc,he⟩,⟨⟨_,_,_,hc⟩,hk⟩⟩
    refine ⟨⟨hn,hv,hp,hy,hvc,hyc⟩, ?_, ?_⟩
    · apply (allRange_iff _ _ _).mpr
      intro i hi
      simpa only [Nat.zero_add,cellTest,decide_eq_true_eq] using
        And.intro (he i (Finset.mem_range.mpr hi)) (hc i (Finset.mem_range.mpr hi))
    · simpa only [sum_eq_prefix] using hk
  · rintro ⟨⟨hn,hv,hp,hy,hvc,hyc⟩,hall,hsum⟩
    have he (i : ℕ) (hi : i ∈ Finset.range n) :
        JetPoleContour.EdgeValid (pointAt v i) (pointAt v (i+1))
          (pointAt y i) (pointAt y (i+1)) (planAt p i) ∧
        RationalPolygonIndex.EdgeValid (RationalPolygonIndex.vertex y i)
          (RationalPolygonIndex.vertex y (i+1)) := by
      simpa only [Nat.zero_add,cellTest,decide_eq_true_eq] using
        (allRange_iff _ _ _).mp hall i (Finset.mem_range.mp hi)
    refine ⟨⟨hn,hv,hp,hy,hvc,hyc,fun i hi => (he i hi).1⟩,
      ⟨⟨hn,hy,?_,fun i hi => (he i hi).2⟩,?_⟩⟩
    · simpa only [pointAt,RationalPolygonIndex.vertex] using hyc
    · simpa only [sum_eq_prefix] using hsum

/-- Claims are checked individually before their sum can be returned. -/
def evaluate (n cap : ℕ) (widths : List ℕ) (claims : List ℤ)
    (v : List Coordinates) (p : List Plan) (y : List Coordinates) : Option ℤ :=
  if decide (Header n v p y) &&
      (partition n cap widths && verify (cellTest v p y) (term y) 0 widths claims) then
    some claims.sum
  else none

theorem evaluate_iff (n cap : ℕ) (widths : List ℕ) (claims : List ℤ)
    (v : List Coordinates) (p : List Plan) (y : List Coordinates) (k : ℤ) :
    evaluate n cap widths claims v p y = some k ↔
      Header n v p y ∧ partition n cap widths = true ∧
      verify (cellTest v p y) (term y) 0 widths claims = true ∧ claims.sum = k := by
  by_cases hh : Header n v p y <;>
    by_cases hp : partition n cap widths = true <;>
    by_cases hv : verify (cellTest v p y) (term y) 0 widths claims = true <;>
    simp [evaluate,hh,hp,hv]

/-- A passing partitioned result is the SAME old finite result, not merely an
analytic theorem with a weaker numerical guard. -/
theorem evaluate_refines {n cap : ℕ} {widths : List ℕ} {claims : List ℤ}
    {v y : List Coordinates} {p : List Plan} {k : ℤ}
    (h : evaluate n cap widths claims v p y = some k) :
    JetPoleContour.evaluate n v p y = some k := by
  obtain ⟨hh,hp,hv,hk⟩ := (evaluate_iff _ _ _ _ _ _ _ _).mp h
  have hsum := ((partition_iff _ _ _).mp hp).2.2.2.1
  have hs := verify_sound hv
  apply (old_evaluate_iff _ _ _ _ _).mpr
  refine ⟨hh, ?_, ?_⟩
  · simpa only [hsum] using hs.2.1
  · simpa only [hsum] using hs.2.2.trans hk

/-- Every old success admits computed block summaries for ANY admitted partition.
Wrong per-block summaries that happen to cancel are still rejected. -/
theorem exists_claims_iff {n cap : ℕ} {widths : List ℕ}
    (hp : partition n cap widths = true) (v : List Coordinates) (p : List Plan)
    (y : List Coordinates) (k : ℤ) :
    (∃ claims, evaluate n cap widths claims v p y = some k) ↔
      JetPoleContour.evaluate n v p y = some k := by
  constructor
  · rintro ⟨claims,h⟩; exact evaluate_refines h
  · intro h
    obtain ⟨hh,hall,hs⟩ := (old_evaluate_iff _ _ _ _ _).mp h
    have hw := ((partition_iff _ _ _).mp hp).2.2.2.1
    refine ⟨totals (term y) 0 widths, (evaluate_iff _ _ _ _ _ _ _ _).mpr ?_⟩
    refine ⟨hh,hp,?_,?_⟩
    · simpa only [verify_totals,hw] using hall
    · simpa only [totals_sum,hw] using hs

/-- Same rectangle and mesh; only the finite reduction can be factored into blocks. -/
def evaluateRectangle (T : ℚ) (n cap : ℕ) (widths : List ℕ) (claims : List ℤ)
    (marks : List ℚ) (p : List Plan) (y : List Coordinates) : Option ℤ :=
  let l := RationalRectangleCount.lower
  let u := RationalRectangleCount.upper T
  if decide (l.1 < u.1 ∧ l.2 < u.2) && RationalRectangleMesh.check n marks then
    evaluate n cap widths claims (RationalRectangleMesh.vertices l u marks) p y
  else none

theorem rectangle_refines {T : ℚ} {n cap : ℕ} {widths : List ℕ} {claims : List ℤ}
    {marks : List ℚ} {p : List Plan} {y : List Coordinates} {k : ℤ}
    (h : evaluateRectangle T n cap widths claims marks p y = some k) :
    JetRectangleCount.evaluate T n marks p y = some k := by
  unfold evaluateRectangle at h
  dsimp only at h
  split_ifs at h with hg
  · have hguard : (RationalRectangleCount.lower.1 < (RationalRectangleCount.upper T).1 ∧
        RationalRectangleCount.lower.2 < (RationalRectangleCount.upper T).2) ∧
        RationalRectangleMesh.check n marks = true := by
      simpa only [Bool.and_eq_true,decide_eq_true_eq] using hg
    exact (JetRectangleCount.evaluateBox_eq_some_iff _ _ _ _ _ _ _).mpr
      ⟨hguard.1,hguard.2,evaluate_refines h⟩
  · simp at h

theorem count_eq_of_evaluateRectangle {T : ℚ} {n cap : ℕ} {widths : List ℕ}
    {claims : List ℤ} {marks : List ℚ} {p : List Plan} {y : List Coordinates} {k : ℤ}
    (h : evaluateRectangle T n cap widths claims marks p y = some k) :
    (MirrorCountingRectangle.count (T : ℝ) : ℤ) = k :=
  JetRectangleCount.count_eq_of_evaluate (rectangle_refines h)

end GRWTSK.RiemannHypothesis.JetContourBlocks
