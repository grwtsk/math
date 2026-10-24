# Real.cobounded_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16e0bb058bc607baf07f47717d75da382ede54b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0f16142-6dcb-54d5-bb2e-3c30c86603a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9fa0f640-b73c-03fb-9a4d-0dfbf908e9c2",
  "kind": "theorem",
  "lexical_name": "Real.cobounded_eq",
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
  "slug": "real-cobounded-eq--50e36d459327b972573e6eb7",
  "source": {
    "blob": "16e0bb058bc607baf07f47717d75da382ede54b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50e36d459327b972573e6eb7d7ee601b35050c36cd3a22a5a16e8505df36bacb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fa0f640-b73c-03fb-9a4d-0dfbf908e9c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.cobounded_eq : cobounded ℝ = atBot ⊔ atTop := by
  simp only [← comap_dist_right_atTop (0 : ℝ), Real.dist_eq, sub_zero, comap_abs_atTop]

/- TODO(Mario): Prove that these are uniform isomorphisms instead of uniform embeddings
lemma uniform_embedding_add_rat {r : ℚ} : uniform_embedding (fun p : ℚ => p + r) :=
_

lemma uniform_embedding_mul_rat {q : ℚ} (hq : q ≠ 0) : uniform_embedding ((*) q) :=
_ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16e0bb058bc607baf07f47717d75da382ede54b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
