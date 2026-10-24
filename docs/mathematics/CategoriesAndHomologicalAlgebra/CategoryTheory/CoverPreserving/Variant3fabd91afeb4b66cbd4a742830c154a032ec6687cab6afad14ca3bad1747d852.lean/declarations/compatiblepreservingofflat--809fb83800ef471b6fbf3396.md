# compatiblePreservingOfFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "291509199c663c715cca14a415af1a3b9770260e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c2a1505-b4d3-a499-28e3-2c902d143108",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fe8156f-8dc7-7712-fef8-4c13fa03e7af",
  "kind": "theorem",
  "lexical_name": "compatiblePreservingOfFlat",
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
  "slug": "compatiblepreservingofflat--809fb83800ef471b6fbf3396",
  "source": {
    "blob": "291509199c663c715cca14a415af1a3b9770260e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 117,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:809fb83800ef471b6fbf3396193ea20df08fff444bb07ac6b064be2316656491",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fe8156f-8dc7-7712-fef8-4c13fa03e7af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compatiblePreservingOfFlat {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
    (K : GrothendieckTopology D) (G : C ⥤ D) [RepresentablyFlat G] : CompatiblePreserving K G := by
  constructor
  intro ℱ Z T x hx Y₁ Y₂ X f₁ f₂ g₁ g₂ hg₁ hg₂ e
  -- First, `f₁` and `f₂` form a cone over `cospan g₁ g₂ ⋙ u`.
  let c : Cone (cospan g₁ g₂ ⋙ G) :=
    (Cone.postcompose (diagramIsoCospan (cospan g₁ g₂ ⋙ G)).inv).obj (PullbackCone.mk f₁ f₂ e)
  /-
    This can then be viewed as a cospan of structured arrows, and we may obtain an arbitrary cone
    over it since `StructuredArrow W u` is cofiltered.
    Then, it suffices to prove that it is compatible when restricted onto `u(c'.X.right)`.
    -/
  let c' := IsCofiltered.cone (c.toStructuredArrow ⋙ StructuredArrow.pre _ _ _)
  have eq₁ : f₁ = (c'.pt.hom ≫ G.map (c'.π.app left).right) ≫ eqToHom (by simp) := by simp [c]
  have eq₂ : f₂ = (c'.pt.hom ≫ G.map (c'.π.app right).right) ≫ eqToHom (by simp) := by simp [c]
  conv_lhs => rw [eq₁]
  conv_rhs => rw [eq₂]
  simp only [c, op_comp, Functor.map_comp, types_comp_apply, eqToHom_op, eqToHom_map]
  apply congr_arg -- Porting note: was `congr 1` which for some reason doesn't do anything here
  -- despite goal being of the form f a = f b, with f=`ℱ.val.map (Quiver.Hom.op c'.pt.hom)`
  /-
    Since everything now falls in the image of `u`,
    the result follows from the compatibility of `x` in the image of `u`.
    -/
  injection c'.π.naturality WalkingCospan.Hom.inl with _ e₁
  injection c'.π.naturality WalkingCospan.Hom.inr with _ e₂
  exact hx (c'.π.app left).right (c'.π.app right).right hg₁ hg₂ (e₁.symm.trans e₂)

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `291509199c663c715cca14a415af1a3b9770260e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
