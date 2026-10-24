# defaultBoundaryKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:379bf1122642ce4d69ac6e91d59ac7eb63ebd986060f80aadb50d158e1f7b873",
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
  "slug": "defaultboundarykind--142a757db88812d500871e55",
  "source": {
    "blob": "4220fa7d10a6ca5f890b8ff8fccf2f1ea87f2c33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AnalyticNumberAdapter/Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:142a757db88812d500871e558680f7f3793a99639a42fac05982e4f77417937a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AnalyticNumberAdapter/Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:379bf1122642ce4d69ac6e91d59ac7eb63ebd986060f80aadb50d158e1f7b873`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–68.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AnalyticNumberAdapter/Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AnalyticNumberAdapter/Variantaef21fbe64ee0b75c8f18508edbdeffdd754f503deae425d861ea50301b0b3c9.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4220fa7d10a6ca5f890b8ff8fccf2f1ea87f2c33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
