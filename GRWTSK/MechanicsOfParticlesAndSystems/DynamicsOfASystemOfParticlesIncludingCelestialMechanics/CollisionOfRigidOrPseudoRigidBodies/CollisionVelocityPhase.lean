import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.ElasticCollisionTrajectory

/-!
# The velocity-circle route for elastic collisions

Local attribution: grwtsk contributors.

Sources: Grant Sanderson, The most unexpected answer to a counting puzzle
(2019), https://www.3blue1brown.com/lessons/clacks-solution/ ; and
Colliding blocks (2025), https://www.3blue1brown.com/lessons/colliding-blocks-v2/ .
G. Galperin, Playing Pool with π (2003),
DOI 10.1070/RD2003v008n04ABEH000252.

The horizontal coordinate is the far body's mass-weighted velocity, and the
vertical coordinate is the near body's. A block impact reflects in the line
at angle θ = atan(sqrt(m/M)); a wall reflects in the horizontal axis. Thus
block then wall rotates by -2θ, and wall then block by +2θ. These statements
consume actual isolated Step witnesses, including their flight conditions.
The paired-run consumer below uses no assumed correspondence to angularCount.
It supplies the velocity-circle route, not another termination/count theorem.
The independent explicit unfolded-ray construction supplies that theorem.

Source proof candidates: compilation, fresh kernel/type checking and transitive
axiom audit NOT_RUN (verification deferred by user). No every-scale digit claim.
-/

namespace GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase

noncomputable def X (M : ℝ) (s : State) : ℝ := Real.sqrt M * s.v
noncomputable def Y (m : ℝ) (s : State) : ℝ := Real.sqrt m * s.u

/-- Standard counterclockwise rotation, expressed componentwise. -/
noncomputable def rotX (α x y : ℝ) : ℝ := Real.cos α * x - Real.sin α * y
noncomputable def rotY (α x y : ℝ) : ℝ := Real.sin α * x + Real.cos α * y

theorem rotation_add (α β x y : ℝ) :
    rotX α (rotX β x y) (rotY β x y) = rotX (α + β) x y ∧
    rotY α (rotX β x y) (rotY β x y) = rotY (α + β) x y := by
  simp only [rotX, rotY, Real.cos_add, Real.sin_add]
  constructor <;> ring

theorem rotation_circle (α x y : ℝ) :
    (rotX α x y) ^ 2 + (rotY α x y) ^ 2 = x ^ 2 + y ^ 2 := by
  have h := Real.sin_sq_add_cos_sq α
  unfold rotX rotY
  calc
    _ = (Real.sin α ^ 2 + Real.cos α ^ 2) * (x ^ 2 + y ^ 2) := by ring
    _ = _ := by rw [h]; ring

/-- The circle is precisely the level set of twice the kinetic energy. -/
theorem phase_energy (m M : ℝ) (hm : 0 ≤ m) (hM : 0 ≤ M) (s : State) :
    (X M s) ^ 2 + (Y m s) ^ 2 = State.energy m M s := by
  simp only [X, Y, mul_pow, Real.sq_sqrt hm, Real.sq_sqrt hM, State.energy]
  ring

theorem trace_circle (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {n : ℕ} {s t : State} (h : Trace m M n s t) :
    (X M t) ^ 2 + (Y m t) ^ 2 = (X M s) ^ 2 + (Y m s) ^ 2 := by
  rw [phase_energy m M hm.le hM.le, phase_energy m M hm.le hM.le]
  exact trace_energy m M (ne_of_gt (add_pos hm hM)) h

/-- The strict contact/flight requirements are inherited from the Step. -/
theorem wall_reflection (m M : ℝ) {s t : State}
    (h : Step m M s .wall t) : X M t = X M s ∧ Y m t = -Y m s := by
  cases h
  dsimp [X, Y, State.advance]
  constructor <;> ring

theorem block_reflection (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t : State} (h : Step m M s .blocks t) :
    X M t = Real.cos (2 * CollisionAngleCount.massAngle m M) * X M s +
      Real.sin (2 * CollisionAngleCount.massAngle m M) * Y m s ∧
    Y m t = Real.sin (2 * CollisionAngleCount.massAngle m M) * X M s -
      Real.cos (2 * CollisionAngleCount.massAngle m M) * Y m s := by
  cases h
  dsimp [X, Y, State.advance]
  rw [Unfolding.massAngle_cos_two m M hm hM,
    Unfolding.massAngle_sin_two m M hm hM]
  constructor
  · unfold second
    field_simp [ne_of_gt (add_pos hm hM)]
    ring_nf
    simp only [Real.sq_sqrt hm.le]
    <;> ring
  · unfold first
    field_simp [ne_of_gt (add_pos hm hM)]
    ring_nf
    simp only [Real.sq_sqrt hM.le]
    <;> ring

/-- The two reflections give clockwise rotation by twice the wedge angle. -/
theorem block_wall_rotation (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t u : State} (hb : Step m M s .blocks t) (hw : Step m M t .wall u) :
    X M u = rotX (-(2 * CollisionAngleCount.massAngle m M)) (X M s) (Y m s) ∧
    Y m u = rotY (-(2 * CollisionAngleCount.massAngle m M)) (X M s) (Y m s) := by
  obtain ⟨bx, by'⟩ := block_reflection m M hm hM hb
  obtain ⟨wx, wy⟩ := wall_reflection m M hw
  rw [wx, wy, bx, by']
  simp only [rotX, rotY, Real.cos_neg, Real.sin_neg]
  constructor <;> ring

theorem wall_block_rotation (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t u : State} (hw : Step m M s .wall t) (hb : Step m M t .blocks u) :
    X M u = rotX (2 * CollisionAngleCount.massAngle m M) (X M s) (Y m s) ∧
    Y m u = rotY (2 * CollisionAngleCount.massAngle m M) (X M s) (Y m s) := by
  obtain ⟨wx, wy⟩ := wall_reflection m M hw
  obtain ⟨bx, by'⟩ := block_reflection m M hm hM hb
  rw [bx, by', wx, wy]
  dsimp [rotX, rotY]
  constructor <;> ring

/-- A finite sequence of actual block/wall pairs. No existence or finality
is assumed; every pair retains both physical Step witnesses. -/
inductive Pairs (m M : ℝ) : ℕ → State → State → Prop where
  | nil (s : State) : Pairs m M 0 s s
  | cons {n : ℕ} {s t u v : State}
      (blocks : Step m M s .blocks t) (wall : Step m M t .wall u)
      (rest : Pairs m M n u v) : Pairs m M (n + 1) s v

theorem pairs_trace (m M : ℝ) {n : ℕ} {s t : State}
    (h : Pairs m M n s t) : Trace m M (2 * n) s t := by
  induction h with
  | nil s => exact Trace.nil s
  | cons hb hw rest ih =>
    have joined := Trace.cons hb (Trace.cons hw ih)
    convert joined using 1 <;> omega

/-- The velocity at every even impact is obtained by a known rotation, rather
than by selecting a polar angle with an ambiguous branch cut. -/
theorem pairs_rotation (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {n : ℕ} {s t : State} (h : Pairs m M n s t) :
    X M t = rotX (-2 * (n : ℝ) * CollisionAngleCount.massAngle m M) (X M s) (Y m s) ∧
    Y m t = rotY (-2 * (n : ℝ) * CollisionAngleCount.massAngle m M) (X M s) (Y m s) := by
  induction h with
  | nil s => simp [rotX, rotY]
  | @cons n s t u v hb hw rest ih =>
    obtain ⟨px, py⟩ := block_wall_rotation m M hm hM hb hw
    obtain ⟨ix, iy⟩ := ih
    rw [ix, iy, px, py]
    obtain ⟨rx, ry⟩ := rotation_add
      (-2 * (n : ℝ) * CollisionAngleCount.massAngle m M)
      (-(2 * CollisionAngleCount.massAngle m M)) (X M s) (Y m s)
    have angle : -2 * (n : ℝ) * CollisionAngleCount.massAngle m M +
        -(2 * CollisionAngleCount.massAngle m M) =
        -2 * ((n + 1 : ℕ) : ℝ) * CollisionAngleCount.massAngle m M := by
      push_cast
      ring
    rw [angle] at rx ry
    exact ⟨rx, ry⟩

/-- Initially stationary near-wall body and incoming far body: all even
velocities lie on the circle of radius sqrt(M)*c, at explicit phase increments.
This does not assert how many such pairs exist before the terminal event. -/
theorem incoming_pairs_phase (m M a b c : ℝ) (hm : 0 < m) (hM : 0 < M)
    {n : ℕ} {t : State} (h : Pairs m M n ⟨a, b, 0, -c⟩ t) :
    X M t = -(Real.sqrt M * c) *
      Real.cos (-2 * (n : ℝ) * CollisionAngleCount.massAngle m M) ∧
    Y m t = -(Real.sqrt M * c) *
      Real.sin (-2 * (n : ℝ) * CollisionAngleCount.massAngle m M) := by
  obtain ⟨hx, hy⟩ := pairs_rotation m M hm hM h
  dsimp [X, Y, rotX, rotY] at hx hy ⊢
  constructor <;> nlinarith [hx, hy]

end GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase
