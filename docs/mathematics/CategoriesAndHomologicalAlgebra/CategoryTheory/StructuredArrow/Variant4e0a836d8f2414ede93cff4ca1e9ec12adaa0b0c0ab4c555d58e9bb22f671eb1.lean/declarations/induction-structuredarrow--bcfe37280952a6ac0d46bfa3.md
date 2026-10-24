# induction_structuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4df6e58fdffa0722c26de1594ad1012faa1d9a62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e0a836d8f2414ede93cff4ca1e9ec12adaa0b0c0ab4c555d58e9bb22f671eb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2cb3daa4-3aaa-a550-3de3-f7b5fde2d9f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b69c28b0-21d7-2d39-77bf-0139d308c5a4",
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
  "slug": "induction-structuredarrow--bcfe37280952a6ac0d46bfa3",
  "source": {
    "blob": "4df6e58fdffa0722c26de1594ad1012faa1d9a62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant4e0a836d8f2414ede93cff4ca1e9ec12adaa0b0c0ab4c555d58e9bb22f671eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcfe37280952a6ac0d46bfa3f2f1b2da5759bb029163db0b3acd0d1f670779c7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant4e0a836d8f2414ede93cff4ca1e9ec12adaa0b0c0ab4c555d58e9bb22f671eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b69c28b0-21d7-2d39-77bf-0139d308c5a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–123.

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
  · convert! hP₀
    simp
  · intro Y₁ Y₂ f φ hφ
    convert! hP₁ f (homEquiv W W.Q L φ) hφ
    simp [homEquiv_comp]
  · intro Y₁ Y₂ w hw φ hφ
    convert! hP₂ w hw (homEquiv W W.Q L φ) hφ
    simp [homEquiv_comp, homEquiv_isoOfHom_inv]

end

section

variable (L : C ⥤ D) (W : MorphismProperty C) [L.IsLocalization W] {Y : C}
  (P : CostructuredArrow L (L.obj Y) → Prop)

@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant4e0a836d8f2414ede93cff4ca1e9ec12adaa0b0c0ab4c555d58e9bb22f671eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant4e0a836d8f2414ede93cff4ca1e9ec12adaa0b0c0ab4c555d58e9bb22f671eb1.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4df6e58fdffa0722c26de1594ad1012faa1d9a62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
