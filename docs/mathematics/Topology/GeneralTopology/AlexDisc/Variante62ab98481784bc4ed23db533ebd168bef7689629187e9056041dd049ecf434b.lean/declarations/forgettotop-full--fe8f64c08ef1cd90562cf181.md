# forgetToTop_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b92e9068c323e67113c5d839e30a58ffee712a87434c39008d8ec789d8dea403",
  "kind": "instance",
  "lexical_name": "forgetToTop_full",
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
  "slug": "forgettotop-full--fe8f64c08ef1cd90562cf181",
  "source": {
    "blob": "d2abdb4110dd312142b336e17b9f3d79244c0d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/AlexDisc/Variante62ab98481784bc4ed23db533ebd168bef7689629187e9056041dd049ecf434b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe8f64c08ef1cd90562cf181d1a1928d1452f17d378e2c2477b95fa7a67ed107",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AlexDisc/Variante62ab98481784bc4ed23db533ebd168bef7689629187e9056041dd049ecf434b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b92e9068c323e67113c5d839e30a58ffee712a87434c39008d8ec789d8dea403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forgetToTop_full : (forget₂ AlexDisc TopCat).Full where
  map_surjective f := ⟨InducedCategory.homMk f, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AlexDisc/Variante62ab98481784bc4ed23db533ebd168bef7689629187e9056041dd049ecf434b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AlexDisc/Variante62ab98481784bc4ed23db533ebd168bef7689629187e9056041dd049ecf434b.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2abdb4110dd312142b336e17b9f3d79244c0d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
