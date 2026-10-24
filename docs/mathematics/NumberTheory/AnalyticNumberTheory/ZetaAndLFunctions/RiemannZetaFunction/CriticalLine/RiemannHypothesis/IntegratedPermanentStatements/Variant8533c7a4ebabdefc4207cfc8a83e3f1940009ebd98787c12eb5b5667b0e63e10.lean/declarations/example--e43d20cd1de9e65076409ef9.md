# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3493541eb033598ba4ee826c635f5852d5ea433e1dde6bed5307650d84d48403",
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
  "slug": "example--e43d20cd1de9e65076409ef9",
  "source": {
    "blob": "3b509b22adcc47c28352ce4b0e69b05d72f0f23e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2329,
    "line": 2314,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8533c7a4ebabdefc4207cfc8a83e3f1940009ebd98787c12eb5b5667b0e63e10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e43d20cd1de9e65076409ef9519d10168892cb9c1222d4af9d9c310108ef96b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8533c7a4ebabdefc4207cfc8a83e3f1940009ebd98787c12eb5b5667b0e63e10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3493541eb033598ba4ee826c635f5852d5ea433e1dde6bed5307650d84d48403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2314–2329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ∃ A : ℝ, 1 ≤ A ∧ ∃ n : ℕ, n ∈ Cutoff.primeIndices A ∧
    (truncatedMoebius ⌊Real.exp A⌋₊ ^ 2 *
      (ζ : ArithmeticFunction ℝ) * ArithmeticFunction.log) n < 0 :=
  actual_source_coefficient_negative_exists

end
end DirichletCoefficientGuardStatements

namespace NegativeDensityLaplaceExactStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability
open FormalResearch.RiemannHypothesis.SourceComparison.NegativeDensityLaplace

noncomputable section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8533c7a4ebabdefc4207cfc8a83e3f1940009ebd98787c12eb5b5667b0e63e10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8533c7a4ebabdefc4207cfc8a83e3f1940009ebd98787c12eb5b5667b0e63e10.lean#L2314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b509b22adcc47c28352ce4b0e69b05d72f0f23e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
