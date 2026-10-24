# PrismaticSiteAxioms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6af66b13b8b0edb36b0f04d33fe0754d3c1d217522acf53178bfc201a997e912",
  "kind": "structure",
  "lexical_name": "PrismaticSiteAxioms",
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
  "slug": "prismaticsiteaxioms--ea00de45cd66eda0f43620b3",
  "source": {
    "blob": "3a7750852344b7f1adf04083bf9dc5ba0d2223f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 372,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant59d4e3461968f63a72ef1eef803b9675c2ae2a5e1a8499de92bf3d3b8769ce2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea00de45cd66eda0f43620b31e2788d93446c3678c1306189d26053014aec8a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant59d4e3461968f63a72ef1eef803b9675c2ae2a5e1a8499de92bf3d3b8769ce2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6af66b13b8b0edb36b0f04d33fe0754d3c1d217522acf53178bfc201a997e912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrismaticSiteAxioms
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  category : SiteMorphismCategoryData P X
  identityCover :
    ∀ U : PrismaticSiteObject P X,
      CoverFamily U
  coverComposition :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      ((i : C.index) → CoverFamily (C.obj i)) →
        CoverFamily U
  pullbackCover :
    ∀ {U V : PrismaticSiteObject P X},
      SiteMorphism V U → CoverFamily U → CoverFamily V
  coveringSaturation : CoveringSaturationData P X
  boundary : List String

/--
Topology laws for the prismatic-site cover operations.

`PrismaticSiteAxioms` supplies operations.  This structure records the laws a
genuine Grothendieck-topology construction must also supply: pullback identity
and composition laws up to typed refinement, saturation laws, and an explicit
associativity law for cover composition.  Supplying these laws still does not
prove that `O_Delta` or `O_Delta_bar` is a sheaf.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant59d4e3461968f63a72ef1eef803b9675c2ae2a5e1a8499de92bf3d3b8769ce2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant59d4e3461968f63a72ef1eef803b9675c2ae2a5e1a8499de92bf3d3b8769ce2d.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a7750852344b7f1adf04083bf9dc5ba0d2223f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
