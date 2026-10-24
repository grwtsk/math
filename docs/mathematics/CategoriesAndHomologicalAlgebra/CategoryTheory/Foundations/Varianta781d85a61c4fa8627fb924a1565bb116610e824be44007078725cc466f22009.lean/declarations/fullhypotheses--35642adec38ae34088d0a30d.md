# FullHypotheses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08c1125c56958cee5596c1a30fef6da09a4b3dd011bc8434e3fd9ff00eaf7669",
  "kind": "structure",
  "lexical_name": "FullHypotheses",
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
  "slug": "fullhypotheses--35642adec38ae34088d0a30d",
  "source": {
    "blob": "764e5d0f985b6fea4190a92291bb149d380759c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 246,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Varianta781d85a61c4fa8627fb924a1565bb116610e824be44007078725cc466f22009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35642adec38ae34088d0a30d8e8a62e285e50a2233aca70720ba58122acad643",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Varianta781d85a61c4fa8627fb924a1565bb116610e824be44007078725cc466f22009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08c1125c56958cee5596c1a30fef6da09a4b3dd011bc8434e3fd9ff00eaf7669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FullHypotheses (S : RealizationSystem) : Prop where
  baseCompleteNonarchRankOne : S.P.baseCompleteNonarchRankOne
  algebraicFiniteType : S.P.algebraicFiniteType
  algebraicSeparated : S.P.algebraicSeparated
  affinoidTopologicallyFiniteType : S.P.affinoidTopologicallyFiniteType
  huberCompleteTate : S.P.huberCompleteTate
  berkovichProfile : S.P.berkovichProfile
  adicProfile : S.P.adicProfile
  rigidProfile : S.P.rigidProfile
  formalProfile : S.P.formalProfile
  completeAdicPair : S.P.completeAdicPair
  tensorAndBaseChangeProfile : S.P.tensorAndBaseChangeProfile

/--
All conclusions needed for the declared functorially closed system.

The two `sheafy...` fields intentionally record two distinct evidential routes
to the same proposition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Varianta781d85a61c4fa8627fb924a1565bb116610e824be44007078725cc466f22009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Varianta781d85a61c4fa8627fb924a1565bb116610e824be44007078725cc466f22009.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `764e5d0f985b6fea4190a92291bb149d380759c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
