# LocallyBoundedMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72e4a7f0f4ec63f8c83e80259f950db67fcf1018f3c6aaeaa21b7f915e0e5a97",
  "kind": "structure",
  "lexical_name": "LocallyBoundedMap",
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
  "slug": "locallyboundedmap--1cf933898500676a4a4a7c2a",
  "source": {
    "blob": "50eeed551084684f7ac76687dc0b7809962647b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variantda4d783110d5bc3e1912160957e4a6a006c962f6c57fa49ef39508042217616f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cf933898500676a4a4a7c2aad1b0f426efd7dccd99e97a501a9963ba40d717c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variantda4d783110d5bc3e1912160957e4a6a006c962f6c57fa49ef39508042217616f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72e4a7f0f4ec63f8c83e80259f950db67fcf1018f3c6aaeaa21b7f915e0e5a97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocallyBoundedMap (α β : Type*) [Bornology α] [Bornology β] where
  /-- The function underlying a locally bounded map -/
  toFun : α → β
  /-- The pullback of the `Bornology.cobounded` filter under the function is contained in the
  cobounded filter. Equivalently, the function maps bounded sets to bounded sets. -/
  comap_cobounded_le' : (cobounded β).comap toFun ≤ cobounded α

section

/-- `LocallyBoundedMapClass F α β` states that `F` is a type of bounded maps.

You should extend this class when you extend `LocallyBoundedMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variantda4d783110d5bc3e1912160957e4a6a006c962f6c57fa49ef39508042217616f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variantda4d783110d5bc3e1912160957e4a6a006c962f6c57fa49ef39508042217616f.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50eeed551084684f7ac76687dc0b7809962647b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
