# endpoint_product_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d6d0535-0f6f-7e9c-90f3-ad216e99e373",
  "kind": "theorem",
  "lexical_name": "endpoint_product_small",
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
  "slug": "endpoint-product-small--c321cafe2e798f679ec672d0",
  "source": {
    "blob": "cd04457c3f6267206dcb3367ea114491382d0832",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant752e13a544e788abb017b0911a76e91d1023e4f7268f01829aed5a8b92e8c44c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c321cafe2e798f679ec672d0071149c44618848e1d0b963aa59a319ca7adf4b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant752e13a544e788abb017b0911a76e91d1023e4f7268f01829aed5a8b92e8c44c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d6d0535-0f6f-7e9c-90f3-ad216e99e373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpoint_product_small (w : ℂ) (hw : ‖w⁻¹‖ ≤ 1 / 1092) :
    ‖endpointPlus w * endpointMinus w - 1‖ ≤ 1 / 100000 := by
  rw [endpoint_product]
  have hid : (1 - 10 / w ^ 2 + 135 / w ^ 4 - 1575 / w ^ 6 + 11025 / w ^ 8 : ℂ) - 1 =
      -10 / w ^ 2 + 135 / w ^ 4 - 1575 / w ^ 6 + 11025 / w ^ 8 := by ring
  rw [hid]
  have h1 := norm_add_le (-10 / w ^ 2 + 135 / w ^ 4 - 1575 / w ^ 6) (11025 / w ^ 8 : ℂ)
  have h2 := norm_sub_le (-10 / w ^ 2 + 135 / w ^ 4) (1575 / w ^ 6 : ℂ)
  have h3 := norm_add_le (-10 / w ^ 2 : ℂ) (135 / w ^ 4)
  simp only [div_eq_mul_inv, ← inv_pow, norm_mul, norm_pow] at h1 h2 h3
  norm_num only [norm_neg, Complex.norm_ofNat, norm_mul] at h1 h2 h3
  have hpow2 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 2
  have hpow4 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 4
  have hpow6 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 6
  have hpow8 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 8
  simp only [div_eq_mul_inv, ← inv_pow]
  nlinarith only [h1, h2, h3, hpow2, hpow4, hpow6, hpow8]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant752e13a544e788abb017b0911a76e91d1023e4f7268f01829aed5a8b92e8c44c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant752e13a544e788abb017b0911a76e91d1023e4f7268f01829aed5a8b92e8c44c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd04457c3f6267206dcb3367ea114491382d0832` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
