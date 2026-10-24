# ιFunctorObj_extension'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0f358d4-408c-7d1c-d4ce-3231e9d399f9",
  "kind": "lemma",
  "lexical_name": "ιFunctorObj_extension'",
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
  "slug": "functorobj-extension--2ffa3d72bf55cb9d6c0efd30",
  "source": {
    "blob": "60244614a926721b8753c8009d06de67b73c977c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 306,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ffa3d72bf55cb9d6c0efd30d39d612e2c25164dab6ae47d8af6e1b678db732d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0f358d4-408c-7d1c-d4ce-3231e9d399f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιFunctorObj_extension' {X' S' Z' : C} (πX' : X' ⟶ S') (ι' : X' ⟶ Z') (πZ' : Z' ⟶ S')
    (fac' : ι' ≫ πZ' = πX') (eX : X' ≅ X) (eS : S' ≅ S) (eZ : Z' ≅ functorObj f πX)
    (commι : ι' ≫ eZ.hom = eX.hom ≫ ιFunctorObj f πX)
    (commπ : πZ' ≫ eS.hom = eZ.hom ≫ πFunctorObj f πX)
    {i : I} (t : A i ⟶ X') (b : B i ⟶ S') (fac : t ≫ πX' = f i ≫ b) :
    ∃ (l : B i ⟶ Z'), f i ≫ l = t ≫ ι' ∧ l ≫ πZ' = b := by
  obtain ⟨l, hl₁, hl₂⟩ :=
    ιFunctorObj_extension f (πX := πX) (i := i) (t ≫ eX.hom) (b ≫ eS.hom) ⟨by
      rw [assoc, ← ιFunctorObj_πFunctorObj f πX, ← reassoc_of% commι, ← commπ,
        reassoc_of% fac', reassoc_of% fac]⟩
  refine ⟨l ≫ eZ.inv, ?_, ?_⟩
  · rw [reassoc_of% hl₁, ← reassoc_of% commι, eZ.hom_inv_id, comp_id]
  · rw [← cancel_mono eS.hom, assoc, assoc, commπ, eZ.inv_hom_id_assoc, hl₂]

end

variable [HasPushouts C]
  [∀ {X S : C} (πX : X ⟶ S), HasColimitsOfShape (Discrete (FunctorObjIndex f πX)) C]

set_option backward.isDefEq.respectTransparency false in
set_option backward.defeqAttrib.useBackward true in
/-- The functor `Arrow C ⥤ Arrow C` that is constructed in order to apply the small
object argument to a family of morphisms `f i : A i ⟶ B i`, see the introduction
of the file `Mathlib/CategoryTheory/SmallObject/Construction.lean` -/
@[simps! obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60244614a926721b8753c8009d06de67b73c977c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
