import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.ElasticCollisionDynamics
import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.CollisionAngleCount
import Lean.Elab.Tactic.Omega

/-!
# Deterministic impacts and an explicit unfolded ray

Local attribution: grwtsk contributors.

MSC2020: 70F35, collision of rigid or pseudo-rigid bodies. Declaration namespaces
are retained independently of source navigation. Imports follow the published
MSC2020 source layout; this is not a change to historical verification scope.

Sources: G. Galperin, Playing Pool with π (2003),
DOI 10.1070/RD2003v008n04ABEH000252, Lemma 2(c) and section 8;
Grant Sanderson's 2019 colliding-blocks sequence.

Source proof candidates. Verification explicitly deferred by the user:
compilation, fresh kernel checking and transitive axiom auditing are NOT_RUN.
The event-count construction is not asserted as a supplied premise.
-/

namespace GRWTSK.Mechanics.Classical.ElasticCollision

private theorem wall_contact_time_unique (s : State) (t r : ℝ)
    (incoming : s.u < 0) (ht : (s.advance t).x = 0)
    (hr : (s.advance r).x = 0) : t = r := by
  apply mul_left_cancel₀ (ne_of_lt incoming)
  dsimp [State.advance] at ht hr
  linarith

private theorem blocks_contact_time_unique (s : State) (t r : ℝ)
    (incoming : s.v < s.u)
    (ht : (s.advance t).x = (s.advance t).y)
    (hr : (s.advance r).x = (s.advance r).y) : t = r := by
  apply mul_left_cancel₀ (sub_ne_zero.mpr (ne_of_gt incoming))
  dsimp [State.advance] at ht hr
  nlinarith

/-- A later contact cannot skip an earlier impact. Midpoints handle zero-time
contacts as well, without assuming that an endpoint lies in an open flight. -/
private theorem wall_blocks_incompatible (s : State) (tw tb : ℝ)
    (htw : 0 ≤ tw) (htb : 0 ≤ tb)
    (fw : s.openFlight tw) (fb : s.openFlight tb)
    (cw : (s.advance tw).x = 0)
    (cb : (s.advance tb).x = (s.advance tb).y)
    (away : 0 < (s.advance tb).x)
    (iw : s.u < 0) (ib : s.v < s.u) : False := by
  rcases lt_trichotomy tw tb with h | h | h
  · have middle : 0 < (tw + tb) / 2 := by linarith
    have before : (tw + tb) / 2 < tb := by linarith
    have safe := (fb _ middle before).1
    have negative := mul_neg_of_neg_of_pos iw
      (show 0 < (tw + tb) / 2 - tw by linarith)
    dsimp [State.advance] at cw safe
    nlinarith
  · subst tb
    dsimp [State.advance] at cw away
    linarith
  · have middle : 0 < (tw + tb) / 2 := by linarith
    have before : (tw + tb) / 2 < tw := by linarith
    have safe := (fw _ middle before).2
    have negative := mul_neg_of_neg_of_pos (sub_neg.mpr ib)
      (show 0 < (tw + tb) / 2 - tb by linarith)
    dsimp [State.advance] at cb safe
    nlinarith

/-- When an isolated next impact exists, both its kind and resulting state are
unique. This is determinism, not an assumption of next-impact existence. -/
theorem step_deterministic (m M : ℝ) {s s₁ s₂ : State} {e₁ e₂ : Event}
    (h₁ : Step m M s e₁ s₁) (h₂ : Step m M s e₂ s₂) :
    e₁ = e₂ ∧ s₁ = s₂ := by
  cases h₁ with
  | wall s t start time flight contact other incoming =>
    cases h₂ with
    | wall s r start' time' flight' contact' other' incoming' =>
      have same := wall_contact_time_unique s t r incoming contact contact'
      subst r
      exact ⟨rfl, rfl⟩
    | blocks s r start' time' flight' contact' away' incoming' =>
      exact False.elim (wall_blocks_incompatible s t r time time' flight flight'
        contact contact' away' incoming incoming')
  | blocks s t start time flight contact away incoming =>
    cases h₂ with
    | wall s r start' time' flight' contact' other' incoming' =>
      exact False.elim (wall_blocks_incompatible s r t time' time flight' flight
        contact' contact away incoming' incoming)
    | blocks s r start' time' flight' contact' away' incoming' =>
      have same := blocks_contact_time_unique s t r incoming contact contact'
      subst r
      exact ⟨rfl, rfl⟩

def Terminal (m M : ℝ) (s : State) : Prop :=
  ∀ (e : Event) (s' : State), ¬ Step m M s e s'

theorem terminal_of_outgoing (m M : ℝ) (s : State)
    (hu : 0 ≤ s.u) (huv : s.u ≤ s.v) : Terminal m M s :=
  no_step_of_outgoing m M s hu huv

/-- Construct the actual first impact from arbitrary separated positions and
strict incoming speed. The witness time is `(b-a)/c`, not an assumed event. -/
theorem initial_block_step (m M a b c : ℝ)
    (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    Step m M ⟨a, b, 0, -c⟩ .blocks
      ⟨a, a, first m M 0 (-c), second m M 0 (-c)⟩ := by
  have position : b + -c * ((b - a) / c) = a := by
    field_simp [ne_of_gt hc]
    <;> ring
  have impact := Step.blocks (m := m) (M := M)
    (⟨a, b, 0, -c⟩ : State) ((b - a) / c)
    (show (⟨a, b, 0, -c⟩ : State).admissible from ⟨le_of_lt ha, le_of_lt hab⟩)
    (le_of_lt (div_pos (sub_pos.mpr hab) hc))
    (by
      intro r hr hrt
      have before := (lt_div_iff₀ hc).mp hrt
      dsimp [State.advance]
      constructor <;> nlinarith)
    (by simpa only [State.advance, zero_mul, add_zero, position])
    (by simpa only [State.advance, zero_mul, add_zero] using ha)
    (by dsimp; linarith)
  simpa only [State.advance, zero_mul, add_zero, position] using impact

/-- Constructing one terminal trajectory will determine the count of every
terminal trajectory from that initial state; no minimality premise is needed. -/
theorem terminal_trace_length_unique (m M : ℝ) {n : ℕ} {s sn : State}
    (run : Trace m M n s sn) :
    ∀ {p : ℕ} {sp : State}, Trace m M p s sp →
      Terminal m M sn → Terminal m M sp → n = p := by
  induction run with
  | nil s =>
    intro p sp other terminal terminal'
    cases other with
    | nil => rfl
    | cons impact rest => exact False.elim (terminal _ _ impact)
  | @cons n s s' sn e impact rest ih =>
    intro p sp other terminal terminal'
    cases other with
    | nil => exact False.elim (terminal' _ _ impact)
    | @cons p s s₂ sp e₂ impact₂ rest₂ =>
      obtain ⟨sameEvent, sameState⟩ := step_deterministic m M impact impact₂
      subst s₂
      exact congrArg (fun k : ℕ => k + 1) (ih rest₂ terminal terminal')

namespace Unfolding

/-- Signed side of a ray through the origin. Its positive side is above the
ray; retaining this scalar avoids choosing a continuous polar argument. -/
def side (α X Y : ℝ) : ℝ := Y * Real.cos α - X * Real.sin α

/-- The heavy coordinate moves left while the positive light coordinate H is
constant. This is the actual unfolded affine ray, not an event-count oracle. -/
def boundary (A H W α t : ℝ) : ℝ := side α (A - W * t) H

def crossingTime (A H W α : ℝ) : ℝ :=
  (A - H * Real.cos α / Real.sin α) / W

theorem boundary_at_crossing (A H W α : ℝ)
    (hW : W ≠ 0) (hα : Real.sin α ≠ 0) :
    boundary A H W α (crossingTime A H W α) = 0 := by
  unfold boundary side crossingTime
  field_simp [hW, hα]
  <;> ring

theorem boundary_affine (A H W α t : ℝ)
    (hW : W ≠ 0) (hα : Real.sin α ≠ 0) :
    boundary A H W α t = W * Real.sin α * (t - crossingTime A H W α) := by
  unfold boundary side crossingTime
  field_simp [hW, hα]
  <;> ring

theorem boundary_pos_iff (A H W α t : ℝ)
    (hW : 0 < W) (hα : 0 < Real.sin α) :
    0 < boundary A H W α t ↔ crossingTime A H W α < t := by
  rw [boundary_affine A H W α t (ne_of_gt hW) (ne_of_gt hα),
    mul_pos_iff_of_pos_left (mul_pos hW hα), sub_pos]

theorem boundary_neg_iff (A H W α t : ℝ)
    (hW : 0 < W) (hα : 0 < Real.sin α) :
    boundary A H W α t < 0 ↔ t < crossingTime A H W α := by
  rw [boundary_affine A H W α t (ne_of_gt hW) (ne_of_gt hα),
    ← mul_zero (W * Real.sin α),
    mul_lt_mul_iff_right₀ (mul_pos hW hα), sub_neg]

/-- Consecutive ray-crossing times have an explicit positive difference.
The formula works for any two angles with nonzero sine. -/
theorem crossingTime_sub (A H W α β : ℝ)
    (hW : W ≠ 0) (hα : Real.sin α ≠ 0) (hβ : Real.sin β ≠ 0) :
    crossingTime A H W β - crossingTime A H W α =
      H * Real.sin (β - α) / (W * Real.sin α * Real.sin β) := by
  unfold crossingTime
  rw [Real.sin_sub]
  field_simp [hW, hα, hβ]
  <;> ring

theorem crossingTime_strictMono (A H W α β : ℝ)
    (hH : 0 < H) (hW : 0 < W) (hα : 0 < α) (hαβ : α < β)
    (hβ : β < Real.pi) :
    crossingTime A H W α < crossingTime A H W β := by
  have sa := Real.sin_pos_of_pos_of_lt_pi hα (lt_trans hαβ hβ)
  have sb := Real.sin_pos_of_pos_of_lt_pi (lt_trans hα hαβ) hβ
  have sd := Real.sin_pos_of_pos_of_lt_pi (sub_pos.mpr hαβ)
    (show β - α < Real.pi by linarith)
  have hd := div_pos (mul_pos hH sd) (mul_pos (mul_pos hW sa) sb)
  rw [← crossingTime_sub A H W α β (ne_of_gt hW) (ne_of_gt sa) (ne_of_gt sb)] at hd
  exact sub_pos.mp hd

def evenX (α X Y : ℝ) : ℝ := X * Real.cos α + Y * Real.sin α
def evenY (α X Y : ℝ) : ℝ := -X * Real.sin α + Y * Real.cos α
def oddX (β X Y : ℝ) : ℝ := X * Real.cos β + Y * Real.sin β
def oddY (β X Y : ℝ) : ℝ := X * Real.sin β - Y * Real.cos β

/-- Positive gap from the block-contact line in weighted coordinates. -/
def gap (θ X Y : ℝ) : ℝ := Real.sin θ * X - Real.cos θ * Y

theorem even_wall_side (α X Y : ℝ) : evenY α X Y = side α X Y := by
  unfold evenY side
  ring

theorem even_block_side (α θ X Y : ℝ) :
    gap θ (evenX α X Y) (evenY α X Y) = -side (α + θ) X Y := by
  unfold gap evenX evenY side
  rw [Real.sin_add, Real.cos_add]
  ring

theorem odd_wall_side (β X Y : ℝ) : oddY β X Y = -side β X Y := by
  unfold oddY side
  ring

theorem odd_block_side (α θ X Y : ℝ) :
    gap θ (oddX (α + θ) X Y) (oddY (α + θ) X Y) = side α X Y := by
  unfold gap oddX oddY side
  rw [Real.cos_add, Real.sin_add]
  calc
    _ = (Real.sin θ ^ 2 + Real.cos θ ^ 2) *
        (Y * Real.cos α - X * Real.sin α) := by ring
    _ = _ := by rw [Real.sin_sq_add_cos_sq]; ring

/-- At a wall switch the heavy component stays fixed and the light component
changes sign. Applied to positions and velocities, this is exact reflection. -/
theorem wall_switch (α X Y : ℝ) :
    evenX α X Y = oddX α X Y ∧ evenY α X Y = -oddY α X Y := by
  constructor
  · rfl
  · unfold evenY oddY; ring

/-- A block switch is reflection in the contact line at angle θ. The factors
cos(2θ),sin(2θ) will be identified with the positive-mass collision map. -/
theorem block_switch_first (α θ X Y : ℝ) :
    oddX (α + 2 * θ) X Y =
      Real.cos (2 * θ) * evenX α X Y + Real.sin (2 * θ) * evenY α X Y := by
  unfold oddX evenX evenY
  rw [Real.cos_add, Real.sin_add]
  ring

theorem block_switch_second (α θ X Y : ℝ) :
    oddY (α + 2 * θ) X Y =
      Real.sin (2 * θ) * evenX α X Y - Real.cos (2 * θ) * evenY α X Y := by
  unfold oddY evenX evenY
  rw [Real.sin_add, Real.cos_add]
  ring

theorem massAngle_cos (m M : ℝ) (hm : 0 < m) (hM : 0 < M) :
    Real.cos (CollisionAngleCount.massAngle m M) =
      Real.sqrt M / Real.sqrt (m + M) := by
  have hsum : 1 + m / M = (m + M) / M := by
    field_simp [ne_of_gt hM]
    <;> ring
  unfold CollisionAngleCount.massAngle
  rw [Real.cos_arctan, Real.sq_sqrt (le_of_lt (div_pos hm hM)), hsum,
    Real.sqrt_div (le_of_lt (add_pos hm hM)) M, one_div_div]

theorem massAngle_sin (m M : ℝ) (hm : 0 < m) (hM : 0 < M) :
    Real.sin (CollisionAngleCount.massAngle m M) =
      Real.sqrt m / Real.sqrt (m + M) := by
  have hsum : 1 + m / M = (m + M) / M := by
    field_simp [ne_of_gt hM]
    <;> ring
  unfold CollisionAngleCount.massAngle
  rw [Real.sin_arctan, Real.sq_sqrt (le_of_lt (div_pos hm hM)), hsum,
    Real.sqrt_div (le_of_lt hm) M,
    Real.sqrt_div (le_of_lt (add_pos hm hM)) M]
  field_simp [ne_of_gt (Real.sqrt_pos.mpr hM)]

theorem massAngle_cos_two (m M : ℝ) (hm : 0 < m) (hM : 0 < M) :
    Real.cos (2 * CollisionAngleCount.massAngle m M) = (M - m) / (m + M) := by
  rw [Real.cos_two_mul, massAngle_cos m M hm hM, div_pow,
    Real.sq_sqrt (le_of_lt hM), Real.sq_sqrt (le_of_lt (add_pos hm hM))]
  field_simp [ne_of_gt (add_pos hm hM)]
  <;> ring

theorem massAngle_sin_two (m M : ℝ) (hm : 0 < m) (hM : 0 < M) :
    Real.sin (2 * CollisionAngleCount.massAngle m M) =
      2 * Real.sqrt m * Real.sqrt M / (m + M) := by
  rw [Real.sin_two_mul, massAngle_sin m M hm hM, massAngle_cos m M hm hM]
  have hroot := ne_of_gt (Real.sqrt_pos.mpr (add_pos hm hM))
  calc
    _ = 2 * Real.sqrt m * Real.sqrt M /
        (Real.sqrt (m + M) * Real.sqrt (m + M)) := by
      field_simp [hroot]
      <;> ring
    _ = _ := by rw [← sq, Real.sq_sqrt (le_of_lt (add_pos hm hM))]

/-- The signed weighted gap is a positive scalar times the actual physical
gap. The same formula applies to velocities, retaining their ordering. -/
theorem massAngle_gap (m M x y : ℝ) (hm : 0 < m) (hM : 0 < M) :
    gap (CollisionAngleCount.massAngle m M) (Real.sqrt M * y) (Real.sqrt m * x) =
      Real.sqrt m * Real.sqrt M / Real.sqrt (m + M) * (y - x) := by
  unfold gap
  rw [massAngle_sin m M hm hM, massAngle_cos m M hm hM]
  ring

private theorem squared_mass_heavy (a b X Y : ℝ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hs : a ^ 2 + b ^ 2 ≠ 0) :
    (b ^ 2 - a ^ 2) / (a ^ 2 + b ^ 2) * X +
      (2 * a * b / (a ^ 2 + b ^ 2)) * Y =
        b * second (a ^ 2) (b ^ 2) (Y / a) (X / b) := by
  unfold second
  field_simp [ha, hb, hs]
  <;> ring

private theorem squared_mass_light (a b X Y : ℝ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hs : a ^ 2 + b ^ 2 ≠ 0) :
    (2 * a * b / (a ^ 2 + b ^ 2)) * X -
      (b ^ 2 - a ^ 2) / (a ^ 2 + b ^ 2) * Y =
        a * first (a ^ 2) (b ^ 2) (Y / a) (X / b) := by
  unfold first
  field_simp [ha, hb, hs]
  <;> ring

/-- Heavy-first geometric reflection returns exactly the heavy physical
velocity. No coordinate-order analogy or conservation-only choice is used. -/
theorem reflected_heavy_velocity (m M X Y : ℝ) (hm : 0 < m) (hM : 0 < M) :
    Real.cos (2 * CollisionAngleCount.massAngle m M) * X +
      Real.sin (2 * CollisionAngleCount.massAngle m M) * Y =
        Real.sqrt M * second m M (Y / Real.sqrt m) (X / Real.sqrt M) := by
  rw [massAngle_cos_two m M hm hM, massAngle_sin_two m M hm hM]
  have hs : (Real.sqrt m) ^ 2 + (Real.sqrt M) ^ 2 ≠ 0 := by
    rw [Real.sq_sqrt (le_of_lt hm), Real.sq_sqrt (le_of_lt hM)]
    exact ne_of_gt (add_pos hm hM)
  simpa only [Real.sq_sqrt (le_of_lt hm), Real.sq_sqrt (le_of_lt hM)] using
    squared_mass_heavy (Real.sqrt m) (Real.sqrt M) X Y
      (ne_of_gt (Real.sqrt_pos.mpr hm)) (ne_of_gt (Real.sqrt_pos.mpr hM)) hs

theorem reflected_light_velocity (m M X Y : ℝ) (hm : 0 < m) (hM : 0 < M) :
    Real.sin (2 * CollisionAngleCount.massAngle m M) * X -
      Real.cos (2 * CollisionAngleCount.massAngle m M) * Y =
        Real.sqrt m * first m M (Y / Real.sqrt m) (X / Real.sqrt M) := by
  rw [massAngle_sin_two m M hm hM, massAngle_cos_two m M hm hM]
  have hs : (Real.sqrt m) ^ 2 + (Real.sqrt M) ^ 2 ≠ 0 := by
    rw [Real.sq_sqrt (le_of_lt hm), Real.sq_sqrt (le_of_lt hM)]
    exact ne_of_gt (add_pos hm hM)
  simpa only [Real.sq_sqrt (le_of_lt hm), Real.sq_sqrt (le_of_lt hM)] using
    squared_mass_light (Real.sqrt m) (Real.sqrt M) X Y
      (ne_of_gt (Real.sqrt_pos.mpr hm)) (ne_of_gt (Real.sqrt_pos.mpr hM)) hs

/-- The first unfolded crossing has the ordinary physical gap-over-speed
time for every positive mass pair and incoming speed. -/
theorem first_crossing_time (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hc : 0 < c) :
    crossingTime (Real.sqrt M * b) (Real.sqrt m * a) (Real.sqrt M * c)
      (CollisionAngleCount.massAngle m M) = (b - a) / c := by
  unfold crossingTime
  rw [massAngle_cos m M hm hM, massAngle_sin m M hm hM]
  field_simp [ne_of_gt (Real.sqrt_pos.mpr hm),
    ne_of_gt (Real.sqrt_pos.mpr hM),
    ne_of_gt (Real.sqrt_pos.mpr (add_pos hm hM)), ne_of_gt hc]
  <;> ring

/-- The two moving halfplane coordinates recover the physical velocities;
their nonnegativity is exactly the outgoing condition used by Terminal. -/
theorem outgoing_of_weighted_sides (m M X Y : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hY : 0 ≤ Y)
    (hgap : 0 ≤ gap (CollisionAngleCount.massAngle m M) X Y) :
    0 ≤ Y / Real.sqrt m ∧ Y / Real.sqrt m ≤ X / Real.sqrt M := by
  have hmr := Real.sqrt_pos.mpr hm
  have hMr := Real.sqrt_pos.mpr hM
  have hsr := Real.sqrt_pos.mpr (add_pos hm hM)
  constructor
  · exact div_nonneg hY (le_of_lt hmr)
  · have identity := massAngle_gap m M (Y / Real.sqrt m) (X / Real.sqrt M) hm hM
    have mx : Real.sqrt M * (X / Real.sqrt M) = X := by
      field_simp [ne_of_gt hMr]
    have my : Real.sqrt m * (Y / Real.sqrt m) = Y := by
      field_simp [ne_of_gt hmr]
    rw [mx, my] at identity
    have hK := div_pos (mul_pos hmr hMr) hsr
    have hnonneg : 0 ≤ X / Real.sqrt M - Y / Real.sqrt m := by
      by_contra h
      have negative := mul_neg_of_pos_of_neg hK (lt_of_not_ge h)
      linarith
    exact sub_nonneg.mp hnonneg

private theorem sin_nonpos_after_pi (β : ℝ)
    (hl : Real.pi ≤ β) (hu : β ≤ 2 * Real.pi) : Real.sin β ≤ 0 := by
  have hn := Real.sin_nonneg_of_nonneg_of_le_pi
    (show 0 ≤ β - Real.pi by linarith) (show β - Real.pi ≤ Real.pi by linarith)
  have he : β = (β - Real.pi) + Real.pi := by ring
  rw [he, Real.sin_add_pi]
  exact neg_nonpos.mpr hn

/-- At the last sector, one side velocity is strictly positive and the other
is nonnegative. Equality at the next ray is allowed, including equal masses. -/
theorem terminal_even_sides (W α θ : ℝ) (hW : 0 < W)
    (hα : 0 < α) (hαπ : α < Real.pi)
    (hnext : Real.pi ≤ α + θ) (hupper : α + θ ≤ 2 * Real.pi) :
    0 ≤ evenY α (-W) 0 ∧
      0 ≤ gap θ (evenX α (-W) 0) (evenY α (-W) 0) := by
  rw [even_wall_side, even_block_side]
  have hs := Real.sin_pos_of_pos_of_lt_pi hα hαπ
  have hn := sin_nonpos_after_pi (α + θ) hnext hupper
  dsimp [side]
  constructor <;> nlinarith [mul_pos hW hs, mul_nonpos_of_nonneg_of_nonpos (le_of_lt hW) hn]

theorem terminal_odd_sides (W α θ : ℝ) (hW : 0 < W)
    (hα : 0 < α) (hαπ : α < Real.pi)
    (hnext : Real.pi ≤ α + θ) (hupper : α + θ ≤ 2 * Real.pi) :
    0 ≤ oddY (α + θ) (-W) 0 ∧
      0 ≤ gap θ (oddX (α + θ) (-W) 0) (oddY (α + θ) (-W) 0) := by
  rw [odd_wall_side, odd_block_side]
  have hs := Real.sin_pos_of_pos_of_lt_pi hα hαπ
  have hn := sin_nonpos_after_pi (α + θ) hnext hupper
  dsimp [side]
  constructor <;> nlinarith [mul_pos hW hs, mul_nonpos_of_nonneg_of_nonpos (le_of_lt hW) hn]

/-- The strict ceiling count itself supplies all final-sector angle bounds.
Both parity formulas therefore have outgoing side velocities, without a
nonintegrality assumption on pi/theta. Existence of the physical trace is
still supplied by constructing and gluing its finite segments. -/
theorem counted_terminal_sides (θ W : ℝ) (hθ : 0 < θ)
    (hθπ : θ < Real.pi / 2) (hW : 0 < W) :
    let α := (CollisionAngleCount.angularCount θ : ℝ) * θ
    (0 ≤ evenY α (-W) 0 ∧
      0 ≤ gap θ (evenX α (-W) 0) (evenY α (-W) 0)) ∧
    (0 ≤ oddY (α + θ) (-W) 0 ∧
      0 ≤ gap θ (oddX (α + θ) (-W) 0) (oddY (α + θ) (-W) 0)) := by
  dsimp only
  obtain ⟨hl, hu⟩ := CollisionAngleCount.angularCount_bounds θ hθ
  have hn : (2 : ℤ) ≤ CollisionAngleCount.angularCount θ := by
    apply (CollisionAngleCount.le_angularCount_iff θ hθ 2).2
    norm_num
    linarith
  have hnpos : (0 : ℤ) < CollisionAngleCount.angularCount θ := by linarith
  have hreal : (0 : ℝ) < (CollisionAngleCount.angularCount θ : ℝ) := by
    exact_mod_cast hnpos
  have hα := mul_pos hreal hθ
  have hu' : (CollisionAngleCount.angularCount θ : ℝ) * θ + θ ≤ 2 * Real.pi := by
    linarith [Real.pi_pos]
  constructor
  · exact terminal_even_sides W _ θ hW hα hl (by linarith) hu'
  · exact terminal_odd_sides W _ θ hW hα hl (by linarith) hu'

def evenState (m M A H W α t : ℝ) : State :=
  ⟨evenY α (A - W * t) H / Real.sqrt m,
    evenX α (A - W * t) H / Real.sqrt M,
    evenY α (-W) 0 / Real.sqrt m,
    evenX α (-W) 0 / Real.sqrt M⟩

def oddState (m M A H W β t : ℝ) : State :=
  ⟨oddY β (A - W * t) H / Real.sqrt m,
    oddX β (A - W * t) H / Real.sqrt M,
    oddY β (-W) 0 / Real.sqrt m,
    oddX β (-W) 0 / Real.sqrt M⟩

theorem evenState_advance (m M A H W α t r : ℝ) :
    (evenState m M A H W α t).advance r = evenState m M A H W α (t + r) := by
  unfold evenState State.advance
  congr 1 <;> dsimp only [evenX, evenY] <;> ring

theorem oddState_advance (m M A H W β t r : ℝ) :
    (oddState m M A H W β t).advance r = oddState m M A H W β (t + r) := by
  unfold oddState State.advance
  congr 1 <;> dsimp only [oddX, oddY] <;> ring

theorem interior_of_weighted_sides (m M X Y : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hY : 0 < Y)
    (hg : 0 < gap (CollisionAngleCount.massAngle m M) X Y) :
    0 < Y / Real.sqrt m ∧ Y / Real.sqrt m < X / Real.sqrt M := by
  have hmr := Real.sqrt_pos.mpr hm
  have hMr := Real.sqrt_pos.mpr hM
  have hsr := Real.sqrt_pos.mpr (add_pos hm hM)
  constructor
  · exact div_pos hY hmr
  · have identity := massAngle_gap m M (Y / Real.sqrt m) (X / Real.sqrt M) hm hM
    have mx : Real.sqrt M * (X / Real.sqrt M) = X := by
      field_simp [ne_of_gt hMr]
    have my : Real.sqrt m * (Y / Real.sqrt m) = Y := by
      field_simp [ne_of_gt hmr]
    rw [mx, my] at identity
    have hK := div_pos (mul_pos hmr hMr) hsr
    have hpositive : 0 < (Real.sqrt m * Real.sqrt M / Real.sqrt (m + M)) *
        (X / Real.sqrt M - Y / Real.sqrt m) := by
      rw [← identity]
      exact hg
    exact sub_pos.mp ((mul_pos_iff_of_pos_left hK).mp hpositive)

/-- Every interior time of a folded ray segment satisfies the actual physical
open-flight predicate. The interval endpoints are explicit crossing times. -/
theorem even_segment_openFlight (m M A H W α : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hW : 0 < W)
    (hα : 0 < α) (hupper : α + CollisionAngleCount.massAngle m M < Real.pi) :
    (evenState m M A H W α (crossingTime A H W α)).openFlight
      (crossingTime A H W (α + CollisionAngleCount.massAngle m M) -
        crossingTime A H W α) := by
  let θ := CollisionAngleCount.massAngle m M
  change α + θ < Real.pi at hupper
  have hθ : 0 < θ := CollisionAngleCount.massAngle_pos m M hm hM
  have sa := Real.sin_pos_of_pos_of_lt_pi hα (show α < Real.pi by linarith)
  have sb := Real.sin_pos_of_pos_of_lt_pi (show 0 < α + θ by linarith) hupper
  intro r hr hrt
  change r < crossingTime A H W (α + θ) - crossingTime A H W α at hrt
  rw [evenState_advance]
  have left : 0 < boundary A H W α (crossingTime A H W α + r) :=
    (boundary_pos_iff A H W α _ hW sa).2 (by linarith)
  have right : boundary A H W (α + θ) (crossingTime A H W α + r) < 0 :=
    (boundary_neg_iff A H W (α + θ) _ hW sb).2 (by linarith)
  apply interior_of_weighted_sides m M _ _ hm hM
  · rw [even_wall_side]
    exact left
  · rw [even_block_side]
    exact neg_pos.mpr right

theorem odd_segment_openFlight (m M A H W α : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hW : 0 < W)
    (hα : 0 < α) (hupper : α + CollisionAngleCount.massAngle m M < Real.pi) :
    (oddState m M A H W (α + CollisionAngleCount.massAngle m M)
      (crossingTime A H W α)).openFlight
      (crossingTime A H W (α + CollisionAngleCount.massAngle m M) -
        crossingTime A H W α) := by
  let θ := CollisionAngleCount.massAngle m M
  change α + θ < Real.pi at hupper
  have hθ : 0 < θ := CollisionAngleCount.massAngle_pos m M hm hM
  have sa := Real.sin_pos_of_pos_of_lt_pi hα (show α < Real.pi by linarith)
  have sb := Real.sin_pos_of_pos_of_lt_pi (show 0 < α + θ by linarith) hupper
  intro r hr hrt
  change r < crossingTime A H W (α + θ) - crossingTime A H W α at hrt
  rw [oddState_advance]
  have left : 0 < boundary A H W α (crossingTime A H W α + r) :=
    (boundary_pos_iff A H W α _ hW sa).2 (by linarith)
  have right : boundary A H W (α + θ) (crossingTime A H W α + r) < 0 :=
    (boundary_neg_iff A H W (α + θ) _ hW sb).2 (by linarith)
  apply interior_of_weighted_sides m M _ _ hm hM
  · rw [odd_wall_side]
    exact neg_pos.mpr right
  · rw [odd_block_side]
    exact left

theorem state_eq_of_fields {s t : State}
    (hx : s.x = t.x) (hy : s.y = t.y) (hu : s.u = t.u) (hv : s.v = t.v) : s = t := by
  cases s
  cases t
  simp_all

theorem rayX_at_crossing (A H W α : ℝ)
    (hW : W ≠ 0) (hs : Real.sin α ≠ 0) :
    A - W * crossingTime A H W α = H * Real.cos α / Real.sin α := by
  unfold crossingTime
  field_simp [hW, hs]
  <;> ring

/-- Exact coordinates at a boundary crossing. In particular, positive H and
positive sine give positive radial distance, excluding a vertex impact. -/
theorem even_crossing_coordinates (A H W α β : ℝ)
    (hW : W ≠ 0) (hs : Real.sin β ≠ 0) :
    evenX α (A - W * crossingTime A H W β) H =
        H * Real.cos (β - α) / Real.sin β ∧
    evenY α (A - W * crossingTime A H W β) H =
        H * Real.sin (β - α) / Real.sin β := by
  constructor
  · rw [rayX_at_crossing A H W β hW hs]
    dsimp only [evenX]
    rw [Real.cos_sub]
    field_simp [hs]
    <;> ring
  · rw [rayX_at_crossing A H W β hW hs]
    dsimp only [evenY]
    rw [Real.sin_sub]
    field_simp [hs]
    <;> ring

theorem odd_crossing_coordinates (A H W α β : ℝ)
    (hW : W ≠ 0) (hs : Real.sin α ≠ 0) :
    oddX β (A - W * crossingTime A H W α) H =
        H * Real.cos (β - α) / Real.sin α ∧
    oddY β (A - W * crossingTime A H W α) H =
        H * Real.sin (β - α) / Real.sin α := by
  constructor
  · rw [rayX_at_crossing A H W α hW hs]
    dsimp only [oddX]
    rw [Real.cos_sub]
    field_simp [hs]
    <;> ring
  · rw [rayX_at_crossing A H W α hW hs]
    dsimp only [oddY]
    rw [Real.sin_sub]
    field_simp [hs]
    <;> ring

theorem block_reflection_fixed (θ X Y : ℝ) (contact : gap θ X Y = 0) :
    Real.cos (2 * θ) * X + Real.sin (2 * θ) * Y = X ∧
    Real.sin (2 * θ) * X - Real.cos (2 * θ) * Y = Y := by
  have unit := Real.sin_sq_add_cos_sq θ
  have unitX := congrArg (fun z : ℝ => z * X) unit
  have unitY := congrArg (fun z : ℝ => z * Y) unit
  have contactS := congrArg (fun z : ℝ => Real.sin θ * z) contact
  have contactC := congrArg (fun z : ℝ => Real.cos θ * z) contact
  dsimp only [gap] at contactS contactC
  simp only [Real.cos_two_mul, Real.sin_two_mul]
  constructor <;> nlinarith [unitX, unitY, contactS, contactC]

theorem wall_update_eq_even (m M A H W β t : ℝ)
    (contact : oddY β (A - W * t) H = 0) :
    { oddState m M A H W β t with u := -(oddState m M A H W β t).u } =
      evenState m M A H W β t := by
  have pos := wall_switch β (A - W * t) H
  have vel := wall_switch β (-W) 0
  apply state_eq_of_fields
  · dsimp only [oddState, evenState]
    rw [pos.2, contact]
    simp
  · exact congrArg (fun z : ℝ => z / Real.sqrt M) pos.1.symm
  · dsimp only [oddState, evenState]
    rw [vel.2]
    ring
  · exact congrArg (fun z : ℝ => z / Real.sqrt M) vel.1.symm

/-- The two fold formulas agree on the block-contact line, and their velocity
switch is precisely the collision update. Both positions and velocities are
identified, rather than only a preserved energy or an angle analogy. -/
theorem blocks_update_eq_odd (m M A H W α t : ℝ)
    (hm : 0 < m) (hM : 0 < M)
    (contact : gap (CollisionAngleCount.massAngle m M)
      (evenX α (A - W * t) H) (evenY α (A - W * t) H) = 0) :
    { evenState m M A H W α t with
      u := first m M (evenState m M A H W α t).u (evenState m M A H W α t).v,
      v := second m M (evenState m M A H W α t).u (evenState m M A H W α t).v } =
      oddState m M A H W (α + 2 * CollisionAngleCount.massAngle m M) t := by
  let θ := CollisionAngleCount.massAngle m M
  have fixed := block_reflection_fixed θ
    (evenX α (A - W * t) H) (evenY α (A - W * t) H) contact
  have heavy := reflected_heavy_velocity m M (evenX α (-W) 0) (evenY α (-W) 0) hm hM
  have light := reflected_light_velocity m M (evenX α (-W) 0) (evenY α (-W) 0) hm hM
  have hmr := ne_of_gt (Real.sqrt_pos.mpr hm)
  have hMr := ne_of_gt (Real.sqrt_pos.mpr hM)
  apply state_eq_of_fields
  · dsimp only [evenState, oddState]
    rw [block_switch_second, fixed.2]
  · dsimp only [evenState, oddState]
    rw [block_switch_first, fixed.1]
  · dsimp only [evenState, oddState]
    rw [block_switch_second, light]
    field_simp [hmr]
  · dsimp only [evenState, oddState]
    rw [block_switch_first, heavy]
    field_simp [hMr]

theorem block_position_coordinates (m M H γ : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hs : Real.sin γ ≠ 0) :
    (H * Real.sin (CollisionAngleCount.massAngle m M) / Real.sin γ) / Real.sqrt m =
        H / (Real.sqrt (m + M) * Real.sin γ) ∧
    (H * Real.cos (CollisionAngleCount.massAngle m M) / Real.sin γ) / Real.sqrt M =
        H / (Real.sqrt (m + M) * Real.sin γ) := by
  rw [massAngle_sin m M hm hM, massAngle_cos m M hm hM]
  have hmr := ne_of_gt (Real.sqrt_pos.mpr hm)
  have hMr := ne_of_gt (Real.sqrt_pos.mpr hM)
  have hsr := ne_of_gt (Real.sqrt_pos.mpr (add_pos hm hM))
  constructor <;> field_simp [hmr, hMr, hsr, hs] <;> ring

theorem incoming_blocks_of_weighted_gap (m M X Y : ℝ)
    (hm : 0 < m) (hM : 0 < M)
    (hg : gap (CollisionAngleCount.massAngle m M) X Y < 0) :
    X / Real.sqrt M < Y / Real.sqrt m := by
  have hmr := Real.sqrt_pos.mpr hm
  have hMr := Real.sqrt_pos.mpr hM
  have hsr := Real.sqrt_pos.mpr (add_pos hm hM)
  have identity := massAngle_gap m M (Y / Real.sqrt m) (X / Real.sqrt M) hm hM
  have mx : Real.sqrt M * (X / Real.sqrt M) = X := by field_simp [ne_of_gt hMr]
  have my : Real.sqrt m * (Y / Real.sqrt m) = Y := by field_simp [ne_of_gt hmr]
  rw [mx, my] at identity
  have hK := div_pos (mul_pos hmr hMr) hsr
  by_contra h
  have hn := mul_nonneg (le_of_lt hK) (sub_nonneg.mpr (le_of_not_gt h))
  linarith

/-- Every even folded segment ends in a directed block Step. All contact,
positivity, nonpenetration and noncontact premises are constructed explicitly. -/
theorem even_segment_blocks_step (m M A H W α : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hH : 0 < H) (hW : 0 < W)
    (hα : 0 < α) (hupper : α + CollisionAngleCount.massAngle m M < Real.pi) :
    Step m M
      (evenState m M A H W α (crossingTime A H W α)) .blocks
      (oddState m M A H W (α + 2 * CollisionAngleCount.massAngle m M)
        (crossingTime A H W (α + CollisionAngleCount.massAngle m M))) := by
  let θ := CollisionAngleCount.massAngle m M
  let ta := crossingTime A H W α
  let tb := crossingTime A H W (α + θ)
  let start := evenState m M A H W α ta
  have hθ : 0 < θ := CollisionAngleCount.massAngle_pos m M hm hM
  change α + θ < Real.pi at hupper
  have sa := Real.sin_pos_of_pos_of_lt_pi hα (show α < Real.pi by linarith)
  have sb := Real.sin_pos_of_pos_of_lt_pi (show 0 < α + θ by linarith) hupper
  have order : ta < tb := crossingTime_strictMono A H W α (α + θ) hH hW hα
    (by linarith) hupper
  have begin := even_crossing_coordinates A H W α α (ne_of_gt hW) (ne_of_gt sa)
  have finish := even_crossing_coordinates A H W α (α + θ) (ne_of_gt hW) (ne_of_gt sb)
  simp only [sub_self, Real.cos_zero, Real.sin_zero, mul_one, mul_zero, zero_div] at begin
  have angle_sub : α + θ - α = θ := by ring
  rw [angle_sub] at finish
  have positions := block_position_coordinates m M H (α + θ) hm hM (ne_of_gt sb)
  have positive := div_pos hH (mul_pos (Real.sqrt_pos.mpr (add_pos hm hM)) sb)
  have advance : start.advance (tb - ta) = evenState m M A H W α tb := by
    dsimp only [start]
    rw [evenState_advance]
    congr 1 <;> ring
  have contact : (start.advance (tb - ta)).x = (start.advance (tb - ta)).y := by
    rw [advance]
    dsimp only [evenState]
    rw [finish.1, finish.2, positions.1, positions.2]
  have away : 0 < (start.advance (tb - ta)).x := by
    rw [advance]
    dsimp only [evenState]
    rw [finish.2, positions.1]
    exact positive
  have initial : start.admissible := by
    dsimp only [start, State.admissible, evenState]
    rw [begin.1, begin.2]
    constructor
    · simp
    · simpa using (div_pos (div_pos hH sa) (Real.sqrt_pos.mpr hM)).le
  have incoming : start.v < start.u := by
    apply incoming_blocks_of_weighted_gap m M _ _ hm hM
    rw [even_block_side]
    dsimp only [side]
    nlinarith [mul_pos hW sb]
  have result := Step.blocks (m := m) (M := M) start (tb - ta) initial
    (le_of_lt (sub_pos.mpr order))
    (even_segment_openFlight m M A H W α hm hM hW hα hupper) contact away incoming
  have fixed : gap θ (evenX α (A - W * tb) H) (evenY α (A - W * tb) H) = 0 := by
    rw [even_block_side]
    exact neg_eq_zero.mpr (boundary_at_crossing A H W (α + θ) (ne_of_gt hW) (ne_of_gt sb))
  have update := blocks_update_eq_odd m M A H W α tb hm hM fixed
  have advanceU := congrArg State.u advance
  have advanceV := congrArg State.v advance
  dsimp only [State.advance] at advanceU advanceV
  simpa only [advance, advanceU, advanceV, update] using result

/-- Every odd folded segment ends in a directed wall Step, with the other
body strictly away from the wall and no intermediate contact. -/
theorem odd_segment_wall_step (m M A H W α : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hH : 0 < H) (hW : 0 < W)
    (hα : 0 < α) (hupper : α + CollisionAngleCount.massAngle m M < Real.pi) :
    Step m M
      (oddState m M A H W (α + CollisionAngleCount.massAngle m M) (crossingTime A H W α)) .wall
      (evenState m M A H W (α + CollisionAngleCount.massAngle m M)
        (crossingTime A H W (α + CollisionAngleCount.massAngle m M))) := by
  let θ := CollisionAngleCount.massAngle m M
  let ta := crossingTime A H W α
  let tb := crossingTime A H W (α + θ)
  let start := oddState m M A H W (α + θ) ta
  have hθ : 0 < θ := CollisionAngleCount.massAngle_pos m M hm hM
  change α + θ < Real.pi at hupper
  have sa := Real.sin_pos_of_pos_of_lt_pi hα (show α < Real.pi by linarith)
  have sb := Real.sin_pos_of_pos_of_lt_pi (show 0 < α + θ by linarith) hupper
  have order : ta < tb := crossingTime_strictMono A H W α (α + θ) hH hW hα (by linarith) hupper
  have begin := odd_crossing_coordinates A H W α (α + θ) (ne_of_gt hW) (ne_of_gt sa)
  have finish := odd_crossing_coordinates A H W (α + θ) (α + θ) (ne_of_gt hW) (ne_of_gt sb)
  have angle_sub : α + θ - α = θ := by ring
  rw [angle_sub] at begin
  simp only [sub_self, Real.cos_zero, Real.sin_zero, mul_one, mul_zero, zero_div] at finish
  have positions := block_position_coordinates m M H α hm hM (ne_of_gt sa)
  have positive := div_pos hH (mul_pos (Real.sqrt_pos.mpr (add_pos hm hM)) sa)
  have initial : start.admissible := by
    dsimp only [start, State.admissible, oddState]
    rw [begin.1, begin.2, positions.1, positions.2]
    exact ⟨positive.le, le_rfl⟩
  have advance : start.advance (tb - ta) = oddState m M A H W (α + θ) tb := by
    dsimp only [start]
    rw [oddState_advance]
    congr 1 <;> ring
  have contact : (start.advance (tb - ta)).x = 0 := by
    rw [advance]
    dsimp only [oddState]
    rw [finish.2]
    simp
  have other : 0 < (start.advance (tb - ta)).y := by
    rw [advance]
    dsimp only [oddState]
    rw [finish.1]
    exact div_pos (div_pos hH sb) (Real.sqrt_pos.mpr hM)
  have incoming : start.u < 0 := by
    dsimp only [start, oddState]
    rw [odd_wall_side]
    dsimp only [side]
    apply div_neg_of_neg_of_pos _ (Real.sqrt_pos.mpr hm)
    nlinarith [mul_pos hW sb]
  have result := Step.wall (m := m) (M := M) start (tb - ta) initial
    (le_of_lt (sub_pos.mpr order))
    (odd_segment_openFlight m M A H W α hm hM hW hα hupper) contact other incoming
  have zero : oddY (α + θ) (A - W * tb) H = 0 := finish.2
  have update := wall_update_eq_even m M A H W (α + θ) tb zero
  have advanceU := congrArg State.u advance
  dsimp only [State.advance] at advanceU
  simpa only [advance, advanceU, update] using result

/-- State immediately after crossing boundary k. Parity chooses the fold,
not a freely supplied event-count certificate. -/
def sectorState (m M A H W : ℝ) (k : ℕ) : State :=
  let θ := CollisionAngleCount.massAngle m M
  let α := (k : ℝ) * θ
  let t := crossingTime A H W α
  if k % 2 = 0 then evenState m M A H W α t
  else oddState m M A H W (α + θ) t

theorem sector_step (m M A H W : ℝ) (k : ℕ)
    (hm : 0 < m) (hM : 0 < M) (hH : 0 < H) (hW : 0 < W)
    (hk : 0 < k)
    (hupper : ((k + 1 : ℕ) : ℝ) * CollisionAngleCount.massAngle m M < Real.pi) :
    ∃ e : Event, Step m M (sectorState m M A H W k) e (sectorState m M A H W (k + 1)) := by
  let θ := CollisionAngleCount.massAngle m M
  have hθ : 0 < θ := CollisionAngleCount.massAngle_pos m M hm hM
  have hkr : (0 : ℝ) < k := by exact_mod_cast hk
  have hα := mul_pos hkr hθ
  have next : ((k + 1 : ℕ) : ℝ) * θ = (k : ℝ) * θ + θ := by
    simp only [Nat.cast_add, Nat.cast_one]
    ring
  have after : ((k + 1 : ℕ) : ℝ) * θ + θ = (k : ℝ) * θ + 2 * θ := by
    rw [next]
    ring
  have upper : (k : ℝ) * θ + θ < Real.pi := by
    rw [← next]
    exact hupper
  by_cases parity : k % 2 = 0
  · have nextParity : (k + 1) % 2 ≠ 0 := by omega
    refine ⟨.blocks, ?_⟩
    have impact := even_segment_blocks_step m M A H W ((k : ℝ) * θ)
      hm hM hH hW hα upper
    simpa only [sectorState, parity, nextParity, if_pos, if_neg, next, after] using impact
  · have nextParity : (k + 1) % 2 = 0 := by omega
    refine ⟨.wall, ?_⟩
    have impact := odd_segment_wall_step m M A H W ((k : ℝ) * θ)
      hm hM hH hW hα upper
    simpa only [sectorState, parity, nextParity, if_pos, if_neg, next] using impact

/-- Glue explicitly constructed impacts through any finite sequence of rays
strictly before pi. The trace length is the number of crossings constructed. -/
theorem sector_trace (m M A H W : ℝ) (k r : ℕ)
    (hm : 0 < m) (hM : 0 < M) (hH : 0 < H) (hW : 0 < W)
    (hk : 0 < k)
    (hupper : ((k + r : ℕ) : ℝ) * CollisionAngleCount.massAngle m M < Real.pi) :
    Trace m M r (sectorState m M A H W k) (sectorState m M A H W (k + r)) := by
  induction r generalizing k with
  | zero => simpa only [Nat.add_zero] using Trace.nil (m := m) (M := M) (sectorState m M A H W k)
  | succ r ih =>
    have hθ := CollisionAngleCount.massAngle_pos m M hm hM
    have indexLe : k + 1 ≤ k + (r + 1) := by omega
    have realLe : ((k + 1 : ℕ) : ℝ) ≤ ((k + (r + 1) : ℕ) : ℝ) := by
      exact_mod_cast indexLe
    have nextUpper : ((k + 1 : ℕ) : ℝ) * CollisionAngleCount.massAngle m M < Real.pi :=
      lt_of_le_of_lt (mul_le_mul_of_nonneg_right realLe hθ.le) hupper
    obtain ⟨e, impact⟩ := sector_step m M A H W k hm hM hH hW hk nextUpper
    have endpoint : k + 1 + r = k + (r + 1) := by omega
    have rest := ih (k := k + 1) (by omega) (by simpa only [endpoint] using hupper)
    have joined := Trace.cons impact rest
    simpa only [endpoint] using joined

theorem initial_even_state (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hc : 0 < c) :
    evenState m M (Real.sqrt M * b) (Real.sqrt m * a) (Real.sqrt M * c) 0
      (crossingTime (Real.sqrt M * b) (Real.sqrt m * a) (Real.sqrt M * c)
        (CollisionAngleCount.massAngle m M)) = ⟨a, a, 0, -c⟩ := by
  rw [first_crossing_time m M a b c hm hM hc]
  apply state_eq_of_fields <;>
    dsimp only [evenState, evenX, evenY] <;>
    simp only [Real.cos_zero, Real.sin_zero, mul_zero, zero_mul, mul_one, add_zero, zero_add, zero_div]
  all_goals
    field_simp [ne_of_gt (Real.sqrt_pos.mpr hm), ne_of_gt (Real.sqrt_pos.mpr hM), ne_of_gt hc]
    <;> ring

/-- The first post-impact sector state is exactly the state produced by the
physical initial block collision, for arbitrary positive masses and speed. -/
theorem initial_sector_identification (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hc : 0 < c) :
    sectorState m M (Real.sqrt M * b) (Real.sqrt m * a) (Real.sqrt M * c) 1 =
      ⟨a, a, first m M 0 (-c), second m M 0 (-c)⟩ := by
  let θ := CollisionAngleCount.massAngle m M
  let A := Real.sqrt M * b
  let H := Real.sqrt m * a
  let W := Real.sqrt M * c
  let t := crossingTime A H W θ
  have oldState := initial_even_state m M a b c hm hM hc
  have rawX : A - W * t = Real.sqrt M * a := by
    dsimp only [A, W, t, H]
    rw [first_crossing_time m M a b c hm hM hc]
    field_simp [ne_of_gt hc]
    <;> ring
  have contact : gap θ (evenX 0 (A - W * t) H) (evenY 0 (A - W * t) H) = 0 := by
    dsimp only [evenX, evenY]
    simp only [Real.cos_zero, Real.sin_zero, mul_zero, zero_mul, mul_one, add_zero, zero_add]
    rw [rawX]
    simpa only [sub_self, mul_zero] using massAngle_gap m M a a hm hM
  have update := blocks_update_eq_odd m M A H W 0 t hm hM contact
  rw [oldState] at update
  have hmod : ¬ (1 : ℕ) % 2 = 0 := by decide
  simpa only [sectorState, Nat.cast_one, one_mul, if_neg hmod, zero_add, two_mul] using update.symm

theorem sector_terminal (m M A H W : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hW : 0 < W) :
    Terminal m M (sectorState m M A H W
      (CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M)).toNat) := by
  let θ := CollisionAngleCount.massAngle m M
  let N := (CollisionAngleCount.angularCount θ).toNat
  change Terminal m M (sectorState m M A H W N)
  have hθ : 0 < θ := CollisionAngleCount.massAngle_pos m M hm hM
  have hθπ : θ < Real.pi / 2 := CollisionAngleCount.massAngle_lt_pi_div_two m M
  have hn := CollisionAngleCount.angularCount_nonnegative θ hθ
  have hNi : (N : ℤ) = CollisionAngleCount.angularCount θ := Int.toNat_of_nonneg hn
  have hNr : (N : ℝ) = (CollisionAngleCount.angularCount θ : ℝ) := by exact_mod_cast hNi
  have sides := counted_terminal_sides θ W hθ hθπ hW
  dsimp only at sides
  rw [← hNr] at sides
  by_cases parity : N % 2 = 0
  · have outgoing := outgoing_of_weighted_sides m M
      (evenX ((N : ℝ) * θ) (-W) 0) (evenY ((N : ℝ) * θ) (-W) 0)
      hm hM sides.1.1 sides.1.2
    apply terminal_of_outgoing m M _
    · simpa only [sectorState, parity, if_pos, evenState] using outgoing.1
    · simpa only [sectorState, parity, if_pos, evenState] using outgoing.2
  · have outgoing := outgoing_of_weighted_sides m M
      (oddX ((N : ℝ) * θ + θ) (-W) 0) (oddY ((N : ℝ) * θ + θ) (-W) 0)
      hm hM sides.2.1 sides.2.2
    apply terminal_of_outgoing m M _
    · simpa only [sectorState, parity, if_neg, oddState] using outgoing.1
    · simpa only [sectorState, parity, if_neg, oddState] using outgoing.2

/-- Source-level general trajectory/count theorem. All finite Step witnesses
come from the explicit ray construction. No count, termination, trace, or
trajectory/optics equivalence is required as a premise.

Verification remains deferred: this proof body is a source candidate, not a
claim of successful elaboration or fresh kernel acceptance. Decimal-digit
agreement for every power-of-100 mass ratio is a separate arithmetic question. -/
theorem general_trajectory_count (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State,
      Trace m M (CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M)).toNat
        ⟨a, b, 0, -c⟩ sn ∧ Terminal m M sn ∧
      (∀ {p : ℕ} {sp : State}, Trace m M p ⟨a, b, 0, -c⟩ sp → Terminal m M sp →
        p = (CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M)).toNat) := by
  let θ := CollisionAngleCount.massAngle m M
  let N := (CollisionAngleCount.angularCount θ).toNat
  let A := Real.sqrt M * b
  let H := Real.sqrt m * a
  let W := Real.sqrt M * c
  have hθ : 0 < θ := CollisionAngleCount.massAngle_pos m M hm hM
  have hθπ : θ < Real.pi / 2 := CollisionAngleCount.massAngle_lt_pi_div_two m M
  have hH : 0 < H := mul_pos (Real.sqrt_pos.mpr hm) ha
  have hW : 0 < W := mul_pos (Real.sqrt_pos.mpr hM) hc
  have hn := CollisionAngleCount.angularCount_nonnegative θ hθ
  have hNi : (N : ℤ) = CollisionAngleCount.angularCount θ := Int.toNat_of_nonneg hn
  have hNr : (N : ℝ) = (CollisionAngleCount.angularCount θ : ℝ) := by exact_mod_cast hNi
  have htwo : (2 : ℤ) ≤ CollisionAngleCount.angularCount θ := by
    apply (CollisionAngleCount.le_angularCount_iff θ hθ 2).2
    norm_num
    linarith
  have hN : 2 ≤ N := by omega
  have endpoint : 1 + (N - 1) = N := by omega
  have lower : ((1 + (N - 1) : ℕ) : ℝ) * θ < Real.pi := by
    rw [endpoint, hNr]
    exact (CollisionAngleCount.angularCount_bounds θ hθ).1
  have rest₀ := sector_trace m M A H W 1 (N - 1) hm hM hH hW (by decide) lower
  have rest : Trace m M (N - 1) (sectorState m M A H W 1) (sectorState m M A H W N) := by
    simpa only [endpoint] using rest₀
  have initial := initial_block_step m M a b c ha hab hc
  rw [← initial_sector_identification m M a b c hm hM hc] at initial
  have run₀ := Trace.cons initial rest
  have length : N - 1 + 1 = N := by omega
  have run : Trace m M N ⟨a, b, 0, -c⟩ (sectorState m M A H W N) := by
    simpa only [length] using run₀
  have terminal := sector_terminal m M A H W hm hM hW
  refine ⟨sectorState m M A H W N, run, terminal, ?_⟩
  intro p sp other otherTerminal
  exact (terminal_trace_length_unique m M run other terminal otherTerminal).symm

end Unfolding
end GRWTSK.Mechanics.Classical.ElasticCollision
