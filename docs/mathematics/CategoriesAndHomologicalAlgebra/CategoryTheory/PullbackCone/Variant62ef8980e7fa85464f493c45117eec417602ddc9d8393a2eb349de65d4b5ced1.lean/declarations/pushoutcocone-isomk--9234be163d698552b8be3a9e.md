# PushoutCocone.isoMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78cf5ece9af6b4783966956334209fe41045c4baa0151c2e1084f4a684982f1c",
  "kind": "def",
  "lexical_name": "PushoutCocone.isoMk",
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
  "slug": "pushoutcocone-isomk--9234be163d698552b8be3a9e",
  "source": {
    "blob": "50302b8925ae8f932fb5cf5c5c3166ade9d35d11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 519,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant62ef8980e7fa85464f493c45117eec417602ddc9d8393a2eb349de65d4b5ced1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9234be163d698552b8be3a9e7b4f315f0fbd595f6d9f39818441ce8373c0a636",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant62ef8980e7fa85464f493c45117eec417602ddc9d8393a2eb349de65d4b5ced1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78cf5ece9af6b4783966956334209fe41045c4baa0151c2e1084f4a684982f1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PushoutCocone.isoMk {F : WalkingSpan ⥤ C} (t : Cocone F) :
    (Cocone.precompose (diagramIsoSpan.{v} _).inv).obj t ≅
      PushoutCocone.mk (t.ι.app WalkingSpan.left) (t.ι.app WalkingSpan.right)
        ((t.ι.naturality fst).trans (t.ι.naturality snd).symm) :=
  Cocone.ext (Iso.refl _) <| by
    rintro (_ | (_ | _)) <;> simp

end Limits

namespace CommSq
open Limits
variable {C : Type*} [Category* C]

variable {W X Y Z : C} {f : W ⟶ X} {g : W ⟶ Y} {h : X ⟶ Z} {i : Y ⟶ Z}

/-- The (not necessarily limiting) `PullbackCone h i` implicit in the statement
that we have `CommSq f g h i`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant62ef8980e7fa85464f493c45117eec417602ddc9d8393a2eb349de65d4b5ced1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant62ef8980e7fa85464f493c45117eec417602ddc9d8393a2eb349de65d4b5ced1.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50302b8925ae8f932fb5cf5c5c3166ade9d35d11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
