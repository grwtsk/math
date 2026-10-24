# presheafHom_isSheafFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5598ac0240a6fed722c1a5081473d984680ca477",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec4a6352-9900-9871-a493-94cdec5cfbb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:432a99f4-08b9-3c80-14a4-0cc0fc760ac9",
  "kind": "lemma",
  "lexical_name": "presheafHom_isSheafFor",
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
  "slug": "presheafhom-issheaffor--8931b9b88ed3c4ffc08a09ca",
  "source": {
    "blob": "5598ac0240a6fed722c1a5081473d984680ca477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 176,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8931b9b88ed3c4ffc08a09cad8931b30a2efe940c0fc3c99825cac7ecb88baa5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:432a99f4-08b9-3c80-14a4-0cc0fc760ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma presheafHom_isSheafFor :
    Presieve.IsSheafFor (presheafHom F G) S.arrows := by
  intro x hx
  apply existsUnique_of_exists_of_unique
  · refine ⟨
      { app := fun Y => app hG x hx Y.unop.hom
        naturality := by
          rintro ⟨Y₁ : Over X⟩ ⟨Y₂ : Over X⟩ ⟨φ : Y₂ ⟶ Y₁⟩
          apply (hG Y₂.hom).hom_ext
          rintro ⟨Z : Over Y₂.left, hZ⟩
          dsimp
          rw [assoc, assoc, app_cond hG x hx Y₂.hom Z.hom hZ, ← G.map_comp, ← op_comp]
          rw [app_cond hG x hx Y₁.hom (Z.hom ≫ φ.left) (by simpa using hZ),
            ← F.map_comp_assoc, op_comp]
          congr 3
          simp }, ?_⟩
    rw [PresheafHom.isAmalgamation_iff _ _ hx]
    intro Y g hg
    dsimp
    have H := app_cond hG x hx g (𝟙 _) (by simpa using hg)
    rw [op_id, G.map_id, comp_id, F.map_id, id_comp] at H
    exact H.trans (by congr; simp)
  · intro y₁ y₂ hy₁ hy₂
    rw [PresheafHom.isAmalgamation_iff _ _ hx] at hy₁ hy₂
    apply NatTrans.ext
    ext ⟨Y : Over X⟩
    apply (hG Y.hom).hom_ext
    rintro ⟨Z : Over Y.left, hZ⟩
    dsimp
    let φ : Over.mk (Z.hom ≫ Y.hom) ⟶ Y := Over.homMk Z.hom
    refine (y₁.naturality φ.op).symm.trans (Eq.trans ?_ (y₂.naturality φ.op))
    rw [(hy₁ _ _ hZ), ← ((hy₂ _ _ hZ))]

end

variable (F G)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5598ac0240a6fed722c1a5081473d984680ca477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
