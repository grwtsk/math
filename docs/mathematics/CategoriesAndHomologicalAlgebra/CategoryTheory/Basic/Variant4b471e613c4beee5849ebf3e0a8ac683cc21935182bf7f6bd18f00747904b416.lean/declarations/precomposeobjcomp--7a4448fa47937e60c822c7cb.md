# precomposeObjComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15d2ed8cfead2377af3f9b15a537e5245ba6fdcebbba6ec35e301f4d33553658",
  "kind": "def",
  "lexical_name": "precomposeObjComp",
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
  "slug": "precomposeobjcomp--7a4448fa47937e60c822c7cb",
  "source": {
    "blob": "de777365098ac834b0c63e7328fe61d84bf29a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 659,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a4448fa47937e60c822c7cbf773d913947e7db538092660719cf9e6a32337ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15d2ed8cfead2377af3f9b15a537e5245ba6fdcebbba6ec35e301f4d33553658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def precomposeObjComp (U : X ⥤ Y) (V : Y ⥤ Z) :
    (precompose F G).obj (U ⋙ V) ≅
    (precompose F G).obj V ⋙ (precompose F G).obj U :=
  NatIso.ofComponents fun _ =>
    CatCommSqOver.mkIso
      (Functor.associator _ _ _)
      (Functor.associator _ _ _)

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de777365098ac834b0c63e7328fe61d84bf29a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
