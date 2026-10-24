# functor_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c76189a1-8e36-4dfd-5a9f-7809cbe5b700",
  "kind": "lemma",
  "lexical_name": "functor_initial",
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
  "slug": "functor-initial--a8d3e400168802bdf97112f1",
  "source": {
    "blob": "0e0bbd31cebb1f65946416b59eabff9910e5dd11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8d3e400168802bdf97112f19a6a50c509c0302bcf71e96ff5d7fc5f04e0eb27",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c76189a1-8e36-4dfd-5a9f-7809cbe5b700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functor_initial (hc : IsLimit c) [∀ i, Epi (c.π.app i)] : Initial (functor c) := by
  let e : I ≌ ULiftHom.{w} (ULift.{w} I) := ULiftHomULiftCategory.equiv _
  suffices (e.inverse ⋙ functor c).Initial from initial_of_equivalence_comp e.inverse (functor c)
  rw [initial_iff_of_isCofiltered (F := e.inverse ⋙ functor c)]
  constructor
  · intro ⟨_, X, (f : c.pt ⟶ _)⟩
    obtain ⟨i, g, h⟩ := exists_hom c hc f
    refine ⟨⟨i⟩, ⟨StructuredArrow.homMk g h.symm⟩⟩
  · intro ⟨_, X, (f : c.pt ⟶ _)⟩ ⟨i⟩ ⟨_, (s : F.obj i ⟶ X), (w : f = c.π.app i ≫ _)⟩
      ⟨_, (s' : F.obj i ⟶ X), (w' : f = c.π.app i ≫ _)⟩
    simp only [functor_obj, functor_map, StructuredArrow.hom_eq_iff, StructuredArrow.mk_right,
      StructuredArrow.comp_right, StructuredArrow.homMk_right]
    refine ⟨⟨i⟩, 𝟙 _, ?_⟩
    simp only [CategoryTheory.Functor.map_id, Category.id_comp]
    rw [w] at w'
    exact toProfinite.map_injective <| Epi.left_cancellation _ _ w'

/--
If the projection maps in the cone are epimorphic and the cone is limiting, then
`Profinite.Extend.functorOp` is final.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0bbd31cebb1f65946416b59eabff9910e5dd11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
