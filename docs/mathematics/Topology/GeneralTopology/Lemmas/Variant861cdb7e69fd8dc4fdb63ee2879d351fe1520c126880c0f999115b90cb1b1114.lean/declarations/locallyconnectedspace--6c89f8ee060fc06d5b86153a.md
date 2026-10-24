# locallyConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e358d570-6923-567d-db60-ee718e8c848e",
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
  "slug": "locallyconnectedspace--6c89f8ee060fc06d5b86153a",
  "source": {
    "blob": "cad583ece7c7ff939321d56852f21cb09358278d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant861cdb7e69fd8dc4fdb63ee2879d351fe1520c126880c0f999115b90cb1b1114.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c89f8ee060fc06d5b86153a7b6d42e4b1628d66e3786c1f726d175c8ded53ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant861cdb7e69fd8dc4fdb63ee2879d351fe1520c126880c0f999115b90cb1b1114.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e358d570-6923-567d-db60-ee718e8c848e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–149.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant861cdb7e69fd8dc4fdb63ee2879d351fe1520c126880c0f999115b90cb1b1114.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant861cdb7e69fd8dc4fdb63ee2879d351fe1520c126880c0f999115b90cb1b1114.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cad583ece7c7ff939321d56852f21cb09358278d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
