# actual_centered_column_endpoint_abs_le_twelve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80ea02fb-820f-c40a-db20-d802b03b09fb",
  "kind": "theorem",
  "lexical_name": "actual_centered_column_endpoint_abs_le_twelve",
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
  "slug": "actual-centered-column-endpoint-abs-le-twelve--807e9536a4b070b57452c5dc",
  "source": {
    "blob": "9fb96680ff30c7595c0d48bf7517e20493618e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 197,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:807e9536a4b070b57452c5dc4c496822f7a552fd45e360009fa2853b9201b64a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80ea02fb-820f-c40a-db20-d802b03b09fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centered_column_endpoint_abs_le_twelve (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let N := sourceKernelCutoff A
    let K := N / (U + 1)
    let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
    let R : ℕ → ℝ := fun k =>
      ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
    |B K * R K| ≤ 12 := by
  have hp := Real.pow_div_factorial_le_exp (by linarith : 0 ≤ A) 3
  norm_num at hp
  have hm := mul_le_mul_of_nonneg_right hp (Real.exp_pos (-A)).le
  have he : Real.exp A * Real.exp (-A) = 1 := by rw [← Real.exp_add]; simp
  rw [he] at hm
  have hb : 2 * A ^ 3 * Real.exp (-A) ≤ 12 := by nlinarith
  exact (endpoint_abs_le_exponential A hA).trans hb

/-- The strict quotient sum keeps its endpoint and both original compensation terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fb96680ff30c7595c0d48bf7517e20493618e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
