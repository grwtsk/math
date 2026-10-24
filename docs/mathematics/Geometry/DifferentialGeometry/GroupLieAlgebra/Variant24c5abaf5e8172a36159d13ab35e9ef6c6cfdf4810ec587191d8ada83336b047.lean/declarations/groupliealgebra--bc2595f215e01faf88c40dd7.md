# GroupLieAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd6114bef3cec2771b33ff5dfdc6b2c8c191e5904bf81be37aed1d009cb6368e",
  "kind": "abbrev",
  "lexical_name": "GroupLieAlgebra",
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
  "slug": "groupliealgebra--bc2595f215e01faf88c40dd7",
  "source": {
    "blob": "d4207a03f5c1f05d00f15cf6d3d8ce202a30c680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 64,
    "path": "GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc2595f215e01faf88c40dd7fc63f64c15095d2d6fee9a2fe1397da8c9b4fb4f",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd6114bef3cec2771b33ff5dfdc6b2c8c191e5904bf81be37aed1d009cb6368e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev GroupLieAlgebra : Type _ := TangentSpace% (1 : G)

/-- The invariant vector field associated to a vector `v` in the Lie algebra. At a point `g`, it
is given by the image of `v` under left-multiplication by `g`. -/
@[to_additive /-- The invariant vector field associated to a vector `v` in the Lie algebra. At a
point `g`, it is given by the image of `v` under left-addition by `g`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4207a03f5c1f05d00f15cf6d3d8ce202a30c680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
