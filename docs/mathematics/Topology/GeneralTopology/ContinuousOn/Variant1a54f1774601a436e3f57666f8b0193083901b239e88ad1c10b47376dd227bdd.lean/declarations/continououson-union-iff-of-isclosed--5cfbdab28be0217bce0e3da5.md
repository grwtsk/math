# continouousOn_union_iff_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77daf350-0e54-7938-2bac-dc31bbf7b765",
  "kind": "theorem",
  "lexical_name": "continouousOn_union_iff_of_isClosed",
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
  "slug": "continououson-union-iff-of-isclosed--5cfbdab28be0217bce0e3da5",
  "source": {
    "blob": "17850a8aa0371a4be6e67dbf51bf53e076819f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1388,
    "line": 1383,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cfbdab28be0217bce0e3da5b5769f24a81379e6a202ab53d4f8c62b450ce8ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77daf350-0e54-7938-2bac-dc31bbf7b765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1383–1388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continouousOn_union_iff_of_isClosed {f : α → β} (hs : IsClosed s) (ht : IsClosed t) :
    ContinuousOn f (s ∪ t) ↔ ContinuousOn f s ∧ ContinuousOn f t :=
  ⟨fun h ↦ ⟨h.mono s.subset_union_left, h.mono s.subset_union_right⟩,
   fun h ↦ h.left.union_of_isClosed h.right hs ht⟩

/-- If a function is continuous on two open sets, it is also continuous on their union. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean#L1383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17850a8aa0371a4be6e67dbf51bf53e076819f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
