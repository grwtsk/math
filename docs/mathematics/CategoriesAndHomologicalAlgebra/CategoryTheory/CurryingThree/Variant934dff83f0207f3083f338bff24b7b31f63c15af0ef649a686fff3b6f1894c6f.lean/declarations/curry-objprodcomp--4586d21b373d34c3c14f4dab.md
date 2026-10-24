# curry₃ObjProdComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b734a876007c4e1bc43389e96ff76989b5fd3e9cf78f49c61315334a57c92685",
  "kind": "def",
  "lexical_name": "curry₃ObjProdComp",
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
  "slug": "curry-objprodcomp--4586d21b373d34c3c14f4dab",
  "source": {
    "blob": "15628787f3423ab569546c759701383cb2354fd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4586d21b373d34c3c14f4dabf6e77d519384389ef1109a74c42a398651a63f35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b734a876007c4e1bc43389e96ff76989b5fd3e9cf78f49c61315334a57c92685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def curry₃ObjProdComp (F₁ : C₁ ⥤ D₁) (F₂ : C₂ ⥤ D₂) (F₃ : C₃ ⥤ D₃) (G : D₁ × D₂ × D₃ ⥤ E) :
    curry₃.obj (F₁.prod (F₂.prod F₃) ⋙ G) ≅
      F₁ ⋙ curry₃.obj G ⋙ ((whiskeringLeft₂ E).obj F₂).obj F₃ :=
  NatIso.ofComponents
    (fun X₁ ↦ NatIso.ofComponents
      (fun X₂ ↦ NatIso.ofComponents (fun X₃ ↦ Iso.refl _)))

/-- `bifunctorComp₁₂` can be described in terms of the curryfication of functors. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15628787f3423ab569546c759701383cb2354fd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
