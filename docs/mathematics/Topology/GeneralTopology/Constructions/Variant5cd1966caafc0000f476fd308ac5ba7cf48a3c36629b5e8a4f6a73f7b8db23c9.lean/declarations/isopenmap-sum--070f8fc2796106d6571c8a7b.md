# isOpenMap_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc47ed86-0a4e-83cd-d45c-49f809c62827",
  "kind": "theorem",
  "lexical_name": "isOpenMap_sum",
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
  "slug": "isopenmap-sum--070f8fc2796106d6571c8a7b",
  "source": {
    "blob": "a9c192d25453c8a13928c86bc3a19c4c17859579",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 987,
    "line": 982,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:070f8fc2796106d6571c8a7b7fe45d9a58e7f3451c115ecc0486e5f1f2ca4b22",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc47ed86-0a4e-83cd-d45c-49f809c62827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 982–987.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenMap_sum {f : Sum α β → γ} :
    IsOpenMap f ↔ (IsOpenMap fun a => f (inl a)) ∧ IsOpenMap fun b => f (inr b) := by
  simp only [isOpenMap_iff_nhds_le, Sum.forall, nhds_inl, nhds_inr, Filter.map_map, comp]
#align is_open_map_sum isOpenMap_sum

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean#L982).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c192d25453c8a13928c86bc3a19c4c17859579` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
