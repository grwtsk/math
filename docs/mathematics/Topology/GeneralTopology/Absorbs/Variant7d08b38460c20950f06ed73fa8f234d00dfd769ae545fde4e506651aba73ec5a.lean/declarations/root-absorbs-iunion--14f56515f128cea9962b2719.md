# _root_.absorbs_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2cd65825b4848c82320e97eee570e319c4fead6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d08b38460c20950f06ed73fa8f234d00dfd769ae545fde4e506651aba73ec5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fbd0373-d6ed-3b3b-2c48-21fda94d8a9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7e8fb49-f05f-3c16-c3ee-6bea5f013ad8",
  "kind": "lemma",
  "lexical_name": "_root_.absorbs_iUnion",
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
  "slug": "root-absorbs-iunion--14f56515f128cea9962b2719",
  "source": {
    "blob": "d2cd65825b4848c82320e97eee570e319c4fead6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/Absorbs/Variant7d08b38460c20950f06ed73fa8f234d00dfd769ae545fde4e506651aba73ec5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14f56515f128cea9962b2719c5262e0bc4c655d28fc42b7d1e9e0d9bad879f45",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Absorbs/Variant7d08b38460c20950f06ed73fa8f234d00dfd769ae545fde4e506651aba73ec5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7e8fb49-f05f-3c16-c3ee-6bea5f013ad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.absorbs_iUnion {ι : Sort*} [Finite ι] {t : ι → Set α} :
    Absorbs M s (⋃ i, t i) ↔ ∀ i, Absorbs M s (t i) :=
  (finite_range t).absorbs_sUnion.trans forall_mem_range

protected alias ⟨_, iUnion⟩ := absorbs_iUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Absorbs/Variant7d08b38460c20950f06ed73fa8f234d00dfd769ae545fde4e506651aba73ec5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Absorbs/Variant7d08b38460c20950f06ed73fa8f234d00dfd769ae545fde4e506651aba73ec5a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2cd65825b4848c82320e97eee570e319c4fead6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
