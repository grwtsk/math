# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ZeroExclusion.Variant2ce3e04ecce2d8e07624caf5be855d8e150b942d0626385e9d80ad7e83fb5c8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad66f525bae040303cf20ea12ac52018f4ae1f25` · SHA-256 `cbdba1b49cc7bdc89224fcc69569550610d1a7f5e5399e1c30131145c1cd1a04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GrhOfRightHalfPlaneZeroFree.Variant4cdfef22f3c307717f2b6a06d8fc7ca51bbc1c0ffa10c753d1eabdf0cf26f609","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4cdfef22f3c307717f2b6a06d8fc7ca51bbc1c0ffa10c753d1eabdf0cf26f609","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.GrhOfRightHalfPlaneZeroFree.Variant4cdfef22f3c307717f2b6a06d8fc7ca51bbc1c0ffa10c753d1eabdf0cf26f609","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"4cdfef22f3c307717f2b6a06d8fc7ca51bbc1c0ffa10c753d1eabdf0cf26f609","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/DirichletGRH/ZeroExclusion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.MellinLogDerivative
public import Surface.Core.DirichletGRH.FunctionalEquation
import Mathlib.Tactic

/-!
# Zero exclusion and the character-local GRH implication

The canonical centered Mellin construction excludes zeros on the right of
the critical line.  Mathlib's primitive functional equation, with the
checked inverse-character conjugation adapter, reflects a hypothetical
left-half zero to that zero-free region.  Their composition proves the exact
local implication from the half-plus-epsilon bound to GRH.  The older
interface-taking wrapper remains available, but is not needed by the direct
public theorem.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GrhOfRightHalfPlaneZeroFree.Variant4cdfef22f3c307717f2b6a06d8fc7ca51bbc1c0ffa10c753d1eabdf0cf26f609

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

/-- The centered twisted-Chebyshev half-plus-epsilon estimate implies GRH
for one primitive Dirichlet character.  The literal centered Mellin
transform, its pole-removed logarithmic-derivative identity, and the
functional-equation reflection are all constructed in the canonical cone;
no analytic staging record is an argument of this theorem. -/
@[surface_novel, surface_published]
theorem centeredTwistedPsiHalfPlusEpsilon_implies_grh
    {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q)
    (hPrimitive : DirichletCharacter.IsPrimitive χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    GRHForPrimitiveCharacter χ := by
  apply grh_of_rightHalfPlane_zeroFree hPrimitive
  exact LFunction_zeroFree_rightHalfPlane χ hBound

end

end Surface.Core.DirichletGRH
```
