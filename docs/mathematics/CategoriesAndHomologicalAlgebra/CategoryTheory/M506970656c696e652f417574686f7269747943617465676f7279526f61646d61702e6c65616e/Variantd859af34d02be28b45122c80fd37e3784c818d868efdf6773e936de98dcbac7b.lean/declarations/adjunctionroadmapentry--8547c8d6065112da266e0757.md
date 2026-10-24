# AdjunctionRoadmapEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92e4e6f3af94913b0aa990477ce1d46f247a6318a2e655886fb5462c87729c52",
  "kind": "structure",
  "lexical_name": "AdjunctionRoadmapEntry",
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
  "slug": "adjunctionroadmapentry--8547c8d6065112da266e0757",
  "source": {
    "blob": "5f9d344bdf6b79a756ca21dbe84c219a9c601d85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M506970656c696e652f417574686f7269747943617465676f7279526f61646d61702e6c65616e/Variantd859af34d02be28b45122c80fd37e3784c818d868efdf6773e936de98dcbac7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8547c8d6065112da266e07572f877a521dd924f60a7c0df9fc9a326b4d2b4274",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M506970656c696e652f417574686f7269747943617465676f7279526f61646d61702e6c65616e/Variantd859af34d02be28b45122c80fd37e3784c818d868efdf6773e936de98dcbac7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92e4e6f3af94913b0aa990477ce1d46f247a6318a2e655886fb5462c87729c52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdjunctionRoadmapEntry where
  claimId : String
  leftFunctor : RoadmapRequirement
  rightFunctor : RoadmapRequirement
  homBijectionOrUnitCounit : RoadmapRequirement
  naturalityOrTriangleLaws : RoadmapRequirement
  artifact : RoadmapRequirement
  status : AdmissionStatus
  failureMode : AuthorityCategoryFailureMode
  deriving Repr

/-- A candidate component family separated from the refused naturality claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M506970656c696e652f417574686f7269747943617465676f7279526f61646d61702e6c65616e/Variantd859af34d02be28b45122c80fd37e3784c818d868efdf6773e936de98dcbac7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M506970656c696e652f417574686f7269747943617465676f7279526f61646d61702e6c65616e/Variantd859af34d02be28b45122c80fd37e3784c818d868efdf6773e936de98dcbac7b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f9d344bdf6b79a756ca21dbe84c219a9c601d85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
