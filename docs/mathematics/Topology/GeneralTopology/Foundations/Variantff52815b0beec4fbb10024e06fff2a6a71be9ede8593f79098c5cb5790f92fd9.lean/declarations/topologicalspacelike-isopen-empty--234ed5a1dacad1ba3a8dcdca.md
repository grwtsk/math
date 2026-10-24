# TopologicalSpaceLike.isOpen_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "586741e287de6bce2794d8e55309ee59652e88ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff52815b0beec4fbb10024e06fff2a6a71be9ede8593f79098c5cb5790f92fd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1d15405-6c8c-037a-e967-38e5cb23c8b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9029b9e7-93d0-6db1-9caf-6db8dbccb3f3",
  "kind": "theorem",
  "lexical_name": "TopologicalSpaceLike.isOpen_empty",
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
  "slug": "topologicalspacelike-isopen-empty--234ed5a1dacad1ba3a8dcdca",
  "source": {
    "blob": "586741e287de6bce2794d8e55309ee59652e88ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/Foundations/Variantff52815b0beec4fbb10024e06fff2a6a71be9ede8593f79098c5cb5790f92fd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:234ed5a1dacad1ba3a8dcdca06424e0d191fd71122fc7431320d5f0169af73d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Foundations/Variantff52815b0beec4fbb10024e06fff2a6a71be9ede8593f79098c5cb5790f92fd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9029b9e7-93d0-6db1-9caf-6db8dbccb3f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TopologicalSpaceLike.isOpen_empty
    {X : Type u} (T : TopologicalSpaceLike X) : T.IsOpen Set.empty := by
  have h := T.isOpen_sUnion (fun _ => False) (by
    intro U hU
    exact False.elim hU)
  have hs : Set.sUnion (fun _ : Set X => False) = Set.empty := by
    apply Set.ext
    intro x
    constructor
    · intro hx
      obtain ⟨U, hU, _⟩ := hx
      exact False.elim hU
    · intro hx
      exact False.elim hx
  rw [hs] at h
  exact h

/-- The discrete topology, in which every predicate is open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Foundations/Variantff52815b0beec4fbb10024e06fff2a6a71be9ede8593f79098c5cb5790f92fd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Foundations/Variantff52815b0beec4fbb10024e06fff2a6a71be9ede8593f79098c5cb5790f92fd9.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `586741e287de6bce2794d8e55309ee59652e88ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
