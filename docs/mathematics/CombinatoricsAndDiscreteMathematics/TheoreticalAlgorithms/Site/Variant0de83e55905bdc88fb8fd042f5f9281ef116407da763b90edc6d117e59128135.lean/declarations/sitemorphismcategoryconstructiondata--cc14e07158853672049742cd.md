# SiteMorphismCategoryConstructionData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a8c2e443ec240779e7c578864dc1005c4d4e1b270bb60791f2409ccdc2a0461",
  "kind": "structure",
  "lexical_name": "SiteMorphismCategoryConstructionData",
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
  "slug": "sitemorphismcategoryconstructiondata--cc14e07158853672049742cd",
  "source": {
    "blob": "f5ca219aa7dc0c4802d46e697f161618f5ff96f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc14e07158853672049742cdabac452355264ee3f03fe6b612646639fadde864",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a8c2e443ec240779e7c578864dc1005c4d4e1b270bb60791f2409ccdc2a0461`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SiteMorphismCategoryConstructionData
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  id :
    ∀ U : PrismaticSiteObject P X,
      SiteMorphism U U
  comp :
    ∀ {U V W : PrismaticSiteObject P X},
      SiteMorphism U V →
      SiteMorphism V W →
        SiteMorphism U W
  idPrismMap :
    ∀ U : PrismaticSiteObject P X,
      PrismMap U.B.toPrism U.B.toPrism
  compPrismMap :
    ∀ {U V W : PrismaticSiteObject P X},
      PrismMap U.B.toPrism V.B.toPrism →
      PrismMap V.B.toPrism W.B.toPrism →
        PrismMap U.B.toPrism W.B.toPrism
  id_prismMap_eq :
    ∀ U : PrismaticSiteObject P X,
      (id U).prismMap = idPrismMap U
  comp_prismMap_eq :
    ∀ {U V W : PrismaticSiteObject P X}
      (f : SiteMorphism U V)
      (g : SiteMorphism V W),
        (comp f g).prismMap = compPrismMap f.prismMap g.prismMap
  id_comp :
    ∀ {U V : PrismaticSiteObject P X}
      (f : SiteMorphism U V),
        comp (id U) f = f
  comp_id :
    ∀ {U V : PrismaticSiteObject P X}
      (f : SiteMorphism U V),
        comp f (id V) = f
  assoc :
    ∀ {U V W Y : PrismaticSiteObject P X}
      (f : SiteMorphism U V)
      (g : SiteMorphism V W)
      (h : SiteMorphism W Y),
        comp (comp f g) h = comp f (comp g h)
  constructionBoundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ca219aa7dc0c4802d46e697f161618f5ff96f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
