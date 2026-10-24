# FilteredFrobeniusTotalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5664899326a312c16188b6289e76649a9a54dc1fc12bfa239b1edb88d4f3b8d0",
  "kind": "structure",
  "lexical_name": "FilteredFrobeniusTotalization",
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
  "slug": "filteredfrobeniustotalization--f03580cc1441caf872943a4c",
  "source": {
    "blob": "9bcdd6d0cf552246924e49ac46aff66898f7af7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 23,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f03580cc1441caf872943a4ced68d1d26a45adc3bb426a8d46fcc55c3267084c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5664899326a312c16188b6289e76649a9a54dc1fc12bfa239b1edb88d4f3b8d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FilteredFrobeniusTotalization
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (T : TotalizationTheory P.Target) where
  FrobeniusCompatible :
    ∀ {A B : SourceRealization F P},
      FilteredFrobeniusComparison A B →
        (fabricPrismaticValue P T B.algebra ⟶
          fabricPrismaticValue P T A.algebra) → Prop

  NygaardCompatible :
    ∀ {A B : SourceRealization F P},
      Int →
        (fabricPrismaticValue P T B.algebra ⟶
          fabricPrismaticValue P T A.algebra) → Prop

  frobenius_compatible :
    ∀ {A B : SourceRealization F P}
      (C : FilteredFrobeniusComparison A B),
      FrobeniusCompatible C
        (prismaticReactionMap P T C.algebraMap)

  nygaard_compatible :
    ∀ {A B : SourceRealization F P}
      (C : FilteredFrobeniusComparison A B),
      NygaardCompatible C.filtrationShift
        (prismaticReactionMap P T C.algebraMap)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bcdd6d0cf552246924e49ac46aff66898f7af7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
