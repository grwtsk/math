# preadditiveYoneda_homologySequenceδ_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb551b821cabacf0cbe05a24d234e969123c98c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff38033f-7965-8d54-77b3-9052922f2ad2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:adb8c8be-afc0-efde-6aaa-0fc5441c2158",
  "kind": "lemma",
  "lexical_name": "preadditiveYoneda_homologySequenceδ_apply",
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
  "slug": "preadditiveyoneda-homologysequence-apply--17050778a55c6ed8c92ea361",
  "source": {
    "blob": "fb551b821cabacf0cbe05a24d234e969123c98c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17050778a55c6ed8c92ea36120b1888b8fa43e35d6036ce3fc471815ae513884",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adb8c8be-afc0-efde-6aaa-0fc5441c2158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preadditiveYoneda_homologySequenceδ_apply
    (T : Triangle C) (n₀ n₁ : ℤ) (h : n₀ + 1 = n₁) {B : C} (x : T.obj₁ ⟶ B⟦n₀⟧) :
    (preadditiveYoneda.obj B).homologySequenceδ
      ((triangleOpEquivalence _).functor.obj (op T)) n₀ n₁ h x =
      T.mor₃ ≫ x⟦(1 : ℤ)⟧' ≫ (shiftFunctorAdd' C n₀ 1 n₁ h).inv.app B := by
  simp only [Functor.homologySequenceδ, preadditiveYoneda_shiftMap_apply,
    ShiftedHom.comp, ← Category.assoc]
  congr 2
  apply (ShiftedHom.opEquiv _).injective
  rw [Equiv.apply_symm_apply]
  rfl

end

end Pretriangulated

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb551b821cabacf0cbe05a24d234e969123c98c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
