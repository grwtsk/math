# IsNoetherian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a97ff1622d8aa6d0822bea299791f4a251d48d0d5123676fd876e288df508fb",
  "kind": "class",
  "lexical_name": "IsNoetherian",
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
  "slug": "isnoetherian--a7e9356f4812ade83b4f7195",
  "source": {
    "blob": "9ad5d0f006f205a8fd19b802e6f44e577cd60954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 237,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7e9356f4812ade83b4f71950bc9cccf0ff8b568944faa7f24dfda7b4a9ff0cd",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a97ff1622d8aa6d0822bea299791f4a251d48d0d5123676fd876e288df508fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsNoetherian (X : Scheme) : Prop extends IsLocallyNoetherian X, CompactSpace X

/-- A scheme is Noetherian if and only if it is covered by finitely many affine opens whose
sections are noetherian rings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ad5d0f006f205a8fd19b802e6f44e577cd60954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
