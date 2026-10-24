# Metric.uniformity_edist_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d0e6da2c77245966a3fa5c4356ba79581daaa14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 888,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e46c319-4274-1c8c-29da-97c580c7ffc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11426c3a-b3ca-304f-c012-ee79858b001f",
  "kind": "theorem",
  "lexical_name": "Metric.uniformity_edist_aux",
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
  "slug": "metric-uniformity-edist-aux--f49a9f38c5c8c225f96149a9",
  "source": {
    "blob": "5d0e6da2c77245966a3fa5c4356ba79581daaa14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 899,
    "line": 888,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f49a9f38c5c8c225f96149a9ac92e08a708281aa557b53aab35e9f780b9ea024",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11426c3a-b3ca-304f-c012-ee79858b001f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 888–899.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Metric.uniformity_edist_aux {α} (d : α → α → ℝ≥0) :
    ⨅ ε > (0 : ℝ), 𝓟 { p : α × α | ↑(d p.1 p.2) < ε } =
      ⨅ ε > (0 : ℝ≥0∞), 𝓟 { p : α × α | ↑(d p.1 p.2) < ε } := by
  simp only [le_antisymm_iff, le_iInf_iff, le_principal_iff]
  refine ⟨fun ε hε => ?_, fun ε hε => ?_⟩
  · rcases ENNReal.lt_iff_exists_nnreal_btwn.1 hε with ⟨ε', ε'0, ε'ε⟩
    refine mem_iInf_of_mem (ε' : ℝ) (mem_iInf_of_mem (ENNReal.coe_pos.1 ε'0) ?_)
    exact fun x hx => lt_trans (ENNReal.coe_lt_coe.2 hx) ε'ε
  · lift ε to ℝ≥0 using le_of_lt hε
    refine mem_iInf_of_mem (ε : ℝ≥0∞) (mem_iInf_of_mem (ENNReal.coe_pos.2 hε) ?_)
    exact fun _ => ENNReal.coe_lt_coe.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean#L888).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0e6da2c77245966a3fa5c4356ba79581daaa14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
