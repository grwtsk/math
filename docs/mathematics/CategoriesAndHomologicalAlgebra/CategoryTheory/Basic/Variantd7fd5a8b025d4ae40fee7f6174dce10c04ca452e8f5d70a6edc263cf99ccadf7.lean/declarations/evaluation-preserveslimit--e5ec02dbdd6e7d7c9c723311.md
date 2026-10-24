# evaluation_preservesLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96e6695e56f2c1162faabed8faa0884a73d720396a8e31daa9508d2442bf28b3",
  "kind": "instance",
  "lexical_name": "evaluation_preservesLimit",
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
  "slug": "evaluation-preserveslimit--e5ec02dbdd6e7d7c9c723311",
  "source": {
    "blob": "d2aa0287296fca2bfa9307686f3f67d72ad792a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 204,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5ec02dbdd6e7d7c9c72331194dc5961f154b5a74f6960f11ece03e53fd1fd25",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96e6695e56f2c1162faabed8faa0884a73d720396a8e31daa9508d2442bf28b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance evaluation_preservesLimit (F : J ⥤ K ⥤ C) [∀ k, HasLimit (F.flip.obj k)] (k : K) :
    PreservesLimit F ((evaluation K C).obj k) :=
    -- Porting note: added a let because X was not inferred
  let X : (k : K) → LimitCone (F.flip.obj k) := fun k => getLimitCone (F.flip.obj k)
  preservesLimit_of_preserves_limit_cone (combinedIsLimit _ X) <|
    IsLimit.ofIsoLimit (limit.isLimit _) (evaluateCombinedCones F X k).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2aa0287296fca2bfa9307686f3f67d72ad792a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
