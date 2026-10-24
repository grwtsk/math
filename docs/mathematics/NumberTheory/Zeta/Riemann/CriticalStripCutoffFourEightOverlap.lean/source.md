# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffFourEightOverlap

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f088e71b427eb082a1b2569b51175ecec4a2fd67` · SHA-256 `82512351698b1d1b7b9d050043ed285f5684ce77f403a996a124bdd7589f0ae1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightJetFourteenHeight
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourteenHeightSeed

set_option autoImplicit false

/-!
# Exact source overlap of the independent cutoff-four and cutoff-eight models

The cutoff-four modules were already present at the reconciled live head. They
are neither replaced nor attributed to this local patch. Both constructions
approximate the SAME H on the SAME closed positive band, but their polynomial
models, cutoff tails, directions and homotopies need not be equal. This module
retains an exact residual telescope and a quantitative comparison. It also
sharpens the inherited diagonal-projection norm conversion, without changing
that projection's analytic proof. No general atlas cocycle is claimed.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CutoffFourEightOverlap
open Complex Set
open CenteredMellin
noncomputable section

/-- Equality of centers is explicit; it is not equality of the two power jets. -/
theorem centers_agree : CutoffEightJet.center = FourteenJet.center := rfl

/-- Both finite models are related through their actual sextic remainders. -/
theorem finite_cutoff_telescope {s : ℂ} (hs : 0 < s.re) :
    SexticPrimitive.finiteModel 8 s - SexticPrimitive.finiteModel 4 s =
      SexticPrimitive.multiplier s *
        (SexticPrimitive.tail 8 s - SexticPrimitive.tail 4 s) := by
  have h4 := SexticPrimitive.finiteModel_residual (N := 4) (by decide) hs
  have h8 := SexticPrimitive.finiteModel_residual (N := 8) (by decide) hs
  linear_combination h4 - h8

/-- Every model approximation defect is retained on either side of the cutoff step. -/
theorem polynomial_cutoff_telescope {s : ℂ} (hs : 0 < s.re) :
    CutoffEightJet.polynomial s - SexticPrimitive.CutoffFour.model s =
      (CutoffEightJet.polynomial s - SexticPrimitive.finiteModel 8 s) +
      SexticPrimitive.multiplier s *
        (SexticPrimitive.tail 8 s - SexticPrimitive.tail 4 s) +
      (SexticPrimitive.finiteModel 4 s - SexticPrimitive.CutoffFour.model s) := by
  rw [← finite_cutoff_telescope hs]
  ring

/-- H is the common source. Its cancellation is an exact algebraic identity. -/
theorem model_source_telescope (s : ℂ) :
    CutoffEightJet.polynomial s - SexticPrimitive.CutoffFour.model s =
      (poleNormalizedZeta s - SexticPrimitive.CutoffFour.model s) -
      (poleNormalizedZeta s - CutoffEightJet.polynomial s) := by ring

/-- Source errors add; no equality or equivalence of polynomial models is inferred. -/
theorem model_distance_le {s : ℂ} (hs : SexticPrimitive.CutoffFour.Band s) :
    ‖CutoffEightJet.polynomial s - SexticPrimitive.CutoffFour.model s‖ ≤ (39/80 : ℝ) := by
  have h4 := SexticPrimitive.CutoffFour.source_model_error hs
  have h8 := CutoffEightJet.source_enclosed hs.1 hs.2.1 hs.2.2.1 hs.2.2.2
  rw [model_source_telescope]
  exact (norm_sub_le _ _).trans ((add_le_add h4 h8).trans_eq (by norm_num))

/-- Euclidean geometry improves the inherited coarse diagonal-to-norm conversion. -/
lemma norm_lower_from_diagonal {z : ℂ} (hp : (5/8 : ℝ) ≤ z.re + z.im) :
    (7/16 : ℝ) ≤ ‖z‖ := by
  have hsum : 0 ≤ z.re + z.im := by linarith
  have hsquare := mul_le_mul hp hp (by norm_num : (0 : ℝ) ≤ 5/8) hsum
  apply (sq_le_sq₀ (by norm_num : (0 : ℝ) ≤ 7/16) (norm_nonneg z)).mp
  rw [Complex.sq_norm, Complex.normSq_apply]
  nlinarith [sq_nonneg (z.re - z.im)]

/-- The live cutoff-four projection supplies this improved norm bound; its proof
is reused rather than replaced with an additional nonvanishing premise. -/
theorem source_norm_lower {s : ℂ} (hs : SexticPrimitive.CutoffFour.Band s) :
    (7/16 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  norm_lower_from_diagonal (SexticPrimitive.CutoffFour.source_projection hs)

/-- Distinct references nevertheless end at exactly the same analytic source. -/
theorem homotopy_source_endpoints (s : ℂ) :
    CutoffEightJet.deformation 1 s = SexticPrimitive.CutoffFour.deformation 1 s := by simp

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CutoffFourEightOverlap
```
