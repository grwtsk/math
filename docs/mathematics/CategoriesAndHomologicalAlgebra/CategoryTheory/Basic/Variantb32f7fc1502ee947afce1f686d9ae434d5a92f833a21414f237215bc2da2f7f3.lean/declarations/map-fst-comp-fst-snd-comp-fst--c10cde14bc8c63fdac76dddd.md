# map_fst_comp_fst_snd_comp_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61e45d3b910dac2738ec3e862399af488af805a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d931ec71-6d6f-6b32-a44c-a79ebb0215ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01a49deb-7e1d-7a6c-a5c7-6b3d6650b9a9",
  "kind": "lemma",
  "lexical_name": "map_fst_comp_fst_snd_comp_fst",
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
  "slug": "map-fst-comp-fst-snd-comp-fst--c10cde14bc8c63fdac76dddd",
  "source": {
    "blob": "61e45d3b910dac2738ec3e862399af488af805a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 411,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c10cde14bc8c63fdac76ddddd7a2d99430127a3735c51eeb051f28f86c1a0301",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01a49deb-7e1d-7a6c-a5c7-6b3d6650b9a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_fst_comp_fst_snd_comp_fst {X Y Z U S : C} (f : X ⟶ S) (g : Y ⟶ S) (i : Z ⟶ S)
    [HasPullback i g] (h : U ⟶ pullback i g) [HasPullback f g] [HasPullback (pullback.snd f g)
    (h ≫ pullback.snd i g)] [HasPullback f i] :
    IsPullback
      (pullback.map (pullback.snd f g) (h ≫ pullback.snd i g) f i (pullback.fst f g)
        (h ≫ pullback.fst i g) g
        pullback.condition.symm (by simp [pullback.condition]))
      (pullback.snd (pullback.snd f g) (h ≫ pullback.snd i g))
      (pullback.snd f i)
      (h ≫ pullback.fst i g) :=
  paste_twist_right (.of_hasPullback f g) (.of_hasPullback f i) (h ≫ pullback.snd _ _)
    (h ≫ pullback.fst _ _) (by simp [pullback.condition]) _ _ (.of_hasPullback _ _) (by simp)
    (by simp)

end IsPullback
namespace IsPushout

variable {Z X Y P : C} {f : Z ⟶ X} {g : Z ⟶ Y} {inl : X ⟶ P} {inr : Y ⟶ P}

set_option backward.defeqAttrib.useBackward true in
/-- If `c` is a colimiting binary coproduct cocone, and we have an initial object,
then we have `IsPushout 0 0 c.inl c.inr`
(where each `0` is the unique morphism from the initial object). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61e45d3b910dac2738ec3e862399af488af805a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
