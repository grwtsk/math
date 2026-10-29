-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveFunctionalEquationSquare.Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.PrimitiveFunctionalEquationSquare.Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"c6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/DirichletGRH/FunctionalEquation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.LFunctionConjugation
import Mathlib.Tactic

/-!
# Primitive functional-equation square

For a general complex Dirichlet character the mathlib functional equation
passes through the inverse character.  This module therefore makes the
same-character conjugation bridge explicit instead of pretending that every
primitive character is self-dual.

The structure stores a completed function, its exact functional equation,
and its zero correspondence with the original `L`-function in the open
critical strip.  It contains no GRH or zero-free field.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveFunctionalEquationSquare.Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38

public section

namespace Surface.Core.DirichletGRH

noncomputable section

open Complex

/-- Reflection across the critical line, including complex conjugation. -/
@[expose]
def criticalReflection (s : ℂ) : ℂ :=
  1 - star s

@[surface_novel, surface_published, simp]
theorem criticalReflection_re (s : ℂ) :
    (criticalReflection s).re = 1 - s.re := by
  simp [criticalReflection]

/-- Mathlib's primitive functional equation sends an ordinary zero for
`chi` to an ordinary zero for the inverse character at `1 - s`.  This is
the normalization-facing form of reflection; the same-character form below
adds the separate conjugation adapter. -/
@[surface_adapter, surface_published]
theorem LFunction_zero_reflect
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hPrimitive : DirichletCharacter.IsPrimitive χ)
    {s : ℂ} (hs0 : 0 < s.re) (hs1 : s.re < 1)
    (hsZero : DirichletCharacter.LFunction χ s = 0) :
    DirichletCharacter.LFunction χ⁻¹ (1 - s) = 0 := by
  have hCompletedZero : canonicalCompletedLFunction χ s = 0 :=
    (canonicalCompletedLFunction_zero_iff_LFunction_zero χ hs0).2 hsZero
  have hFE := canonicalCompletedLFunction_one_sub hPrimitive (1 - s)
  have hProduct :
      (q : ℂ) ^ ((1 - s) - 1 / 2) *
          DirichletCharacter.rootNumber χ *
            canonicalCompletedLFunction χ⁻¹ (1 - s) = 0 := by
    rw [show 1 - (1 - s) = s by ring, hCompletedZero] at hFE
    exact hFE.symm
  have hConductor :
      (q : ℂ) ^ ((1 - s) - 1 / 2) ≠ 0 :=
    Complex.cpow_ne_zero_iff.mpr
      (.inl (Nat.cast_ne_zero.mpr (NeZero.ne q)))
  have hInverseCompleted :
      canonicalCompletedLFunction χ⁻¹ (1 - s) = 0 :=
    (mul_eq_zero.mp hProduct).resolve_left
      (mul_ne_zero hConductor
        (primitive_rootNumber_ne_zero hPrimitive))
  have hOneSubRe : 0 < (1 - s).re := by
    simp only [sub_re, one_re]
    linarith
  exact (canonicalCompletedLFunction_zero_iff_LFunction_zero χ⁻¹
    hOneSubRe).1 hInverseCompleted

/-- The inverse-character reflection is reversible throughout the open
critical strip. -/
@[surface_adapter, surface_published]
theorem LFunction_zero_reflection
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hPrimitive : DirichletCharacter.IsPrimitive χ)
    (s : ℂ) (hs0 : 0 < s.re) (hs1 : s.re < 1) :
    DirichletCharacter.LFunction χ s = 0 ↔
      DirichletCharacter.LFunction χ⁻¹ (1 - s) = 0 := by
  constructor
  · exact LFunction_zero_reflect χ hPrimitive hs0 hs1
  · intro hInverseZero
    have hInversePrimitive : DirichletCharacter.IsPrimitive χ⁻¹ :=
      isPrimitive_inv hPrimitive
    have hReflectedPositive : 0 < (1 - s).re := by
      simp only [sub_re, one_re]
      linarith
    have hReflectedBelowOne : (1 - s).re < 1 := by
      simp only [sub_re, one_re]
      linarith
    have hBack := LFunction_zero_reflect χ⁻¹ hInversePrimitive
      hReflectedPositive hReflectedBelowOne hInverseZero
    simpa using hBack

/-- Mathlib's primitive functional equation and inverse-character
conjugation reflect a left-half critical-strip zero to the right half for
the same character.  The proof retains the nonconstant conductor factor in
mathlib's normalization. -/
@[surface_adapter, surface_published]
theorem primitive_LFunction_reflects_zero
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (hPrimitive : DirichletCharacter.IsPrimitive χ)
    {s : ℂ} (hs0 : 0 < s.re) (hsHalf : s.re < (1 / 2 : ℝ))
    (hsZero : DirichletCharacter.LFunction χ s = 0) :
    DirichletCharacter.LFunction χ (criticalReflection s) = 0 := by
  have hInverseL :
      DirichletCharacter.LFunction χ⁻¹ (1 - s) = 0 :=
    LFunction_zero_reflect χ hPrimitive hs0 (by linarith) hsZero
  have hOneSubNe : (1 - s : ℂ) ≠ 1 := by
    intro h
    have : s = 0 := sub_eq_self.mp h
    subst s
    norm_num at hs0
  rw [LFunction_inverse_eq_star χ hOneSubNe] at hInverseL
  have hUnstar := congrArg (starRingEnd ℂ) hInverseL
  simpa [criticalReflection, map_sub] using hUnstar

/-- Explicit functional-equation data for one primitive-character channel.

`functionalEquation` is the same-character form obtained after the required
conjugation compatibility has been proved.  Its factor is a function of `s`:
mathlib's normalization contains the nonconstant conductor power
`q ^ (1 / 2 - s)` as well as the root number.  For a non-real character the
conjugation compatibility is also substantive because mathlib's primitive
functional equation first relates `χ` to `χ⁻¹`.
-/
@[surface_interface]
structure PrimitiveFunctionalEquationSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) where
  completedL : ℂ → ℂ
  functionalFactor : ℂ → ℂ
  functionalFactor_ne_zero : ∀ s, functionalFactor s ≠ 0

  completedL_zero_iff_LFunction_zero :
    ∀ s : ℂ, 0 < s.re → s.re < 1 →
      (completedL s = 0 ↔ DirichletCharacter.LFunction χ s = 0)

  functionalEquation :
    ∀ s : ℂ,
      completedL s =
        functionalFactor s * star (completedL (criticalReflection s))

/-- The functional equation reflects every left-half critical-strip zero to
a right-half zero of the same character. -/
@[surface_novel, surface_interface]
theorem PrimitiveFunctionalEquationSquare.reflects_zero
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveFunctionalEquationSquare χ)
    {s : ℂ} (hs0 : 0 < s.re) (hsHalf : s.re < (1 / 2 : ℝ))
    (hsZero : DirichletCharacter.LFunction χ s = 0) :
    DirichletCharacter.LFunction χ (criticalReflection s) = 0 := by
  have hs1 : s.re < 1 := by linarith
  have hCompleted : square.completedL s = 0 :=
    (square.completedL_zero_iff_LFunction_zero s hs0 hs1).2 hsZero
  have hProduct :
      square.functionalFactor s *
          star (square.completedL (criticalReflection s)) = 0 := by
    rw [← square.functionalEquation s, hCompleted]
  have hConj : star (square.completedL (criticalReflection s)) = 0 :=
    (mul_eq_zero.mp hProduct).resolve_left
      (square.functionalFactor_ne_zero s)
  have hReflectedCompleted :
      square.completedL (criticalReflection s) = 0 := by
    have := congrArg (starRingEnd ℂ) hConj
    simpa using this
  have href0 : 0 < (criticalReflection s).re := by
    rw [criticalReflection_re]
    linarith
  have href1 : (criticalReflection s).re < 1 := by
    rw [criticalReflection_re]
    linarith
  exact (square.completedL_zero_iff_LFunction_zero
    (criticalReflection s) href0 href1).1 hReflectedCompleted

end

end Surface.Core.DirichletGRH
