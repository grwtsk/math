# mertensResidual_lt_signed_short_tail_sub_linear_add_zeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd9647bb-46a4-8991-d26e-5fe315562212",
  "kind": "theorem",
  "lexical_name": "mertensResidual_lt_signed_short_tail_sub_linear_add_zeta",
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
  "slug": "mertensresidual-lt-signed-short-tail-sub-linear-add-zeta--e7417b11b7e91f19c06372af",
  "source": {
    "blob": "9ce873907ca8b006a4bf1f071f595ed9fbbbf328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1f51091a903d3c85ad9fSourceSignedTailLinearConsumer/Variant5069e093abac7ce04b43dbf7710dc8f49b3faa6eb9995e5c3baefd2ba7b80172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7417b11b7e91f19c06372afccc282e8fae65c81203e73bbd24d69463ff43a53",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1f51091a903d3c85ad9fSourceSignedTailLinearConsumer/Variant5069e093abac7ce04b43dbf7710dc8f49b3faa6eb9995e5c3baefd2ba7b80172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd9647bb-46a4-8991-d26e-5fe315562212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_lt_signed_short_tail_sub_linear_add_zeta
    (A : ℝ) (hA : 25600 ≤ A) :
    mertensResidual A < signedShortAndComplementaryTail A - (5 / 128 : ℝ) * A +
      (riemannZeta (1 / 2)).re + 3 / 50 := by
  have hc := (abs_lt.mp (residual_sub_complete_pairing_sub_zeta_abs_lt A (by linarith))).2
  have he := complete_pairing_le_signed_short_tail_sub_linear A hA
  linarith

/-- A genuine joint linear tail budget implies the unchanged original all-real estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1f51091a903d3c85ad9fSourceSignedTailLinearConsumer/Variant5069e093abac7ce04b43dbf7710dc8f49b3faa6eb9995e5c3baefd2ba7b80172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1f51091a903d3c85ad9fSourceSignedTailLinearConsumer/Variant5069e093abac7ce04b43dbf7710dc8f49b3faa6eb9995e5c3baefd2ba7b80172.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ce873907ca8b006a4bf1f071f595ed9fbbbf328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
