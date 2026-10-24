# RxoIterator.step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a12470a4bf25a29d635006e1e09b74d08b1646fcdc08468cfa6ae1ed8144cc66",
  "kind": "def",
  "lexical_name": "RxoIterator.step",
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
  "slug": "rxoiterator-step--0dc41f413bf01a403e9da27b",
  "source": {
    "blob": "52509597edfc9a5fc5db11b0bad119c5d990697f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 570,
    "path": "GRWTSK/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dc41f413bf01a403e9da27bc0485f5a40119c0bf4f672b2651bce4f9ddf11f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a12470a4bf25a29d635006e1e09b74d08b1646fcdc08468cfa6ae1ed8144cc66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def RxoIterator.step [Ord α] : RxoIterator α β → IterStep (IterM (α := RxoIterator α β) Id ((a : α) × β a)) ((a : α) × β a)
  | ⟨.done, _⟩ => .done
  | ⟨.cons k v t it, upper⟩ =>
    if (compare k upper).isLT then
      .yield ⟨it.prependMap t, upper⟩ ⟨k, v⟩
    else
      .done

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52509597edfc9a5fc5db11b0bad119c5d990697f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
