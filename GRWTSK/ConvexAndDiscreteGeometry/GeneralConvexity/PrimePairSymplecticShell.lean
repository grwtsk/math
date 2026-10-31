/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicModTwoPairLift
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Source-scaled prime-pair symplectic shell

The reciprocal (Bogoliubov/symplectic) squeeze is made from
the ACTUAL weighted signed Möbius pair response, without
replacing the number-theoretic source by a probability kernel.
For each ordered pair, define
  lambda=1/(1+|actualPairResponse|), 0<lambda<=1.

This is a symplectic linear transformation on an auxiliary
real two-channel phase plane: it compresses the first channel
by lambda and expands its conjugate by lambda^(-1).
It preserves oriented area, does not preserve Euclidean energy
in general, and does not delete or improve any arithmetic sign.

A proportional contraction in BOTH conjugate directions
would have symplectic determinant lambda^2, so it cannot be a
nontrivial symplectic transformation. A finite positive ellipse
has no cusp from this construction alone. A cusp-like singular
limit requires a separately proved degenerating parameter,
limit topology, and source-return/boundary stability.

The source-defined parameter is not an imported Hawking radiation
operator, a Navier--Stokes solution, or a prismatic comparison.
-/

namespace GRWTSK.Geometry.PrimePairSymplecticShell

open GRWTSK.NumberTheory.Moebius.DyadicModTwoPairLift

/-- Symmetry of the absolute weight is compatible with keeping
the ORIGINAL ordered signed source elsewhere. -/
def pairMagnitude (m n : ℕ) (u : ℝ) : ℝ :=
  |originalPair m n u|

/-- Exact source-defined proportional squeeze coefficient. -/
def compression (m n : ℕ) (u : ℝ) : ℝ :=
  (1 + pairMagnitude m n u)⁻¹

theorem compression_pos (m n : ℕ) (u : ℝ) :
    0 < compression m n u := by
  unfold compression pairMagnitude
  exact inv_pos.mpr (by positivity)

theorem compression_le_one (m n : ℕ) (u : ℝ) :
    compression m n u ≤ 1 := by
  unfold compression pairMagnitude
  apply (inv_le_one₀ (by positivity : 0 < (1 + |originalPair m n u|))).mpr
  have h := abs_nonneg (originalPair m n u)
  linarith

/-- The auxiliary symplectic area, not a positive Gram metric. -/
def area (x y : ℝ × ℝ) : ℝ :=
  x.1 * y.2 - x.2 * y.1

/-- Source-scaled contraction is paired with reciprocal expansion. -/
def squeezed (m n : ℕ) (u : ℝ) (x : ℝ × ℝ) : ℝ × ℝ :=
  (compression m n u * x.1, (compression m n u)⁻¹ * x.2)

/-- Exact symplectic-area preservation of this explicit source
pair squeeze; no approximate or small-parameter assumption. -/
theorem squeezed_preserves_area
    (m n : ℕ) (u : ℝ) (x y : ℝ × ℝ) :
    area (squeezed m n u x) (squeezed m n u y) =
      area x y := by
  have hnonzero : compression m n u ≠ 0 :=
    ne_of_gt (compression_pos m n u)
  unfold area squeezed
  field_simp [hnonzero]
  ring

/-- The physical two-channel ellipsoid metric induced by the
reciprocal squeeze. It is not the signed arithmetic cross form. -/
def shellMetric (m n : ℕ) (u : ℝ) (x : ℝ × ℝ) : ℝ :=
  (compression m n u * x.1) ^ 2 +
    ((compression m n u)⁻¹ * x.2) ^ 2

theorem shellMetric_nonneg
    (m n : ℕ) (u : ℝ) (x : ℝ × ℝ) :
    0 ≤ shellMetric m n u x := by
  unfold shellMetric
  positivity

/-- Exact upper and lower ellipsoid shells, supplied by the
same source-derived metric rather than arbitrary unrelated bounds. -/
def closedShell (m n : ℕ) (u radius : ℝ) : Set (ℝ × ℝ) :=
  {x | shellMetric m n u x ≤ radius ^ 2}

def openExterior (m n : ℕ) (u radius : ℝ) : Set (ℝ × ℝ) :=
  {x | radius ^ 2 < shellMetric m n u x}

/-- An upper-accepted point is not simultaneously outside the
same closed shell. Boundary visibility concerns TWO CLOSURES,
not a logical membership in complementary open interiors. -/
theorem inside_not_outside
    (m n : ℕ) (u radius : ℝ) (x : ℝ × ℝ)
    (hx : x ∈ closedShell m n u radius) :
    x ∉ openExterior m n u radius := by
  exact not_lt.mpr hx

/-- Uniform nondegeneracy at one finite pair: since lambda>0,
a true cusp cannot be asserted merely from its ellipse image. -/
theorem shellMetric_eq_zero_iff
    (m n : ℕ) (u : ℝ) (x : ℝ × ℝ) :
    shellMetric m n u x = 0 ↔ x = 0 := by
  constructor
  · intro h
    have hfirst :
        (compression m n u * x.1) ^ 2 = 0 := by
      have hp := sq_nonneg ((compression m n u)⁻¹ * x.2)
      unfold shellMetric at h
      nlinarith
    have hsecond :
        ((compression m n u)⁻¹ * x.2) ^ 2 = 0 := by
      have hp := sq_nonneg (compression m n u * x.1)
      unfold shellMetric at h
      nlinarith
    have hleft : x.1 = 0 := by
      have hprod : compression m n u * x.1 = 0 :=
        (sq_eq_zero_iff).mp hfirst
      exact (mul_eq_zero.mp hprod).resolve_left
        (ne_of_gt (compression_pos m n u))
    have hright : x.2 = 0 := by
      have hprod : (compression m n u)⁻¹ * x.2 = 0 :=
        (sq_eq_zero_iff).mp hsecond
      exact (mul_eq_zero.mp hprod).resolve_left
        (inv_ne_zero (ne_of_gt (compression_pos m n u)))
    exact Prod.ext hleft hright
  · intro hx
    rw [hx]
    simp [shellMetric]

end GRWTSK.Geometry.PrimePairSymplecticShell
