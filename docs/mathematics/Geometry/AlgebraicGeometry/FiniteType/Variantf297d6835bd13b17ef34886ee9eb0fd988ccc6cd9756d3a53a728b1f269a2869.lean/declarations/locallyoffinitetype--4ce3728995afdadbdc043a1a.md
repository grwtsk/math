# LocallyOfFiniteType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11c92a573046beca387427a00436fae0a9094729e6b3ca02313a03e56621a848",
  "kind": "class",
  "lexical_name": "LocallyOfFiniteType",
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
  "slug": "locallyoffinitetype--4ce3728995afdadbdc043a1a",
  "source": {
    "blob": "54f3d2f3c83838cd4790e3d828b3d5dae7e69a02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 37,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ce3728995afdadbdc043a1ae58af0ae3d1030569d575b8f5626cd5a5af9ca5c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11c92a573046beca387427a00436fae0a9094729e6b3ca02313a03e56621a848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LocallyOfFiniteType (f : X ⟶ Y) : Prop where
  finiteType_of_affine_subset :
    ∀ (U : Y.affineOpens) (V : X.affineOpens) (e : V.1 ≤ f ⁻¹ᵁ U.1), (f.appLE U V e).hom.FiniteType

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54f3d2f3c83838cd4790e3d828b3d5dae7e69a02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
