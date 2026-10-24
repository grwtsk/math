# prodFst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a65f3d58b655b02fcf1e6ae29fc926d717063d3f06eaf9bafacbf018c55df714",
  "kind": "abbrev",
  "lexical_name": "prodFst",
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
  "slug": "prodfst--fa79a56131281bae015cef9c",
  "source": {
    "blob": "530a51b47b650d05d2b95e9b74d03fafdeef4ecd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa79a56131281bae015cef9c5d968ed857fd56816e4244dd930910cf8ddd1048",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a65f3d58b655b02fcf1e6ae29fc926d717063d3f06eaf9bafacbf018c55df714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev prodFst {X Y : TopCat.{u}} : TopCat.of (X × Y) ⟶ X :=
  ⟨Prod.fst, by continuity⟩
#align Top.prod_fst TopCat.prodFst

/-- The second projection from the product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `530a51b47b650d05d2b95e9b74d03fafdeef4ecd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
