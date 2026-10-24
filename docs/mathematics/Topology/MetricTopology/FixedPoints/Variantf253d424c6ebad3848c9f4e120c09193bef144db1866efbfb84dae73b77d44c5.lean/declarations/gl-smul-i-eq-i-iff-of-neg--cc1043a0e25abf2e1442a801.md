# gl_smul_I_eq_I_iff_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8232d71ac5ddf316cdfe78030c19bf1ea6afe83e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ec19840-833f-eace-da94-2bda6553018d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3c8207b-7f23-df7b-6032-2175033986c6",
  "kind": "theorem",
  "lexical_name": "gl_smul_I_eq_I_iff_of_neg",
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
  "slug": "gl-smul-i-eq-i-iff-of-neg--cc1043a0e25abf2e1442a801",
  "source": {
    "blob": "8232d71ac5ddf316cdfe78030c19bf1ea6afe83e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 177,
    "path": "GRWTSK/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc1043a0e25abf2e1442a80165fbec68751c91b9f89d417749791030b7dcea5b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3c8207b-7f23-df7b-6032-2175033986c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gl_smul_I_eq_I_iff_of_neg {g : GL (Fin 2) ℝ} (hg : g.det.val < 0) :
    g • I = I ↔ g 0 0 = -g 1 1 ∧ g 0 1 = g 1 0 := by
  rw [gl_smul_eq_iff_num_eq, σ, ite_eq_right (not_lt_of_gt hg)]
  simp [num, denom, Complex.ext_iff, and_comm]

/-- A matrix acts trivially on `ℍ` iff it belongs to the center of `GL(2, ℝ)`,
i.e., it's a diagonal matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8232d71ac5ddf316cdfe78030c19bf1ea6afe83e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
