# RightPreLieRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:328e643e4235794ddfd16edea9e7c8cb1557bb0a8b8ffebb4491ef2dd632ddf6",
  "kind": "class",
  "lexical_name": "RightPreLieRing",
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
  "slug": "rightpreliering--99830a4744bb06de6ecbd599",
  "source": {
    "blob": "f5b901f64b607e7f826ace31e4781d4c0647de17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99830a4744bb06de6ecbd599da75525b75f8e7cefd52a34e3ec999deacc86f98",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:328e643e4235794ddfd16edea9e7c8cb1557bb0a8b8ffebb4491ef2dd632ddf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class RightPreLieRing (L : Type*) extends NonUnitalNonAssocRing L where
  assoc_symm' (x y z : L) : associator x y z = associator x z y

section algebras

variable (R : Type*) [CommRing R]

/-- A `LeftPreLieAlgebra` is a `LeftPreLieRing` with an action of a `CommRing` satisfying
`r • x * y = r • (x * y)` and ` x * (r • y) = r • (x * y)`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5b901f64b607e7f826ace31e4781d4c0647de17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
