# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AnalyticNumberAdapter.Varianta6c8df992d422250183262cecf3b8826a652b4e2d732eae5e247cf85e3cc3d7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `544143588d16dd88fbca2fa25c847ce2756ae2a2` · SHA-256 `9a8de3aac6da9b68a114f2c5cf722d4d69b8c8196e1086da4fd0187d8ab15304`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DefaultBoundaryKind.Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DefaultBoundaryKind.Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"aef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/lib/Presentation/AnalyticNumberAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.BoundaryCalculus
import Presentation.Spine

/-!
# Presentation-owned adapter for the analytic boundary calculus

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
proves.  The declaration namespace is retained for compatibility, while the
module is owned by the non-canonical Presentation tree so analytic theorem
modules never import Presentation.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DefaultBoundaryKind.Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9

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
