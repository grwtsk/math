# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PoleGreenKernel.Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b99134d83a1c3a3f604fe548f7cf5dcae653a7eb` · SHA-256 `0cb05243908dadf87e7b7ffae53e9a7845aceaf0b317f60134ad66b48252aa00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PoleMode.Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PoleMode.Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a","mathematical_subject":"Analysis.Calculus","original_sha256":"c6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/c6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.PoleArithmeticFunctional

/-!
# Homogeneous pole modes and the Green-kernel jump

The four pole modes are killed by the actual fourth-order operator. The decaying
Green candidate solves the homogeneous equation off zero, and its third
derivative has the unit jump required by a delta source. These classical facts
are kept separate from a distributional convolution theorem and from an open
arithmetic bound.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PoleMode.Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a

namespace FormalResearch.RiemannHypothesis.PoleGreenKernel

open PoleDifferentialCorrelation PoleArithmeticFunctional

noncomputable section

/-- A coefficient pair in one ordinary/generalized pole sector. -/
def poleMode (σ a b t : ℝ) : ℝ := (a + b * t) * Real.exp (σ * t)

/-- Differentiation is the exact two-dimensional Jordan action on coefficients. -/
theorem pole_mode_deriv (σ a b : ℝ) :
    deriv (poleMode σ a b) = poleMode σ (b + σ * a) (σ * b) := by
  funext t
  have h := ((hasDerivAt_const t a).add ((hasDerivAt_id t).const_mul b)).mul
    (((hasDerivAt_id t).const_mul σ).exp)
  change HasDerivAt (poleMode σ a b) _ t at h
  rw [h.deriv]
  dsimp [poleMode]
  ring

/-- The second derivative retains both the eigenvalue and the generalized coefficient. -/
theorem pole_mode_second_deriv (σ a b t : ℝ) :
    iteratedDeriv 2 (poleMode σ a b) t =
      (σ ^ 2 * (a + b * t) + 2 * σ * b) * Real.exp (σ * t) := by
  simp only [iteratedDeriv_succ', pole_mode_deriv, iteratedDeriv_zero, poleMode]
  ring

/-- The fourth derivative is obtained by the same Jordan coefficient action. -/
theorem pole_mode_fourth_deriv (σ a b t : ℝ) :
    iteratedDeriv 4 (poleMode σ a b) t =
      (σ ^ 4 * (a + b * t) + 4 * σ ^ 3 * b) * Real.exp (σ * t) := by
  simp only [iteratedDeriv_succ', pole_mode_deriv, iteratedDeriv_zero, poleMode]
  ring

/-- The unsquared operator sends a generalized pole mode to its ordinary pole mode. -/
theorem pole_operator_mode (σ a b t : ℝ) (hσ : σ ^ 2 = 1 / 4) :
    poleDifferentialOperator (poleMode σ a b) t =
      2 * σ * b * Real.exp (σ * t) := by
  unfold poleDifferentialOperator
  rw [pole_mode_second_deriv, hσ]
  unfold poleMode
  ring

/-- Both ordinary and generalized modes are invisible to the squared operator. -/
theorem pole_squared_operator_mode_zero (σ a b t : ℝ) (hσ : σ ^ 2 = 1 / 4) :
    poleSquaredDifferentialOperator (poleMode σ a b) t = 0 := by
  unfold poleSquaredDifferentialOperator
  rw [pole_mode_fourth_deriv, pole_mode_second_deriv]
  have h4 : σ ^ 4 = (1 / 4 : ℝ) ^ 2 := by nlinarith [sq_nonneg (σ ^ 2 - 1 / 4)]
  have h3 : σ ^ 3 = σ / 4 := by rw [pow_succ, hσ]; ring
  rw [h4, h3, hσ]
  unfold poleMode
  ring

/-- The positive-half-line smooth branch of the squared Green kernel. -/
def positiveGreenBranch : ℝ → ℝ := poleMode (-1 / 2) 2 1

/-- The negative-half-line smooth branch of the squared Green kernel. -/
def negativeGreenBranch : ℝ → ℝ := poleMode (1 / 2) 2 (-1)

/-- On the positive half-line the decaying kernel is the positive smooth branch. -/
theorem pole_squared_green_positive_branch (t : ℝ) (ht : 0 ≤ t) :
    poleSquaredGreenKernel t = positiveGreenBranch t := by
  simp only [poleSquaredGreenKernel, positiveGreenBranch, poleMode, abs_of_nonneg ht]
  congr 1 <;> ring

/-- On the negative half-line the decaying kernel is the negative smooth branch. -/
theorem pole_squared_green_negative_branch (t : ℝ) (ht : t ≤ 0) :
    poleSquaredGreenKernel t = negativeGreenBranch t := by
  simp only [poleSquaredGreenKernel, negativeGreenBranch, poleMode, abs_of_nonpos ht]
  congr 1 <;> ring

/-- The two branches solve the homogeneous fourth-order equation everywhere. -/
theorem green_branches_homogeneous (t : ℝ) :
    poleSquaredDifferentialOperator positiveGreenBranch t = 0 ∧
      poleSquaredDifferentialOperator negativeGreenBranch t = 0 := by
  constructor <;> apply pole_squared_operator_mode_zero <;> norm_num

/-- The first three jets agree; the third derivative has a jump of one. -/
theorem green_branch_jets_at_zero :
    positiveGreenBranch 0 = 2 ∧ negativeGreenBranch 0 = 2 ∧
    deriv positiveGreenBranch 0 = 0 ∧ deriv negativeGreenBranch 0 = 0 ∧
    iteratedDeriv 2 positiveGreenBranch 0 = -(1 / 2) ∧
    iteratedDeriv 2 negativeGreenBranch 0 = -(1 / 2) ∧
    iteratedDeriv 3 positiveGreenBranch 0 = 1 / 2 ∧
    iteratedDeriv 3 negativeGreenBranch 0 = -(1 / 2) := by
  simp [positiveGreenBranch, negativeGreenBranch, pole_mode_deriv,
    iteratedDeriv_succ', iteratedDeriv_zero, poleMode]
  norm_num

/-- The fourth-order Lagrange boundary flux with its second-order correction. -/
def poleBoundaryFlux (g₀ g₁ g₂ g₃ f₀ f₁ f₂ f₃ : ℝ) : ℝ :=
  g₀ * f₃ - g₁ * f₂ + g₂ * f₁ - g₃ * f₀ - (g₀ * f₁ - g₁ * f₀) / 2

/-- The Green jump contributes the value of the test function at the atom. -/
theorem green_boundary_flux_jump (f₀ f₁ f₂ f₃ : ℝ) :
    poleBoundaryFlux 2 0 (-(1 / 2)) (-(1 / 2)) f₀ f₁ f₂ f₃ -
      poleBoundaryFlux 2 0 (-(1 / 2)) (1 / 2) f₀ f₁ f₂ f₃ = f₀ := by
  unfold poleBoundaryFlux
  ring

end
end FormalResearch.RiemannHypothesis.PoleGreenKernel
```
