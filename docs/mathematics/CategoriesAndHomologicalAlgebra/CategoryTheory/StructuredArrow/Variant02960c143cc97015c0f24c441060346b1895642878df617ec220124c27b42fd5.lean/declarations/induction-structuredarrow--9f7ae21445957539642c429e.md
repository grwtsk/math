# induction_structuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc13dbac-ab73-e595-7a39-19eb67d463dd",
  "kind": "lemma",
  "lexical_name": "induction_structuredArrow",
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
  "slug": "induction-structuredarrow--9f7ae21445957539642c429e",
  "source": {
    "blob": "959198ca7fd8ac204b96540b81a9e1180e1ddc03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f7ae21445957539642c429e2271cfe1108cc40d2f314829fb4036c1a5bc61d4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc13dbac-ab73-e595-7a39-19eb67d463dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma induction_structuredArrow
    (hP₀ : P (StructuredArrow.mk (𝟙 (L.obj X))))
    (hP₁ : ∀ ⦃Y₁ Y₂ : C⦄ (f : Y₁ ⟶ Y₂) (φ : L.obj X ⟶ L.obj Y₁),
      P (StructuredArrow.mk φ) → P (StructuredArrow.mk (φ ≫ L.map f)))
    (hP₂ : ∀ ⦃Y₁ Y₂ : C⦄ (w : Y₁ ⟶ Y₂) (hw : W w) (φ : L.obj X ⟶ L.obj Y₂),
      P (StructuredArrow.mk φ) → P (StructuredArrow.mk (φ ≫ (isoOfHom L W w hw).inv)))
    (g : StructuredArrow (L.obj X) L) : P g := by
  let P' : StructuredArrow (W.Q.obj X) W.Q → Prop :=
    fun g ↦ P (structuredArrowEquiv W W.Q L g)
  rw [← (structuredArrowEquiv W W.Q L).apply_symm_apply g]
  apply induction_structuredArrow' W P'
  · convert hP₀
    simp
  · intros Y₁ Y₂ f φ hφ
    convert hP₁ f (homEquiv W W.Q L φ) hφ
    simp [homEquiv_comp]
  · intros Y₁ Y₂ w hw φ hφ
    convert hP₂ w hw (homEquiv W W.Q L φ) hφ
    simp [homEquiv_comp, homEquiv_isoOfHom_inv]

end

section

variable (L : C ⥤ D) (W : MorphismProperty C) [L.IsLocalization W] {Y : C}
  (P : CostructuredArrow L (L.obj Y) → Prop)

@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959198ca7fd8ac204b96540b81a9e1180e1ddc03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
