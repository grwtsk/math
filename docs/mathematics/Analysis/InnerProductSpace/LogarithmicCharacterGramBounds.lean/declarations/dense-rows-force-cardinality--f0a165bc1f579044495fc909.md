# dense_rows_force_cardinality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db2cb85bcb679383a4a4b7664fb6fbe644ed2422",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48cef83b-9570-defd-8b39-4b6c57809431",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0eabedd-f10f-c09f-6fc2-cfe547021ddd",
  "kind": "theorem",
  "lexical_name": "dense_rows_force_cardinality",
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
  "slug": "dense-rows-force-cardinality--f0a165bc1f579044495fc909",
  "source": {
    "blob": "db2cb85bcb679383a4a4b7664fb6fbe644ed2422",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 67,
    "path": "GRWTSK/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0a165bc1f579044495fc909ea5a7b9cbd5e1031732858fa58cab1186cd2b5a5",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0eabedd-f10f-c09f-6fc2-cfe547021ddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_rows_force_cardinality {ι : Type*} (S : Finset ι)
    (hne : S.Nonempty) (K : ι → ι → ℝ) (w : ι → ℝ) {c C : ℝ}
    (hw : ∀ i ∈ S, 0 < w i)
    (hK : ∀ i ∈ S, ∀ j ∈ S, c ≤ K i j)
    (hrow : ∀ i ∈ S, ∑ j ∈ S, K i j * w j ≤ C * w i) :
    c * S.card ≤ C := by
  have hsumpos : 0 < ∑ i ∈ S, w i := sum_pos (fun i hi => hw i hi) hne
  have hlower : c * S.card * (∑ i ∈ S, w i) ≤
      ∑ i ∈ S, ∑ j ∈ S, K i j * w j := by
    calc
      _ = ∑ i ∈ S, ∑ j ∈ S, c * w j := by
        simp only [← mul_sum, sum_const, nsmul_eq_mul]
        ring
      _ ≤ _ := by
        apply sum_le_sum
        intro i hi
        apply sum_le_sum
        intro j hj
        exact mul_le_mul_of_nonneg_right (hK i hi j hj) (hw j hj).le
  have hupper : (∑ i ∈ S, ∑ j ∈ S, K i j * w j) ≤ C * ∑ i ∈ S, w i := by
    simpa only [mul_sum] using sum_le_sum hrow
  exact (mul_le_mul_iff_left₀ hsumpos).mp (hlower.trans hupper)

/-- Exact equality: all repeated unit packets force a Gram constant at least their count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db2cb85bcb679383a4a4b7664fb6fbe644ed2422` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
