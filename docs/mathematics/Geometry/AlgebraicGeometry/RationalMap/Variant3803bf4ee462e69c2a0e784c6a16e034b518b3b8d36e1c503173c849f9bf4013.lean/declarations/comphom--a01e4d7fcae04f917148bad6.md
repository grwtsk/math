# compHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6222ad7f1c2ebb89b59b0bdbfcdbf9f7d8fc4d47a5763b8b1c4a70a887a137b6",
  "kind": "def",
  "lexical_name": "compHom",
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
  "slug": "comphom--a01e4d7fcae04f917148bad6",
  "source": {
    "blob": "83be0fd853851132262d98d7926cfac92f5372f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 118,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a01e4d7fcae04f917148bad6b204acf65f0346d22ad0dd2d0cf510f3fb180c96",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6222ad7f1c2ebb89b59b0bdbfcdbf9f7d8fc4d47a5763b8b1c4a70a887a137b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compHom (f : X.PartialMap Y) (g : Y ⟶ Z) : X.PartialMap Z where
  domain := f.domain
  dense_domain := f.dense_domain
  hom := f.hom ≫ g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83be0fd853851132262d98d7926cfac92f5372f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
