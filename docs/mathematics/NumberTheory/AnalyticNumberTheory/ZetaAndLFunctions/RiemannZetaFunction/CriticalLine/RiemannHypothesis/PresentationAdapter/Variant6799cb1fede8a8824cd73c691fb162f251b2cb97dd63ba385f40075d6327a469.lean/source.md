# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PresentationAdapter.Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `217c218497007d301aa0c311acc3b8ee9b4796d9` · SHA-256 `2c1d53573d485867b23d927ebcefdc0e9cdb91248d854c8528496445e709bcde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DefaultBoundaryKind.Variantae4855e13953e7c752e7e7af46ac3e6d19cb82d269a36ed0b82d8f4c393ab3ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae4855e13953e7c752e7e7af46ac3e6d19cb82d269a36ed0b82d8f4c393ab3ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DefaultBoundaryKind.Variantae4855e13953e7c752e7e7af46ac3e6d19cb82d269a36ed0b82d8f4c393ab3ad","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ae4855e13953e7c752e7e7af46ac3e6d19cb82d269a36ed0b82d8f4c393ab3ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/PresentationAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.Spine
import AnalyticNumber.BoundaryCalculus

/-!
# Presentation adapter for the analytic boundary calculus

This adapter converts a realized spine presentation into an
`AnalyticCertificate` and then into an `AnalyticAuthorityToken`, so the
claim is recovered only through
`BoundaryCalculus.analytic_boundary_calculus`.

Finite presentation syntax is not theorem authority
(`raw_spine_presentation_not_analytic_authority`). Realization is explicit:
the input here is a `Presentation.SpineRealizationCertificate`, whose proof
field is the only semantic content; descriptor labels and hashes are audit
metadata. Analytic theorem use is routed through certificates and boundary
calculus (`spine_realization_through_boundary_calculus`).

No RH, trace-formula, Langlands, or prismatic theorem is proved here; the
adapter only transports whatever claim a realization certificate already
proves.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DefaultBoundaryKind.Variantae4855e13953e7c752e7e7af46ac3e6d19cb82d269a36ed0b82d8f4c393ab3ad

universe u

namespace AnalyticNumber
namespace PresentationAdapter

/-- Route a spine/role pair to an analytic boundary kind. -/
def defaultBoundaryKind :
    Presentation.MathematicalSpine → Presentation.ClaimRole →
      Authority.BoundaryKind
  | .riemannHypothesis, .zeroLocation =>
      Authority.BoundaryKind.zetaZeroLocation
  | .riemannHypothesis, _ =>
      Authority.BoundaryKind.custom "rh-facing-presentation"
  | .traceFormula, .traceFormulaEquality =>
      Authority.BoundaryKind.traceFormula
  | .traceFormula, .positivityConsequence =>
      Authority.BoundaryKind.positivityConsequence
  | .traceFormula, .zeroLocation =>
      Authority.BoundaryKind.zeroLocationConsequence
  | .traceFormula, _ =>
      Authority.BoundaryKind.traceFormulaComparison
  | .langlandsFunctoriality, .functorialTransfer =>
      Authority.BoundaryKind.langlandsFunctorialTransfer
  | .langlandsFunctoriality, .eulerProduct =>
      Authority.BoundaryKind.infiniteEulerProduct
  | .langlandsFunctoriality, _ =>
      Authority.BoundaryKind.automorphy
  | .prismaticComparison, .comparisonIsomorphism =>
      Authority.BoundaryKind.comparisonIsomorphism
  | .prismaticComparison, _ =>
      Authority.BoundaryKind.prismaticComparison
  | .analyticNumberTheory, .analyticContinuation =>
      Authority.BoundaryKind.analyticContinuation
  | .analyticNumberTheory, .functionalEquation =>
      Authority.BoundaryKind.functionalEquation
  | .analyticNumberTheory, .eulerProduct =>
      Authority.BoundaryKind.infiniteEulerProduct
  | .analyticNumberTheory, _ =>
      Authority.BoundaryKind.theoremLevelInterpretation
  | .custom s, _ =>
      Authority.BoundaryKind.custom ("presentation:" ++ s)

/-- Analytic context of a spine presentation. Metadata only. -/
def analyticContext
    {α : Type u}
    (P : Presentation.SpinePresentation α) :
    BoundaryCalculus.AnalyticContext where
  label := P.descriptor.label
  finiteHash := P.descriptor.finiteHash

/-- Analytic claim of a spine presentation: exactly its claim statement. -/
def analyticClaim
    {α : Type u}
    (P : Presentation.SpinePresentation α) :
    BoundaryCalculus.AnalyticClaim
      (analyticContext P)
      (defaultBoundaryKind P.descriptor.spine P.descriptor.role) where
  label := P.descriptor.label
  statement := P.claimStatement

/-- Convert a spine realization certificate into an analytic certificate.
The `soundProof` is the realization proof, never the metadata. -/
def SpineRealizationCertificate.toAnalyticCertificate
    {α : Type u}
    {P : Presentation.SpinePresentation α}
    (C : Presentation.SpineRealizationCertificate P) :
    AnalyticCertificate where
  kind := defaultBoundaryKind P.descriptor.spine P.descriptor.role
  label := P.descriptor.label
  publicHash := P.descriptor.finiteHash
  sound := P.claimStatement
  soundProof := Presentation.spine_realization_certificate_sound C

/-- Package a realized spine presentation as an analytic authority token. -/
def SpineRealizationCertificate.toAnalyticAuthorityToken
    {α : Type u}
    {P : Presentation.SpinePresentation α}
    (C : Presentation.SpineRealizationCertificate P) :
    BoundaryCalculus.AnalyticAuthorityToken
      (analyticContext P)
      (defaultBoundaryKind P.descriptor.spine P.descriptor.role)
      (analyticClaim P) where
  certificate := SpineRealizationCertificate.toAnalyticCertificate C
  boundaryMatches := rfl
  statementMatches := rfl

/--
Main transport theorem: a realized spine presentation becomes usable only
through the analytic boundary calculus applied to its authority token.
-/
theorem spine_realization_through_boundary_calculus
    {α : Type u}
    {P : Presentation.SpinePresentation α}
    (C : Presentation.SpineRealizationCertificate P) :
    P.claimStatement :=
  BoundaryCalculus.analytic_boundary_calculus
    (Γ := analyticContext P)
    (b := defaultBoundaryKind P.descriptor.spine P.descriptor.role)
    (q := analyticClaim P)
    ⟨SpineRealizationCertificate.toAnalyticAuthorityToken C⟩

/-- Raw spine presentations are not analytic authority. -/
theorem raw_spine_presentation_not_analytic_authority
    {α : Type u}
    (P : Presentation.SpinePresentation α) :
    ¬ Presentation.SpinePresentationOwnsClaim P :=
  Presentation.spine_presentation_not_theorem_authority P

end PresentationAdapter
end AnalyticNumber
```
