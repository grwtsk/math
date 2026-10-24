# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AnalyticNumberAdapter.Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4220fa7d10a6ca5f890b8ff8fccf2f1ea87f2c33` · SHA-256 `aef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
