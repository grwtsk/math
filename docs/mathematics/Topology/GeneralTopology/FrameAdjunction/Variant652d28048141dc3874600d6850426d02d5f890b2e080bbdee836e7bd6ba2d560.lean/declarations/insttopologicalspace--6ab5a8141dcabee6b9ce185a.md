# instTopologicalSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6af3854a1c56c541706496254f6d80b1e6ed941e2d0d08c85bb9c8bffc9619ff",
  "kind": "instance",
  "lexical_name": "instTopologicalSpace",
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
  "slug": "insttopologicalspace--6ab5a8141dcabee6b9ce185a",
  "source": {
    "blob": "98decc4ce3ac2b8463cb46cf07156f4aa7f217d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/FrameAdjunction/Variant652d28048141dc3874600d6850426d02d5f890b2e080bbdee836e7bd6ba2d560.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ab5a8141dcabee6b9ce185abd1c13d437623c93b7f425463be956191b0181a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FrameAdjunction/Variant652d28048141dc3874600d6850426d02d5f890b2e080bbdee836e7bd6ba2d560.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6af3854a1c56c541706496254f6d80b1e6ed941e2d0d08c85bb9c8bffc9619ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instTopologicalSpace : TopologicalSpace (PT L) where
  IsOpen s := ∃ u, {x | x u} = s
  isOpen_univ := ⟨⊤, by simp⟩
  isOpen_inter := by rintro s t ⟨u, rfl⟩ ⟨v, rfl⟩; use u ⊓ v; simp_rw [map_inf]; rfl
  isOpen_sUnion S hS := by
    choose f hf using hS
    use ⨆ t, ⨆ ht, f t ht
    simp_rw [map_iSup, iSup_Prop_eq, setOf_exists, hf, sUnion_eq_biUnion]

/-- Characterization of when a subset of the space of points is open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FrameAdjunction/Variant652d28048141dc3874600d6850426d02d5f890b2e080bbdee836e7bd6ba2d560.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FrameAdjunction/Variant652d28048141dc3874600d6850426d02d5f890b2e080bbdee836e7bd6ba2d560.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98decc4ce3ac2b8463cb46cf07156f4aa7f217d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
