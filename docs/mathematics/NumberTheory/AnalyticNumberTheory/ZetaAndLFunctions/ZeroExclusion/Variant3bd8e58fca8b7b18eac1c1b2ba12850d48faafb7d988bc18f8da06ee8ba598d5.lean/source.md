# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ZeroExclusion.Variant3bd8e58fca8b7b18eac1c1b2ba12850d48faafb7d988bc18f8da06ee8ba598d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `891cbb59dd09beff9912db2d3e871cc381971071` · SHA-256 `8aac42ea3c3129a74a87b1b13f67d8fa27ed68db9e1b6182fca7e63e5f097d2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GrhOfRightHalfPlaneZeroFree.Variant976d0429b20f0027a559720670d72b51177e83ca8f6270fb9f5c6357d843f1de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"976d0429b20f0027a559720670d72b51177e83ca8f6270fb9f5c6357d843f1de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.GrhOfRightHalfPlaneZeroFree.Variant976d0429b20f0027a559720670d72b51177e83ca8f6270fb9f5c6357d843f1de","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"976d0429b20f0027a559720670d72b51177e83ca8f6270fb9f5c6357d843f1de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:e7c0b0d60689239bddd12d3f/workspace/lib/Surface/Core/DirichletGRH/ZeroExclusion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.MellinLogDerivative
public import Surface.Core.DirichletGRH.FunctionalEquation
import Mathlib.Tactic

/-!
# Zero exclusion and the character-local GRH implication

The Mellin square excludes zeros on the right of the critical line.  The
primitive functional-equation square reflects a hypothetical left-half zero
to that zero-free region.  Their composition proves the exact local GRH
predicate, with no global family claim.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GrhOfRightHalfPlaneZeroFree.Variant976d0429b20f0027a559720670d72b51177e83ca8f6270fb9f5c6357d843f1de

public section

namespace Surface.Core.DirichletGRH

noncomputable section

/-- Right-half zero-freeness plus the functional equation gives the full
critical-strip zero-location statement. -/
@[surface_novel, surface_interface]
theorem grh_of_rightHalfPlane_zeroFree
    {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q}
    (_hPrimitive : DirichletCharacter.IsPrimitive χ)
    (hFE : PrimitiveFunctionalEquationSquare χ)
    (hZeroFree :
      ∀ s : ℂ,
        (1 / 2 : ℝ) < s.re →
        s.re < 1 →
        DirichletCharacter.LFunction χ s ≠ 0) :
    GRHForPrimitiveCharacter χ := by
  intro s hsZero hs0 hs1
  rcases lt_trichotomy s.re (1 / 2 : ℝ) with hLeft | hEq | hRight
  · have hReflectedZero := hFE.reflects_zero hs0 hLeft hsZero
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
functional-equation squares. -/
@[surface_novel, surface_interface]
theorem centeredTwistedPsiHalfPlusEpsilon_implies_grh
    {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q)
    (hPrimitive : DirichletCharacter.IsPrimitive χ)
    (hMellin : MellinLogDerivativeSquare χ)
    (hFE : PrimitiveFunctionalEquationSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    GRHForPrimitiveCharacter χ := by
  apply grh_of_rightHalfPlane_zeroFree hPrimitive hFE
  exact zeroFree_rightHalfPlane_of_mellinHolomorphic
    hPrimitive hMellin hBound

end

end Surface.Core.DirichletGRH
```
