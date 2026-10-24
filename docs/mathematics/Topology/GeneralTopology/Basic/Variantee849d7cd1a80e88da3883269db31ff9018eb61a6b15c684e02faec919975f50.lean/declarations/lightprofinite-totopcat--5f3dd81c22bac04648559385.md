# LightProfinite.toTopCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc9132e3e59a222032bfca32154cc0f06fb9497890fb97f35e607d1800dd1c92",
  "kind": "abbrev",
  "lexical_name": "LightProfinite.toTopCat",
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
  "slug": "lightprofinite-totopcat--5f3dd81c22bac04648559385",
  "source": {
    "blob": "4bd2bef8a41a8fed99ac85b9acc566a36c713814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f3dd81c22bac046485593851e0340446bc5fd8793c57e44fe6f5cf2002e2c1a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc9132e3e59a222032bfca32154cc0f06fb9497890fb97f35e607d1800dd1c92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev LightProfinite.toTopCat : LightProfinite ⥤ TopCat :=
  CompHausLike.compHausLikeToTop _

section DiscreteTopology

attribute [local instance] FintypeCat.botTopology
attribute [local instance] FintypeCat.discreteTopology

/-- The natural functor from `Fintype` to `LightProfinite`, endowing a finite type with the
discrete topology. -/
@[simps! -isSimp map_hom_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bd2bef8a41a8fed99ac85b9acc566a36c713814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
