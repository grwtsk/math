# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a6746ff383abf34cb6b23a555f182131f2742f33f7ddb3d439765eec14b0a4c",
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
  "slug": "example--d2c5259e1c4cdda0d8db35f0",
  "source": {
    "blob": "66ede7fbfe1d880c1337dd648da7414df79ea8f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variante51f73b9e6af4070743e38acdee626d4278a41de971fe90633914d215d9d433e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2c5259e1c4cdda0d8db35f07fe42d8c4fee80c12c734e3e6e1084b781ed4b01",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variante51f73b9e6af4070743e38acdee626d4278a41de971fe90633914d215d9d433e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a6746ff383abf34cb6b23a555f182131f2742f33f7ddb3d439765eec14b0a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (X : ℕ) (hX : 1 ≤ X) (ε ξ : ℝ) :
    𝓕 (logResidual X ε) ξ =
      (1 - riemannZeta (1 / 2 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I)) /
          (1 / 2 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) :=
  FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual.logResidual_fourier X hX ε ξ

end

end LogarithmicResidualLiteral

namespace SourceWeightedMultiplierLiteral
noncomputable section
open MeasureTheory FourierTransform Complex
open FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceFilterDelta HalfLineExtension

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variante51f73b9e6af4070743e38acdee626d4278a41de971fe90633914d215d9d433e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variante51f73b9e6af4070743e38acdee626d4278a41de971fe90633914d215d9d433e.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ede7fbfe1d880c1337dd648da7414df79ea8f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
