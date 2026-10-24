# residual_tail_of_finite_triangular_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9667c486-1f97-3ebf-35b1-c1fdea887631",
  "kind": "theorem",
  "lexical_name": "residual_tail_of_finite_triangular_tail",
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
  "slug": "residual-tail-of-finite-triangular-tail--c820ffb13221bb63cec69fc0",
  "source": {
    "blob": "d4133179390da606d4781d086820764f73d4f496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c820ffb13221bb63cec69fc058d8eafd748d959f8865bae6a20ce4f1774a0aa7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9667c486-1f97-3ebf-35b1-c1fdea887631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_tail_of_finite_triangular_tail (D R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + 1 / 2 + RH16EndpointRadius.endpointBudget R + C_F := by
  exact SourceEndpointRadiusConsumer.residual_tail_of_strictColumnInterior_tail
    (D + 1 / 2) R hR (fun A hRA => strict_upper_of_triangular_tail D R A hR hG hRA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4133179390da606d4781d086820764f73d4f496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
