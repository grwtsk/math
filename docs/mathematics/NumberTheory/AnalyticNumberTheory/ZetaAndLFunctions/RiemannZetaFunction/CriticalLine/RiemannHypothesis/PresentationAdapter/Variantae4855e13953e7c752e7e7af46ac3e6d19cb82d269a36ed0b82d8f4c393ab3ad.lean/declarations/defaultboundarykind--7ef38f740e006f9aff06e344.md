# defaultBoundaryKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01a00eb077082b06e6aff9b6e2d934352443f5d3a2f12945ea51e7402c6465d4",
  "kind": "def",
  "lexical_name": "defaultBoundaryKind",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "defaultboundarykind--7ef38f740e006f9aff06e344",
  "source": {
    "blob": "fe767824fd3a0b48af8acce74ad33aa263c37dff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variantae4855e13953e7c752e7e7af46ac3e6d19cb82d269a36ed0b82d8f4c393ab3ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ef38f740e006f9aff06e3449578908a1b2f822bc5e6cb16aa9d8ce49e939fd0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variantae4855e13953e7c752e7e7af46ac3e6d19cb82d269a36ed0b82d8f4c393ab3ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01a00eb077082b06e6aff9b6e2d934352443f5d3a2f12945ea51e7402c6465d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variantae4855e13953e7c752e7e7af46ac3e6d19cb82d269a36ed0b82d8f4c393ab3ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variantae4855e13953e7c752e7e7af46ac3e6d19cb82d269a36ed0b82d8f4c393ab3ad.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe767824fd3a0b48af8acce74ad33aa263c37dff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
