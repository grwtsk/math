# equivIco

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b828a4f20f14ee9d45963d61ee0642ed2e5592a0b5e789e298094ee396e3af47",
  "kind": "def",
  "lexical_name": "equivIco",
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
  "slug": "equivico--dd30f6fdca9147471af8806c",
  "source": {
    "blob": "6815a942dabfaf83f799770f87e460d55821c012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 173,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd30f6fdca9147471af8806c0fe6f531c9c95db6884e6f56f67b86049e5123fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b828a4f20f14ee9d45963d61ee0642ed2e5592a0b5e789e298094ee396e3af47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivIco : AddCircle p ≃ Ico a (a + p) :=
  QuotientAddGroup.equivIcoMod hp.out a

/-- The equivalence between `AddCircle p` and the half-open interval `(a, a + p]`, whose inverse
is the natural quotient map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6815a942dabfaf83f799770f87e460d55821c012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
