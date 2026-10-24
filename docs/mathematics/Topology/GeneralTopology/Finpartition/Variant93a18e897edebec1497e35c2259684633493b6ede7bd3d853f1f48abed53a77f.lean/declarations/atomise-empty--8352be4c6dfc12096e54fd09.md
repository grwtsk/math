# atomise_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2eecf7d06c190b3d48b40a8418bfa6b1225a46a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 566,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68798510-56a2-2216-b006-659d4ecd072d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddcd4b18-ad02-54de-57ac-1babb88aab97",
  "kind": "theorem",
  "lexical_name": "atomise_empty",
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
  "slug": "atomise-empty--8352be4c6dfc12096e54fd09",
  "source": {
    "blob": "c2eecf7d06c190b3d48b40a8418bfa6b1225a46a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 566,
    "path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8352be4c6dfc12096e54fd090305f230a7403d1a0bd7abf3ded6fdf8eaf25aa6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddcd4b18-ad02-54de-57ac-1babb88aab97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atomise_empty (hs : s.Nonempty) : (atomise s ∅).parts = {s} := by
  simp only [atomise, powerset_empty, image_singleton, not_mem_empty, IsEmpty.forall_iff,
    imp_true_iff, filter_True]
  exact erase_eq_of_not_mem (not_mem_singleton.2 hs.ne_empty.symm)
#align finpartition.atomise_empty Finpartition.atomise_empty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2eecf7d06c190b3d48b40a8418bfa6b1225a46a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
