import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.CollisionCountApproximation
import Mathlib.Analysis.Real.Pi.Irrational
import Mathlib.Topology.MetricSpace.Pseudo.Defs

/-!
# Convergence, fixed-prefix stability and common mass scaling

Local attribution: grwtsk contributors.

Source: G. Galperin, Playing Pool with π (2003),
DOI 10.1070/RD2003v008n04ABEH000252, sections 8–10; the 3Blue1Brown
colliding-blocks sequence by Grant Sanderson (2019, reprise 2025).

The quantifier order is fixed precision first, then a sufficiently large
collision scale. These statements do not assert exact floor agreement at
every scale when the requested number of digits grows with that scale.

All proof bodies are source candidates. Verification remains user-deferred:
compilation, fresh kernel/type checking and transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.Mechanics.Classical.CollisionAngleCount

noncomputable def normalizedCount (D : ℝ) : ℝ :=
  (angularCount (Real.arctan (1 / D)) : ℝ) / D

/-- Explicit real-scale threshold for any requested positive error. -/
theorem normalizedCount_error_lt (ε D : ℝ) (hε : 0 < ε)
    (hD : max 4 (1 / ε + 1) ≤ D) : |normalizedCount D - Real.pi| < ε := by
  have hfour : 4 ≤ D := le_trans (le_max_left _ _) hD
  have hlarge : 1 / ε + 1 ≤ D := le_trans (le_max_right _ _) hD
  have hpos : 0 < D := by linarith
  have hmul : 1 < D * ε := (div_lt_iff₀ hε).mp (show 1 / ε < D by linarith)
  have hinv : 1 / D < ε := (div_lt_iff₀ hpos).mpr (by nlinarith)
  exact lt_trans (inverseScale_abs_error D hfour) hinv

theorem normalizedCount_tendsto :
    Filter.Tendsto normalizedCount Filter.atTop (nhds Real.pi) := by
  apply Metric.tendsto_atTop.mpr
  intro ε hε
  refine ⟨max 4 (1 / ε + 1), ?_⟩
  intro D hD
  simpa only [Real.dist_eq] using normalizedCount_error_lt ε D hε hD

/-- A floor is stable inside the two adjacent integer boundaries. The strict
lower boundary must be supplied; it cannot be inferred merely from a floor. -/
theorem floor_eq_of_abs_sub_lt_gap (x y : ℝ)
    (near : |x - y| < min (y - ((⌊y⌋ : ℤ) : ℝ)) (((⌊y⌋ : ℤ) : ℝ) + (1 : ℝ) - y)) :
    ⌊x⌋ = ⌊y⌋ := by
  obtain ⟨hl, hu⟩ := abs_lt.mp near
  have left := min_le_left (y - ((⌊y⌋ : ℤ) : ℝ)) (((⌊y⌋ : ℤ) : ℝ) + (1 : ℝ) - y)
  have right := min_le_right (y - ((⌊y⌋ : ℤ) : ℝ)) (((⌊y⌋ : ℤ) : ℝ) + (1 : ℝ) - y)
  apply Int.floor_eq_iff.mpr
  constructor <;> linarith

theorem pi_nat_multiplier_above_floor (k : ℕ) (hk : 0 < k) :
    ((⌊(k : ℝ) * Real.pi⌋ : ℤ) : ℝ) < (k : ℝ) * Real.pi := by
  have irr : Irrational ((k : ℝ) * Real.pi) :=
    irrational_natCast_mul_iff.mpr ⟨ne_of_gt hk, irrational_pi⟩
  rcases eq_or_lt_of_le (Int.floor_le ((k : ℝ) * Real.pi)) with h | h
  · exact False.elim (irr.ne_int _ h.symm)
  · exact h

/-- For every fixed integer multiplier, sufficiently fine collision scales
stabilize that integer prefix. The threshold depends on the fixed multiplier. -/
theorem fixed_prefix_stable (k : ℕ) (hk : 0 < k) :
    ∃ R : ℝ, ∀ D : ℝ, R ≤ D →
      ⌊(k : ℝ) * normalizedCount D⌋ = ⌊(k : ℝ) * Real.pi⌋ := by
  let y := (k : ℝ) * Real.pi
  let δ := min (y - ((⌊y⌋ : ℤ) : ℝ)) (((⌊y⌋ : ℤ) : ℝ) + (1 : ℝ) - y)
  have hleft : 0 < y - ((⌊y⌋ : ℤ) : ℝ) :=
    sub_pos.mpr (pi_nat_multiplier_above_floor k hk)
  have hright : 0 < ((⌊y⌋ : ℤ) : ℝ) + (1 : ℝ) - y :=
    sub_pos.mpr (Int.lt_floor_add_one y)
  have hδ : 0 < δ := lt_min hleft hright
  have hkr : (0 : ℝ) < k := by exact_mod_cast hk
  let ε := δ / (k : ℝ)
  have hε : 0 < ε := div_pos hδ hkr
  refine ⟨max 4 (1 / ε + 1), ?_⟩
  intro D hD
  have error := normalizedCount_error_lt ε D hε hD
  have scaled := mul_lt_mul_of_pos_left error hkr
  have he : |(k : ℝ) * normalizedCount D - y| =
      (k : ℝ) * |normalizedCount D - Real.pi| := by
    dsimp only [y]
    rw [← mul_sub, abs_mul, abs_of_pos hkr]
  have cancel : (k : ℝ) * ε = δ := by
    dsimp only [ε]
    field_simp [ne_of_gt hkr]
  apply floor_eq_of_abs_sub_lt_gap
  rw [he]
  exact lt_of_lt_of_eq scaled cancel

theorem decimal_prefix_stable (p : ℕ) :
    ∃ R : ℝ, ∀ D : ℝ, R ≤ D →
      ⌊(10 : ℝ) ^ p * normalizedCount D⌋ = ⌊(10 : ℝ) ^ p * Real.pi⌋ := by
  have h := fixed_prefix_stable (10 ^ p) (pow_pos (by decide : (0 : ℕ) < 10) p)
  simpa only [Nat.cast_pow, Nat.cast_ofNat] using h

theorem decimal_scale_ge_index (n : ℕ) :
    (n : ℝ) + 1 ≤ (10 : ℝ) ^ (n + 1) := by
  induction n with
  | zero => norm_num
  | succ n ih =>
    simp only [Nat.cast_succ]
    rw [show Nat.succ n + 1 = (n + 1) + 1 by omega, pow_succ]
    have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    nlinarith

/-- The stable-prefix statement applies along the actual decimal collision
scales. p is fixed before N is chosen; p is not the varying run index n. -/
theorem decimal_prefix_stable_along_powers (p : ℕ) :
    ∃ N : ℕ, ∀ n : ℕ, N ≤ n →
      ⌊(10 : ℝ) ^ p * normalizedCount ((10 : ℝ) ^ (n + 1))⌋ =
        ⌊(10 : ℝ) ^ p * Real.pi⌋ := by
  obtain ⟨R, stable⟩ := decimal_prefix_stable p
  obtain ⟨N, hN⟩ := exists_nat_gt R
  refine ⟨N, ?_⟩
  intro n hn
  apply stable
  have hreal : (N : ℝ) ≤ n := by exact_mod_cast hn
  have growth := decimal_scale_ge_index n
  linarith

theorem massAngle_common_square_ratio (m D : ℝ) (hm : 0 < m) (hD : 0 < D) :
    massAngle m (m * D ^ 2) = Real.arctan (1 / D) := by
  have ratio : m / (m * D ^ 2) = 1 / D ^ 2 := by
    field_simp [ne_of_gt hm, ne_of_gt hD]
    <;> ring
  unfold massAngle
  rw [ratio, Real.sqrt_div (by norm_num : (0 : ℝ) ≤ 1), Real.sqrt_one, Real.sqrt_sq hD.le]

end GRWTSK.Mechanics.Classical.CollisionAngleCount

namespace GRWTSK.Mechanics.Classical.ElasticCollision.Unfolding

/-- The collision count depends on the ratio; a common positive mass scale
is retained in the physical model rather than removed from the hypotheses. -/
theorem physical_count_common_square_ratio (m D : ℝ) (n : ℕ)
    (hm : 0 < m) (hD : 0 < D)
    (count : CollisionAngleCount.angularCount (Real.arctan (1 / D)) = (n : ℤ))
    (a b c : ℝ) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace m (m * D ^ 2) n ⟨a, b, 0, -c⟩ sn ∧ Terminal m (m * D ^ 2) sn ∧
      (∀ {r : ℕ} {sp : State}, Trace m (m * D ^ 2) r ⟨a, b, 0, -c⟩ sp →
        Terminal m (m * D ^ 2) sp → r = n) := by
  have result := general_trajectory_count m (m * D ^ 2) a b c hm
    (mul_pos hm (sq_pos_of_pos hD)) ha hab hc
  rw [CollisionAngleCount.massAngle_common_square_ratio m D hm hD, count] at result
  simpa only [Int.toNat_natCast] using result

theorem physical_count_ratio_100 (m a b c : ℝ)
    (hm : 0 < m) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace m (m * 100) 31 ⟨a, b, 0, -c⟩ sn ∧ Terminal m (m * 100) sn ∧
      (∀ {r : ℕ} {sp : State}, Trace m (m * 100) r ⟨a, b, 0, -c⟩ sp →
        Terminal m (m * 100) sp → r = 31) := by
  have h := physical_count_common_square_ratio m 10 31 hm (by norm_num)
    CollisionAngleCount.arctan_count_tenth a b c ha hab hc
  norm_num at h
  exact h

theorem physical_count_ratio_10000 (m a b c : ℝ)
    (hm : 0 < m) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace m (m * 10000) 314 ⟨a, b, 0, -c⟩ sn ∧ Terminal m (m * 10000) sn ∧
      (∀ {r : ℕ} {sp : State}, Trace m (m * 10000) r ⟨a, b, 0, -c⟩ sp →
        Terminal m (m * 10000) sp → r = 314) := by
  have h := physical_count_common_square_ratio m 100 314 hm (by norm_num)
    CollisionAngleCount.arctan_count_hundredth a b c ha hab hc
  norm_num at h
  exact h

theorem physical_count_ratio_1000000 (m a b c : ℝ)
    (hm : 0 < m) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace m (m * 1000000) 3141 ⟨a, b, 0, -c⟩ sn ∧ Terminal m (m * 1000000) sn ∧
      (∀ {r : ℕ} {sp : State}, Trace m (m * 1000000) r ⟨a, b, 0, -c⟩ sp →
        Terminal m (m * 1000000) sp → r = 3141) := by
  have h := physical_count_common_square_ratio m 1000 3141 hm (by norm_num)
    CollisionAngleCount.arctan_count_thousandth a b c ha hab hc
  norm_num at h
  exact h

theorem physical_count_ratio_100000000 (m a b c : ℝ)
    (hm : 0 < m) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace m (m * 100000000) 31415 ⟨a, b, 0, -c⟩ sn ∧ Terminal m (m * 100000000) sn ∧
      (∀ {r : ℕ} {sp : State}, Trace m (m * 100000000) r ⟨a, b, 0, -c⟩ sp →
        Terminal m (m * 100000000) sp → r = 31415) := by
  have h := physical_count_common_square_ratio m 10000 31415 hm (by norm_num)
    CollisionAngleCount.arctan_count_ten_thousandth a b c ha hab hc
  norm_num at h
  exact h

/-- Fixed decimal precision eventually agrees for every terminal physical
trace at sufficiently large real mass-ratio scale D. The threshold is chosen
before positions, speed, common mass scale and terminal trace are quantified. -/
theorem physical_fixed_prefix_stable (p : ℕ) :
    ∃ R : ℝ, ∀ D : ℝ, R ≤ D → ∀ m a b c : ℝ,
      0 < m → 0 < a → a < b → 0 < c → ∀ n : ℕ, ∀ sn : State,
      Trace m (m * D ^ 2) n ⟨a, b, 0, -c⟩ sn → Terminal m (m * D ^ 2) sn →
      ⌊(10 : ℝ) ^ p * ((n : ℝ) / D)⌋ = ⌊(10 : ℝ) ^ p * Real.pi⌋ := by
  obtain ⟨R, stable⟩ := CollisionAngleCount.decimal_prefix_stable p
  refine ⟨max 4 R, ?_⟩
  intro D hD m a b c hm ha hab hc n sn run terminal
  have hfour : 4 ≤ D := le_trans (le_max_left _ _) hD
  have hlarge : R ≤ D := le_trans (le_max_right _ _) hD
  have hpos : 0 < D := by linarith
  have full := general_trajectory_count m (m * D ^ 2) a b c hm
    (mul_pos hm (sq_pos_of_pos hpos)) ha hab hc
  obtain ⟨final, constructed, finalTerminal, unique⟩ := full
  have count := unique run terminal
  rw [CollisionAngleCount.massAngle_common_square_ratio m D hm hpos] at count
  have nonneg := CollisionAngleCount.angularCount_nonnegative (Real.arctan (1 / D))
    (Real.arctan_pos.mpr (div_pos (by norm_num) hpos))
  have castInt := Int.toNat_of_nonneg nonneg
  have castReal : ((CollisionAngleCount.angularCount (Real.arctan (1 / D))).toNat : ℝ) =
      (CollisionAngleCount.angularCount (Real.arctan (1 / D)) : ℝ) := by
    exact_mod_cast castInt
  rw [count, castReal]
  exact stable D hlarge

/-- For any fixed requested decimal prefix, all sufficiently large decimal
mass-ratio exponents give that prefix in every complete physical trajectory.
The run exponent n and requested precision p are independent quantified data. -/
theorem physical_decimal_prefix_stable (p : ℕ) :
    ∃ N : ℕ, ∀ n : ℕ, N ≤ n → ∀ m a b c : ℝ,
      0 < m → 0 < a → a < b → 0 < c → ∀ r : ℕ, ∀ sn : State,
      Trace m (m * ((10 : ℝ) ^ (n + 1)) ^ 2) r ⟨a, b, 0, -c⟩ sn →
      Terminal m (m * ((10 : ℝ) ^ (n + 1)) ^ 2) sn →
      ⌊(10 : ℝ) ^ p * ((r : ℝ) / (10 : ℝ) ^ (n + 1))⌋ =
        ⌊(10 : ℝ) ^ p * Real.pi⌋ := by
  obtain ⟨R, stable⟩ := physical_fixed_prefix_stable p
  obtain ⟨N, hN⟩ := exists_nat_gt R
  refine ⟨N, ?_⟩
  intro n hn m a b c hm ha hab hc r sn run terminal
  have hreal : (N : ℝ) ≤ n := by exact_mod_cast hn
  have growth := CollisionAngleCount.decimal_scale_ge_index n
  have threshold : R ≤ (10 : ℝ) ^ (n + 1) := by linarith
  exact stable _ threshold m a b c hm ha hab hc r sn run terminal

end GRWTSK.Mechanics.Classical.ElasticCollision.Unfolding
