# tsum_pow_mul_prod_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a2c3ae7c982523f4f98af726dcf393b0dd1e44a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f302f8bb-8822-ca01-f150-2af93336ae01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7399d1fe-4316-6f30-2ffe-8652b7da5694",
  "kind": "lemma",
  "lexical_name": "tsum_pow_mul_prod_bound",
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
  "slug": "tsum-pow-mul-prod-bound--b374871a76c596256f5f0a8f",
  "source": {
    "blob": "7a2c3ae7c982523f4f98af726dcf393b0dd1e44a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 63,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b374871a76c596256f5f0a8fa3391fe61f6656697e114182b62290fe33557db8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7399d1fe-4316-6f30-2ffe-8652b7da5694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_pow_mul_prod_bound (k : ℕ) {x : R} (hx : ‖x‖ < 1) :
    ‖∑' n, x ^ ((k + 1) * n) * ∏ i ∈ range (n + 1), (1 - x ^ (k + i + 1))‖ ≤
      (1 - ‖x‖)⁻¹ * ∏' i, (1 + ‖x‖ ^ i) := by
  refine tsum_of_norm_bounded (g := fun n ↦ ‖x‖ ^ n * ∏' i, (1 + ‖x‖ ^ i)) ?_ fun n ↦ ?_
  · rw [← tsum_geometric_of_lt_one (by simp) hx]
    exact (summable_geometric_of_lt_one (by simp) hx).hasSum.mul_right _
  · apply (pow_mul_prod_bound k n hx).trans
    gcongr ?_ * ?_
    · exact tprod_nonneg fun _ ↦ by positivity
    · grind [mul_comm, pow_mul, pow_le_of_le_one (by simp) (pow_le_one₀ (by simp) hx.le)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a2c3ae7c982523f4f98af726dcf393b0dd1e44a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
