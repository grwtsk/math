import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.CollisionVelocityPhase

/-!
# Chord geometry and the terminal sector of the velocity circle

Local attribution: grwtsk contributors.

Sources: Grant Sanderson, Why do colliding blocks compute pi? (2019),
https://www.3blue1brown.com/lessons/clacks-solution/ ; Why colliding blocks
compute pi (March 13, 2025), text adaptation by Josh Pullen,
https://www.3blue1brown.com/lessons/colliding-blocks-v2/ .
G. Galperin, Playing Pool with π (2003), DOI 10.1070/RD2003v008n04ABEH000252.

The diagram's terminal cone is exactly the outgoing physical velocity cone.
An actual block/wall pair has squared weighted-velocity chord length
4*(twice energy)*sin(theta)^2. On the incoming even-impact semicircle the
terminal cone is entered exactly when alpha+theta reaches pi, including
boundary equality. This is a branch-scoped angle criterion, not an assumption
that the dynamics has already made its advertised number of impacts.

The chord identity is an algebraic replacement for part of the inscribed-angle
explanation. It is not a formal theorem about oriented arcs or the general
inscribed-angle theorem. Nor does the paired-trace consumer independently
construct all impacts; existence is supplied elsewhere by explicit optics.
Compilation/kernel/type/axiom checks NOT_RUN by user deferral.
-/

namespace GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase

/-- The signed distance to the diagonal cone boundary, up to a positive factor. -/
def InCone (θ x y : ℝ) : Prop := 0 ≤ y ∧ 0 ≤ Unfolding.gap θ x y

theorem cone_iff_outgoing (m M : ℝ) (hm : 0 < m) (hM : 0 < M) (s : State) :
    InCone (CollisionAngleCount.massAngle m M) (X M s) (Y m s) ↔
      0 ≤ s.u ∧ s.u ≤ s.v := by
  have sm := Real.sqrt_pos.mpr hm
  have coefficient : 0 < Real.sqrt m * Real.sqrt M / Real.sqrt (m + M) :=
    div_pos (mul_pos sm (Real.sqrt_pos.mpr hM)) (Real.sqrt_pos.mpr (add_pos hm hM))
  unfold InCone X Y
  rw [Unfolding.massAngle_gap m M s.u s.v hm hM,
    mul_nonneg_iff_of_pos_left sm, mul_nonneg_iff_of_pos_left coefficient,
    sub_nonneg]

theorem terminal_of_cone (m M : ℝ) (hm : 0 < m) (hM : 0 < M) (s : State)
    (h : InCone (CollisionAngleCount.massAngle m M) (X M s) (Y m s)) :
    Terminal m M s := by
  obtain ⟨hu, huv⟩ := (cone_iff_outgoing m M hm hM s).mp h
  exact terminal_of_outgoing m M s hu huv

/-- Chord length under rotation, with no polar argument branch choice. -/
theorem rotation_chord (α x y : ℝ) :
    (rotX α x y - x) ^ 2 + (rotY α x y - y) ^ 2 =
      2 * (1 - Real.cos α) * (x ^ 2 + y ^ 2) := by
  have trig : Real.cos α ^ 2 + Real.sin α ^ 2 = 1 := by
    nlinarith [Real.sin_sq_add_cos_sq α]
  unfold rotX rotY
  calc
    _ = (Real.cos α ^ 2 + Real.sin α ^ 2) * (x ^ 2 + y ^ 2) +
        (x ^ 2 + y ^ 2) - 2 * Real.cos α * (x ^ 2 + y ^ 2) := by ring
    _ = _ := by rw [trig]; ring

theorem rotation_chord_double (θ x y : ℝ) :
    (rotX (-(2 * θ)) x y - x) ^ 2 + (rotY (-(2 * θ)) x y - y) ^ 2 =
      4 * (x ^ 2 + y ^ 2) * Real.sin θ ^ 2 := by
  rw [rotation_chord, Real.cos_neg]
  have identity : 2 * (1 - Real.cos (2 * θ)) = 4 * Real.sin θ ^ 2 := by
    rw [Real.cos_two_mul]
    nlinarith [Real.sin_sq_add_cos_sq θ]
  rw [identity]
  ring

/-- The equal-chord result consumes two actual isolated impacts. It describes
the two-step chord on the velocity circle, not every adjacent physical point. -/
theorem physical_pair_chord (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t u : State} (hb : Step m M s .blocks t) (hw : Step m M t .wall u) :
    (X M u - X M s) ^ 2 + (Y m u - Y m s) ^ 2 =
      4 * State.energy m M s * Real.sin (CollisionAngleCount.massAngle m M) ^ 2 := by
  obtain ⟨hx, hy⟩ := block_wall_rotation m M hm hM hb hw
  rw [hx, hy, rotation_chord_double, phase_energy m M hm.le hM.le]

/-- Positive-radius incoming even-impact semicircle. -/
noncomputable def evenX (R α : ℝ) : ℝ := -R * Real.cos α
noncomputable def evenY (R α : ℝ) : ℝ := R * Real.sin α

theorem even_gap (θ R α : ℝ) :
    Unfolding.gap θ (evenX R α) (evenY R α) = -R * Real.sin (α + θ) := by
  simp only [Unfolding.gap, evenX, evenY, Real.sin_add]
  ring

/-- The strict incoming angle branch prevents a later full turn from being
mistaken for the first entry into the terminal cone. Equality is retained. -/
theorem even_cone_iff (θ R α : ℝ) (hθ : 0 < θ) (hθπ : θ < Real.pi / 2)
    (hR : 0 < R) (hα : 0 ≤ α) (hαπ : α < Real.pi) :
    InCone θ (evenX R α) (evenY R α) ↔ Real.pi ≤ α + θ := by
  have hs := Real.sin_nonneg_of_nonneg_of_le_pi hα hαπ.le
  have upper : α + θ ≤ 2 * Real.pi := by linarith [Real.pi_pos]
  constructor
  · intro h
    have hg := h.2
    rw [even_gap] at hg
    by_contra hn
    have hp := Real.sin_pos_of_pos_of_lt_pi
      (show 0 < α + θ by linarith) (lt_of_not_ge hn)
    have negative := mul_neg_of_neg_of_pos (show -R < 0 by linarith) hp
    linarith
  · intro h
    have hn := Unfolding.sin_nonpos_after_pi (α + θ) h upper
    constructor
    · exact mul_nonneg hR.le hs
    · rw [even_gap]
      exact mul_nonneg_of_nonpos_of_nonpos (by linarith) hn

theorem physical_even_outgoing_iff (m M R α : ℝ) (hm : 0 < m) (hM : 0 < M)
    (hR : 0 < R) (hα : 0 ≤ α) (hαπ : α < Real.pi) (s : State)
    (hx : X M s = evenX R α) (hy : Y m s = evenY R α) :
    (0 ≤ s.u ∧ s.u ≤ s.v) ↔ Real.pi ≤ α + CollisionAngleCount.massAngle m M := by
  rw [← cone_iff_outgoing m M hm hM s, hx, hy]
  exact even_cone_iff _ R α (CollisionAngleCount.massAngle_pos m M hm hM)
    (CollisionAngleCount.massAngle_lt_pi_div_two m M) hR hα hαπ

/-- Actual paired impacts have the required even-phase coordinates. -/
theorem incoming_pairs_even_phase (m M a b c : ℝ) (hm : 0 < m) (hM : 0 < M)
    {k : ℕ} {s : State} (h : Pairs m M k ⟨a, b, 0, -c⟩ s) :
    X M s = evenX (Real.sqrt M * c) (2 * (k : ℝ) * CollisionAngleCount.massAngle m M) ∧
    Y m s = evenY (Real.sqrt M * c) (2 * (k : ℝ) * CollisionAngleCount.massAngle m M) := by
  obtain ⟨hx, hy⟩ := incoming_pairs_phase m M a b c hm hM h
  have angle : -2 * (k : ℝ) * CollisionAngleCount.massAngle m M =
      -(2 * (k : ℝ) * CollisionAngleCount.massAngle m M) := by ring
  rw [angle, Real.cos_neg, Real.sin_neg] at hx hy
  constructor
  · simpa only [evenX] using hx
  · simpa only [evenY, mul_neg, neg_neg] using hy

/-- A terminal-sector test for a real paired trajectory. The branch bound is
explicit; no target count certificate or assumed physical/angular bridge occurs. -/
theorem incoming_pairs_terminal_sector (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hc : 0 < c)
    {k : ℕ} {s : State} (h : Pairs m M k ⟨a, b, 0, -c⟩ s)
    (branch : 2 * (k : ℝ) * CollisionAngleCount.massAngle m M < Real.pi)
    (entry : Real.pi ≤ (2 * (k : ℝ) + 1) * CollisionAngleCount.massAngle m M) :
    Terminal m M s := by
  obtain ⟨hx, hy⟩ := incoming_pairs_even_phase m M a b c hm hM h
  have radius := mul_pos (Real.sqrt_pos.mpr hM) hc
  have angle : 0 ≤ 2 * (k : ℝ) * CollisionAngleCount.massAngle m M :=
    mul_nonneg (mul_nonneg (by norm_num) (Nat.cast_nonneg k))
      (CollisionAngleCount.massAngle_pos m M hm hM).le
  have outgoing := (physical_even_outgoing_iff m M _ _ hm hM radius angle branch s hx hy).mpr
    (by nlinarith [entry])
  exact terminal_of_outgoing m M s outgoing.1 outgoing.2

/-- The block-reflected branch is on the opposite semicircle. -/
noncomputable def oddX (R β : ℝ) : ℝ := -R * Real.cos β
noncomputable def oddY (R β : ℝ) : ℝ := -R * Real.sin β

theorem odd_gap (θ R β : ℝ) :
    Unfolding.gap θ (oddX R β) (oddY R β) = R * Real.sin (β - θ) := by
  simp only [Unfolding.gap, oddX, oddY, Real.sin_sub]
  ring

theorem reflected_even_coordinates (θ R α : ℝ) :
    Real.cos (2 * θ) * evenX R α + Real.sin (2 * θ) * evenY R α =
      oddX R (α + 2 * θ) ∧
    Real.sin (2 * θ) * evenX R α - Real.cos (2 * θ) * evenY R α =
      oddY R (α + 2 * θ) := by
  simp only [evenX, evenY, oddX, oddY, Real.cos_add, Real.sin_add]
  constructor <;> ring

/-- The previous event angle stays strictly below pi. The endpoint beta=pi
is retained, so the grazing wall impact is correctly excluded. -/
theorem odd_cone_iff (θ R β : ℝ) (hR : 0 < R)
    (hβ : 0 < β) (hβtwo : β ≤ 2 * Real.pi)
    (hprev : 0 < β - θ) (hprevπ : β - θ < Real.pi) :
    InCone θ (oddX R β) (oddY R β) ↔ Real.pi ≤ β := by
  constructor
  · intro h
    have hy := h.1
    dsimp [oddY] at hy
    by_contra hn
    have hs := Real.sin_pos_of_pos_of_lt_pi hβ (lt_of_not_ge hn)
    have negative := mul_neg_of_neg_of_pos (show -R < 0 by linarith) hs
    linarith
  · intro h
    have hs := Unfolding.sin_nonpos_after_pi β h hβtwo
    have hp := Real.sin_pos_of_pos_of_lt_pi hprev hprevπ
    constructor
    · exact mul_nonneg_of_nonpos_of_nonpos (by linarith) hs
    · rw [odd_gap]
      exact (mul_pos hR hp).le

/-- An actual block impact following k actual pairs has the odd phase. -/
theorem incoming_odd_phase (m M a b c : ℝ) (hm : 0 < m) (hM : 0 < M)
    {k : ℕ} {s t : State} (h : Pairs m M k ⟨a, b, 0, -c⟩ s)
    (hb : Step m M s .blocks t) :
    X M t = oddX (Real.sqrt M * c) ((2 * (k : ℝ) + 2) * CollisionAngleCount.massAngle m M) ∧
    Y m t = oddY (Real.sqrt M * c) ((2 * (k : ℝ) + 2) * CollisionAngleCount.massAngle m M) := by
  obtain ⟨hx, hy⟩ := incoming_pairs_even_phase m M a b c hm hM h
  obtain ⟨bx, by'⟩ := block_reflection m M hm hM hb
  rw [hx, hy] at bx by'
  obtain ⟨rx, ry⟩ := reflected_even_coordinates (CollisionAngleCount.massAngle m M)
    (Real.sqrt M * c) (2 * (k : ℝ) * CollisionAngleCount.massAngle m M)
  have angle : 2 * (k : ℝ) * CollisionAngleCount.massAngle m M +
      2 * CollisionAngleCount.massAngle m M =
      (2 * (k : ℝ) + 2) * CollisionAngleCount.massAngle m M := by ring
  rw [angle] at rx ry
  exact ⟨bx.trans rx, by'.trans ry⟩

/-- Both parity branches now have actual-Step terminal-sector consumers.
Existence of these pairs/last impact is not asserted by the angular bound. -/
theorem incoming_odd_terminal_sector (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hc : 0 < c)
    {k : ℕ} {s t : State} (h : Pairs m M k ⟨a, b, 0, -c⟩ s)
    (hb : Step m M s .blocks t)
    (branch : (2 * (k : ℝ) + 1) * CollisionAngleCount.massAngle m M < Real.pi)
    (entry : Real.pi ≤ (2 * (k : ℝ) + 2) * CollisionAngleCount.massAngle m M) :
    Terminal m M t := by
  obtain ⟨hx, hy⟩ := incoming_odd_phase m M a b c hm hM h hb
  have radius := mul_pos (Real.sqrt_pos.mpr hM) hc
  have θpos := CollisionAngleCount.massAngle_pos m M hm hM
  have θupper := CollisionAngleCount.massAngle_lt_pi_div_two m M
  have kpos : 0 ≤ (k : ℝ) := Nat.cast_nonneg k
  have prev : 0 < (2 * (k : ℝ) + 1) * CollisionAngleCount.massAngle m M :=
    mul_pos (by linarith) θpos
  apply terminal_of_cone m M hm hM t
  rw [hx, hy]
  apply (odd_cone_iff _ _ _ radius (by linarith [Real.pi_pos])
    (by nlinarith [entry, branch]) (by nlinarith [prev]) (by nlinarith [branch])).mpr
  exact entry

end GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase
