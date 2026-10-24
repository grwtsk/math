# closedBall_eq_or_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "efbc70789ed73adff0a19b412911e3270c392bc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be733d3e-c77c-ba10-37f6-ee6241b3501f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8ce41dd-121b-9763-709d-c1c3b37e2fe4",
  "kind": "lemma",
  "lexical_name": "closedBall_eq_or_disjoint",
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
  "slug": "closedball-eq-or-disjoint--fe657dfa5f630c586569db89",
  "source": {
    "blob": "efbc70789ed73adff0a19b412911e3270c392bc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 148,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe657dfa5f630c586569db891e2f48184993ac3dc0e3b4f14ca07dd5d2e564f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8ce41dd-121b-9763-709d-c1c3b37e2fe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma closedBall_eq_or_disjoint :
    closedBall x r = closedBall y r ∨ Disjoint (closedBall x r) (closedBall y r) := by
  refine Set.disjoint_or_nonempty_inter (closedBall x r) (closedBall y r) |>.symm.imp
    (fun h ↦ ?_) id
  have h₁ := closedBall_eq_of_mem <| Set.inter_subset_left h.some_mem
  have h₂ := closedBall_eq_of_mem <| Set.inter_subset_right h.some_mem
  exact h₁.trans h₂.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efbc70789ed73adff0a19b412911e3270c392bc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
