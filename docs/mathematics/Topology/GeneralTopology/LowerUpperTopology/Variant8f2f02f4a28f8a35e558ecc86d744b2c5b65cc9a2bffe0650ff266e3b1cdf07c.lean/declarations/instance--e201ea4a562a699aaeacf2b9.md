# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fd76d2c47af3d494948eca38f16e2a3b50810244878d713cd1b12ca5f50b385",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e201ea4a562a699aaeacf2b9",
  "source": {
    "blob": "7db07cb4b8c52a3078efa07865a741108310081c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 568,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e201ea4a562a699aaeacf2b971c6e316135a7d7acfab2d0e839e4bef7650e8e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fd76d2c47af3d494948eca38f16e2a3b50810244878d713cd1b12ca5f50b385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsUpper Prop where
  topology_eq_upperTopology := by
    rw [Topology.upper, sierpinskiSpace, ← generateFrom_insert_empty]
    congr
    exact le_antisymm
      (fun h hs => by
        rcases hs with (rfl | rfl)
        · use True
          simp
        · use False
          simp)
      (by rintro _ ⟨a, rfl⟩; by_cases a <;> aesop (add simp [Ioi, lt_iff_le_not_ge]))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7db07cb4b8c52a3078efa07865a741108310081c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
