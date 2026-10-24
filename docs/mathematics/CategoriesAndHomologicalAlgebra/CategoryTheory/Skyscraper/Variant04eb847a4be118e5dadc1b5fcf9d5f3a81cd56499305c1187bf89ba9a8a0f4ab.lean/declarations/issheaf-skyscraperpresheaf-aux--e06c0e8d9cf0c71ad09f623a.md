# isSheaf_skyscraperPresheaf_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21633b13034d6f52f8fb6a0b6f0e3a01e4f4fc3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04eb847a4be118e5dadc1b5fcf9d5f3a81cd56499305c1187bf89ba9a8a0f4ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17407fda-9b8a-8454-024f-55422cec5856",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29a9f09a-f882-7e36-1f2c-ca1ab46e4c49",
  "kind": "lemma",
  "lexical_name": "isSheaf_skyscraperPresheaf_aux",
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
  "slug": "issheaf-skyscraperpresheaf-aux--e06c0e8d9cf0c71ad09f623a",
  "source": {
    "blob": "21633b13034d6f52f8fb6a0b6f0e3a01e4f4fc3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 152,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variant04eb847a4be118e5dadc1b5fcf9d5f3a81cd56499305c1187bf89ba9a8a0f4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e06c0e8d9cf0c71ad09f623ae0e2bfa76d8573d70195bacf9ad4ed2dffff771a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variant04eb847a4be118e5dadc1b5fcf9d5f3a81cd56499305c1187bf89ba9a8a0f4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29a9f09a-f882-7e36-1f2c-ca1ab46e4c49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isSheaf_skyscraperPresheaf_aux
    {M : A} {X : C} (R : Sieve X) (hR : R ∈ J X)
    (s : Cone (R.arrows.diagram.op ⋙ Φ.skyscraperPresheaf M)) :
    ∃ (l : s.pt ⟶ ∏ᶜ fun (_ : Φ.fiber.obj X) ↦ M),
      ∀ (j : R.arrows.category) (y : Φ.fiber.obj j.obj.left),
        l ≫ Pi.π _ (Φ.fiber.map j.obj.hom y) = s.π.app (op j) ≫ Pi.π _ y := by
  suffices ∀ (x : Φ.fiber.obj X), ∃ (l : s.pt ⟶ M),
      ∀ ⦃Y : C⦄ (g : Y ⟶ X) (hg : R g) (y : Φ.fiber.obj Y) (hy : Φ.fiber.map g y = x),
        s.π.app (op (Presieve.categoryMk _ _ hg)) ≫ Pi.π _ y = l by
    choose l hl using this
    exact ⟨Pi.lift l, fun j y ↦ by simpa using! (hl _ j.obj.hom  j.property y rfl).symm⟩
  intro x
  obtain ⟨Y₁, f₁, hf₁, y₁, hy₁⟩ := Φ.jointly_surjective _ hR x
  refine ⟨s.π.app (op (Presieve.categoryMk _ _ hf₁)) ≫ Pi.π _ y₁,
    fun Y₂ f₂ hf₂ y₂ hy₂ ↦ ?_⟩
  obtain ⟨Z, p₁, p₂, z, fac, hz₁, hz₂⟩ :
      ∃ (Z : C) (p₁ : Z ⟶ Y₁) (p₂ : Z ⟶ Y₂) (z : Φ.fiber.obj Z), p₁ ≫ f₁ = p₂ ≫ f₂ ∧
        Φ.fiber.map p₁ z = y₁ ∧ Φ.fiber.map p₂ z = y₂ := by
    let α₁ : Φ.fiber.elementsMk _ y₁ ⟶ Φ.fiber.elementsMk _ x := ⟨f₁, hy₁⟩
    let α₂ : Φ.fiber.elementsMk _ y₂ ⟶ Φ.fiber.elementsMk _ x := ⟨f₂, hy₂⟩
    obtain ⟨z, q₁, q₂, fac⟩ := IsCofiltered.cospan α₁ α₂
    replace fac := congr_arg Functor.Elements.Hom.hom fac
    refine ⟨z.1, q₁.1, q₂.1, z.2, fac, ?_, ?_⟩
    all_goals rw [Functor.Elements.Hom.map_val] -- was `simp`
  let φ₁ : Presieve.categoryMk _ _ (R.downward_closed hf₁ p₁) ⟶
      Presieve.categoryMk _ _ hf₁ :=
    ObjectProperty.homMk (Over.homMk p₁)
  let φ₂ : Presieve.categoryMk _ _ (R.downward_closed hf₁ p₁) ⟶
      Presieve.categoryMk _ _ hf₂ :=
    ObjectProperty.homMk (Over.homMk p₂)
  simpa [hz₁, hz₂, φ₁, φ₂] using!
    (Cone.w s φ₂.op =≫ Pi.π _ z).trans (Cone.w s φ₁.op =≫ Pi.π _ z).symm

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variant04eb847a4be118e5dadc1b5fcf9d5f3a81cd56499305c1187bf89ba9a8a0f4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variant04eb847a4be118e5dadc1b5fcf9d5f3a81cd56499305c1187bf89ba9a8a0f4ab.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21633b13034d6f52f8fb6a0b6f0e3a01e4f4fc3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
