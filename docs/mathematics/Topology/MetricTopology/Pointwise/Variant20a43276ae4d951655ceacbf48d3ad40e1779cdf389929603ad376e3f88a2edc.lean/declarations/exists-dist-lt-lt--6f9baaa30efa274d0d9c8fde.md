# exists_dist_lt_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4dded1b56b521e54f1f90bcc6f550b2d4602112c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38b88a2a-5ef6-afdf-1bc3-f1afdb8c4cd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05f95b84-16b1-0b57-2c0d-d620108308d8",
  "kind": "theorem",
  "lexical_name": "exists_dist_lt_lt",
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
  "slug": "exists-dist-lt-lt--6f9baaa30efa274d0d9c8fde",
  "source": {
    "blob": "4dded1b56b521e54f1f90bcc6f550b2d4602112c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 187,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f9baaa30efa274d0d9c8fde35640612ff96296274aa754e2c3e5ed9c39a2064",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05f95b84-16b1-0b57-2c0d-d620108308d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_dist_lt_lt (hδ : 0 < δ) (hε : 0 < ε) (h : dist x z < ε + δ) :
    ∃ y, dist x y < δ ∧ dist y z < ε := by
  refine (exists_dist_eq x z (div_nonneg hε.le <| add_nonneg hε.le hδ.le)
    (div_nonneg hδ.le <| add_nonneg hε.le hδ.le) <| by
      rw [← add_div, div_self (add_pos hε hδ).ne']).imp
    fun y hy => ?_
  rw [hy.1, hy.2, div_mul_comm, div_mul_comm ε]
  rw [← div_lt_one (add_pos hε hδ)] at h
  exact ⟨mul_lt_of_lt_one_left hδ h, mul_lt_of_lt_one_left hε h⟩

-- This is also true for `ℚ`-normed spaces
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dded1b56b521e54f1f90bcc6f550b2d4602112c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
