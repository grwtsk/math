# Perfect.small_diam_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bef9196e073c8bbd8a4216704cb26a88bf810b24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbf5f751-a731-71ca-8d30-d6231817e36c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da2e7032-980e-33fb-0ab5-30e41a58d953",
  "kind": "theorem",
  "lexical_name": "Perfect.small_diam_aux",
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
  "slug": "perfect-small-diam-aux--32517679899e671d906e9f74",
  "source": {
    "blob": "bef9196e073c8bbd8a4216704cb26a88bf810b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32517679899e671d906e9f747ce5f409398e55a0ff14e9b6637dfb22cc4d45b0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da2e7032-980e-33fb-0ab5-30e41a58d953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Perfect.small_diam_aux (ε_pos : 0 < ε) {x : α} (xC : x ∈ C) :
    let D := closure (EMetric.ball x (ε / 2) ∩ C)
    Perfect D ∧ D.Nonempty ∧ D ⊆ C ∧ EMetric.diam D ≤ ε := by
  have : x ∈ EMetric.ball x (ε / 2) := by
    apply EMetric.mem_ball_self
    rw [ENNReal.div_pos_iff]
    exact ⟨ne_of_gt ε_pos, by norm_num⟩
  have := hC.closure_nhds_inter x xC this EMetric.isOpen_ball
  refine' ⟨this.1, this.2, _, _⟩
  · rw [IsClosed.closure_subset_iff hC.closed]
    apply inter_subset_right
  rw [EMetric.diam_closure]
  apply le_trans (EMetric.diam_mono (inter_subset_left _ _))
  convert EMetric.diam_ball (x := x)
  rw [mul_comm, ENNReal.div_mul_cancel] <;> norm_num

variable (hnonempty : C.Nonempty)

/-- A refinement of `Perfect.splitting` for metric spaces, where we also control
the diameter of the new perfect sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bef9196e073c8bbd8a4216704cb26a88bf810b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
