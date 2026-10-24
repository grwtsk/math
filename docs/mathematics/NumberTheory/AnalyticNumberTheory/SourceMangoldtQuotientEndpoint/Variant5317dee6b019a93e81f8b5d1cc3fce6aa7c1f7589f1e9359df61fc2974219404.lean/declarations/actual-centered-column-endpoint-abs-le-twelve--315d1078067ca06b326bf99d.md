# actual_centered_column_endpoint_abs_le_twelve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b3d009b9e9ab3c3d6ddc8bbce203fe37d306fc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f12f3796-1466-e047-45b1-0fc896162ced",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb5b7ec5-3ba8-1fa3-aa05-70f2627f0d48",
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
  "slug": "actual-centered-column-endpoint-abs-le-twelve--315d1078067ca06b326bf99d",
  "source": {
    "blob": "6b3d009b9e9ab3c3d6ddc8bbce203fe37d306fc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 189,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:315d1078067ca06b326bf99db17b1ad12f6b93817409f31a4b7309d2830e6219",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb5b7ec5-3ba8-1fa3-aa05-70f2627f0d48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–205.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b3d009b9e9ab3c3d6ddc8bbce203fe37d306fc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
