# AffineSubspace.isClosed_direction_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db3a19c733c15488d63d331280549defce5d16b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:acb7d239-7686-00cd-1dca-9b42e443ef2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9233858b-bce9-9cf6-1972-bbf6c8a25e92",
  "kind": "theorem",
  "lexical_name": "AffineSubspace.isClosed_direction_iff",
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
  "slug": "affinesubspace-isclosed-direction-iff--7ad4b7f6208a4787484b5642",
  "source": {
    "blob": "db3a19c733c15488d63d331280549defce5d16b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ad4b7f6208a4787484b5642d4233a8895f2d24341f63af5ed62387187e0a337",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9233858b-bce9-9cf6-1972-bbf6c8a25e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineSubspace.isClosed_direction_iff (s : AffineSubspace 𝕜 Q) :
    IsClosed (s.direction : Set W) ↔ IsClosed (s : Set Q) := by
  rcases s.eq_bot_or_nonempty with (rfl | ⟨x, hx⟩); · simp [isClosed_singleton]
  rw [← (IsometryEquiv.vaddConst x).toHomeomorph.symm.isClosed_image,
    AffineSubspace.coe_direction_eq_vsub_set_right hx]
  rfl
#align affine_subspace.is_closed_direction_iff AffineSubspace.isClosed_direction_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db3a19c733c15488d63d331280549defce5d16b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
