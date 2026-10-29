import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.CollisionTracePhase

/-!
# Isolated next impacts and exclusion of the configuration-space corner

Local attribution: grwtsk contributors.

Sources: Grant Sanderson, the colliding-blocks lessons (2019, 2025),
https://www.3blue1brown.com/lessons/clacks-solution/ and
https://www.3blue1brown.com/lessons/colliding-blocks-v2/ ;
G. Galperin, Playing Pool with π (2003), DOI 10.1070/RD2003v008n04ABEH000252.

The signed determinant x*v-y*u is constant on a free flight and changes sign
at either isolated impact. Its nonvanishing excludes a flight through the
simultaneous vertex. The actual next impact is selected from the wall and
block contact times; no trajectory/count or optics-existence theorem is used.
The initial condition 0<a<b,c>0, velocities (0,-c), has determinant -a*c.
Compilation/kernel/type/axiom checks NOT_RUN by user deferral.
-/

namespace GRWTSK.Mechanics.Classical.ElasticCollision

def State.area (s : State) : ℝ := s.x * s.v - s.y * s.u

theorem advance_area (s : State) (r : ℝ) : (s.advance r).area = s.area := by
  dsimp [State.area, State.advance]
  ring

theorem flight_excludes_vertex (s : State) (h : s.area ≠ 0) (r : ℝ) :
    ¬ ((s.advance r).x = 0 ∧ (s.advance r).y = 0) := by
  rintro ⟨hx, hy⟩
  apply h
  rw [← advance_area s r]
  simp [State.area, hx, hy]

theorem step_area_neg (m M : ℝ) (hsum : m + M ≠ 0)
    {s t : State} {e : Event} (h : Step m M s e t) : t.area = -s.area := by
  cases h with
  | wall s r start time flight contact other incoming =>
    rw [← advance_area s r]
    change (s.advance r).x * s.v - (s.advance r).y * (-s.u) =
      -((s.advance r).x * s.v - (s.advance r).y * s.u)
    rw [contact]
    ring
  | blocks s r start time flight contact away incoming =>
    rw [← advance_area s r]
    change (s.advance r).x * second m M s.u s.v -
        (s.advance r).y * first m M s.u s.v =
      -((s.advance r).x * s.v - (s.advance r).y * s.u)
    rw [← contact]
    calc
      _ = -(s.advance r).x * (first m M s.u s.v - second m M s.u s.v) := by ring
      _ = _ := by rw [relative_velocity m M s.u s.v hsum]; ring

theorem step_area_ne_zero (m M : ℝ) (hsum : m + M ≠ 0)
    {s t : State} {e : Event} (hs : s.area ≠ 0) (h : Step m M s e t) : t.area ≠ 0 := by
  rw [step_area_neg m M hsum h]
  exact neg_ne_zero.mpr hs

theorem trace_area_ne_zero (m M : ℝ) (hsum : m + M ≠ 0)
    {n : ℕ} {s t : State} (h : Trace m M n s t) : s.area ≠ 0 → t.area ≠ 0 := by
  induction h with
  | nil => intro hs; exact hs
  | cons impact rest ih => intro hs; exact ih (step_area_ne_zero m M hsum hs impact)

theorem trace_admissible (m M : ℝ) {n : ℕ} {s t : State}
    (h : Trace m M n s t) : s.admissible → t.admissible := by
  induction h with
  | nil => intro hs; exact hs
  | cons impact rest ih => intro hs; exact ih (step_admissible m M impact)

/-- A nonzero affine coordinate cannot vanish strictly between two
nonnegative endpoints. The nonzero hypothesis excludes a boundary glide. -/
theorem affine_strict_between (a b t r : ℝ) (ha : 0 ≤ a) (hend : 0 ≤ a + b * t)
    (nonzero : ¬ (a = 0 ∧ b = 0)) (hr : 0 < r) (hrt : r < t) : 0 < a + b * r := by
  by_cases hb : 0 < b
  · have product := mul_pos hb hr
    linarith
  · by_cases hbzero : b = 0
    · have hapos : 0 < a := by
        by_contra hn
        apply nonzero
        exact ⟨by linarith, hbzero⟩
      simpa [hbzero] using hapos
    · have hbneg : b < 0 := by
        by_contra hn
        apply hbzero
        linarith
      have product := mul_neg_of_neg_of_pos hbneg (sub_pos.mpr hrt)
      nlinarith

/-- Both physical free-flight inequalities become strict before any selected
nonnegative contact; the determinant excludes persistent boundary contact. -/
theorem openFlight_before_contact (s : State) (t : ℝ) (hs : s.admissible)
    (harea : s.area ≠ 0) (hx : 0 ≤ (s.advance t).x)
    (hgap : (s.advance t).x ≤ (s.advance t).y) : s.openFlight t := by
  intro r hr hrt
  have xnonzero : ¬ (s.x = 0 ∧ s.u = 0) := by
    rintro ⟨h₁, h₂⟩
    apply harea
    simp [State.area, h₁, h₂]
  have gapnonzero : ¬ (s.y - s.x = 0 ∧ s.v - s.u = 0) := by
    rintro ⟨h₁, h₂⟩
    have hy : s.y = s.x := by linarith
    have hv : s.v = s.u := by linarith
    apply harea
    simp [State.area, hy, hv]
  have xp := affine_strict_between s.x s.u t r hs.1 hx xnonzero hr hrt
  have gp := affine_strict_between (s.y - s.x) (s.v - s.u) t r
    (by linarith [hs.2]) (by dsimp [State.advance] at hgap; nlinarith)
    gapnonzero hr hrt
  dsimp [State.advance]
  constructor <;> nlinarith

theorem wall_step_at_contact (m M : ℝ) (s : State) (t : ℝ)
    (hs : s.admissible) (harea : s.area ≠ 0) (ht : 0 ≤ t)
    (hx : (s.advance t).x = 0) (hgap : (s.advance t).x ≤ (s.advance t).y)
    (hu : s.u < 0) : ∃ sn : State, Step m M s .wall sn := by
  have other : 0 < (s.advance t).y := by
    have hv := flight_excludes_vertex s harea t
    by_contra hn
    apply hv
    exact ⟨hx, by linarith⟩
  exact ⟨_, Step.wall s t hs ht (openFlight_before_contact s t hs harea (by linarith) hgap)
    hx other hu⟩

theorem blocks_step_at_contact (m M : ℝ) (s : State) (t : ℝ)
    (hs : s.admissible) (harea : s.area ≠ 0) (ht : 0 ≤ t)
    (hx : 0 ≤ (s.advance t).x) (contact : (s.advance t).x = (s.advance t).y)
    (incoming : s.v < s.u) : ∃ sn : State, Step m M s .blocks sn := by
  have away : 0 < (s.advance t).x := by
    have hv := flight_excludes_vertex s harea t
    by_contra hn
    apply hv
    exact ⟨by linarith, by linarith⟩
  exact ⟨_, Step.blocks s t hs ht
    (openFlight_before_contact s t hs harea hx contact.le) contact away incoming⟩

/-- Direct contact-time construction for every admissible nonoutgoing state
with nonzero determinant. It also covers a correctly incoming time-zero impact. -/
theorem next_step_exists (m M : ℝ) (s : State) (hs : s.admissible)
    (harea : s.area ≠ 0) (hout : ¬ (0 ≤ s.u ∧ s.u ≤ s.v)) :
    ∃ (e : Event) (sn : State), Step m M s e sn := by
  have hx := hs.1
  have hgap : 0 ≤ s.y - s.x := by linarith [hs.2]
  by_cases hu : s.u < 0
  · let tw := s.x / (-s.u)
    have htw : 0 ≤ tw := div_nonneg hx (by linarith)
    have wall : (s.advance tw).x = 0 := by
      dsimp [tw, State.advance]
      field_simp [ne_of_lt hu]
      <;> ring
    by_cases closing : s.v < s.u
    · let tb := (s.y - s.x) / (s.u - s.v)
      have htb : 0 ≤ tb := div_nonneg hgap (by linarith)
      have blocks : (s.advance tb).x = (s.advance tb).y := by
        dsimp [tb, State.advance]
        field_simp [ne_of_gt (sub_pos.mpr closing)]
        <;> ring
      by_cases first : tw ≤ tb
      · have gapwall : (s.advance tw).x ≤ (s.advance tw).y := by
          have product := mul_nonneg (show 0 ≤ s.u - s.v by linarith) (sub_nonneg.mpr first)
          dsimp [State.advance] at blocks ⊢
          nlinarith
        obtain ⟨sn, impact⟩ := wall_step_at_contact m M s tw hs harea htw wall gapwall hu
        exact ⟨.wall, sn, impact⟩
      · have first' : tb ≤ tw := (lt_of_not_ge first).le
        have xpos : 0 ≤ (s.advance tb).x := by
          have product := mul_nonpos_of_nonpos_of_nonneg hu.le (sub_nonneg.mpr first')
          dsimp [State.advance] at wall ⊢
          nlinarith
        obtain ⟨sn, impact⟩ := blocks_step_at_contact m M s tb hs harea htb xpos blocks closing
        exact ⟨.blocks, sn, impact⟩
    · have gapwall : (s.advance tw).x ≤ (s.advance tw).y := by
        have product := mul_nonneg (show 0 ≤ s.v - s.u by linarith) htw
        dsimp [State.advance]
        nlinarith
      obtain ⟨sn, impact⟩ := wall_step_at_contact m M s tw hs harea htw wall gapwall hu
      exact ⟨.wall, sn, impact⟩
  · have hu' : 0 ≤ s.u := le_of_not_gt hu
    have closing : s.v < s.u := by
      by_contra hn
      exact hout ⟨hu', le_of_not_gt hn⟩
    let tb := (s.y - s.x) / (s.u - s.v)
    have htb : 0 ≤ tb := div_nonneg hgap (by linarith)
    have blocks : (s.advance tb).x = (s.advance tb).y := by
      dsimp [tb, State.advance]
      field_simp [ne_of_gt (sub_pos.mpr closing)]
      <;> ring
    have xpos : 0 ≤ (s.advance tb).x := by
      exact add_nonneg hx (mul_nonneg hu' htb)
    obtain ⟨sn, impact⟩ := blocks_step_at_contact m M s tb hs harea htb xpos blocks closing
    exact ⟨.blocks, sn, impact⟩

theorem terminal_iff_outgoing (m M : ℝ) (s : State) (hs : s.admissible)
    (harea : s.area ≠ 0) : Terminal m M s ↔ 0 ≤ s.u ∧ s.u ≤ s.v := by
  constructor
  · intro terminal
    by_contra hn
    obtain ⟨e, sn, impact⟩ := next_step_exists m M s hs harea hn
    exact terminal e sn impact
  · rintro ⟨hu, huv⟩
    exact terminal_of_outgoing m M s hu huv

theorem incoming_trace_regular (m M a b c : ℝ) (hsum : m + M ≠ 0)
    (ha : 0 < a) (hab : a < b) (hc : 0 < c) {n : ℕ} {s : State}
    (run : Trace m M n ⟨a, b, 0, -c⟩ s) : s.admissible ∧ s.area ≠ 0 := by
  have start : (⟨a, b, 0, -c⟩ : State).admissible := ⟨ha.le, hab.le⟩
  have area : (⟨a, b, 0, -c⟩ : State).area ≠ 0 := by
    dsimp [State.area]
    have hp := mul_pos ha hc
    nlinarith
  exact ⟨trace_admissible m M run start, trace_area_ne_zero m M hsum run area⟩

namespace VelocityPhase

/-- Any terminal physical trace supplies BOTH strict-count brackets, now
using local next-impact existence rather than an optics terminal run. -/
theorem terminal_trace_angular_bracket (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (ha : 0 < a) (hab : a < b) (hc : 0 < c)
    {n : ℕ} {s : State} (run : Trace m M n ⟨a, b, 0, -c⟩ s) (terminal : Terminal m M s) :
    (n : ℝ) * CollisionAngleCount.massAngle m M < Real.pi ∧
      Real.pi ≤ ((n : ℝ) + 1) * CollisionAngleCount.massAngle m M := by
  let θ := CollisionAngleCount.massAngle m M
  have θpos := CollisionAngleCount.massAngle_pos m M hm hM
  have θupper := CollisionAngleCount.massAngle_lt_pi_div_two m M
  have radius := mul_pos (Real.sqrt_pos.mpr hM) hc
  have regular := incoming_trace_regular m M a b c (ne_of_gt (add_pos hm hM)) ha hab hc run
  have outgoing := (terminal_iff_outgoing m M s regular.1 regular.2).mp terminal
  have cone := (cone_iff_outgoing m M hm hM s).mpr outgoing
  have bound := trace_first_turn_bound m M a b c hm hM hc run
  refine ⟨bound, ?_⟩
  by_cases parity : n % 2 = 0
  · have length : n = 2 * (n / 2) := by omega
    have cast : (n : ℝ) = 2 * ((n / 2 : ℕ) : ℝ) := by exact_mod_cast length
    rw [length] at run
    obtain ⟨hx, hy⟩ := even_trace_phase m M a b c hm hM run
    rw [hx, hy] at cone
    have anglepos : 0 ≤ 2 * ((n / 2 : ℕ) : ℝ) * θ := by
      rw [← cast]
      exact mul_nonneg (Nat.cast_nonneg n) θpos.le
    have entry := (even_cone_iff θ _ _ θpos θupper radius anglepos
      (by simpa only [← cast] using bound)).mp cone
    rw [cast]
    nlinarith [entry]
  · have length : n = 2 * (n / 2) + 1 := by omega
    have cast : (n : ℝ) = 2 * ((n / 2 : ℕ) : ℝ) + 1 := by exact_mod_cast length
    rw [length] at run
    obtain ⟨hx, hy⟩ := odd_trace_phase m M a b c hm hM run
    rw [hx, hy] at cone
    have previouspos : 0 < (2 * ((n / 2 : ℕ) : ℝ) + 1) * θ :=
      mul_pos (by have hp : (0 : ℝ) ≤ (n / 2 : ℕ) := Nat.cast_nonneg _; linarith) θpos
    have previousbound : (2 * ((n / 2 : ℕ) : ℝ) + 1) * θ < Real.pi := by
      simpa only [cast] using bound
    have entry := (odd_cone_iff θ _ ((2 * ((n / 2 : ℕ) : ℝ) + 2) * θ) radius
      (by nlinarith [previouspos]) (by nlinarith [previousbound, θupper])
      (by nlinarith [previouspos]) (by nlinarith [previousbound])).mp cone
    rw [cast]
    nlinarith [entry]

theorem terminal_trace_circle_count (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (ha : 0 < a) (hab : a < b) (hc : 0 < c)
    {n : ℕ} {s : State} (run : Trace m M n ⟨a, b, 0, -c⟩ s) (terminal : Terminal m M s) :
    n = (CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M)).toNat := by
  have bracket := terminal_trace_angular_bracket m M a b c hm hM ha hab hc run terminal
  have count : CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M) = (n : ℤ) := by
    apply (CollisionAngleCount.angularCount_eq_iff _
      (CollisionAngleCount.massAngle_pos m M hm hM) (n : ℤ)).mpr
    simpa only [Int.cast_natCast] using bracket
  simpa only [Int.toNat_natCast] using (congrArg Int.toNat count).symm

/-- Append a single actual impact, without changing the existing prefix. -/
theorem trace_snoc (m M : ℝ) {n : ℕ} {s t : State} (run : Trace m M n s t) :
    ∀ {u : State} {e : Event}, Step m M t e u → Trace m M (n + 1) s u := by
  induction run with
  | nil => intro u e impact; exact Trace.cons impact (Trace.nil _)
  | cons first rest ih => intro u e impact; exact Trace.cons first (ih impact)

/-- Independent velocity-circle construction of a maximal physical run.
The circle upper bound and local next-impact theorem close the finite induction;
no unfolded ray, supplied trace, or general optics count theorem is invoked. -/
theorem circle_general_trajectory_count (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State,
      Trace m M (CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M)).toNat
        ⟨a, b, 0, -c⟩ sn ∧ Terminal m M sn ∧
      (∀ {n : ℕ} {s : State}, Trace m M n ⟨a, b, 0, -c⟩ s → Terminal m M s →
        n = (CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M)).toNat) := by
  let N := (CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M)).toNat
  have partial : ∀ k : ℕ, k ≤ N → ∃ s : State, Trace m M k ⟨a, b, 0, -c⟩ s := by
    intro k
    induction k with
    | zero => intro hk; exact ⟨_, Trace.nil _⟩
    | succ k ih =>
      intro hk
      obtain ⟨s, run⟩ := ih (by omega)
      have regular := incoming_trace_regular m M a b c (ne_of_gt (add_pos hm hM)) ha hab hc run
      have nonterminal : ¬ Terminal m M s := by
        intro terminal
        have count := terminal_trace_circle_count m M a b c hm hM ha hab hc run terminal
        change k = N at count
        omega
      have nonoutgoing : ¬ (0 ≤ s.u ∧ s.u ≤ s.v) := by
        rintro ⟨hu, huv⟩
        exact nonterminal (terminal_of_outgoing m M s hu huv)
      obtain ⟨e, t, impact⟩ := next_step_exists m M s regular.1 regular.2 nonoutgoing
      exact ⟨t, trace_snoc m M run impact⟩
  obtain ⟨sn, run⟩ := partial N le_rfl
  refine ⟨sn, run, ceiling_trace_terminal m M a b c hm hM hc run, ?_⟩
  intro n s hrun hterminal
  exact terminal_trace_circle_count m M a b c hm hM ha hab hc hrun hterminal

end VelocityPhase

end GRWTSK.Mechanics.Classical.ElasticCollision
