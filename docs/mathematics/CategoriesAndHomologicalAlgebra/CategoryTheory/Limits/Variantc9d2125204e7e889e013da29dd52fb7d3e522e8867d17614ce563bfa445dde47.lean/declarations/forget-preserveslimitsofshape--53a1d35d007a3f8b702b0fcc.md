# forget_preservesLimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e1f9902f37bc9f88b998e491caecc0a196a5b2d2f993b547de26e75098e5f61",
  "kind": "instance",
  "lexical_name": "forget_preservesLimitsOfShape",
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
  "slug": "forget-preserveslimitsofshape--53a1d35d007a3f8b702b0fcc",
  "source": {
    "blob": "08b0d2ff92a9d53060b65bf3dca57cbdc7da8dad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53a1d35d007a3f8b702b0fcca872830c74716d97d706cb9c9b1ffcfdc2b738fd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e1f9902f37bc9f88b998e491caecc0a196a5b2d2f993b547de26e75098e5f61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forget_preservesLimitsOfShape [Small.{u} J] :
    PreservesLimitsOfShape J (forget CommMonCat.{u}) where
  preservesLimit {F} := preservesLimit_of_preserves_limit_cone (limitConeIsLimit F)
    (Types.Small.limitConeIsLimit (F ⋙ forget _))

/-- The forgetful functor from commutative monoids to types preserves all limits.

This means the underlying type of a limit can be computed as a limit in the category of types. -/
@[to_additive "The forgetful functor from additive commutative monoids to types preserves all\n
limits.\n\n
This means the underlying type of a limit can be computed as a limit in the category of types."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b0d2ff92a9d53060b65bf3dca57cbdc7da8dad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
