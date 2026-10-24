# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b4b471d8287336718190e25123a228cbe5b50fef4191117eb80e8926514d9d9",
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
  "slug": "instance--59983265ca27fdbad030a3a0",
  "source": {
    "blob": "52509597edfc9a5fc5db11b0bad119c5d990697f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1738,
    "line": 1735,
    "path": "GRWTSK/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59983265ca27fdbad030a3a0004c5899e7cab9a460e417367c06a0576aa6afbf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b4b471d8287336718190e25123a228cbe5b50fef4191117eb80e8926514d9d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1735–1738.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance {α : Type u} {β : Type v} : Rii.Sliceable (Impl α (fun _ => β)) α (Const.RiiSlice α β) where
  mkSlice carrier range := ⟨carrier, range⟩

@[inline, expose, instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean#L1735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52509597edfc9a5fc5db11b0bad119c5d990697f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
