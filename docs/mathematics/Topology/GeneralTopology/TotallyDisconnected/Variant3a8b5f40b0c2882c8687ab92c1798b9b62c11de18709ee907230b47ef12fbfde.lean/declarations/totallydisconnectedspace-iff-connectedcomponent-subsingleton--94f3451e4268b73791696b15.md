# totallyDisconnectedSpace_iff_connectedComponent_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "756ada11aa156d1ddcb36dd5ccaf9a28f9687895",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58e09130-4491-9fb6-abba-119a199490d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51a63252-4c5b-4268-b82a-d0ec9ac3402d",
  "kind": "theorem",
  "lexical_name": "totallyDisconnectedSpace_iff_connectedComponent_subsingleton",
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
  "slug": "totallydisconnectedspace-iff-connectedcomponent-subsingleton--94f3451e4268b73791696b15",
  "source": {
    "blob": "756ada11aa156d1ddcb36dd5ccaf9a28f9687895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94f3451e4268b73791696b158cd0428c870206982c1ff0a00ff78ab3d3adc73f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51a63252-4c5b-4268-b82a-d0ec9ac3402d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totallyDisconnectedSpace_iff_connectedComponent_subsingleton :
    TotallyDisconnectedSpace α ↔ ∀ x : α, (connectedComponent x).Subsingleton := by
  constructor
  · intro h x
    apply h.1
    · exact subset_univ _
    exact isPreconnected_connectedComponent
  intro h; constructor
  intro s s_sub hs
  rcases eq_empty_or_nonempty s with (rfl | ⟨x, x_in⟩)
  · exact subsingleton_empty
  · exact (h x).anti (hs.subset_connectedComponent x_in)

/-- A space is totally disconnected iff its connected components are singletons. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `756ada11aa156d1ddcb36dd5ccaf9a28f9687895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
