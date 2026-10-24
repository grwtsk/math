# locallyConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6baab7e4c182041ffe730e81632aaec349057894",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cca35a3-b97a-d503-3ba8-696e89eed363",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a57a5d48-9165-232a-af72-bd21897b3c36",
  "kind": "theorem",
  "lexical_name": "locallyConnectedSpace",
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
  "slug": "locallyconnectedspace--4cb3fec6272beac7e56c47d1",
  "source": {
    "blob": "6baab7e4c182041ffe730e81632aaec349057894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cb3fec6272beac7e56c47d1b5e1cd6f1106d3e19fff8b3801c98a499b2a8a3f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a57a5d48-9165-232a-af72-bd21897b3c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyConnectedSpace [i : LocallyConnectedSpace Y] (h : X ≃ₜ Y) :
    LocallyConnectedSpace X := by
  have : ∀ x, (𝓝 x).HasBasis (fun s ↦ IsOpen s ∧ h x ∈ s ∧ IsConnected s)
      (h.symm '' ·) := fun x ↦ by
    rw [← h.symm_map_nhds_eq]
    exact (i.1 _).map _
  refine locallyConnectedSpace_of_connected_bases _ _ this fun _ _ hs ↦ ?_
  exact hs.2.2.2.image _ h.symm.continuous.continuousOn

/-- The codomain of a homeomorphism is a locally compact space if and only if
the domain is a locally compact space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6baab7e4c182041ffe730e81632aaec349057894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
