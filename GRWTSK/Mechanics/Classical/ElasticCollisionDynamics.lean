import GRWTSK.Mechanics.Classical.ElasticCollision
import Mathlib.Tactic.Linarith

/-!
# Collision law, reflection and admissible event traces

Local attribution: grwtsk contributors.

Sources: Grant Sanderson, the 2019 colliding-blocks sequence; G. Galperin,
Playing Pool with π, 2003, DOI 10.1070/RD2003v008n04ABEH000252.
The masses and the two velocities are ordered light/near-wall, heavy/far-wall.
Point positions encode the nonpenetration domain `0 ≤ x ≤ y`.

Source proof candidates. Compilation/kernel/axiom checks: NOT_RUN.
There is no general existence, uniqueness or event-count theorem for traces here.
-/

namespace GRWTSK.Mechanics.Classical.ElasticCollision

/-- Momentum and reversal of relative velocity uniquely specify the collision
map. Energy conservation alone would also allow the unchanged velocities. -/
theorem collision_law_unique (m M u v U V : ℝ) (h : m + M ≠ 0)
    (hp : m * U + M * V = m * u + M * v)
    (hr : U - V = -(u - v)) :
    U = first m M u v ∧ V = second m M u v := by
  constructor
  · unfold first
    apply (eq_div_iff h).2
    have hM := congrArg (fun z : ℝ => M * z) hr
    nlinarith [hM]
  · unfold second
    apply (eq_div_iff h).2
    have hm := congrArg (fun z : ℝ => m * z) hr
    nlinarith [hm]

/-- In coordinates scaled by `a,b`, with masses `a²,b²`, the first component
is reflection in the line spanned by `(a,b)`: twice the parallel projection
minus the original vector. -/
theorem square_mass_reflection_first (a b u v : ℝ) (h : a ^ 2 + b ^ 2 ≠ 0) :
    a * first (a ^ 2) (b ^ 2) u v =
      2 * (a * (a * u) + b * (b * v)) / (a ^ 2 + b ^ 2) * a - a * u := by
  unfold first
  field_simp [h]
  <;> ring

theorem square_mass_reflection_second (a b u v : ℝ) (h : a ^ 2 + b ^ 2 ≠ 0) :
    b * second (a ^ 2) (b ^ 2) u v =
      2 * (a * (a * u) + b * (b * v)) / (a ^ 2 + b ^ 2) * b - b * v := by
  unfold second
  field_simp [h]
  <;> ring

/-- Return the reflection formula to the actual nonnegative masses. -/
theorem scaled_reflection_first (m M u v : ℝ)
    (hm : 0 ≤ m) (hM : 0 ≤ M) (h : m + M ≠ 0) :
    Real.sqrt m * first m M u v =
      2 * (Real.sqrt m * (Real.sqrt m * u) +
        Real.sqrt M * (Real.sqrt M * v)) / (m + M) * Real.sqrt m -
          Real.sqrt m * u := by
  have hs : (Real.sqrt m) ^ 2 + (Real.sqrt M) ^ 2 ≠ 0 := by
    simpa only [Real.sq_sqrt hm, Real.sq_sqrt hM] using h
  simpa only [Real.sq_sqrt hm, Real.sq_sqrt hM] using
    square_mass_reflection_first (Real.sqrt m) (Real.sqrt M) u v hs

theorem scaled_reflection_second (m M u v : ℝ)
    (hm : 0 ≤ m) (hM : 0 ≤ M) (h : m + M ≠ 0) :
    Real.sqrt M * second m M u v =
      2 * (Real.sqrt m * (Real.sqrt m * u) +
        Real.sqrt M * (Real.sqrt M * v)) / (m + M) * Real.sqrt M -
          Real.sqrt M * v := by
  have hs : (Real.sqrt m) ^ 2 + (Real.sqrt M) ^ 2 ≠ 0 := by
    simpa only [Real.sq_sqrt hm, Real.sq_sqrt hM] using h
  simpa only [Real.sq_sqrt hm, Real.sq_sqrt hM] using
    square_mass_reflection_second (Real.sqrt m) (Real.sqrt M) u v hs

structure State where
  x : ℝ
  y : ℝ
  u : ℝ
  v : ℝ

def State.advance (s : State) (t : ℝ) : State :=
  ⟨s.x + s.u * t, s.y + s.v * t, s.u, s.v⟩

def State.admissible (s : State) : Prop := 0 ≤ s.x ∧ s.x ≤ s.y

/-- No wall or block contact in the strict interior of a flight. Endpoints
may be contacts; the separate incoming-velocity tests select actual impacts. -/
def State.openFlight (s : State) (t : ℝ) : Prop :=
  ∀ r : ℝ, 0 < r → r < t →
    0 < (s.advance r).x ∧ (s.advance r).x < (s.advance r).y

def State.energy (m M : ℝ) (s : State) : ℝ := m * s.u ^ 2 + M * s.v ^ 2

inductive Event where
  | wall
  | blocks

/-- An isolated, correctly directed impact after a contact-free flight.
The strict positive other coordinate excludes the simultaneous vertex impact. -/
inductive Step (m M : ℝ) : State → Event → State → Prop where
  | wall (s : State) (t : ℝ) (start : s.admissible) (time : 0 ≤ t)
      (flight : s.openFlight t) (contact : (s.advance t).x = 0)
      (other : 0 < (s.advance t).y) (incoming : s.u < 0) :
      Step m M s .wall { s.advance t with u := -s.u }
  | blocks (s : State) (t : ℝ) (start : s.admissible) (time : 0 ≤ t)
      (flight : s.openFlight t) (contact : (s.advance t).x = (s.advance t).y)
      (away : 0 < (s.advance t).x) (incoming : s.v < s.u) :
      Step m M s .blocks
        { s.advance t with u := first m M s.u s.v, v := second m M s.u s.v }

theorem advance_energy (m M : ℝ) (s : State) (t : ℝ) :
    State.energy m M (s.advance t) = State.energy m M s := rfl

theorem step_energy (m M : ℝ) (h : m + M ≠ 0)
    {s s' : State} {e : Event} (hs : Step m M s e s') :
    State.energy m M s' = State.energy m M s := by
  cases hs with
  | wall s t _ _ _ _ _ _ =>
    simp only [State.energy, State.advance]
    ring
  | blocks s t _ _ _ _ _ _ =>
    exact twice_energy m M s.u s.v h

theorem step_admissible (m M : ℝ) {s s' : State} {e : Event}
    (hs : Step m M s e s') : s'.admissible := by
  cases hs <;> dsimp [State.admissible, State.advance] at * <;>
    constructor <;> linarith

/-- A block impact changes the incoming relative velocity to separating. -/
theorem blocks_leave_separating (m M : ℝ) (h : m + M ≠ 0)
    {s s' : State} (hs : Step m M s .blocks s') : s'.u < s'.v := by
  cases hs with
  | blocks s t _ _ _ _ _ incoming =>
    change first m M s.u s.v < second m M s.u s.v
    have hr := relative_velocity m M s.u s.v h
    linarith

theorem wall_leaves_outgoing (m M : ℝ) {s s' : State}
    (hs : Step m M s .wall s') : 0 < s'.u := by
  cases hs <;> dsimp <;> linarith

/-- If a next impact exists after a block collision, it must be a wall impact.
This conclusion supplies alternation, not existence of the next impact. -/
theorem after_blocks_next_wall (m M : ℝ) (h : m + M ≠ 0)
    {s s' s'' : State} {e : Event}
    (hs : Step m M s .blocks s') (hn : Step m M s' e s'') : e = .wall := by
  cases e with
  | wall => rfl
  | blocks =>
    have hsep := blocks_leave_separating m M h hs
    cases hn <;> linarith

theorem after_wall_next_blocks (m M : ℝ) {s s' s'' : State} {e : Event}
    (hs : Step m M s .wall s') (hn : Step m M s' e s'') : e = .blocks := by
  cases e with
  | blocks => rfl
  | wall =>
    have hout := wall_leaves_outgoing m M hs
    cases hn <;> linarith

/-- A trace counts impacts, rather than the number of freely chosen flight
subdivisions. No continuous-time existence theorem is assumed by this type. -/
inductive Trace (m M : ℝ) : ℕ → State → State → Prop where
  | nil (s : State) : Trace m M 0 s s
  | cons {n : ℕ} {s s' s'' : State} {e : Event}
      (impact : Step m M s e s') (rest : Trace m M n s' s'') :
      Trace m M (n + 1) s s''

theorem trace_energy (m M : ℝ) (h : m + M ≠ 0)
    {n : ℕ} {s s' : State} (hs : Trace m M n s s') :
    State.energy m M s' = State.energy m M s := by
  induction hs with
  | nil => rfl
  | cons impact rest ih => exact ih.trans (step_energy m M h impact)

/-- Once both bodies move outwards and the far body is at least as fast,
neither incoming-velocity condition can ever hold. -/
theorem no_step_of_outgoing (m M : ℝ) (s : State)
    (hu : 0 ≤ s.u) (huv : s.u ≤ s.v) (e : Event) (s' : State) :
    ¬ Step m M s e s' := by
  intro hs
  cases hs <;> linarith

/-- The equal-mass example has a complete three-impact run, including the
contact-free flights and the terminal outgoing condition. Positions and speed
are normalized to `(1,2)` and `1`; general scaling is a separate statement. -/
theorem equal_mass_three_impact_run :
    Trace 1 1 3 ⟨1, 2, 0, -1⟩ ⟨1, 1, 0, 1⟩ ∧
      ∀ (e : Event) (s : State), ¬ Step 1 1 ⟨1, 1, 0, 1⟩ e s := by
  have h₁ : Step 1 1 ⟨1, 2, 0, -1⟩ .blocks ⟨1, 1, -1, 0⟩ := by
    have h := Step.blocks (m := (1 : ℝ)) (M := (1 : ℝ))
      (⟨1, 2, 0, -1⟩ : State) 1
      (by norm_num [State.admissible]) (by norm_num)
      (by
        intro r hr hrt
        dsimp [State.advance]
        constructor <;> linarith)
      (by norm_num [State.advance]) (by norm_num [State.advance]) (by norm_num)
    norm_num [State.advance, first, second] at h
    exact h
  have h₂ : Step 1 1 ⟨1, 1, -1, 0⟩ .wall ⟨0, 1, 1, 0⟩ := by
    have h := Step.wall (m := (1 : ℝ)) (M := (1 : ℝ))
      (⟨1, 1, -1, 0⟩ : State) 1
      (by norm_num [State.admissible]) (by norm_num)
      (by
        intro r hr hrt
        dsimp [State.advance]
        constructor <;> linarith)
      (by norm_num [State.advance]) (by norm_num [State.advance]) (by norm_num)
    norm_num [State.advance] at h
    exact h
  have h₃ : Step 1 1 ⟨0, 1, 1, 0⟩ .blocks ⟨1, 1, 0, 1⟩ := by
    have h := Step.blocks (m := (1 : ℝ)) (M := (1 : ℝ))
      (⟨0, 1, 1, 0⟩ : State) 1
      (by norm_num [State.admissible]) (by norm_num)
      (by
        intro r hr hrt
        dsimp [State.advance]
        constructor <;> linarith)
      (by norm_num [State.advance]) (by norm_num [State.advance]) (by norm_num)
    norm_num [State.advance, first, second] at h
    exact h
  constructor
  · exact Trace.cons h₁ (Trace.cons h₂ (Trace.cons h₃ (Trace.nil _)))
  · intro e s
    exact no_step_of_outgoing 1 1 _ (by norm_num) (by norm_num) e s

end GRWTSK.Mechanics.Classical.ElasticCollision
