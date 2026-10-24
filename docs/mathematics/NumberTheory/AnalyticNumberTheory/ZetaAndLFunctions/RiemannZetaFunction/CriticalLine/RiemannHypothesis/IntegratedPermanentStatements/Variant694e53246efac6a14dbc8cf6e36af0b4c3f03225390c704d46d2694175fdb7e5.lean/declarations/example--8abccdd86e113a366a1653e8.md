# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f95e4af0faa1fcac5e1532f2adf99acf8479805a4884b1fed1c11ac86a3ed41",
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
  "slug": "example--8abccdd86e113a366a1653e8",
  "source": {
    "blob": "a9699a7bfbbb9e00735789cb3f4a4adb1231e9d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7600,
    "line": 7591,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8abccdd86e113a366a1653e86823a53d0b97053c4bc61b1b67c79f84ccc9f00d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f95e4af0faa1fcac5e1532f2adf99acf8479805a4884b1fed1c11ac86a3ed41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7591–7600.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) (d : ℝ) (hd : 0 < d) :
    (∫ x : ℝ in Ioi (0 : ℝ), ((Int.fract (x / d) : ℝ) : ℂ) *
      (x : ℂ) ^ (-(s + 1))) = -(d : ℂ) ^ (-s) * riemannZeta s / s :=
  fractionalKernel_scaled_integral s hs hs' d hd
end FractionalMellinLiteral

namespace MobiusFractionalResidualLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean#L7591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9699a7bfbbb9e00735789cb3f4a4adb1231e9d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
