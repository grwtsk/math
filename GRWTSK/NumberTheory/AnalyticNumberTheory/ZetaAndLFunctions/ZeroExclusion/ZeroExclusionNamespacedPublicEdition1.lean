-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GrhOfRightHalfPlaneZeroFree.Variantdd1b90566b8c1acf629b20ff51b0ee22c909880d38fd3bd909f88ed877692d51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd1b90566b8c1acf629b20ff51b0ee22c909880d38fd3bd909f88ed877692d51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.GrhOfRightHalfPlaneZeroFree.Variantdd1b90566b8c1acf629b20ff51b0ee22c909880d38fd3bd909f88ed877692d51","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"dd1b90566b8c1acf629b20ff51b0ee22c909880d38fd3bd909f88ed877692d51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:95de3c3746bfc57b0f382a7c/workspace/lib/Surface/Core/DirichletGRH/ZeroExclusion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.MellinLogDerivative
public import Surface.Core.DirichletGRH.FunctionalEquation
import Mathlib.Tactic

/-!
# Zero exclusion and the character-local GRH implication

The Mellin interface excludes zeros on the right of the critical line.
Mathlib's primitive functional equation, with the checked inverse-character
conjugation adapter, reflects a hypothetical left-half zero to that
zero-free region.  Their composition proves the exact local GRH predicate,
with no global family claim.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GrhOfRightHalfPlaneZeroFree.Variantdd1b90566b8c1acf629b20ff51b0ee22c909880d38fd3bd909f88ed877692d51

public section

namespace Surface.Core.DirichletGRH

noncomputable section

/-- Right-half zero-freeness plus the functional equation gives the full
critical-strip zero-location statement. -/
@[surface_novel, surface_published]
theorem grh_of_rightHalfPlane_zeroFree
    {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q}
    (hPrimitive : DirichletCharacter.IsPrimitive χ)
    (hZeroFree :
      ∀ s : ℂ,
        (1 / 2 : ℝ) < s.re →
        s.re < 1 →
        DirichletCharacter.LFunction χ s ≠ 0) :
    GRHForPrimitiveCharacter χ := by
  intro s hsZero hs0 hs1
  rcases lt_trichotomy s.re (1 / 2 : ℝ) with hLeft | hEq | hRight
  · have hReflectedZero :=
      primitive_LFunction_reflects_zero hPrimitive hs0 hLeft hsZero
    have hReflectedHalf :
        (1 / 2 : ℝ) < (criticalReflection s).re := by
      rw [criticalReflection_re]
      linarith
    have hReflectedOne : (criticalReflection s).re < 1 := by
      rw [criticalReflection_re]
      linarith
    exact False.elim
      ((hZeroFree (criticalReflection s) hReflectedHalf hReflectedOne)
        hReflectedZero)
  · exact hEq
  · exact False.elim ((hZeroFree s hRight hs1) hsZero)

/-- The centered twisted-Chebyshev half-plus-epsilon criterion implies GRH
for one primitive character, conditional only on its explicit Mellin and
logarithmic-derivative interface.  Functional-equation reflection is now a
direct theorem over mathlib's completed `L`-function. -/
@[surface_novel, surface_interface]
theorem centeredTwistedPsiHalfPlusEpsilon_implies_grh_of_mellinInterface
    {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q)
    (hPrimitive : DirichletCharacter.IsPrimitive χ)
    (hMellin : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    GRHForPrimitiveCharacter χ := by
  apply grh_of_rightHalfPlane_zeroFree hPrimitive
  exact zeroFree_rightHalfPlane_of_mellinHolomorphic
    hPrimitive hMellin hBound

end

end Surface.Core.DirichletGRH
