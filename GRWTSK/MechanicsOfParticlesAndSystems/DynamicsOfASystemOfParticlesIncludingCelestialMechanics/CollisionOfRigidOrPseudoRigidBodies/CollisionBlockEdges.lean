import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.ElasticCollisionTrajectory

/-!
# Finite block edges and the normalized wedge model

Local attribution: grwtsk contributors.

Source: Grant Sanderson, How colliding blocks act like a beam of light...to
compute pi (February 3, 2019), text adaptation by Josh Pullen,
https://www.3blue1brown.com/lessons/clacks-via-light/ .
G. Galperin, Playing Pool with π (2003), DOI 10.1070/RD2003v008n04ABEH000252.

Here State.x denotes the near body's right edge and State.y the far body's
left edge. For near-body width w and a wall at zero, wall contact is x=w,
block contact is x=y. Subtracting w from BOTH edges gives the normalized
wedge 0<=x<=y used in the existing physical Step/Trace construction. This
translation preserves flight times, event labels and trace length. The far
body's own width is irrelevant to these two contact edges.

The edge dynamics below state their contact/flight laws directly. Their
correspondence to Step is proved, not taken as a definition or premise.
Source proof candidates: compilation/kernel/type/axiom checks NOT_RUN by user
deferral. No every-scale decimal claim or new physical approximation is added.
-/

namespace GRWTSK.Mechanics.Classical.ElasticCollision.BlockEdges

def normalize (w : ℝ) (s : State) : State := ⟨s.x - w, s.y - w, s.u, s.v⟩
def restore (w : ℝ) (s : State) : State := ⟨s.x + w, s.y + w, s.u, s.v⟩

theorem normalize_restore (w : ℝ) (s : State) : normalize w (restore w s) = s := by
  cases s
  simp [normalize, restore]

theorem restore_normalize (w : ℝ) (s : State) : restore w (normalize w s) = s := by
  cases s
  simp [normalize, restore]

def Admissible (w : ℝ) (s : State) : Prop := w ≤ s.x ∧ s.x ≤ s.y
def OpenFlight (w : ℝ) (s : State) (t : ℝ) : Prop :=
  ∀ r : ℝ, 0 < r → r < t → w < (s.advance r).x ∧ (s.advance r).x < (s.advance r).y

inductive EdgeStep (w m M : ℝ) : State → Event → State → Prop where
  | wall (s : State) (t : ℝ) (start : Admissible w s) (time : 0 ≤ t)
      (flight : OpenFlight w s t) (contact : (s.advance t).x = w)
      (other : w < (s.advance t).y) (incoming : s.u < 0) :
      EdgeStep w m M s .wall { s.advance t with u := -s.u }
  | blocks (s : State) (t : ℝ) (start : Admissible w s) (time : 0 ≤ t)
      (flight : OpenFlight w s t) (contact : (s.advance t).x = (s.advance t).y)
      (away : w < (s.advance t).x) (incoming : s.v < s.u) :
      EdgeStep w m M s .blocks
        { s.advance t with u := first m M s.u s.v, v := second m M s.u s.v }

inductive EdgeTrace (w m M : ℝ) : ℕ → State → State → Prop where
  | nil (s : State) : EdgeTrace w m M 0 s s
  | cons {n : ℕ} {s t u : State} {e : Event}
      (impact : EdgeStep w m M s e t) (rest : EdgeTrace w m M n t u) :
      EdgeTrace w m M (n + 1) s u

def EdgeTerminal (w m M : ℝ) (s : State) : Prop :=
  ∀ (e : Event) (t : State), ¬ EdgeStep w m M s e t

theorem normalize_advance (w t : ℝ) (s : State) :
    normalize w (s.advance t) = (normalize w s).advance t := by
  dsimp [normalize, State.advance]
  congr 1 <;> ring

theorem normalize_step (w m M : ℝ) {s t : State} {e : Event}
    (h : EdgeStep w m M s e t) : Step m M (normalize w s) e (normalize w t) := by
  cases h with
  | wall s t start time flight contact other incoming =>
    have hs : (normalize w s).admissible := by
      dsimp [State.admissible, normalize]
      dsimp [Admissible] at start
      constructor <;> linarith [start.1, start.2]
    have hf : (normalize w s).openFlight t := by
      intro r hr hrt
      obtain ⟨h₁, h₂⟩ := flight r hr hrt
      dsimp [normalize, State.advance] at *
      constructor <;> linarith
    have hc : ((normalize w s).advance t).x = 0 := by
      dsimp [normalize, State.advance] at *
      linarith
    have ho : 0 < ((normalize w s).advance t).y := by
      dsimp [normalize, State.advance] at *
      linarith
    have impact := Step.wall (m := m) (M := M) (normalize w s) t hs time hf hc ho incoming
    convert impact using 1 <;> dsimp [normalize, State.advance] <;> congr 1 <;> ring
  | blocks s t start time flight contact away incoming =>
    have hs : (normalize w s).admissible := by
      dsimp [State.admissible, normalize]
      dsimp [Admissible] at start
      constructor <;> linarith [start.1, start.2]
    have hf : (normalize w s).openFlight t := by
      intro r hr hrt
      obtain ⟨h₁, h₂⟩ := flight r hr hrt
      dsimp [normalize, State.advance] at *
      constructor <;> linarith
    have hc : ((normalize w s).advance t).x = ((normalize w s).advance t).y := by
      dsimp [normalize, State.advance] at *
      linarith
    have ho : 0 < ((normalize w s).advance t).x := by
      dsimp [normalize, State.advance] at *
      linarith
    have impact := Step.blocks (m := m) (M := M) (normalize w s) t hs time hf hc ho incoming
    convert impact using 1 <;> dsimp [normalize, State.advance] <;> congr 1 <;> ring

theorem restore_step (w m M : ℝ) {s t : State} {e : Event}
    (h : Step m M s e t) : EdgeStep w m M (restore w s) e (restore w t) := by
  cases h with
  | wall s t start time flight contact other incoming =>
    have hs : Admissible w (restore w s) := by
      dsimp [Admissible, restore]
      dsimp [State.admissible] at start
      constructor <;> linarith [start.1, start.2]
    have hf : OpenFlight w (restore w s) t := by
      intro r hr hrt
      obtain ⟨h₁, h₂⟩ := flight r hr hrt
      dsimp [restore, State.advance] at *
      constructor <;> linarith
    have hc : ((restore w s).advance t).x = w := by
      dsimp [restore, State.advance] at *
      linarith
    have ho : w < ((restore w s).advance t).y := by
      dsimp [restore, State.advance] at *
      linarith
    have impact := EdgeStep.wall (w := w) (m := m) (M := M) (restore w s) t hs time hf hc ho incoming
    convert impact using 1 <;> dsimp [restore, State.advance] <;> congr 1 <;> ring
  | blocks s t start time flight contact away incoming =>
    have hs : Admissible w (restore w s) := by
      dsimp [Admissible, restore]
      dsimp [State.admissible] at start
      constructor <;> linarith [start.1, start.2]
    have hf : OpenFlight w (restore w s) t := by
      intro r hr hrt
      obtain ⟨h₁, h₂⟩ := flight r hr hrt
      dsimp [restore, State.advance] at *
      constructor <;> linarith
    have hc : ((restore w s).advance t).x = ((restore w s).advance t).y := by
      dsimp [restore, State.advance] at *
      linarith
    have ho : w < ((restore w s).advance t).x := by
      dsimp [restore, State.advance] at *
      linarith
    have impact := EdgeStep.blocks (w := w) (m := m) (M := M) (restore w s) t hs time hf hc ho incoming
    convert impact using 1 <;> dsimp [restore, State.advance] <;> congr 1 <;> ring

theorem step_iff (w m M : ℝ) (s t : State) (e : Event) :
    EdgeStep w m M s e t ↔ Step m M (normalize w s) e (normalize w t) := by
  constructor
  · exact normalize_step w m M
  · intro h
    simpa only [restore_normalize] using restore_step w m M h

theorem normalize_trace (w m M : ℝ) {n : ℕ} {s t : State}
    (h : EdgeTrace w m M n s t) : Trace m M n (normalize w s) (normalize w t) := by
  induction h with
  | nil s => exact Trace.nil _
  | cons impact rest ih => exact Trace.cons (normalize_step w m M impact) ih

theorem restore_trace (w m M : ℝ) {n : ℕ} {s t : State}
    (h : Trace m M n s t) : EdgeTrace w m M n (restore w s) (restore w t) := by
  induction h with
  | nil s => exact EdgeTrace.nil _
  | cons impact rest ih => exact EdgeTrace.cons (restore_step w m M impact) ih

theorem trace_iff (w m M : ℝ) (n : ℕ) (s t : State) :
    EdgeTrace w m M n s t ↔ Trace m M n (normalize w s) (normalize w t) := by
  constructor
  · exact normalize_trace w m M
  · intro h
    simpa only [restore_normalize] using restore_trace w m M h

theorem terminal_iff (w m M : ℝ) (s : State) :
    EdgeTerminal w m M s ↔ Terminal m M (normalize w s) := by
  constructor
  · intro h e t impact
    have lifted := restore_step w m M impact
    rw [restore_normalize] at lifted
    exact h e (restore w t) lifted
  · intro h e t impact
    exact h e (normalize w t) (normalize_step w m M impact)

/-- Translation does not create or remove an isolated next impact. -/
theorem edge_step_deterministic (w m M : ℝ) {s t u : State} {e f : Event}
    (he : EdgeStep w m M s e t) (hf : EdgeStep w m M s f u) : e = f ∧ t = u := by
  obtain ⟨events, endpoints⟩ := step_deterministic m M
    (normalize_step w m M he) (normalize_step w m M hf)
  refine ⟨events, ?_⟩
  have same := congrArg (restore w) endpoints
  simpa only [restore_normalize] using same

/-- The original block-edge geometry inherits existence, termination and
unique strict-ceiling count. The positive width models a genuine finite block;
only its subtraction, not a zero-width approximation, is used. -/
theorem general_edge_trajectory_count (w m M A B c : ℝ)
    (hw : 0 < w) (hm : 0 < m) (hM : 0 < M)
    (hA : w < A) (hAB : A < B) (hc : 0 < c) :
    let N := (CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M)).toNat
    ∃ sn : State, EdgeTrace w m M N ⟨A, B, 0, -c⟩ sn ∧ EdgeTerminal w m M sn ∧
      (∀ {n : ℕ} {t : State}, EdgeTrace w m M n ⟨A, B, 0, -c⟩ t →
        EdgeTerminal w m M t → n = N) := by
  dsimp only
  obtain ⟨sn, run, final, unique⟩ := Unfolding.general_trajectory_count
    m M (A - w) (B - w) c hm hM (by linarith) (by linarith) hc
  refine ⟨restore w sn, ?_, ?_, ?_⟩
  · have lifted := restore_trace w m M run
    simpa [restore] using lifted
  · apply (terminal_iff w m M _).mpr
    simpa only [normalize_restore] using final
  · intro n t hrun hfinal
    have normalized := normalize_trace w m M hrun
    have terminal := (terminal_iff w m M t).mp hfinal
    exact unique (by simpa only [normalize] using normalized) terminal

end GRWTSK.Mechanics.Classical.ElasticCollision.BlockEdges
