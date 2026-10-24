# universallyClosed_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:faebf16a12f275fcd588b4f3c53e6e45ad9d1be7a4997b98834ae66c1ed3e88b",
  "kind": "instance",
  "lexical_name": "universallyClosed_fst",
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
  "slug": "universallyclosed-fst--6d08635dee6d5f29b009de7d",
  "source": {
    "blob": "084d7936ef8d1ed2a898b272787325dee92e9f04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 85,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d08635dee6d5f29b009de7deaf4be5b66fb7a359205b6683cf5c30cc2248eb8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:faebf16a12f275fcd588b4f3c53e6e45ad9d1be7a4997b98834ae66c1ed3e88b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance universallyClosed_fst {X Y Z : Scheme} (f : X ⟶ Z) (g : Y ⟶ Z) [hg : UniversallyClosed g] :
    UniversallyClosed (pullback.fst f g) :=
  MorphismProperty.pullback_fst f g hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `084d7936ef8d1ed2a898b272787325dee92e9f04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
