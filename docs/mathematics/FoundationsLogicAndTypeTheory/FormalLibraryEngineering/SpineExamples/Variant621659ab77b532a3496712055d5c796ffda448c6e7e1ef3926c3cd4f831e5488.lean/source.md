# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SpineExamples.Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9aa83eae36d00b9055818f118421ea3f338d3388` · SHA-256 `621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Presentation.Spine

/-!
# Spine presentation examples

This file is an architectural smoke test. It intentionally uses toy
propositions such as `True` to exercise routing and firewall statements. It
is not a Mathlib-backed analytic proof and is not imported by
`Presentation.lean` or `AnalyticNumberMathlib`.

All four claim architectures — RH-facing, trace-formula, Langlands
functoriality, and prismatic comparison — are represented as finite spine
presentations over the harmless target type `Unit`. Raw presentation syntax
proves none of them; each claim is recovered only through a toy
`SpineRealizationCertificate` via `spine_realization_certificate_sound`.
-/

namespace Presentation
namespace SpineExamples

/-- Shared toy syntax: the constant expression over target `Unit`. -/
def toyPresentation (boundary : ClaimBoundary) : Presentation Unit where
  boundary := boundary
  expr := Expr.one
  target := ()

def exampleRHSpinePresentation : SpinePresentation Unit where
  pres := toyPresentation rhFacingBoundary
  descriptor :=
    { spine := MathematicalSpine.riemannHypothesis
      role := ClaimRole.zeroLocation
      label := "toy RH-facing spine"
      finiteHash := 10
      obligations := rhFacingBoundary.claimBoundary }
  claimStatement := True

def exampleTraceFormulaSpinePresentation : SpinePresentation Unit where
  pres := toyPresentation traceFormulaBoundary
  descriptor :=
    { spine := MathematicalSpine.traceFormula
      role := ClaimRole.traceFormulaEquality
      label := "toy trace-formula spine"
      finiteHash := 20
      obligations := traceFormulaBoundary.claimBoundary }
  claimStatement := True

def exampleLanglandsSpinePresentation : SpinePresentation Unit where
  pres := toyPresentation langlandsBoundary
  descriptor :=
    { spine := MathematicalSpine.langlandsFunctoriality
      role := ClaimRole.functorialTransfer
      label := "toy Langlands spine"
      finiteHash := 30
      obligations := langlandsBoundary.claimBoundary }
  claimStatement := True

def examplePrismaticSpinePresentation : SpinePresentation Unit where
  pres := toyPresentation prismaticComparisonBoundary
  descriptor :=
    { spine := MathematicalSpine.prismaticComparison
      role := ClaimRole.comparisonIsomorphism
      label := "toy prismatic spine"
      finiteHash := 40
      obligations := prismaticComparisonBoundary.claimBoundary }
  claimStatement := True

/-- All four toy presentations are audit-compliant and legacy-free. -/
theorem example_spines_compliant :
    isCompliantSpinePresentation exampleRHSpinePresentation = true ∧
      isCompliantSpinePresentation exampleTraceFormulaSpinePresentation = true ∧
      isCompliantSpinePresentation exampleLanglandsSpinePresentation = true ∧
      isCompliantSpinePresentation examplePrismaticSpinePresentation = true := by
  refine ⟨?_, ?_, ?_, ?_⟩ <;> decide

theorem example_rh_spine_legacy_free :
    exampleRHSpinePresentation.pres.boundary.legacyFree = true :=
  compliantSpinePresentation_legacyFree (by decide)

/-- None of the four raw presentations owns its claim. -/
theorem example_spines_not_authority :
    ¬ SpinePresentationOwnsClaim exampleRHSpinePresentation ∧
      ¬ SpinePresentationOwnsClaim exampleTraceFormulaSpinePresentation ∧
      ¬ SpinePresentationOwnsClaim exampleLanglandsSpinePresentation ∧
      ¬ SpinePresentationOwnsClaim examplePrismaticSpinePresentation :=
  ⟨spine_presentation_not_theorem_authority _,
    spine_presentation_not_theorem_authority _,
    spine_presentation_not_theorem_authority _,
    spine_presentation_not_theorem_authority _⟩

/-- Toy realization certificate for a toy spine presentation whose claim is
`True`. The claim is recovered from the certificate, not from syntax. -/
def toyRealizationCertificate
    (P : SpinePresentation Unit)
    (hclaim : P.claimStatement = True) :
    SpineRealizationCertificate P where
  realization :=
    { realizes := True
      proof := trivial
      boundary := P.pres.boundary }
  producesClaim := fun _ => Eq.mpr hclaim trivial

theorem example_rh_claim_via_certificate :
    exampleRHSpinePresentation.claimStatement :=
  spine_realization_certificate_sound
    (toyRealizationCertificate exampleRHSpinePresentation rfl)

theorem example_trace_formula_claim_via_certificate :
    exampleTraceFormulaSpinePresentation.claimStatement :=
  spine_realization_certificate_sound
    (toyRealizationCertificate exampleTraceFormulaSpinePresentation rfl)

theorem example_langlands_claim_via_certificate :
    exampleLanglandsSpinePresentation.claimStatement :=
  spine_realization_certificate_sound
    (toyRealizationCertificate exampleLanglandsSpinePresentation rfl)

theorem example_prismatic_claim_via_certificate :
    examplePrismaticSpinePresentation.claimStatement :=
  spine_realization_certificate_sound
    (toyRealizationCertificate examplePrismaticSpinePresentation rfl)

end SpineExamples
end Presentation
```
