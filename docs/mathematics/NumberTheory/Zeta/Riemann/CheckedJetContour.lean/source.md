# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CheckedJetContour

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bee00dbe38a93bc3be23276d3c390ab21e57d52e` · SHA-256 `744af01d48a8c6a19c6614d1ce5f4ff8d72a68948d3c777b51eaff03c3ccba43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CheckedPoleJet
import GRWTSK.NumberTheory.Zeta.Riemann.JetContourBlocks

set_option autoImplicit false

/-!
# Full checked-witness jets feed the unchanged signed rectangle count

Every plan has exactly one ordered packet. Shared image endpoints are the same
GLOBAL coordinates in both incident cells. The generated checked jet supplies
both the strict test and the two image-ball tests with the SAME radius. Geometry,
closure, source homotopy, polygon index and canonical divisor consumer are reused.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CheckedJetContour

open GRWTSK.Analysis.Complex GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open ConstructedRectangleCount (Plan planAt)
open RationalPoleContour (pointAt)

/-- This default cannot repair a missing record: the outer length is separately checked. -/
def packetAt (packets : List CheckedPoleJet.Packet) (i : ℕ) : CheckedPoleJet.Packet :=
  packets.getD i []

/-- No chart change: it remains the old polygon-index check after all source tubes pass. -/
def edgeCheck (a b u v : Coordinates) (p : Plan) (rows : CheckedPoleJet.Packet) : Bool :=
  match CheckedPoleJet.checkPatch p.center p.inner p.outer p.parameters rows with
  | none => false
  | some q =>
    inBall (sub a p.center) p.inner && inBall (sub b p.center) p.inner &&
      inBall (sub u q.value.mid) q.radius && inBall (sub v q.value.mid) q.radius

/-- The successful checked edge is literally the OLD EdgeValid proposition. -/
theorem edge_refines {a b u v : Coordinates} {p : Plan} {rows : CheckedPoleJet.Packet}
    (h : edgeCheck a b u v p rows = true) : JetPoleContour.EdgeValid a b u v p := by
  cases hp : CheckedPoleJet.checkPatch p.center p.inner p.outer p.parameters rows with
  | none => simp [edgeCheck,hp] at h
  | some q =>
    have he : inBall (sub a p.center) p.inner = true ∧
        inBall (sub b p.center) p.inner = true ∧
        inBall (sub u q.value.mid) q.radius = true ∧
        inBall (sub v q.value.mid) q.radius = true := by
      simpa only [edgeCheck,hp,Bool.and_eq_true,and_assoc] using h
    obtain ⟨hq,hc⟩ := CheckedPoleJet.checkPatch_refines hp
    rw [hq] at he
    exact ⟨hc,he.1,he.2.1,he.2.2.1,he.2.2.2⟩

/-- The new representation can witness every old admitted edge; no always-reject route. -/
theorem exists_edge_iff (a b u v : Coordinates) (p : Plan) :
    (∃ rows, edgeCheck a b u v p rows = true) ↔ JetPoleContour.EdgeValid a b u v p := by
  constructor
  · rintro ⟨rows,h⟩; exact edge_refines h
  · intro h
    obtain ⟨rows,q,hp⟩ := (CheckedPoleJet.exists_patch_iff _ _ _ _).mpr h.1
    have hq := (CheckedPoleJet.checkPatch_refines hp).1
    refine ⟨rows,?_⟩
    simp only [edgeCheck,hp,hq,RationalJetStateFold.reference]
    change (inBall (sub a p.center) p.inner && inBall (sub b p.center) p.inner &&
      inBall (sub u (JetPoleContour.value p).mid) (JetPoleContour.radius p) &&
      inBall (sub v (JetPoleContour.value p).mid) (JetPoleContour.radius p)) = true
    simp [h.2.1,h.2.2.1,h.2.2.2.1,h.2.2.2.2]

/-- All lengths and both closures remain outside the local cell predicates. -/
def Valid (n : ℕ) (v : List Coordinates) (p : List Plan) (y : List Coordinates)
    (packets : List CheckedPoleJet.Packet) : Prop :=
  JetContourBlocks.Header n v p y ∧ packets.length = n ∧
    ∀ i ∈ Finset.range n, edgeCheck (pointAt v i) (pointAt v (i+1))
      (pointAt y i) (pointAt y (i+1)) (planAt p i) (packetAt packets i) = true

instance validDecidable (n : ℕ) (v : List Coordinates) (p : List Plan) (y : List Coordinates)
    (packets : List CheckedPoleJet.Packet) : Decidable (Valid n v p y packets) := by
  unfold Valid; infer_instance

def check (n : ℕ) (v : List Coordinates) (p : List Plan) (y : List Coordinates)
    (packets : List CheckedPoleJet.Packet) : Bool := decide (Valid n v p y packets)

theorem check_iff (n : ℕ) (v : List Coordinates) (p : List Plan) (y : List Coordinates)
    (packets : List CheckedPoleJet.Packet) :
    check n v p y packets = true ↔ Valid n v p y packets := by simp [check]

theorem check_refines {n : ℕ} {v y : List Coordinates} {p : List Plan}
    {packets : List CheckedPoleJet.Packet} (h : check n v p y packets = true) :
    JetPoleContour.check n v p y = true := by
  obtain ⟨⟨hn,hv,hp,hy,hvc,hyc⟩,_hl,he⟩ := (check_iff _ _ _ _ _).mp h
  exact (JetPoleContour.check_iff _ _ _ _).mpr
    ⟨hn,hv,hp,hy,hvc,hyc,fun i hi => edge_refines (he i hi)⟩

/-- A correct arithmetic trace is not a count until the ORIGINAL polygon check succeeds. -/
def evaluate (n : ℕ) (v : List Coordinates) (p : List Plan) (y : List Coordinates)
    (packets : List CheckedPoleJet.Packet) : Option ℤ :=
  if check n v p y packets then RationalPolygonIndex.evaluate n y else none

theorem evaluate_refines {n : ℕ} {v y : List Coordinates} {p : List Plan}
    {packets : List CheckedPoleJet.Packet} {k : ℤ}
    (h : evaluate n v p y packets = some k) :
    JetPoleContour.evaluate n v p y = some k := by
  by_cases hc : check n v p y packets = true
  · have hi : RationalPolygonIndex.evaluate n y = some k := by simpa [evaluate,hc] using h
    exact (JetPoleContour.evaluate_eq_some_iff _ _ _ _ _).mpr ⟨check_refines hc,hi⟩
  · simp [evaluate,hc] at h

/-- Literal rectangle bounds and full unwrapped mesh are still recomputed. -/
def evaluateRectangle (T : ℚ) (n : ℕ) (marks : List ℚ) (p : List Plan)
    (y : List Coordinates) (packets : List CheckedPoleJet.Packet) : Option ℤ :=
  let l := RationalRectangleCount.lower
  let u := RationalRectangleCount.upper T
  if decide (l.1 < u.1 ∧ l.2 < u.2) && RationalRectangleMesh.check n marks then
    evaluate n (RationalRectangleMesh.vertices l u marks) p y packets
  else none

theorem rectangle_refines {T : ℚ} {n : ℕ} {marks : List ℚ} {p : List Plan}
    {y : List Coordinates} {packets : List CheckedPoleJet.Packet} {k : ℤ}
    (h : evaluateRectangle T n marks p y packets = some k) :
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

/-- No free source-value, derivative, boundary, winding or count premise is added. -/
theorem count_eq_of_checked {T : ℚ} {n : ℕ} {marks : List ℚ} {p : List Plan}
    {y : List Coordinates} {packets : List CheckedPoleJet.Packet} {k : ℤ}
    (h : evaluateRectangle T n marks p y packets = some k) :
    (MirrorCountingRectangle.count (T : ℝ) : ℤ) = k :=
  JetRectangleCount.count_eq_of_evaluate (rectangle_refines h)

theorem complete_pair_of_checked {n : ℕ} {marks : List ℚ} {p : List Plan}
    {y : List Coordinates} {packets : List CheckedPoleJet.Packet}
    (h : evaluateRectangle 15 n marks p y packets = some 1) :
    ∃ z : CanonicalZeroDivisor.ZeroPoint, CanonicalZeroDivisor.multiplicity z = 1 ∧
      z.1.re = (1/2 : ℝ) ∧ CanonicalZeroDivisor.heightHead (15 : ℝ) =
        {z, LocalZeroSymmetry.conjugatePoint z} :=
  JetRectangleCount.complete_pair_of_evaluate_one (rectangle_refines h)

end GRWTSK.RiemannHypothesis.CheckedJetContour
```
