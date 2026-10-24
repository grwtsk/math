/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalCheckedPoleJet
import GRWTSK.NumberTheory.Zeta.Riemann.CheckedJetContour

set_option autoImplicit false

/-!
# Canonical checked packets refine the unchanged complete contour evaluator

Every plan receives the exact generated packet for its own center and parameters.
The checked evaluator with this deterministic packet list equals the old evaluator.
This equality is representational; it does not prove any target result or reduce
kernel cost by itself. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CanonicalCheckedJetContour

open GRWTSK.Analysis.ComplexAnalysis GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open ConstructedRectangleCount (Plan planAt)
open RationalPoleContour (pointAt)

/-- One source-generated packet per literal plan, in the same list order. -/
def packets (plans : List Plan) : List CheckedPoleJet.Packet :=
  plans.map (fun p => CanonicalCheckedPoleJet.packet p.center p.parameters)

@[simp] theorem packets_length (plans : List Plan) :
    (packets plans).length = plans.length := by
  simp [packets]

theorem packetAt_packets {plans : List Plan} {i : ℕ} (hi : i < plans.length) :
    CheckedJetContour.packetAt (packets plans) i =
      CanonicalCheckedPoleJet.packet (planAt plans i).center (planAt plans i).parameters := by
  unfold CheckedJetContour.packetAt packets ConstructedRectangleCount.planAt
  rw [List.getD_eq_getElem _ _ (by simpa only [List.length_map] using hi),
    List.getD_eq_getElem _ _ hi]
  simp

/-- The exact canonical packet witnesses each old admitted edge. -/
theorem edgeCheck_packets {a b u v : Coordinates} {p : Plan}
    (h : JetPoleContour.EdgeValid a b u v p) :
    CheckedJetContour.edgeCheck a b u v p
      (CanonicalCheckedPoleJet.packet p.center p.parameters) = true := by
  have hp := CanonicalCheckedPoleJet.checkPatch_packet h.1
  simp only [CheckedJetContour.edgeCheck,hp,RationalJetStateFold.reference]
  change (inBall (sub a p.center) p.inner && inBall (sub b p.center) p.inner &&
    inBall (sub u (JetPoleContour.value p).mid) (JetPoleContour.radius p) &&
    inBall (sub v (JetPoleContour.value p).mid) (JetPoleContour.radius p)) = true
  simp [h.2.1,h.2.2.1,h.2.2.2.1,h.2.2.2.2]

/-- No finite choice premise: the canonical packets are explicit mathematical data. -/
theorem check_packets {n : ℕ} {v y : List Coordinates} {p : List Plan}
    (h : JetPoleContour.check n v p y = true) :
    CheckedJetContour.check n v p y (packets p) = true := by
  obtain ⟨hn,hv,hp,hy,hvc,hyc,he⟩ := (JetPoleContour.check_iff _ _ _ _).mp h
  apply (CheckedJetContour.check_iff _ _ _ _ _).mpr
  refine ⟨⟨hn,hv,hp,hy,hvc,hyc⟩,by simpa only [packets_length] using hp,?_⟩
  intro i hi
  have hil : i < n := Finset.mem_range.mp hi
  have hip : i < p.length := by simpa only [hp] using hil
  rw [packetAt_packets hip]
  exact edgeCheck_packets (he i hi)

/-- The canonical checked contour returns every old successful signed result. -/
theorem evaluate_packets {n : ℕ} {v y : List Coordinates} {p : List Plan} {k : ℤ}
    (h : JetPoleContour.evaluate n v p y = some k) :
    CheckedJetContour.evaluate n v p y (packets p) = some k := by
  obtain ⟨hc,hi⟩ := (JetPoleContour.evaluate_eq_some_iff _ _ _ _ _).mp h
  simp [CheckedJetContour.evaluate,check_packets hc,hi]

/-- Exact equality, including failure and signed orientation. -/
theorem evaluate_packets_eq (n : ℕ) (v : List Coordinates) (p : List Plan)
    (y : List Coordinates) :
    CheckedJetContour.evaluate n v p y (packets p) = JetPoleContour.evaluate n v p y := by
  cases ho : JetPoleContour.evaluate n v p y with
  | none =>
      cases hc : CheckedJetContour.evaluate n v p y (packets p) with
      | none => rfl
      | some k =>
          have hr := CheckedJetContour.evaluate_refines hc
          simp [ho] at hr
  | some k => exact evaluate_packets ho

/-- The same exact equality after restoring the literal rectangle guard and mesh. -/
theorem evaluateRectangle_packets_eq (T : ℚ) (n : ℕ) (marks : List ℚ)
    (p : List Plan) (y : List Coordinates) :
    CheckedJetContour.evaluateRectangle T n marks p y (packets p) =
      JetRectangleCount.evaluate T n marks p y := by
  unfold CheckedJetContour.evaluateRectangle JetRectangleCount.evaluate
  dsimp only
  by_cases hg : RationalRectangleCount.lower.1 < (RationalRectangleCount.upper T).1 ∧
      RationalRectangleCount.lower.2 < (RationalRectangleCount.upper T).2 <;>
    by_cases hm : RationalRectangleMesh.check n marks = true <;>
    simp [hg,hm,evaluate_packets_eq]

/-- A canonical checked result has exactly the old canonical count meaning. -/
theorem count_eq_of_packets {T : ℚ} {n : ℕ} {marks : List ℚ}
    {p : List Plan} {y : List Coordinates} {k : ℤ}
    (h : CheckedJetContour.evaluateRectangle T n marks p y (packets p) = some k) :
    (MirrorCountingRectangle.count (T : ℝ) : ℤ) = k :=
  CheckedJetContour.count_eq_of_checked h

end GRWTSK.RiemannHypothesis.CanonicalCheckedJetContour
