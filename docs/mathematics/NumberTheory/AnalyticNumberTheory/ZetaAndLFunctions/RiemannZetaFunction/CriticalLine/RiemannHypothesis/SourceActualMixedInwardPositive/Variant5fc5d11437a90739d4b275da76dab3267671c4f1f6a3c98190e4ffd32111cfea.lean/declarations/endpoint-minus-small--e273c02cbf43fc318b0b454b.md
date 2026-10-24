# endpoint_minus_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:481e4ba2-58df-28bd-bea9-b546c488ba3d",
  "kind": "theorem",
  "lexical_name": "endpoint_minus_small",
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
  "slug": "endpoint-minus-small--e273c02cbf43fc318b0b454b",
  "source": {
    "blob": "2ccf77b7395ba047e340b698c8cf1e02ae9572f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant5fc5d11437a90739d4b275da76dab3267671c4f1f6a3c98190e4ffd32111cfea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e273c02cbf43fc318b0b454b47c99cb457595414fb3aab1dfc2ae3c84c35b27d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant5fc5d11437a90739d4b275da76dab3267671c4f1f6a3c98190e4ffd32111cfea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:481e4ba2-58df-28bd-bea9-b546c488ba3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpoint_minus_small (w : ℂ) (hw : ‖w⁻¹‖ ≤ 1 / 1092) :
    ‖endpointMinus w‖ ≤ 101 / 100 := by
  have h1 := norm_add_le (1 + 10 / w + 45 / w ^ 2 + 105 / w ^ 3) (105 / w ^ 4 : ℂ)
  have h2 := norm_add_le (1 + 10 / w + 45 / w ^ 2) (105 / w ^ 3 : ℂ)
  have h3 := norm_add_le (1 + 10 / w) (45 / w ^ 2 : ℂ)
  have h4 := norm_add_le (1 : ℂ) (10 / w)
  simp only [div_eq_mul_inv, inv_pow, norm_mul, norm_pow] at h1 h2 h3 h4
  norm_num at h1 h2 h3 h4
  have hpow2 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 2
  have hpow3 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 3
  have hpow4 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 4
  unfold endpointMinus
  simp only [div_eq_mul_inv, inv_pow]
  nlinarith only [h1, h2, h3, h4, hw, hpow2, hpow3, hpow4]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant5fc5d11437a90739d4b275da76dab3267671c4f1f6a3c98190e4ffd32111cfea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant5fc5d11437a90739d4b275da76dab3267671c4f1f6a3c98190e4ffd32111cfea.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ccf77b7395ba047e340b698c8cf1e02ae9572f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
