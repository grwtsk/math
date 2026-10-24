# Complete source: GRWTSK.Analysis.ErrorBounds.RationalLogEnclosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dabc4dd637ed635c34990e9512bcf27c7c7ae78` · SHA-256 `2f549fd4e046a5bb48392a1f9b5a27694b043a7ba0e7be5609592b0ad6b261b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.DyadicLogEnclosure
import Mathlib.Data.Rat.Cast.Order

set_option autoImplicit false

/-!
# Rational refinement of the existing dyadic logarithm enclosure

The finite formulas below use only rational arithmetic and natural parameters.
Their casts equal the earlier real-valued definitions. Domain and positive-grid
checks precede the analytic conclusion; totalized division at zero is not used
as valid logarithm evidence. No logarithm value is supplied by the caller.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalLogEnclosure

open scoped BigOperators
open GRWTSK.Analysis.Complex.IntervalMellinQuadrature
open GRWTSK.Analysis.Complex.IntervalMellinElementary

/-- Same affine grid as uniformNodes, represented in Q. -/
def gridNode (t : ℚ) (L i : ℕ) : ℚ := 1 + (i : ℚ) * ((t - 1) / (L : ℚ))

def lowerGrid (t : ℚ) (L : ℕ) : ℚ :=
  ∑ i ∈ Finset.range L, (gridNode t L (i + 1) - gridNode t L i) / gridNode t L (i + 1)

def upperGrid (t : ℚ) (L : ℕ) : ℚ :=
  ∑ i ∈ Finset.range L, (gridNode t L (i + 1) - gridNode t L i) / gridNode t L i

def gridCenter (t : ℚ) (L : ℕ) : ℚ := (lowerGrid t L + upperGrid t L) / 2
def gridRadius (t : ℚ) (L : ℕ) : ℚ := (upperGrid t L - lowerGrid t L) / 2

def mantissa (t : ℚ) (k : ℕ) : ℚ := t / (2 : ℚ) ^ k

def center (t : ℚ) (k L₂ Lr : ℕ) : ℚ :=
  (k : ℚ) * gridCenter 2 L₂ + gridCenter (mantissa t k) Lr

def radius (t : ℚ) (k L₂ Lr : ℕ) : ℚ :=
  (k : ℚ) * gridRadius 2 L₂ + gridRadius (mantissa t k) Lr

/-- Closed scale endpoints intentionally permit both valid boundary choices. -/
def validScale (t : ℚ) (k L₂ Lr : ℕ) : Bool :=
  decide (1 ≤ t ∧ (2 : ℚ) ^ k ≤ t ∧ t ≤ (2 : ℚ) ^ (k + 1) ∧ 0 < L₂ ∧ 0 < Lr)

/-- The requested tolerance is external; the output radius is recomputed. -/
def checkWithin (t : ℚ) (k L₂ Lr : ℕ) (ε : ℚ) : Bool :=
  validScale t k L₂ Lr && decide (0 ≤ ε ∧ radius t k L₂ Lr ≤ ε)

@[simp] theorem cast_gridNode (t : ℚ) (L i : ℕ) :
    (gridNode t L i : ℝ) = uniformNodes 1 (t : ℝ) L i := by
  simp [gridNode, uniformNodes]

@[simp] theorem cast_lowerGrid (t : ℚ) (L : ℕ) :
    (lowerGrid t L : ℝ) = FiniteLogEnclosure.lowerSum (uniformNodes 1 (t : ℝ) L) L := by
  simp [lowerGrid, FiniteLogEnclosure.lowerSum]

@[simp] theorem cast_upperGrid (t : ℚ) (L : ℕ) :
    (upperGrid t L : ℝ) = FiniteLogEnclosure.upperSum (uniformNodes 1 (t : ℝ) L) L := by
  simp [upperGrid, FiniteLogEnclosure.upperSum]

@[simp] theorem cast_gridCenter (t : ℚ) (L : ℕ) :
    (gridCenter t L : ℝ) = logCenter (t : ℝ) L := by
  simp [gridCenter, logCenter]

@[simp] theorem cast_gridRadius (t : ℚ) (L : ℕ) :
    (gridRadius t L : ℝ) = logRadius (t : ℝ) L := by
  simp [gridRadius, logRadius]

@[simp] theorem cast_mantissa (t : ℚ) (k : ℕ) :
    (mantissa t k : ℝ) = DyadicLogEnclosure.dyadicMantissa (t : ℝ) k := by
  simp [mantissa, DyadicLogEnclosure.dyadicMantissa]

@[simp] theorem cast_center (t : ℚ) (k L₂ Lr : ℕ) :
    (center t k L₂ Lr : ℝ) = DyadicLogEnclosure.reducedLogCenter (t : ℝ) k L₂ Lr := by
  simp [center, DyadicLogEnclosure.reducedLogCenter]

@[simp] theorem cast_radius (t : ℚ) (k L₂ Lr : ℕ) :
    (radius t k L₂ Lr : ℝ) = DyadicLogEnclosure.reducedLogRadius (t : ℝ) k L₂ Lr := by
  simp [radius, DyadicLogEnclosure.reducedLogRadius]

theorem validScale_iff (t : ℚ) (k L₂ Lr : ℕ) :
    validScale t k L₂ Lr = true ↔
      1 ≤ t ∧ (2 : ℚ) ^ k ≤ t ∧ t ≤ (2 : ℚ) ^ (k + 1) ∧ 0 < L₂ ∧ 0 < Lr := by
  simp only [validScale, decide_eq_true_eq]

/-- The rational center and radius refer to the literal external node t. -/
theorem log_error {t : ℚ} {k L₂ Lr : ℕ} (h : validScale t k L₂ Lr = true) :
    |Real.log (t : ℝ) - (center t k L₂ Lr : ℝ)| ≤ (radius t k L₂ Lr : ℝ) := by
  obtain ⟨ht, hk, _, hL₂, hLr⟩ := (validScale_iff t k L₂ Lr).mp h
  simpa only [cast_center, cast_radius] using
    DyadicLogEnclosure.reducedLogCenter_error (t := (t : ℝ)) (by exact_mod_cast ht)
      k L₂ Lr (by exact_mod_cast hk) hL₂ hLr

theorem center_nonneg {t : ℚ} {k L₂ Lr : ℕ} (h : validScale t k L₂ Lr = true) :
    0 ≤ center t k L₂ Lr := by
  obtain ⟨_, hk, _, hL₂, hLr⟩ := (validScale_iff t k L₂ Lr).mp h
  have hreal : (0 : ℝ) ≤ (center t k L₂ Lr : ℝ) := by
    rw [cast_center]
    exact DyadicLogEnclosure.reducedLogCenter_nonneg k L₂ Lr
      (by exact_mod_cast hk) hL₂ hLr
  exact_mod_cast hreal

theorem radius_nonneg {t : ℚ} {k L₂ Lr : ℕ} (h : validScale t k L₂ Lr = true) :
    0 ≤ radius t k L₂ Lr := by
  have hr : (0 : ℝ) ≤ (radius t k L₂ Lr : ℝ) := (abs_nonneg _).trans (log_error h)
  exact_mod_cast hr

/-- The complete k-fold log-two charge survives rational refinement. -/
theorem radius_formula {t : ℚ} {k L₂ Lr : ℕ} (h : validScale t k L₂ Lr = true) :
    radius t k L₂ Lr = (k : ℚ) / (4 * (L₂ : ℚ)) +
      (mantissa t k - 1) ^ 2 / (2 * (Lr : ℚ) * mantissa t k) := by
  obtain ⟨_, hk, _, hL₂, hLr⟩ := (validScale_iff t k L₂ Lr).mp h
  have hr := DyadicLogEnclosure.reducedLogRadius_eq (t := (t : ℝ))
    k L₂ Lr (by exact_mod_cast hk) hL₂ hLr
  rw [← cast_radius, ← cast_mantissa] at hr
  apply Rat.cast_injective (α := ℝ)
  push_cast at hr ⊢
  exact hr

theorem radius_le {t : ℚ} {k L₂ Lr : ℕ} (h : validScale t k L₂ Lr = true) :
    radius t k L₂ Lr ≤ (k : ℚ) / (4 * (L₂ : ℚ)) + 1 / (4 * (Lr : ℚ)) := by
  obtain ⟨_, hk, hk₂, hL₂, hLr⟩ := (validScale_iff t k L₂ Lr).mp h
  have hr := DyadicLogEnclosure.reducedLogRadius_le (t := (t : ℝ))
    k L₂ Lr (by exact_mod_cast hk) (by exact_mod_cast hk₂) hL₂ hLr
  rw [← cast_radius] at hr
  apply (Rat.cast_le (K := ℝ)).mp
  push_cast at hr ⊢
  exact hr

theorem checkWithin_sound {t ε : ℚ} {k L₂ Lr : ℕ}
    (h : checkWithin t k L₂ Lr ε = true) :
    |Real.log (t : ℝ) - (center t k L₂ Lr : ℝ)| ≤ (ε : ℝ) := by
  have hp : validScale t k L₂ Lr = true ∧ (0 ≤ ε ∧ radius t k L₂ Lr ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using h
  exact (log_error hp.1).trans (by exact_mod_cast hp.2.2)

/-- Reusing the common-grid budget gives a checked finite precision criterion. -/
theorem common_precision_checked {t ε : ℚ} {k L : ℕ}
    (h : validScale t k L L = true) (hε : 0 ≤ ε)
    (hp : (k : ℚ) + 1 ≤ 4 * (L : ℚ) * ε) : checkWithin t k L L ε = true := by
  have hL := ((validScale_iff t k L L).mp h).2.2.2.1
  have hLpos : (0 : ℚ) < L := by exact_mod_cast hL
  have hr : radius t k L L ≤ ((k : ℚ) + 1) / (4 * (L : ℚ)) := by
    calc
      _ ≤ (k : ℚ) / (4 * (L : ℚ)) + 1 / (4 * (L : ℚ)) := radius_le h
      _ = _ := by ring
  have hsmall : ((k : ℚ) + 1) / (4 * (L : ℚ)) ≤ ε :=
    (div_le_iff₀ (by positivity : (0 : ℚ) < 4 * (L : ℚ))).mpr (by nlinarith [hp])
  simp only [checkWithin, h, Bool.true_and, decide_eq_true_eq]
  exact ⟨hε, hr.trans hsmall⟩

/-- Exact finite input guards, without an assumed successful analytic enclosure. -/
theorem admissible_checked {t : ℚ} (k L₂ Lr : ℕ)
    (ht : 1 ≤ t) (hk : (2 : ℚ) ^ k ≤ t) (hk₂ : t ≤ (2 : ℚ) ^ (k + 1))
    (hL₂ : 0 < L₂) (hLr : 0 < Lr) : validScale t k L₂ Lr = true :=
  (validScale_iff t k L₂ Lr).mpr ⟨ht, hk, hk₂, hL₂, hLr⟩

/-- Both endpoints of a dyadic boundary refine the same old real formulas. -/
theorem boundary_consistent (k L : ℕ) :
    center ((2 : ℚ) ^ (k + 1)) k L L = center ((2 : ℚ) ^ (k + 1)) (k + 1) L L ∧
    radius ((2 : ℚ) ^ (k + 1)) k L L = radius ((2 : ℚ) ^ (k + 1)) (k + 1) L L := by
  have h := DyadicLogEnclosure.scale_boundary_consistent k L
  constructor
  · have h' : (center ((2 : ℚ) ^ (k + 1)) k L L : ℝ) =
        (center ((2 : ℚ) ^ (k + 1)) (k + 1) L L : ℝ) := by simpa using h.1
    exact_mod_cast h'
  · have h' : (radius ((2 : ℚ) ^ (k + 1)) k L L : ℝ) =
        (radius ((2 : ℚ) ^ (k + 1)) (k + 1) L L : ℝ) := by simpa using h.2
    exact_mod_cast h'

/-- These decisions are source controls, not reports of executed Lean checks. -/
theorem log_two_control : center 2 1 1 1 = 3 / 4 ∧ radius 2 1 1 1 = 1 / 4 ∧
    checkWithin 2 1 1 1 (1 / 4) = true := by decide +kernel

theorem shared_error_control : radius 16 4 1 1 = 1 ∧ checkWithin 16 4 1 1 (1 / 4) = false := by
  decide +kernel

theorem invalid_scale_controls : validScale 0 0 1 1 = false ∧
    validScale (1 / 2) 0 1 1 = false ∧ validScale 4 0 1 1 = false ∧
    validScale 2 1 0 1 = false ∧ validScale 2 1 1 0 = false := by decide +kernel

end GRWTSK.Analysis.ErrorBounds.RationalLogEnclosure
```
