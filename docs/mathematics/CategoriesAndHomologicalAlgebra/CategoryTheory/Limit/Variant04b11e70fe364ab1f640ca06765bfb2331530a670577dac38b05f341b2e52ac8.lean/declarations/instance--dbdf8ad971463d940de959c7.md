# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3f45986b59afe5f580f3ce8f914cf8624410314a17d468ff922e3371d5daccc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--dbdf8ad971463d940de959c7",
  "source": {
    "blob": "049c8fa5d79fabf55afdf2ab1ea2d9f0f0936cbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant04b11e70fe364ab1f640ca06765bfb2331530a670577dac38b05f341b2e52ac8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbdf8ad971463d940de959c7daef796c028453e755be091615926ef76c461057",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant04b11e70fe364ab1f640ca06765bfb2331530a670577dac38b05f341b2e52ac8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3f45986b59afe5f580f3ce8f914cf8624410314a17d468ff922e3371d5daccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (F : J ⥤ Cat.{v, v}) : Category (limit (F ⋙ Cat.objects) :) where
  Hom X Y := limit (homDiagram X Y)
  id X := Types.Limit.mk.{v, v} (homDiagram X X) (fun _ => 𝟙 _) fun j j' f => by simp
  comp {X Y Z} f g := Types.Limit.mk.{v, v} (homDiagram X Z)
    (fun j => limit.π (homDiagram X Y) j f ≫ limit.π (homDiagram Y Z) j g) fun j j' h => by
    simp [-homDiagram_obj, ← limit.w_apply (homDiagram X Y) h f,
      ← limit.w_apply (homDiagram Y Z) h g]
  id_comp _ := by
    apply Types.limit_ext.{v, v}
    simp [-homDiagram_obj]
  comp_id _ := by
    apply Types.limit_ext.{v, v}
    simp [-homDiagram_obj]
  assoc _ _ _ := by
    apply Types.limit_ext.{v, v}
    simp [-homDiagram_obj]

/-- Auxiliary definition: the limit category. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant04b11e70fe364ab1f640ca06765bfb2331530a670577dac38b05f341b2e52ac8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant04b11e70fe364ab1f640ca06765bfb2331530a670577dac38b05f341b2e52ac8.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `049c8fa5d79fabf55afdf2ab1ea2d9f0f0936cbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
