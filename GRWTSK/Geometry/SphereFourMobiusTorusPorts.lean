/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Geometry.SphereFourThreeTorusDrape
import GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy
import Mathlib

/-!
# The four-sphere, unit-circle Mobius ports, and a source-faithful torus view

The source is the EXACT `SphereFour` in R^5 from the existing GRWTSK drape.
A visible Clifford torus is a *two-dimensional slice* of a regular S^3
latitude, and never an invertible image of the whole S^4 in R^3.

The rational circle maps below are the genuine fractional-linear maps
  M_+(z) = (z + 1/2)/(1 + z/2),   M_-(z) = (z - 1/2)/(1 - z/2),
written in real Cartesian coordinates on |z|=1. Their denominators cannot
vanish on the unit circle. M_- and M_+ are mutual inverses.

The source sphere point, original integer index, seven-class stripe, and
finite-mode payload are retained as structured, typed *source ports*. The
rendered torus is a view, not a source replacement or a PDE solution.
The finite-mode energy result is imported from its existing exact-real model.

This file does NOT import OpenAI's differently-pinned Navier-Stokes package.
Their periodic forced-blowup theorem is a separate external conditional adapter
with a missing PDE/coordinate-covariance bridge. Source references and precise
hypotheses belong in the adjacent review/verification specification.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.SphereFourMobiusTorusPorts

open GRWTSK.Geometry.SphereFourThreeTorusDrape
open GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy

/-- The ordinary real-coordinate version of the circle Mobius map M_{1/2}. -/
def mobiusPlusRaw (z : ℝ × ℝ) : ℝ × ℝ :=
  ((5 * z.1 + 4) / (5 + 4 * z.1), (3 * z.2) / (5 + 4 * z.1))

/-- The inverse M_{-1/2}, with unchanged imaginary orientation. -/
def mobiusMinusRaw (z : ℝ × ℝ) : ℝ × ℝ :=
  ((5 * z.1 - 4) / (5 - 4 * z.1), (3 * z.2) / (5 - 4 * z.1))

private theorem circle_first_bounds (z : CirclePoint) :
    -1 ≤ z.1.1 ∧ z.1.1 ≤ 1 := by
  rcases z with ⟨⟨x, y⟩, h⟩
  constructor <;> nlinarith [sq_nonneg y]

private theorem plus_den_ne (z : CirclePoint) : 5 + 4 * z.1.1 ≠ 0 := by
  have hx := (circle_first_bounds z).1
  have hp : 0 < 5 + 4 * z.1.1 := by linarith
  exact ne_of_gt hp

private theorem minus_den_ne (z : CirclePoint) : 5 - 4 * z.1.1 ≠ 0 := by
  have hx := (circle_first_bounds z).2
  have hp : 0 < 5 - 4 * z.1.1 := by linarith
  exact ne_of_gt hp

/-- A genuine unit-circle map, not an arbitrary visual deformation. -/
def mobiusPlus (z : CirclePoint) : CirclePoint := by
  rcases z with ⟨⟨x, y⟩, h⟩
  have hx : -1 ≤ x := by nlinarith [sq_nonneg y]
  have hd : 5 + 4 * x ≠ 0 := ne_of_gt (by linarith)
  refine ⟨mobiusPlusRaw (x, y), ?_⟩
  change ((5 * x + 4) / (5 + 4 * x)) ^ 2 +
    ((3 * y) / (5 + 4 * x)) ^ 2 = 1
  have hn : (5 * x + 4) ^ 2 + (3 * y) ^ 2 = (5 + 4 * x) ^ 2 := by
    nlinarith [h]
  calc
    _ = ((5 * x + 4) ^ 2 + (3 * y) ^ 2) / (5 + 4 * x) ^ 2 := by ring
    _ = 1 := by rw [hn]; exact div_self (pow_ne_zero 2 hd)

/-- The genuine inverse unit-circle map. -/
def mobiusMinus (z : CirclePoint) : CirclePoint := by
  rcases z with ⟨⟨x, y⟩, h⟩
  have hx : x ≤ 1 := by nlinarith [sq_nonneg y]
  have hd : 5 - 4 * x ≠ 0 := ne_of_gt (by linarith)
  refine ⟨mobiusMinusRaw (x, y), ?_⟩
  change ((5 * x - 4) / (5 - 4 * x)) ^ 2 +
    ((3 * y) / (5 - 4 * x)) ^ 2 = 1
  have hn : (5 * x - 4) ^ 2 + (3 * y) ^ 2 = (5 - 4 * x) ^ 2 := by
    nlinarith [h]
  calc
    _ = ((5 * x - 4) ^ 2 + (3 * y) ^ 2) / (5 - 4 * x) ^ 2 := by ring
    _ = 1 := by rw [hn]; exact div_self (pow_ne_zero 2 hd)

private theorem minusRaw_plusRaw (x y : ℝ) (h : 5 + 4 * x ≠ 0) :
    mobiusMinusRaw (mobiusPlusRaw (x, y)) = (x, y) := by
  have hh : 5 - 4 * ((5 * x + 4) / (5 + 4 * x)) =
      9 / (5 + 4 * x) := by
    field_simp [h]
    ring
  have hn : 5 * ((5 * x + 4) / (5 + 4 * x)) - 4 =
      9 * x / (5 + 4 * x) := by
    field_simp [h]
    ring
  apply Prod.ext
  · change (5 * ((5 * x + 4) / (5 + 4 * x)) - 4) /
        (5 - 4 * ((5 * x + 4) / (5 + 4 * x))) = x
    rw [hh, hn]
    field_simp [h]
  · change (3 * (3 * y / (5 + 4 * x))) /
        (5 - 4 * ((5 * x + 4) / (5 + 4 * x))) = y
    rw [hh]
    field_simp [h]
    ring

private theorem plusRaw_minusRaw (x y : ℝ) (h : 5 - 4 * x ≠ 0) :
    mobiusPlusRaw (mobiusMinusRaw (x, y)) = (x, y) := by
  have hh : 5 + 4 * ((5 * x - 4) / (5 - 4 * x)) =
      9 / (5 - 4 * x) := by
    field_simp [h]
    ring
  have hn : 5 * ((5 * x - 4) / (5 - 4 * x)) + 4 =
      9 * x / (5 - 4 * x) := by
    field_simp [h]
    ring
  apply Prod.ext
  · change (5 * ((5 * x - 4) / (5 - 4 * x)) + 4) /
        (5 + 4 * ((5 * x - 4) / (5 - 4 * x))) = x
    rw [hh, hn]
    field_simp [h]
  · change (3 * (3 * y / (5 - 4 * x))) /
        (5 + 4 * ((5 * x - 4) / (5 - 4 * x))) = y
    rw [hh]
    field_simp [h]
    ring

/-- The complete circular phase, including its orientation, is recoverable. -/
theorem mobiusMinus_plus (z : CirclePoint) : mobiusMinus (mobiusPlus z) = z := by
  apply Subtype.ext
  change mobiusMinusRaw (mobiusPlusRaw z.1) = z.1
  rcases z.1 with ⟨x, y⟩
  exact minusRaw_plusRaw x y (plus_den_ne z)

theorem mobiusPlus_minus (z : CirclePoint) : mobiusPlus (mobiusMinus z) = z := by
  apply Subtype.ext
  change mobiusPlusRaw (mobiusMinusRaw z.1) = z.1
  rcases z.1 with ⟨x, y⟩
  exact plusRaw_minusRaw x y (minus_den_ne z)

/-- Two colored circle ports are twisted; the third circle remains unchanged. -/
def liftTorus (v : ThreeTorus) : ThreeTorus :=
  fun i => if i.val = 0 then mobiusPlus (v i)
    else if i.val = 1 then mobiusMinus (v i) else v i

def lowerTorus (v : ThreeTorus) : ThreeTorus :=
  fun i => if i.val = 0 then mobiusMinus (v i)
    else if i.val = 1 then mobiusPlus (v i) else v i

/-- The toroidal *view* transport is invertible on all three circle ports. -/
theorem lowerTorus_liftTorus (v : ThreeTorus) :
    lowerTorus (liftTorus v) = v := by
  funext i
  fin_cases i <;>
    simp [liftTorus, lowerTorus, mobiusMinus_plus, mobiusPlus_minus]

theorem liftTorus_lowerTorus (v : ThreeTorus) :
    liftTorus (lowerTorus v) = v := by
  funext i
  fin_cases i <;>
    simp [liftTorus, lowerTorus, mobiusMinus_plus, mobiusPlus_minus]

/-- A real five-square identity for the two-circle latitudes of S^4.
No claim is made that any one two-torus exhausts the four-sphere. -/
theorem latitude_five_square_identity
    (t r s α β : ℝ) (h : t ^ 2 + r ^ 2 + s ^ 2 = 1) :
    t ^ 2 + (r * Real.cos α) ^ 2 + (r * Real.sin α) ^ 2 +
      (s * Real.cos β) ^ 2 + (s * Real.sin β) ^ 2 = 1 := by
  have hα : Real.cos α ^ 2 + Real.sin α ^ 2 = 1 := by
    nlinarith [Real.sin_sq_add_cos_sq α]
  have hβ : Real.cos β ^ 2 + Real.sin β ^ 2 = 1 := by
    nlinarith [Real.sin_sq_add_cos_sq β]
  calc
    _ = t ^ 2 + r ^ 2 * (Real.cos α ^ 2 + Real.sin α ^ 2) +
        s ^ 2 * (Real.cos β ^ 2 + Real.sin β ^ 2) := by ring
    _ = t ^ 2 + r ^ 2 + s ^ 2 := by rw [hα, hβ]; ring
    _ = 1 := h

/-- The original five-coordinate sphere, integer and color are never decoded
from the rendered three-dimensional toroidal image. -/
structure SourcePort (m : ℕ) where
  sphere : SphereFour
  sourceIndex : ℕ
  stripe : ℕ
  time : ℝ
  modes : Fin m → ℝ × ℝ

/-- Retain all original payload along with the geometric view. -/
structure LiftedPort (m : ℕ) where
  original : SourcePort m
  visible : ThreeTorus
  visible_spec : visible = liftTorus (project original.sphere)

def liftPort {m : ℕ} (p : SourcePort m) : LiftedPort m :=
  ⟨p, liftTorus (project p.sphere), rfl⟩

def lowerPort {m : ℕ} (p : LiftedPort m) : SourcePort m := p.original

theorem lowerPort_liftPort {m : ℕ} (p : SourcePort m) :
    lowerPort (liftPort p) = p := rfl

theorem lifted_visible_roundtrip {m : ℕ} (p : SourcePort m) :
    lowerTorus (liftPort p).visible = project p.sphere := by
  exact lowerTorus_liftTorus (project p.sphere)

theorem lift_preserves_residueColor {m : ℕ} (p : SourcePort m) :
    residueColor (lowerPort (liftPort p)).stripe = residueColor p.stripe := rfl

/-- The finite-mode step is a mathematically distinct surrogate, not a
Galerkin/strong-solution operator for all Navier--Stokes data. -/
def advanceSource {m : ℕ} (ν h : ℝ)
    (angle : (Fin m → ℝ × ℝ) → Fin m → ℝ)
    (p : SourcePort m) : SourcePort m :=
  { p with
    time := p.time + h
    modes := advance (damping ν h) angle p.modes }

theorem advanceSource_preserves_sphere {m : ℕ} (ν h : ℝ)
    (angle : (Fin m → ℝ × ℝ) → Fin m → ℝ) (p : SourcePort m) :
    (advanceSource ν h angle p).sphere = p.sphere := rfl

theorem advanceSource_preserves_index {m : ℕ} (ν h : ℝ)
    (angle : (Fin m → ℝ × ℝ) → Fin m → ℝ) (p : SourcePort m) :
    (advanceSource ν h angle p).sourceIndex = p.sourceIndex := rfl

theorem advanceSource_energy_le {m : ℕ} (ν h : ℝ)
    (angle : (Fin m → ℝ × ℝ) → Fin m → ℝ)
    (p : SourcePort m) (hν : 0 ≤ ν) (hh : 0 ≤ h) :
    modalEnergy (advanceSource ν h angle p).modes ≤ modalEnergy p.modes := by
  exact advance_energy_le (damping ν h) angle p.modes
    (damping_unit ν h hν hh).1 (damping_unit ν h hν hh).2

/-- The preexisting explicit ABC sampler is bounded at the retained
original sphere's phases. This proves no PDE or cross-domain transport. -/
theorem originalSphere_abc_bound {m : ℕ} (ν : ℝ) (p : SourcePort m)
    (hν : 0 ≤ ν) (ht : 0 ≤ p.time) :
    abc ν p.time (phase p.sphere) 0 ^ 2 +
      abc ν p.time (phase p.sphere) 1 ^ 2 +
      abc ν p.time (phase p.sphere) 2 ^ 2 ≤ 12 :=
  projected_abc_energy_le_twelve ν p.time p.sphere hν ht

end GRWTSK.Geometry.SphereFourMobiusTorusPorts
