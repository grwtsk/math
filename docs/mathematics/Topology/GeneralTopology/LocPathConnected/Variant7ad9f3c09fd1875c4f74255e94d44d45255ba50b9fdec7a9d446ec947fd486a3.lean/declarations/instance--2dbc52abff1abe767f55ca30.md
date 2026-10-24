# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:818e412cf04c4a5755f80215bda745bf7c5ae6da30edd9998aa39b94d48d4b0e",
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
  "slug": "instance--2dbc52abff1abe767f55ca30",
  "source": {
    "blob": "e46524ab1e85a490f7e627d59bfb71c5582884ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 142,
    "path": "GRWTSK/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dbc52abff1abe767f55ca30ee30de41afd57fee74bd16b6393c2a8d45b36e51",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:818e412cf04c4a5755f80215bda745bf7c5ae6da30edd9998aa39b94d48d4b0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LocallyConnectedSpace X := by
  refine ⟨forall_imp (fun x h ↦ ⟨fun s ↦ ?_⟩) isOpen_isPathConnected_basis⟩
  refine ⟨fun hs ↦ ?_, fun ⟨u, ⟨hu, hxu, _⟩, hus⟩ ↦ mem_nhds_iff.mpr ⟨u, hus, hu, hxu⟩⟩
  let ⟨u, ⟨hu, hxu, hu'⟩, hus⟩ := (h.mem_iff' s).mp hs
  exact ⟨u, ⟨hu, hxu, hu'.isConnected⟩, hus⟩

/-- A space is locally path-connected iff all path components of open subsets are open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46524ab1e85a490f7e627d59bfb71c5582884ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
