# G2Term_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71772d84acea316d4a44b5bc2fb6e9742fc3d035",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:827360d1-5d14-de95-d2e4-42922452d63a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:358fa730-5d6e-afdd-abfc-1b0079bc4297",
  "kind": "lemma",
  "lexical_name": "G2Term_summable",
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
  "slug": "g2term-summable--de71533be1d31f3906507c21",
  "source": {
    "blob": "71772d84acea316d4a44b5bc2fb6e9742fc3d035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 99,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de71533be1d31f3906507c2125bf575798d7c8c196bc9ebb0a94a9697e3ab7d3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:358fa730-5d6e-afdd-abfc-1b0079bc4297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma G2Term_summable (z : ℍ) : Summable (G2Term z) := by
  have H : Summable fun m ↦ G2Term z m - δ m := by
    simp_rw [G2Term, add_sub_cancel_right]
    apply summable_of_isBigO_rpow_norm (a := 3) (by linarith)
    simpa [pow_three, pow_two, ← mul_assoc] using ((isBigO_linear_add_const_vec z 0 1).mul
      (isBigO_linear_add_const_vec z 0 0)).mul (isBigO_linear_add_const_vec z 0 0)
  exact H.congr_cofinite <| δ_eventually_cofinite.mp <| .of_forall <| by simp +contextual

--This is the version we use the most.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71772d84acea316d4a44b5bc2fb6e9742fc3d035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
