/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RectangleFactorIndex
import GRWTSK.Topology.Homotopy.RealPolygonClock

set_option autoImplicit false

/-!
# Complete oriented rectangular meshes via an unwrapped perimeter coordinate

The perimeter parameter runs from 0 to 4, not modulo four. Each admitted cell
stays on one side; its exact affine image equals the old polygon cell. Coverage
and a boundary-valued homotopy to the old four-edge traversal are CONSTRUCTED.
The homotopy interpolates perimeter coordinates, NOT points through the box.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.RectanglePerimeterMesh

open Set ContinuousMap RectangleFactorIndex PolygonFreeHomotopy
open scoped unitInterval
open GRWTSK.Topology.Homotopy
open FiniteConcatenation

noncomputable section

def ramp (x : ℝ) : ℝ := min (max x 0) 1

theorem ramp_of_nonpos {x : ℝ} (hx : x ≤ 0) : ramp x = 0 := by
  simp [ramp, max_eq_right hx]

theorem ramp_of_mem {x : ℝ} (hx : x ∈ Icc (0 : ℝ) 1) : ramp x = x := by
  simp [ramp, max_eq_left hx.1, min_eq_left hx.2]

theorem ramp_of_one_le {x : ℝ} (hx : 1 ≤ x) : ramp x = 1 := by
  rw [ramp, max_eq_left (by linarith), min_eq_right hx]

/-- A globally continuous piecewise-affine map, with one turn on [0,4]. -/
def point (D : Rectangle) (x : ℝ) : ℂ :=
  ⟨D.left+(D.right-D.left)*(ramp x-ramp (x-2)),
    D.bottom+(D.top-D.bottom)*(ramp (x-1)-ramp (x-3))⟩

theorem point_continuous (D : Rectangle) : Continuous (point D) := by
  unfold point ramp
  fun_prop

/-- Exact affine side identity, including BOTH corners. -/
theorem point_cell (D : Rectangle) {j : ℕ} (hj : j < 4) {x : ℝ}
    (hx : x ∈ Icc (j : ℝ) ((j : ℝ)+1)) :
    point D x = PolygonTube.blend (x-j) (D.corners j) (D.corners (j+1)) := by
  interval_cases j
  · have h0 := ramp_of_mem (show x ∈ Icc (0 : ℝ) 1 by simpa using hx)
    have h1 := ramp_of_nonpos (show x-1 ≤ 0 by norm_num at hx; linarith [hx.2])
    have h2 := ramp_of_nonpos (show x-2 ≤ 0 by norm_num at hx; linarith [hx.2])
    have h3 := ramp_of_nonpos (show x-3 ≤ 0 by norm_num at hx; linarith [hx.2])
    apply Complex.ext <;> simp [point, h0, h1, h2, h3, Rectangle.corners,
      PolygonTube.blend, Complex.real_smul] <;> ring
  · have h0 := ramp_of_one_le (show 1 ≤ x by norm_num at hx; exact hx.1)
    have h1 := ramp_of_mem (show x-1 ∈ Icc (0 : ℝ) 1 by
      norm_num at hx; constructor <;> linarith [hx.1, hx.2])
    have h2 := ramp_of_nonpos (show x-2 ≤ 0 by norm_num at hx; linarith [hx.2])
    have h3 := ramp_of_nonpos (show x-3 ≤ 0 by norm_num at hx; linarith [hx.2])
    apply Complex.ext <;> simp [point, h0, h1, h2, h3, Rectangle.corners,
      PolygonTube.blend, Complex.real_smul] <;> ring
  · have h0 := ramp_of_one_le (show 1 ≤ x by norm_num at hx; linarith [hx.1])
    have h1 := ramp_of_one_le (show 1 ≤ x-1 by norm_num at hx; linarith [hx.1])
    have h2 := ramp_of_mem (show x-2 ∈ Icc (0 : ℝ) 1 by
      norm_num at hx; constructor <;> linarith [hx.1, hx.2])
    have h3 := ramp_of_nonpos (show x-3 ≤ 0 by norm_num at hx; linarith [hx.2])
    apply Complex.ext <;> simp [point, h0, h1, h2, h3, Rectangle.corners,
      PolygonTube.blend, Complex.real_smul] <;> ring
  · have h0 := ramp_of_one_le (show 1 ≤ x by norm_num at hx; linarith [hx.1])
    have h1 := ramp_of_one_le (show 1 ≤ x-1 by norm_num at hx; linarith [hx.1])
    have h2 := ramp_of_one_le (show 1 ≤ x-2 by norm_num at hx; linarith [hx.1])
    have h3 := ramp_of_mem (show x-3 ∈ Icc (0 : ℝ) 1 by
      norm_num at hx; constructor <;> linarith [hx.1, hx.2])
    apply Complex.ext <;> simp [point, h0, h1, h2, h3, Rectangle.corners,
      PolygonTube.blend, Complex.real_smul] <;> ring

theorem point_corner (D : Rectangle) {j : ℕ} (hj : j ≤ 4) :
    point D (j : ℝ) = D.corners j := by
  interval_cases j <;> apply Complex.ext <;>
    norm_num [point, ramp, Rectangle.corners] <;> ring

@[simp] theorem point_zero (D : Rectangle) : point D 0 = D.corners 0 :=
  point_corner D (j := 0) (by norm_num)

@[simp] theorem point_four (D : Rectangle) : point D 4 = D.corners 0 := by
  simpa [Rectangle.corners] using point_corner D (j := 4) (by norm_num)

theorem point_affine (D : Rectangle) {j : ℕ} (hj : j < 4) {a b : ℝ}
    (ha : a ∈ Icc (j : ℝ) ((j : ℝ)+1))
    (hb : b ∈ Icc (j : ℝ) ((j : ℝ)+1)) (u : I) :
    point D (RealPolygonClock.blend (u : ℝ) a b) =
      PolygonTube.blend (u : ℝ) (point D a) (point D b) := by
  rw [point_cell D hj (RealPolygonClock.blend_mem ha hb u),
    point_cell D hj ha, point_cell D hj hb]
  apply Complex.ext <;> simp [RealPolygonClock.blend, PolygonTube.blend,
    Complex.real_smul] <;> ring

theorem point_boundary (D : Rectangle) {x : ℝ} (hx : x ∈ Icc (0 : ℝ) 4) :
    point D x ∈ D.boundary := by
  have hex : ∃ j : ℕ, j < 4 ∧ x ∈ Icc (j : ℝ) ((j : ℝ)+1) := by
    by_cases h1 : x ≤ 1
    · exact ⟨0, by norm_num, by simpa using ⟨hx.1, h1⟩⟩
    · by_cases h2 : x ≤ 2
      · exact ⟨1, by norm_num, by norm_num; exact ⟨by linarith, h2⟩⟩
      · by_cases h3 : x ≤ 3
        · exact ⟨2, by norm_num, by norm_num; exact ⟨by linarith, h3⟩⟩
        · exact ⟨3, by norm_num, by norm_num; exact ⟨by linarith, hx.2⟩⟩
  obtain ⟨j, hj, hcell⟩ := hex
  rw [point_cell D hj hcell]
  exact D.edge_boundary hj ⟨x-j, by constructor <;> linarith [hcell.1, hcell.2]⟩

/-- The entire geometric boundary, not just the range inclusion, is recovered. -/
theorem boundary_point (D : Rectangle) {z : ℂ} (hz : z ∈ D.boundary) :
    ∃ x ∈ Icc (0 : ℝ) 4, point D x = z := by
  have hseg (a b x : ℝ) (hx : x ∈ Icc a b) := RealPolygonClock.exists_blend hx
  rcases hz.2 with hl | hr | hb | ht
  · obtain ⟨u, hu⟩ := hseg D.bottom D.top z.im ⟨hz.1.2.2.1, hz.1.2.2.2⟩
    refine ⟨4-(u : ℝ), ⟨by linarith [u.2.2], by linarith [u.2.1]⟩, ?_⟩
    rw [point_cell D (j := 3) (by norm_num) (by
      norm_num; constructor <;> linarith [u.2.1, u.2.2])]
    apply Complex.ext
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul, hl]; ring
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul]
      dsimp [RealPolygonClock.blend] at hu
      nlinarith
  · obtain ⟨u, hu⟩ := hseg D.bottom D.top z.im ⟨hz.1.2.2.1, hz.1.2.2.2⟩
    refine ⟨1+(u : ℝ), ⟨by linarith [u.2.1], by linarith [u.2.2]⟩, ?_⟩
    rw [point_cell D (j := 1) (by norm_num) (by
      norm_num; constructor <;> linarith [u.2.1, u.2.2])]
    apply Complex.ext
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul, hr]; ring
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul]
      dsimp [RealPolygonClock.blend] at hu
      nlinarith
  · obtain ⟨u, hu⟩ := hseg D.left D.right z.re ⟨hz.1.1, hz.1.2.1⟩
    refine ⟨(u : ℝ), ⟨u.2.1, by linarith [u.2.2]⟩, ?_⟩
    rw [point_cell D (j := 0) (by norm_num) (by simpa using u.2)]
    apply Complex.ext
    · simpa [Rectangle.corners, PolygonTube.blend, Complex.real_smul,
        RealPolygonClock.blend] using hu
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul, hb]; ring
  · obtain ⟨u, hu⟩ := hseg D.left D.right z.re ⟨hz.1.1, hz.1.2.1⟩
    refine ⟨3-(u : ℝ), ⟨by linarith [u.2.2], by linarith [u.2.1]⟩, ?_⟩
    rw [point_cell D (j := 2) (by norm_num) (by
      norm_num; constructor <;> linarith [u.2.1, u.2.2])]
    apply Complex.ext
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul]
      dsimp [RealPolygonClock.blend] at hu
      nlinarith
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul, ht]; ring

/-- Absolute, unwrapped endpoint coordinates and every whole-cell side label. -/
def Admissible (n : ℕ) (a : ℕ → ℝ) : Prop :=
  0 < n ∧ a 0 = 0 ∧ a n = 4 ∧
    ∀ i, i < n → ∃ j : ℕ, j < 4 ∧ (j : ℝ) ≤ a i ∧ a i ≤ a (i+1) ∧ a (i+1) ≤ (j : ℝ)+1

theorem node_mem {n : ℕ} {a : ℕ → ℝ} (h : Admissible n a)
    {i : ℕ} (hi : i ≤ n) : a i ∈ Icc (0 : ℝ) 4 := by
  by_cases hin : i < n
  · obtain ⟨j, hj, ha, hab, hb⟩ := h.2.2.2 i hin
    have hjR : (j : ℝ) ≤ 3 := by exact_mod_cast (show j ≤ 3 by omega)
    exact ⟨(Nat.cast_nonneg j).trans ha, by linarith⟩
  · have : i = n := by omega
    simp [this, h.2.2.1]

def curve (D : Rectangle) (n : ℕ) (a : ℕ → ℝ) : C(I, ℂ) :=
  polygonMap n (fun i => point D (a i))

/-- The constructed parameterized curve is the LITERAL old polygon map. -/
theorem curve_clock (D : Rectangle) {n : ℕ} {a : ℕ → ℝ} (h : Admissible n a) (u : I) :
    curve D n a u = point D (RealPolygonClock.clock n a u) := by
  apply natural (RealPolygonClock.vertex a) (constantVertex (fun i => point D (a i))) n
    (fun i _ => RealPolygonClock.cell a i) (fun i _ => affineCell (fun i => point D (a i)) i)
    (point D) (0 : I) (0 : I) rfl
  intro i hi v
  obtain ⟨j, hj, ha, hab, hb⟩ := h.2.2.2 i hi
  exact (point_affine D hj ⟨ha, hab.trans hb⟩ ⟨ha.trans hab, hb⟩ v).symm

theorem curve_closed (D : Rectangle) {n : ℕ} {a : ℕ → ℝ} (h : Admissible n a) :
    curve D n a 0 = curve D n a 1 := by
  simp [curve, h.2.1, h.2.2.1]

/-- Bidirectional all-point coverage; closure alone does not imply this. -/
theorem curve_range (D : Rectangle) {n : ℕ} {a : ℕ → ℝ} (h : Admissible n a) :
    Set.range (curve D n a) = D.boundary := by
  ext z
  constructor
  · rintro ⟨u, rfl⟩
    rw [curve_clock D h]
    exact point_boundary D (RealPolygonClock.mem_interval (fun i hi => node_mem h hi) u)
  · intro hz
    obtain ⟨x, hx, hxz⟩ := boundary_point D hz
    obtain ⟨u, hu⟩ := RealPolygonClock.covers h.1 a (by simpa [h.2.1, h.2.2.1] using hx)
    exact ⟨u, by rw [curve_clock D h, hu, hxz]⟩

theorem reference_admissible : Admissible 4 (fun i : ℕ => (i : ℝ)) := by
  refine ⟨by norm_num, by norm_num, by norm_num, fun i hi => ⟨i, hi, le_rfl, ?_, ?_⟩⟩
  · exact_mod_cast Nat.le_succ i
  · simp

theorem reference_curve (D : Rectangle) : curve D 4 (fun i : ℕ => (i : ℝ)) = D.curve := by
  apply polygonMap_congr
  intro i hi
  exact point_corner D hi

/-- No inverse of the dyadic schedule, caller-supplied r, or source nonvanishing
in the interior is needed. The WHOLE homotopy stays on the geometric perimeter. -/
def boundaryHomotopy (D : Rectangle) {n : ℕ} {a : ℕ → ℝ} (h : Admissible n a) :
    HomotopyWith (curve D n a) D.curve
      (fun g => g 0 = g 1 ∧ ∀ u, g u ∈ D.boundary) where
  toFun p := point D (RealPolygonClock.blend (p.1 : ℝ)
    (RealPolygonClock.clock n a p.2) (RealPolygonClock.clock 4 (fun i : ℕ => (i : ℝ)) p.2))
  continuous_toFun := (point_continuous D).comp (by unfold RealPolygonClock.blend; fun_prop)
  map_zero_left u := by simpa [RealPolygonClock.blend] using (curve_clock D h u).symm
  map_one_left u := by
    simpa [RealPolygonClock.blend, reference_curve D] using
      (curve_clock D reference_admissible u).symm
  prop' lam := by
    constructor
    · have hfour : (1-(lam : ℝ))*4+(lam : ℝ)*4 = 4 := by ring
      simp [RealPolygonClock.blend, h.2.1, h.2.2.1, hfour]
    · intro u
      exact point_boundary D (RealPolygonClock.blend_mem
        (RealPolygonClock.mem_interval (fun i hi => node_mem h hi) u)
        (RealPolygonClock.mem_interval (fun i hi => node_mem reference_admissible hi) u) lam)

end
end GRWTSK.Analysis.Complex.RectanglePerimeterMesh
