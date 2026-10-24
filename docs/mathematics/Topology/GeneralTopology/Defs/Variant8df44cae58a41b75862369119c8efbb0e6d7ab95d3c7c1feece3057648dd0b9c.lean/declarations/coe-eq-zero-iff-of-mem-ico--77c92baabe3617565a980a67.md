# coe_eq_zero_iff_of_mem_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a7d3b9c4dc749eee9d0f030f3aac40c06e87b8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23380c83-31a8-3e18-9087-eb48c89500c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b378d2dc-ea82-8be5-7170-b150b3dc9935",
  "kind": "lemma",
  "lexical_name": "coe_eq_zero_iff_of_mem_Ico",
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
  "slug": "coe-eq-zero-iff-of-mem-ico--77c92baabe3617565a980a67",
  "source": {
    "blob": "5a7d3b9c4dc749eee9d0f030f3aac40c06e87b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 399,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77c92baabe3617565a980a67f999e02264a7c9054a72fadb5e05c82c62c484cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b378d2dc-ea82-8be5-7170-b150b3dc9935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_eq_zero_iff_of_mem_Ico (ha : a ∈ Ico 0 p) :
    (a : AddCircle p) = 0 ↔ a = 0 := by
  have h0 : 0 ∈ Ico 0 (0 + p) := by simpa [zero_add, left_mem_Ico] using hp.out
  have ha' : a ∈ Ico 0 (0 + p) := by rwa [zero_add]
  rw [← AddCircle.coe_eq_coe_iff_of_mem_Ico ha' h0, QuotientAddGroup.mk_zero]

variable (p a)

section Continuity

variable [TopologicalSpace 𝕜]

@[continuity]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a7d3b9c4dc749eee9d0f030f3aac40c06e87b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
