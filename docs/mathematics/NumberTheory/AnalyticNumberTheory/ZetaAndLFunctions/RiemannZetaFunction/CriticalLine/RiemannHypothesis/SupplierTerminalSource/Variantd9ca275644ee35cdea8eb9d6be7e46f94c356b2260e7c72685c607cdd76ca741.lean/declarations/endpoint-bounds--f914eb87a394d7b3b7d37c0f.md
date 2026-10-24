# endpoint_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bb9684c-4bdc-c6b9-de4f-d8a6d81b955c",
  "kind": "theorem",
  "lexical_name": "endpoint_bounds",
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
  "slug": "endpoint-bounds--f914eb87a394d7b3b7d37c0f",
  "source": {
    "blob": "5e83e4b73a439e8d3aa048d9226b6862e319b56f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f914eb87a394d7b3b7d37c0f4a10c9f03d6cdfff24a1cef5eb19f15f1c2997ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bb9684c-4bdc-c6b9-de4f-d8a6d81b955c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpoint_bounds {u y : ℝ} (hu0 : 0 ≤ u) (hu1 : u ≤ 1)
    (hy0 : 0 ≤ y) (hy8 : y ≤ 1 / 8) :
    0 ≤ u * y ∧ u * y ≤ 1 / 8 ∧
      y ^ 2 * (2 - u * y) ^ 2 ≤ 1 ∧
      (1 / 2 : ℝ) ≤ (1 - u * y) ^ 2 := by
  have hz0 : 0 ≤ u * y := mul_nonneg hu0 hy0
  have hz8 : u * y ≤ 1 / 8 := by nlinarith
  have hy2 : y ^ 2 ≤ (1 / 64 : ℝ) := by nlinarith
  have hp2 : (2 - u * y) ^ 2 ≤ (4 : ℝ) := by nlinarith
  have hprod : y ^ 2 * (2 - u * y) ^ 2 ≤ 1 := by
    calc
      y ^ 2 * (2 - u * y) ^ 2 ≤ (1 / 64 : ℝ) * 4 := by gcongr
      _ ≤ 1 := by norm_num
  have hr2 : (1 / 2 : ℝ) ≤ (1 - u * y) ^ 2 := by nlinarith
  exact ⟨hz0, hz8, hprod, hr2⟩

/-- Uniform positivity is an exact real inequality, with no sampled grid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e83e4b73a439e8d3aa048d9226b6862e319b56f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
