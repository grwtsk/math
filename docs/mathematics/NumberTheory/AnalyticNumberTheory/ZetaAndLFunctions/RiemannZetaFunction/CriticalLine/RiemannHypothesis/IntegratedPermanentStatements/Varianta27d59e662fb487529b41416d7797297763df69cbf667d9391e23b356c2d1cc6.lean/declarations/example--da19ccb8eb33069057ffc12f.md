# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2edfc520f0b2c1d9397c8a9a63c8bf044e59b8b48f43f7eeb40d5e132a01e585",
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
  "slug": "example--da19ccb8eb33069057ffc12f",
  "source": {
    "blob": "ce355a50409c94acc8f7ba2447f3cd645cdf1413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5898,
    "line": 5888,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Varianta27d59e662fb487529b41416d7797297763df69cbf667d9391e23b356c2d1cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da19ccb8eb33069057ffc12f967cc8279749068927ec0dca5fa62dc1cf2d360c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Varianta27d59e662fb487529b41416d7797297763df69cbf667d9391e23b356c2d1cc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2edfc520f0b2c1d9397c8a9a63c8bf044e59b8b48f43f7eeb40d5e132a01e585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5888–5898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : restriction.comp zeroExtension.toContinuousLinearMap =
    ContinuousLinearMap.id ℂ H := restriction_comp_zeroExtension
end
end OperatorIntegratedStatements0

namespace OperatorIntegratedStatements1
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineDuality
noncomputable section
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Varianta27d59e662fb487529b41416d7797297763df69cbf667d9391e23b356c2d1cc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Varianta27d59e662fb487529b41416d7797297763df69cbf667d9391e23b356c2d1cc6.lean#L5888).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce355a50409c94acc8f7ba2447f3cd645cdf1413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
