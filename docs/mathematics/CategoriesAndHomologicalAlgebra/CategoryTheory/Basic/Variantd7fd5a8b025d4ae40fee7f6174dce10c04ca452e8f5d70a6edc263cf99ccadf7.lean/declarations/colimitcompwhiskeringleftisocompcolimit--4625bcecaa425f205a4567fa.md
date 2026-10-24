# colimitCompWhiskeringLeftIsoCompColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4699fd13a2c9b564f4600fbf9218a175033a3628f7151e3356526fb3ca947985",
  "kind": "def",
  "lexical_name": "colimitCompWhiskeringLeftIsoCompColimit",
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
  "slug": "colimitcompwhiskeringleftisocompcolimit--4625bcecaa425f205a4567fa",
  "source": {
    "blob": "d2aa0287296fca2bfa9307686f3f67d72ad792a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 352,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4625bcecaa425f205a4567fab2c9da2b6548a5c46aadd44bb1f6656de87a96b5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4699fd13a2c9b564f4600fbf9218a175033a3628f7151e3356526fb3ca947985`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitCompWhiskeringLeftIsoCompColimit (F : J ⥤ K ⥤ C) (G : D ⥤ K) [HasColimitsOfShape J C] :
    colimit (F ⋙ (whiskeringLeft _ _ _).obj G) ≅ G ⋙ colimit F :=
  NatIso.ofComponents (fun j =>
    colimitObjIsoColimitCompEvaluation (F ⋙ (whiskeringLeft _ _ _).obj G) j ≪≫
      HasColimit.isoOfNatIso (isoWhiskerLeft F (whiskeringLeftCompEvaluation G j)) ≪≫
      (colimitObjIsoColimitCompEvaluation F (G.obj j)).symm)

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2aa0287296fca2bfa9307686f3f67d72ad792a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
