# PrismaticSiteTopologyLaws

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfd630c196d5f1cae436623c9a54b8e29ee2f523460434db2debd7055f695b04",
  "kind": "structure",
  "lexical_name": "PrismaticSiteTopologyLaws",
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
  "slug": "prismaticsitetopologylaws--7c5f4151fcac002ed9450205",
  "source": {
    "blob": "3a7750852344b7f1adf04083bf9dc5ba0d2223f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 400,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant59d4e3461968f63a72ef1eef803b9675c2ae2a5e1a8499de92bf3d3b8769ce2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c5f4151fcac002ed94502052470f437259a9a1628f5a5c5862e4b537da198c2",
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

Occurrence: `declaration:bfd630c196d5f1cae436623c9a54b8e29ee2f523460434db2debd7055f695b04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrismaticSiteTopologyLaws
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (T : PrismaticSiteAxioms P X) where
  pullback_id :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.pullbackCover (T.category.id U) C)
        C
  pullback_id_reverse :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        C
        (T.pullbackCover (T.category.id U) C)
  pullback_comp :
    ∀ {U V W : PrismaticSiteObject P X}
      (f : SiteMorphism V U)
      (g : SiteMorphism W V)
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.pullbackCover g (T.pullbackCover f C))
        (T.pullbackCover (T.category.comp g f) C)
  pullback_comp_reverse :
    ∀ {U V W : PrismaticSiteObject P X}
      (f : SiteMorphism V U)
      (g : SiteMorphism W V)
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.pullbackCover (T.category.comp g f) C)
        (T.pullbackCover g (T.pullbackCover f C))
  composition_assoc : Prop
  composition_assoc_certified : composition_assoc
  saturation_refines :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.coveringSaturation.saturate U C)
        C
  saturation_idempotent :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.coveringSaturation.saturate U
          (T.coveringSaturation.saturate U C))
        (T.coveringSaturation.saturate U C)
  saturation_idempotent_reverse :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.coveringSaturation.saturate U C)
        (T.coveringSaturation.saturate U
          (T.coveringSaturation.saturate U C))
  saturation_stable_under_pullback :
    ∀ {U V : PrismaticSiteObject P X}
      (f : SiteMorphism V U)
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.pullbackCover f (T.coveringSaturation.saturate U C))
        (T.coveringSaturation.saturate V (T.pullbackCover f C))
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant59d4e3461968f63a72ef1eef803b9675c2ae2a5e1a8499de92bf3d3b8769ce2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant59d4e3461968f63a72ef1eef803b9675c2ae2a5e1a8499de92bf3d3b8769ce2d.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a7750852344b7f1adf04083bf9dc5ba0d2223f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
