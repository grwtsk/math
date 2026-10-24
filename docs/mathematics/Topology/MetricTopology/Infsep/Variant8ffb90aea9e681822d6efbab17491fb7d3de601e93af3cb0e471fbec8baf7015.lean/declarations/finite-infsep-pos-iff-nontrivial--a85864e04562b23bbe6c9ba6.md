# Finite.infsep_pos_iff_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71d2484efb8d978f98c37318496df482fd37463b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 464,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8ffb90aea9e681822d6efbab17491fb7d3de601e93af3cb0e471fbec8baf7015.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:469cab89-5f08-0ec6-e2a0-3270b652ad1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0eb3bf3e-a8db-8b78-d580-d9f8b6d4475b",
  "kind": "theorem",
  "lexical_name": "Finite.infsep_pos_iff_nontrivial",
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
  "slug": "finite-infsep-pos-iff-nontrivial--a85864e04562b23bbe6c9ba6",
  "source": {
    "blob": "71d2484efb8d978f98c37318496df482fd37463b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 464,
    "path": "GRWTSK/Topology/MetricTopology/Infsep/Variant8ffb90aea9e681822d6efbab17491fb7d3de601e93af3cb0e471fbec8baf7015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a85864e04562b23bbe6c9ba6d2f05f88443a5a5d229496f8f2459d1f17d61cce",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Infsep/Variant8ffb90aea9e681822d6efbab17491fb7d3de601e93af3cb0e471fbec8baf7015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0eb3bf3e-a8db-8b78-d580-d9f8b6d4475b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finite.infsep_pos_iff_nontrivial (hs : s.Finite) : 0 < s.infsep ↔ s.Nontrivial :=
  letI := hs.fintype
  infsep_pos_iff_nontrivial_of_finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Infsep/Variant8ffb90aea9e681822d6efbab17491fb7d3de601e93af3cb0e471fbec8baf7015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Infsep/Variant8ffb90aea9e681822d6efbab17491fb7d3de601e93af3cb0e471fbec8baf7015.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71d2484efb8d978f98c37318496df482fd37463b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
