# fractional_product_rescale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e9b357e-daa7-4542-a9b7-5e4f90b26e10",
  "kind": "theorem",
  "lexical_name": "fractional_product_rescale",
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
  "slug": "fractional-product-rescale--114394761f52bfadcf499b5c",
  "source": {
    "blob": "ccb1694431fd57b0a5f5a980b30bff2b698b0c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:114394761f52bfadcf499b5ca0fbd6c1546deb77f093ca86e24745bf0b60bcff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e9b357e-daa7-4542-a9b7-5e4f90b26e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractional_product_rescale (d e : ℝ) (hd : 0 < d) (_he : 0 < e) :
    (∫ x : ℝ in Ioi (0 : ℝ), Int.fract (x / d) * Int.fract (x / e) / x ^ 2) =
      d⁻¹ * ∫ y : ℝ in Ioi (0 : ℝ), Int.fract y * Int.fract ((d / e) * y) / y ^ 2 := by
  have hi := integral_comp_mul_left_Ioi'
    (fun x : ℝ => Int.fract (x / d) * Int.fract (x / e) / x ^ 2) 0 hd
  simp only [mul_zero, smul_eq_mul] at hi
  have hf (y : ℝ) : Int.fract (d * y / d) * Int.fract (d * y / e) / (d * y) ^ 2 =
      d⁻¹ ^ 2 * (Int.fract y * Int.fract ((d / e) * y) / y ^ 2) := by
    rw [mul_div_cancel_left₀ y hd.ne', show d * y / e = d / e * y by ring]
    ring
  simp_rw [hf] at hi
  rw [integral_const_mul] at hi
  rw [← hi]
  field_simp

/-- The actual undamped endpoint kills its reciprocal moment exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccb1694431fd57b0a5f5a980b30bff2b698b0c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
