/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Topology.Homotopy.FiniteConcatenation

set_option autoImplicit false

/-!
# Real clocks for the maintained finite concatenation

The SAME dyadic schedule, including the initial pause, interpolates real marks.
Range coverage is derived by finite bracketing, not supplied as a parameter-map
oracle. This is not an arclength or quadrature parameterization.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Topology.Homotopy.RealPolygonClock

open Set ContinuousMap
open scoped unitInterval
open FiniteConcatenation

noncomputable section

def blend (u a b : ℝ) : ℝ := (1-u)*a+u*b

def vertex (a : ℕ → ℝ) (i : ℕ) : C(I, ℝ) := ContinuousMap.const I (a i)

def cell (a : ℕ → ℝ) (i : ℕ) : Homotopy (vertex a i) (vertex a (i+1)) where
  toFun p := blend (p.1 : ℝ) (a i) (a (i+1))
  continuous_toFun := by unfold blend; fun_prop
  map_zero_left _ := by simp [blend, vertex]
  map_one_left _ := by simp [blend, vertex]

def clock (n : ℕ) (a : ℕ → ℝ) : C(I, ℝ) where
  toFun u := concat (vertex a) n (fun i _ => cell a i) (u, 0)
  continuous_toFun := (map_continuous (concat (vertex a) n
    (fun i _ => cell a i))).comp (by fun_prop)

@[simp] theorem start (n : ℕ) (a : ℕ → ℝ) : clock n a 0 = a 0 := by
  simp [clock, vertex]

@[simp] theorem finish (n : ℕ) (a : ℕ → ℝ) : clock n a 1 = a n := by
  simp [clock, vertex]

theorem blend_mem {l r a b : ℝ} (ha : a ∈ Icc l r) (hb : b ∈ Icc l r) (u : I) :
    blend (u : ℝ) a b ∈ Icc l r := by
  have hu : 0 ≤ 1-(u : ℝ) := by linarith [u.2.2]
  constructor
  · dsimp [blend]
    nlinarith [mul_le_mul_of_nonneg_left ha.1 hu,
      mul_le_mul_of_nonneg_left hb.1 u.2.1]
  · dsimp [blend]
    nlinarith [mul_le_mul_of_nonneg_left ha.2 hu,
      mul_le_mul_of_nonneg_left hb.2 u.2.1]

theorem mem_interval {n : ℕ} {a : ℕ → ℝ} {l r : ℝ}
    (ha : ∀ i, i ≤ n → a i ∈ Icc l r) (u : I) : clock n a u ∈ Icc l r := by
  rcases value_cases (vertex a) n (fun i _ => cell a i) u (0 : I)
      with h | ⟨i, hi, v, h⟩
  · change clock n a u = a 0 at h
    rw [h]
    exact ha 0 (Nat.zero_le n)
  · change clock n a u = blend (v : ℝ) (a i) (a (i+1)) at h
    rw [h]
    exact blend_mem (ha i hi.le) (ha (i+1) (Nat.succ_le_iff.mpr hi)) v

/-- A finite first-crossing argument. Monotonicity is not required for coverage
between the two endpoint values; it is imposed separately by the mesh guard. -/
theorem bracket {n : ℕ} (hn : 0 < n) (a : ℕ → ℝ) {x : ℝ}
    (hx : x ∈ Icc (a 0) (a n)) : ∃ i, i < n ∧ x ∈ Icc (a i) (a (i+1)) := by
  induction n with
  | zero => omega
  | succ n ih =>
    by_cases hzero : n = 0
    · subst n
      exact ⟨0, by omega, hx⟩
    · by_cases hxn : x ≤ a n
      · obtain ⟨i, hi, h⟩ := ih (by omega) ⟨hx.1, hxn⟩
        exact ⟨i, Nat.lt_succ_of_lt hi, h⟩
      · exact ⟨n, Nat.lt_succ_self n, ⟨(lt_of_not_ge hxn).le, hx.2⟩⟩

theorem exists_blend {a b x : ℝ} (hx : x ∈ Icc a b) :
    ∃ u : I, blend (u : ℝ) a b = x := by
  by_cases hab : a = b
  · have hax : a = x := le_antisymm hx.1 (by simpa only [← hab] using hx.2)
    exact ⟨0, by simp [blend, hax]⟩
  · have hp : 0 < b-a := sub_pos.mpr (lt_of_le_of_ne (hx.1.trans hx.2) hab)
    have hu : (x-a)/(b-a) ∈ Icc (0 : ℝ) 1 :=
      ⟨div_nonneg (sub_nonneg.mpr hx.1) hp.le,
        (div_le_one hp).mpr (by linarith [hx.2])⟩
    refine ⟨⟨(x-a)/(b-a), hu⟩, ?_⟩
    dsimp [blend]
    field_simp [hp.ne']
    ring

/-- Every value between the exact endpoint marks is visited, including BOTH
closed endpoints. No continuity sample or missing final cell stands in for this. -/
theorem covers {n : ℕ} (hn : 0 < n) (a : ℕ → ℝ) {x : ℝ}
    (hx : x ∈ Icc (a 0) (a n)) : ∃ u : I, clock n a u = x := by
  obtain ⟨i, hi, hxi⟩ := bracket hn a hx
  obtain ⟨v, hv⟩ := exists_blend hxi
  obtain ⟨u, hu⟩ := hits_cell (vertex a) n (fun j _ => cell a j) i hi v (0 : I)
  exact ⟨u, hu.trans hv⟩

end
end GRWTSK.Topology.Homotopy.RealPolygonClock
