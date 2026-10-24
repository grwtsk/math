# ite_inter_closure_eq_of_inter_frontier_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6fcb9e290ca73882fdb5cde61853318fc2106ac7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f28ad269-36fd-acfb-2506-a7b64d447c16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a9f0ca9-ca53-9945-58cc-22650c489d02",
  "kind": "theorem",
  "lexical_name": "ite_inter_closure_eq_of_inter_frontier_eq",
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
  "slug": "ite-inter-closure-eq-of-inter-frontier-eq--809d5ac0e262ed141d7a6588",
  "source": {
    "blob": "6fcb9e290ca73882fdb5cde61853318fc2106ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 142,
    "path": "GRWTSK/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:809d5ac0e262ed141d7a658830fc337de9e8d726e6025df873e3f06b8db0ca67",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a9f0ca9-ca53-9945-58cc-22650c489d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ite_inter_closure_eq_of_inter_frontier_eq
    (ht : s ∩ frontier t = s' ∩ frontier t) : t.ite s s' ∩ closure t = s ∩ closure t := by
  rw [closure_eq_self_union_frontier, inter_union_distrib_left, inter_union_distrib_left,
    ite_inter_self, ite_inter_of_inter_eq _ ht]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fcb9e290ca73882fdb5cde61853318fc2106ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
