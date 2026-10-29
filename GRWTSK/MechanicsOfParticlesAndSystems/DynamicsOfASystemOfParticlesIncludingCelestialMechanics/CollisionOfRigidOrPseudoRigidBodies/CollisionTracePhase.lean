import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.CollisionVelocitySector

/-!
# Arbitrary trace prefixes in velocity-circle phase coordinates

Local attribution: grwtsk contributors.

Sources: Grant Sanderson, Why do colliding blocks compute pi? (2019),
https://www.3blue1brown.com/lessons/clacks-solution/ ; Why colliding blocks
compute pi (March 13, 2025), text adaptation by Josh Pullen,
https://www.3blue1brown.com/lessons/colliding-blocks-v2/ .
G. Galperin, Playing Pool with π (2003), DOI 10.1070/RD2003v008n04ABEH000252.

A physical trace, not a supplied alternating-event interface, determines its
pair/odd representation. The circle-sector lemmas then make every trace at
the strict angular ceiling terminal. Splitting an arbitrary longer trace
would produce an impact out of that terminal state; hence all prefixes stay
below the first-turn angle pi. This upper-bound proof uses no constructed
optics run or general physical count theorem. Existence of a maximal trace
and the lower bound for arbitrary terminal traces remain separate.

Compilation/kernel/type/axiom checks NOT_RUN by user deferral.
-/

namespace GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase

/-- With the near body initially nonincoming to the wall, the first event of
any nonempty actual trace is a block impact. -/
theorem first_event_blocks (m M : ℝ) {s t : State} {e : Event}
    (hu : 0 ≤ s.u) (h : Step m M s e t) : e = .blocks := by
  cases e with
  | blocks => rfl
  | wall => cases h <;> linarith

/-- Every even physical trace is made of actual block/wall pairs. -/
theorem even_trace_pairs (m M : ℝ) (hsum : m + M ≠ 0)
    {k : ℕ} {s t : State} (hu : 0 ≤ s.u) (run : Trace m M (2 * k) s t) :
    Pairs m M k s t := by
  induction k generalizing s with
  | zero =>
    cases run
    exact Pairs.nil _
  | succ k ih =>
    have length : 2 * (k + 1) = (2 * k + 1) + 1 := by omega
    rw [length] at run
    cases run with
    | @cons n s₀ s₁ sf e first rest =>
      have event := first_event_blocks m M hu first
      subst e
      cases rest with
      | @cons n' s₁ s₂ sf e' second tail =>
        have next := after_blocks_next_wall m M hsum first second
        subst e'
        exact Pairs.cons first second
          (ih (wall_leaves_outgoing m M second).le tail)

/-- Every odd physical trace ends in one actual block impact after actual
pairs; alternation is deduced from the collision law and incoming conditions. -/
theorem odd_trace_pairs (m M : ℝ) (hsum : m + M ≠ 0)
    {k : ℕ} {s t : State} (hu : 0 ≤ s.u) (run : Trace m M (2 * k + 1) s t) :
    ∃ u : State, Pairs m M k s u ∧ Step m M u .blocks t := by
  induction k generalizing s with
  | zero =>
    cases run with
    | @cons n s₀ s₁ sf e first rest =>
      have event := first_event_blocks m M hu first
      subst e
      cases rest
      exact ⟨s₀, Pairs.nil _, first⟩
  | succ k ih =>
    have length : 2 * (k + 1) + 1 = ((2 * k + 1) + 1) + 1 := by omega
    rw [length] at run
    cases run with
    | @cons n s₀ s₁ sf e first rest =>
      have event := first_event_blocks m M hu first
      subst e
      cases rest with
      | @cons n' s₁ s₂ sf e' second tail =>
        have next := after_blocks_next_wall m M hsum first second
        subst e'
        obtain ⟨u, pairs, last⟩ := ih (wall_leaves_outgoing m M second).le tail
        exact ⟨u, Pairs.cons first second pairs, last⟩

theorem even_trace_phase (m M a b c : ℝ) (hm : 0 < m) (hM : 0 < M)
    {k : ℕ} {s : State} (run : Trace m M (2 * k) ⟨a, b, 0, -c⟩ s) :
    X M s = evenX (Real.sqrt M * c) (2 * (k : ℝ) * CollisionAngleCount.massAngle m M) ∧
    Y m s = evenY (Real.sqrt M * c) (2 * (k : ℝ) * CollisionAngleCount.massAngle m M) := by
  exact incoming_pairs_even_phase m M a b c hm hM
    (even_trace_pairs m M (ne_of_gt (add_pos hm hM)) (by norm_num) run)

theorem odd_trace_phase (m M a b c : ℝ) (hm : 0 < m) (hM : 0 < M)
    {k : ℕ} {s : State} (run : Trace m M (2 * k + 1) ⟨a, b, 0, -c⟩ s) :
    X M s = oddX (Real.sqrt M * c) ((2 * (k : ℝ) + 2) * CollisionAngleCount.massAngle m M) ∧
    Y m s = oddY (Real.sqrt M * c) ((2 * (k : ℝ) + 2) * CollisionAngleCount.massAngle m M) := by
  obtain ⟨u, pairs, last⟩ := odd_trace_pairs m M (ne_of_gt (add_pos hm hM)) (by norm_num) run
  exact incoming_odd_phase m M a b c hm hM pairs last

/-- Split at an exact impact count, without inventing flight subdivisions. -/
theorem trace_split (m M : ℝ) {n r : ℕ} {s t : State}
    (run : Trace m M (n + r) s t) :
    ∃ u : State, Trace m M n s u ∧ Trace m M r u t := by
  induction n generalizing s with
  | zero => exact ⟨s, Trace.nil _, run⟩
  | succ n ih =>
    have length : n + 1 + r = (n + r) + 1 := by omega
    rw [length] at run
    cases run with
    | cons first rest =>
      obtain ⟨u, prefix, suffix⟩ := ih rest
      exact ⟨u, Trace.cons first prefix, suffix⟩

theorem trace_from_terminal_zero (m M : ℝ) {n : ℕ} {s t : State}
    (terminal : Terminal m M s) (run : Trace m M n s t) : n = 0 := by
  cases run with
  | nil => rfl
  | @cons n s s' t e first rest => exact False.elim (terminal e s' first)

/-- This is a circle proof of terminality at the arithmetic angular ceiling
for ANY actual trace of that length, not an appeal to an optics trajectory. -/
theorem ceiling_trace_terminal (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hc : 0 < c) {s : State}
    (run : Trace m M
      (CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M)).toNat
      ⟨a, b, 0, -c⟩ s) : Terminal m M s := by
  let θ := CollisionAngleCount.massAngle m M
  let N := (CollisionAngleCount.angularCount θ).toNat
  have θpos := CollisionAngleCount.massAngle_pos m M hm hM
  have nonneg := CollisionAngleCount.angularCount_nonnegative θ θpos
  have Ni : (N : ℤ) = CollisionAngleCount.angularCount θ := Int.toNat_of_nonneg nonneg
  have Nr : (N : ℝ) = (CollisionAngleCount.angularCount θ : ℝ) := by exact_mod_cast Ni
  obtain ⟨lower, upper⟩ := CollisionAngleCount.angularCount_bounds θ θpos
  rw [← Nr] at lower upper
  change Trace m M N _ s at run
  by_cases parity : N % 2 = 0
  · have length : N = 2 * (N / 2) := by omega
    rw [length] at run
    have pairs := even_trace_pairs m M (ne_of_gt (add_pos hm hM)) (by norm_num) run
    apply incoming_pairs_terminal_sector m M a b c hm hM hc pairs
    · have Nr' : (N : ℝ) = 2 * ((N / 2 : ℕ) : ℝ) := by exact_mod_cast length
      simpa only [Nr'] using lower
    · have Nr' : (N : ℝ) = 2 * ((N / 2 : ℕ) : ℝ) := by exact_mod_cast length
      simpa only [Nr'] using upper
  · have length : N = 2 * (N / 2) + 1 := by omega
    rw [length] at run
    obtain ⟨u, pairs, last⟩ := odd_trace_pairs m M (ne_of_gt (add_pos hm hM)) (by norm_num) run
    apply incoming_odd_terminal_sector m M a b c hm hM hc pairs last
    · have Nr' : (N : ℝ) = 2 * ((N / 2 : ℕ) : ℝ) + 1 := by exact_mod_cast length
      simpa only [Nr'] using lower
    · have Nr' : (N : ℝ) = 2 * ((N / 2 : ℕ) : ℝ) + 1 := by exact_mod_cast length
      rw [Nr'] at upper
      convert upper using 1 <;> ring

/-- An arbitrary physical prefix cannot pass the terminal circle sector.
No initial position normalization or preexisting terminal trace is assumed. -/
theorem trace_length_le_angular_ceiling (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hc : 0 < c) {n : ℕ} {s : State}
    (run : Trace m M n ⟨a, b, 0, -c⟩ s) :
    n ≤ (CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M)).toNat := by
  let N := (CollisionAngleCount.angularCount (CollisionAngleCount.massAngle m M)).toNat
  by_contra hn
  have less : N < n := lt_of_not_ge hn
  have length : n = N + (n - N) := by omega
  rw [length] at run
  obtain ⟨u, prefix, suffix⟩ := trace_split m M run
  have terminal := ceiling_trace_terminal m M a b c hm hM hc prefix
  have zero := trace_from_terminal_zero m M terminal suffix
  omega

/-- The branch restriction is now a conclusion for every actual prefix. -/
theorem trace_first_turn_bound (m M a b c : ℝ)
    (hm : 0 < m) (hM : 0 < M) (hc : 0 < c) {n : ℕ} {s : State}
    (run : Trace m M n ⟨a, b, 0, -c⟩ s) :
    (n : ℝ) * CollisionAngleCount.massAngle m M < Real.pi := by
  let θ := CollisionAngleCount.massAngle m M
  let N := (CollisionAngleCount.angularCount θ).toNat
  have θpos := CollisionAngleCount.massAngle_pos m M hm hM
  have Ni : (N : ℤ) = CollisionAngleCount.angularCount θ :=
    Int.toNat_of_nonneg (CollisionAngleCount.angularCount_nonnegative θ θpos)
  have Nr : (N : ℝ) = (CollisionAngleCount.angularCount θ : ℝ) := by exact_mod_cast Ni
  have bound := trace_length_le_angular_ceiling m M a b c hm hM hc run
  have boundR : (n : ℝ) ≤ (N : ℝ) := by exact_mod_cast bound
  have angle := mul_le_mul_of_nonneg_right boundR θpos.le
  have strict := (CollisionAngleCount.angularCount_bounds θ θpos).1
  rw [← Nr] at strict
  exact lt_of_le_of_lt angle strict

end GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase
