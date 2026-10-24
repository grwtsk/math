# gl_smul_I_eq_I_iff_of_pos

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
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:806302d8-5871-9736-e9dd-04452b389cc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7395ba60-3e3d-25e7-6360-debc6bdcbc1a",
  "kind": "theorem",
  "lexical_name": "gl_smul_I_eq_I_iff_of_pos",
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
  "slug": "gl-smul-i-eq-i-iff-of-pos--2c52ddde9817ba3be78d2d0c",
  "source": {
    "blob": "8232d71ac5ddf316cdfe78030c19bf1ea6afe83e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 172,
    "path": "GRWTSK/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c52ddde9817ba3be78d2d0cfaeffb967f01e46d6e9c4cfb93b70de60bd1f6dc",
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

Occurrence: `result:7395ba60-3e3d-25e7-6360-debc6bdcbc1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gl_smul_I_eq_I_iff_of_pos {g : GL (Fin 2) ℝ} (hg : 0 < g.det.val) :
    g • I = I ↔ g 0 0 = g 1 1 ∧ g 0 1 = -g 1 0 := by
  rw [gl_smul_eq_iff_num_eq, σ, ite_eq_left hg]
  simp [Complex.ext_iff, num, denom, and_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8232d71ac5ddf316cdfe78030c19bf1ea6afe83e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
