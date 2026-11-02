/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualPeriodTraceComparison
import GRWTSK.Geometry.CMRiemannTriangleFluxArea
import Mathlib.Tactic

/-!
# Quantized residue holonomy on the ACTUAL ring-of-integers CM period lattice

The source phase is the integer-valued Riemann period pairing on O_E,
not the arbitrary Q-basis integer-coordinate lattice and not a freely
selected matrix. The exact integer uses the upstream OAI integral CM
polarization and its identification with the positive period Riemann form.

We select a site per original parity/additive residue sector, including all
nonunits, as an EXPLICIT map into O_E. This is not the Chern connection of
an independently realized ample bundle: it is a quantized discrete link
connection on the authentic period lattice. We do not identify source n
with physical detector events or infer a canonical site assignment.

The field of unit phases has identity, inverse reversal and gauge-invariant
triangle holonomy. Odd period flux is a genuine obstruction to trivial
holonomy. The actual period Riemann form is positive on (x, i x), even when
its reduction modulo 2 is flat (all periods even). The former does not
establish the latter's oddness.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralPeriodResidueLinks

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTraceComparison
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQResidueLinks

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- The unique integer representing the geometric period form is constructed
from the ORIGINAL upstream ring-of-integers CM trace-pairing theorem.
The source form is negative the upstream trace pairing because of its
conjugation convention; the resulting integer has the correct orientation. -/
def actualIntegerPeriodFlux
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) : ℤ :=
  - (epsilon.integralPolarization_isInteger a b).choose

/-- Every phase exponent equals the true integral period form, including
its sign; no generic link-phase parameter substitutes for the source. -/
theorem actualIntegerPeriodFlux_eq_periodForm
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) :
    (actualIntegerPeriodFlux E epsilon a b : ℝ) =
      epsilon.periodRiemannForm
        (epsilon.periodEmbedding (a : E))
        (epsilon.periodEmbedding (b : E)) := by
  have h := (epsilon.integralPolarization_isInteger a b).choose_spec
  have hreal : (((epsilon.integralPolarization_isInteger a b).choose : ℤ) : ℝ) =
      (epsilon.integralPolarization.form (a : E) (b : E) : ℝ) := by
    exact_mod_cast h
  calc
    _ = - (((epsilon.integralPolarization_isInteger a b).choose : ℤ) : ℝ) := by
      simp [actualIntegerPeriodFlux]
    _ = - (epsilon.integralPolarization.form (a : E) (b : E) : ℝ) := by
      rw [hreal]
    _ = _ := (epsilon.periodRiemannForm_trace (a : E) (b : E)).symm

/-- The actual period flux vanishes on repeated original integral sites.
This is a genuine alternating period form, not a postulated diagonal link. -/
theorem actualIntegerPeriodFlux_self
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) : actualIntegerPeriodFlux E epsilon a a = 0 := by
  apply Int.cast_injective (α := ℝ)
  rw [actualIntegerPeriodFlux_eq_periodForm]
  exact epsilon.periodRiemannForm_isAlt _

/-- Reversing the two actual period sites reverses the oriented flux. -/
theorem actualIntegerPeriodFlux_skew
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) :
    actualIntegerPeriodFlux E epsilon b a =
      -actualIntegerPeriodFlux E epsilon a b := by
  apply Int.cast_injective (α := ℝ)
  push_cast
  rw [actualIntegerPeriodFlux_eq_periodForm,
      actualIntegerPeriodFlux_eq_periodForm]
  exact (epsilon.periodRiemannForm_isAlt.neg_eq _ _).symm

/-- The source-factual map from every parity/nonunit residue class to
an actual O_E period site. This assignment remains independent input. -/
abbrev IntegralResidueSites (d : ℕ) := Sector d → 𝓞 E

/-- ALL ordered residue-link phases now come from the authentic periodic
CM Riemann form on the ring-of-integers lattice, not an arbitrary field. -/
def actualPeriodResidueLinks
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d) : Links d where
  transport i j :=
    (-1 : ℂ) ^ (actualIntegerPeriodFlux E epsilon (sites i) (sites j))
  norm_one i j := by
    simp

/-- Identity and reversal are properties of the actual period pairing. -/
theorem actualPeriodResidueLinks_identity
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d) (i : Sector d) :
    (actualPeriodResidueLinks E epsilon d sites).transport i i = 1 := by
  simp [actualPeriodResidueLinks, actualIntegerPeriodFlux_self]

theorem actualPeriodResidueLinks_reverse
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d) (i j : Sector d) :
    (actualPeriodResidueLinks E epsilon d sites).transport i j *
      (actualPeriodResidueLinks E epsilon d sites).transport j i = 1 := by
  change (-1 : ℂ) ^ (actualIntegerPeriodFlux E epsilon (sites i) (sites j)) *
    (-1 : ℂ) ^ (actualIntegerPeriodFlux E epsilon (sites j) (sites i)) = 1
  rw [actualIntegerPeriodFlux_skew E epsilon (sites i) (sites j), zpow_neg]
  exact mul_inv_cancel₀ (by simp)

/-- Every original ordered triangle uses the actual INTEGER period area. -/
theorem actualPeriodResidueLinks_triangle
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (i j k : Sector d) :
    triangleHolonomy d (actualPeriodResidueLinks E epsilon d sites) i j k =
      (-1 : ℂ) ^
        (actualIntegerPeriodFlux E epsilon (sites i) (sites j) +
         actualIntegerPeriodFlux E epsilon (sites j) (sites k) +
         actualIntegerPeriodFlux E epsilon (sites k) (sites i)) := by
  simp only [triangleHolonomy, actualPeriodResidueLinks]
  rw [← zpow_add, ← zpow_add]

/-- True U(1) gauge compensation preserves the actual source-derived loop
flux; the full integer site and the original residue labels are retained. -/
theorem actualPeriodResidueLinks_triangle_gauge
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (g : Gauge d) (i j k : Sector d) :
    triangleHolonomy d
      (gaugeLinks d g (actualPeriodResidueLinks E epsilon d sites)) i j k =
      triangleHolonomy d (actualPeriodResidueLinks E epsilon d sites) i j k :=
  triangleHolonomy_gauge d g _ i j k

/-- Nontrivial phase is a separate parity premise. Positive curvature does
NOT imply an odd integral flux, and physical Chern holonomy is still open. -/
theorem actualPeriodResidueLinks_odd_not_gauge_flat
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (i j k : Sector d)
    (hodd : Odd
      (actualIntegerPeriodFlux E epsilon (sites i) (sites j) +
       actualIntegerPeriodFlux E epsilon (sites j) (sites k) +
       actualIntegerPeriodFlux E epsilon (sites k) (sites i)))
    (g : Gauge d) :
    gaugeLinks d g (actualPeriodResidueLinks E epsilon d sites) ≠
      flatLinks d := by
  intro heq
  have h := actualPeriodResidueLinks_triangle_gauge
    E epsilon d sites g i j k
  rw [heq, triangleHolonomy_flat,
    actualPeriodResidueLinks_triangle, hodd.neg_one_zpow] at h
  norm_num at h

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralPeriodResidueLinks
