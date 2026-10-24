# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7095302b45b931fdd21b70a3c858e7509f78c543672c22201a0aa7b700cad24c",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--5b78f33a1b5de5bc4dc2a8ad",
  "source": {
    "blob": "4f6e45d9b080c692a5eb2db7da5ea14c01d17201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7374,
    "line": 7361,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantf879009301a0c497642b87e561e90bb2eaf865da4ed618777f2279cee67be1ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b78f33a1b5de5bc4dc2a8ad090e7680bdba771ec29f71a239235b123c805678",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantf879009301a0c497642b87e561e90bb2eaf865da4ed618777f2279cee67be1ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7095302b45b931fdd21b70a3c858e7509f78c543672c22201a0aa7b700cad24c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7361–7374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (X : ℕ) (ε h t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    ‖1 / (1 + (t : ℂ) * Complex.I) -
      actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I)‖ ≤
    ‖1 / (1 + (t : ℂ) * Complex.I) - boundaryFilter ε h t‖ +
      ‖boundaryFilter ε h t‖ *
        ‖1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
          correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)‖ :=
  residual_norm_le X ε h t hε he
end
end CorrectedControllerBoundaryLiteral

open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusSourceFilterQuotient FixedSourceFilter
open FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterHorizontalRatio
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantf879009301a0c497642b87e561e90bb2eaf865da4ed618777f2279cee67be1ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantf879009301a0c497642b87e561e90bb2eaf865da4ed618777f2279cee67be1ba.lean#L7361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6e45d9b080c692a5eb2db7da5ea14c01d17201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
