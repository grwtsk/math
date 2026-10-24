# monomial_cross_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b830fdf8100844ce0081a040d3bbb0b54826c0be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c0d8c07-cca1-bfd2-8914-41067875b92e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9a577a1-4d79-f1e6-680a-132bd0ba9c2b",
  "kind": "theorem",
  "lexical_name": "monomial_cross_nonnegative",
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
  "slug": "monomial-cross-nonnegative--63f1ecad19378ac23ee396ca",
  "source": {
    "blob": "b830fdf8100844ce0081a040d3bbb0b54826c0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 150,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63f1ecad19378ac23ee396cab1f44d1080dc8ed1cc1945754899812684f6e5ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9a577a1-4d79-f1e6-680a-132bd0ba9c2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monomial_cross_nonnegative {a b : ℕ} {x y : ℝ}
    (hx : 0 ≤ x) (hxy : x ≤ y) (hab : a ≤ b) :
    0 ≤ x ^ a * y ^ b - x ^ b * y ^ a := by
  have hy : 0 ≤ y := hx.trans hxy
  have hp : 0 ≤ y ^ (b - a) - x ^ (b - a) :=
    sub_nonneg.mpr (pow_le_pow_left₀ hx hxy _)
  have hproduct := mul_nonneg (mul_nonneg (pow_nonneg hx a) (pow_nonneg hy a)) hp
  have hb : b = a + (b - a) := (Nat.add_sub_of_le hab).symm
  rw [hb, pow_add, pow_add]
  nlinarith only [hproduct]

/-- The arbitrary-degree generalized Vandermonde sign is unconditional at rank two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b830fdf8100844ce0081a040d3bbb0b54826c0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
