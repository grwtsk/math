# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:575d81c539153bfa835f103b5f4f3e617cff9c62a916e2ac7818ff5f46172688",
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
  "slug": "instance--b322b24ec7ce46ebb1667b75",
  "source": {
    "blob": "3353e08d41684890bae199a04f9db4f0f84fcb57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b322b24ec7ce46ebb1667b75ea1f4e7bc3813c0128dfa0823175e0a25201cc3d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:575d81c539153bfa835f103b5f4f3e617cff9c62a916e2ac7818ff5f46172688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ClosedIciTopology α :=
  ⟨fun a ↦ isOpen_compl_iff.1 <| isOpen_iff_generate_Ici_compl.2 <| GenerateOpen.basic _ ⟨a, rfl⟩⟩

-- Porting note: The old `LowerTopology.isClosed_Ici` was removed, since one can now use
-- the general `isClosed_Ici` lemma thanks to the instance above.
#align lower_topology.is_closed_Ici isClosed_Ici

/-- The upper closure of a finite set is closed in the lower topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3353e08d41684890bae199a04f9db4f0f84fcb57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
