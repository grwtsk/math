/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RectanglePerimeterMesh
import GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
import Mathlib.Data.List.GetD
import Mathlib.Data.Rat.Cast.Order

set_option autoImplicit false

/-!
# Exact rational marks construct the rectangular contour

Marks run from 0 to 4 without wrapping. Every complete consecutive cell is
ordered inside a single closed unit side. Coordinates are computed from the
external opposite corners, not supplied independently. Zero-length cells are
allowed but still consume a record. Missing/extra marks and corner-skips fail.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.RationalRectangleMesh

open Set
open scoped unitInterval
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open RectangleFactorIndex PolygonFreeHomotopy

/-- This accessor is only interpreted through the exact-length guard. -/
def mark (a : List ℚ) (i : ℕ) : ℚ := a.getD i 0

def Valid (n : ℕ) (a : List ℚ) : Prop :=
  0 < n ∧ a.length = n+1 ∧ mark a 0 = 0 ∧ mark a n = 4 ∧
    ∀ i ∈ Finset.range n, ∃ j ∈ Finset.range 4,
      (j : ℚ) ≤ mark a i ∧ mark a i ≤ mark a (i+1) ∧ mark a (i+1) ≤ (j : ℚ)+1

instance validDecidable (n : ℕ) (a : List ℚ) : Decidable (Valid n a) := by
  unfold Valid
  infer_instance

def check (n : ℕ) (a : List ℚ) : Bool := decide (Valid n a)

theorem check_iff_valid (n : ℕ) (a : List ℚ) : check n a = true ↔ Valid n a := by
  simp [check]

def ramp (x : ℚ) : ℚ := min (max x 0) 1

def point (lower upper : Coordinates) (x : ℚ) : Coordinates :=
  (lower.1+(upper.1-lower.1)*(ramp x-ramp (x-2)),
    lower.2+(upper.2-lower.2)*(ramp (x-1)-ramp (x-3)))

def vertices (lower upper : Coordinates) (a : List ℚ) : List Coordinates :=
  a.map (point lower upper)

@[simp] theorem vertices_length (l u : Coordinates) (a : List ℚ) :
    (vertices l u a).length = a.length := by simp [vertices]

@[simp] theorem point_zero (l u : Coordinates) : point l u 0 = l := by
  ext <;> simp [point, ramp]

@[simp] theorem point_four (l u : Coordinates) : point l u 4 = l := by
  ext <;> norm_num [point, ramp]

/-- Out-of-range defaults cannot justify a constructed coordinate. -/
theorem vertex_at (l u : Coordinates) {a : List ℚ} {i : ℕ} (hi : i < a.length) :
    (vertices l u a).getD i zero = point l u (mark a i) := by
  simp only [vertices, mark, List.getD_eq_getElem _ _ (by simpa using hi),
    List.getElem_map, List.getD_eq_getElem _ _ hi]

noncomputable section

def marks (a : List ℚ) (i : ℕ) : ℝ := (mark a i : ℝ)

def rectangle (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2) : Rectangle :=
  ⟨l.1, u.1, l.2, u.2, by exact_mod_cast hx, by exact_mod_cast hy⟩

theorem cast_ramp (x : ℚ) : (ramp x : ℝ) = RectanglePerimeterMesh.ramp (x : ℝ) := by
  simp [ramp, RectanglePerimeterMesh.ramp]

theorem point_cast (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2) (x : ℚ) :
    toComplex (point l u x) = RectanglePerimeterMesh.point (rectangle l u hx hy) (x : ℝ) := by
  apply Complex.ext <;> simp [toComplex, point, RectanglePerimeterMesh.point,
    rectangle, cast_ramp, Rat.cast_sub]

theorem admissible {n : ℕ} {a : List ℚ} (h : check n a = true) :
    RectanglePerimeterMesh.Admissible n (marks a) := by
  have hv := (check_iff_valid _ _).mp h
  refine ⟨hv.1, ?_, ?_, ?_⟩
  · change ((mark a 0 : ℚ) : ℝ) = 0
    rw [hv.2.2.1]; norm_num
  · change ((mark a n : ℚ) : ℝ) = 4
    rw [hv.2.2.2.1]; norm_num
  · intro i hi
    obtain ⟨j, hj, hja, hab, hbj⟩ := hv.2.2.2.2 i (Finset.mem_range.mpr hi)
    refine ⟨j, Finset.mem_range.mp hj, ?_, ?_, ?_⟩
    · dsimp [marks]; exact_mod_cast hja
    · dsimp [marks]; exact_mod_cast hab
    · dsimp [marks]; exact_mod_cast hbj

def points (l u : Coordinates) (a : List ℚ) (i : ℕ) : ℂ :=
  toComplex ((vertices l u a).getD i zero)

/-- Same literal consumed vertex inventory, not a nearby replacement contour. -/
theorem curve_eq (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2)
    {n : ℕ} {a : List ℚ} (h : check n a = true) :
    polygonMap n (points l u a) =
      RectanglePerimeterMesh.curve (rectangle l u hx hy) n (marks a) := by
  apply polygonMap_congr
  intro i hi
  have hv := (check_iff_valid _ _).mp h
  have hil : i < a.length := by rw [hv.2.1]; omega
  dsimp [points]
  rw [vertex_at l u hil]
  exact point_cast l u hx hy (mark a i)

/-- Full boundary coverage is proved from the finite marks. -/
theorem range_eq_boundary (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2)
    {n : ℕ} {a : List ℚ} (h : check n a = true) :
    Set.range (polygonMap n (points l u a)) = (rectangle l u hx hy).boundary := by
  rw [curve_eq l u hx hy h]
  exact RectanglePerimeterMesh.curve_range _ (admissible h)

/-- Exact closure follows from the unwrapped marks, not a modulo-four test. -/
theorem closed {n : ℕ} {a : List ℚ} (h : check n a = true) (l u : Coordinates) :
    (vertices l u a).getD n zero = (vertices l u a).getD 0 zero := by
  have hv := (check_iff_valid _ _).mp h
  rw [vertex_at l u (by rw [hv.2.1]; omega), vertex_at l u (by rw [hv.2.1]; omega),
    hv.2.2.2.1, hv.2.2.1, point_four, point_zero]

end
end GRWTSK.Analysis.Complex.RationalRectangleMesh
