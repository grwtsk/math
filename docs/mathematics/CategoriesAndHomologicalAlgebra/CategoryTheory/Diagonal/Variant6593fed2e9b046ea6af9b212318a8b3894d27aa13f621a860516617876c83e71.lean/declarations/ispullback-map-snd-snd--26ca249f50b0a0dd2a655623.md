# isPullback_map_snd_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f767fcf-3673-4c7b-d123-e3cc5f4f023d",
  "kind": "lemma",
  "lexical_name": "isPullback_map_snd_snd",
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
  "slug": "ispullback-map-snd-snd--26ca249f50b0a0dd2a655623",
  "source": {
    "blob": "d73412922321288c4f17e47bc4ab4563d9986e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 502,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26ca249f50b0a0dd2a655623e3c89735d684d8e493d87f47efcbeb7ca1c6dc78",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f767fcf-3673-4c7b-d123-e3cc5f4f023d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPullback_map_snd_snd {X Y Z S : C} (f : X ⟶ S) (g : Y ⟶ S) (h : Z ⟶ S) :
    IsPullback (pullback.map _ _ _ _ (pullback.snd f g) (pullback.snd f h) f
        pullback.condition pullback.condition)
      (pullback.fst (pullback.fst f g) (pullback.fst f h))
      (pullback.fst g h) (pullback.snd f g) := by
  refine ⟨⟨by simp⟩, ⟨PullbackCone.IsLimit.mk _ ?_ ?_ ?_ ?_⟩⟩
  · intro c
    refine pullback.lift c.snd
        (pullback.lift (c.snd ≫ pullback.fst _ _) (c.fst ≫ pullback.snd _ _) ?_) ?_
    · simp [pullback.condition, ← c.condition_assoc]
    · simp
  · intro c
    apply pullback.hom_ext <;> simp [c.condition]
  · intro c
    apply pullback.hom_ext <;> simp
  · intro c m hfst hsnd
    refine pullback.hom_ext (by simpa) ?_
    apply pullback.hom_ext <;> simp [← hsnd, pullback.condition, ← hfst]

end Diagonal

section Codiagonal

namespace pushout

variable {X Y : C} (f : X ⟶ Y) [HasPushout f f]

/-- The codiagonal object of a morphism `f : X ⟶ Y` is `pushout f f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d73412922321288c4f17e47bc4ab4563d9986e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
