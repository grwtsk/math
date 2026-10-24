# presheafHom_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e00921909338d1c6864bec7b14cbf351b8752c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 550,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26261c95-9ecc-a994-62e9-31967abcf78c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8dfa3b35-8dce-9df8-8802-d11533e86eb5",
  "kind": "lemma",
  "lexical_name": "presheafHom_naturality",
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
  "slug": "presheafhom-naturality--b7433c995719c47da097b38a",
  "source": {
    "blob": "e00921909338d1c6864bec7b14cbf351b8752c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 550,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7433c995719c47da097b38ad2c104e64118e6f67dfb6ab43ee4c3c39648656b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dfa3b35-8dce-9df8-8802-d11533e86eb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma presheafHom_naturality {P Q : Cᵒᵖ ⥤ Type max w v₁ v₂} (f : P ⟶ Q) :
    presheafHom.{w} φ P ≫ Functor.whiskerLeft F.op (G.map f) = f ≫ presheafHom φ Q :=
  hom_ext_uliftYoneda.{max w v₂} (fun X p ↦ uliftYonedaEquiv.injective (by
    rw [← assoc p f, uliftYonedaEquiv_ι_presheafHom, ← assoc,
      uliftYonedaEquiv_comp, uliftYonedaEquiv_ι_presheafHom,
      Functor.map_comp]
    dsimp))

variable [∀ (P : Cᵒᵖ ⥤ Type max w v₁ v₂), F.op.HasLeftKanExtension P]

set_option backward.defeqAttrib.useBackward true in
/-- Given functors `F : C ⥤ D` and `G : (Cᵒᵖ ⥤ Type max w v₁ v₂) ⥤ (Dᵒᵖ ⥤ Type max w v₁ v₂)`,
and a natural transformation `φ : F ⋙ uliftYoneda ⟶ uliftYoneda ⋙ G`, this is
the canonical natural transformation `F.op.lan ⟶ G`, which is part of the
fact that `F.op.lan : (Cᵒᵖ ⥤ Type max w v₁ v₂) ⥤ Dᵒᵖ ⥤ Type max w v₁ v₂`
is the left Kan extension of `F ⋙ uliftYoneda : C ⥤ Dᵒᵖ ⥤ Type max w v₁ v₂`
along `uliftYoneda : C ⥤ Cᵒᵖ ⥤ Type max w v₁ v₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00921909338d1c6864bec7b14cbf351b8752c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
