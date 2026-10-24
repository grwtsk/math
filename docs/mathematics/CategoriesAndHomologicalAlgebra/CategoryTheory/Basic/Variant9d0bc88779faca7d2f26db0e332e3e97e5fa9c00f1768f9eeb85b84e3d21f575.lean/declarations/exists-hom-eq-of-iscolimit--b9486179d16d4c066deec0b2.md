# exists_hom_ι_eq_of_isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4e8ee5ab2431625a8f2e29fd8ed32cb4c9e9fbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d0bc88779faca7d2f26db0e332e3e97e5fa9c00f1768f9eeb85b84e3d21f575.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cccac8c-7978-f44d-5c44-6dec142e4ab3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:455cedf7-6580-499e-d57a-369495b3947e",
  "kind": "theorem",
  "lexical_name": "exists_hom_ι_eq_of_isColimit",
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
  "slug": "exists-hom-eq-of-iscolimit--b9486179d16d4c066deec0b2",
  "source": {
    "blob": "c4e8ee5ab2431625a8f2e29fd8ed32cb4c9e9fbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 192,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d0bc88779faca7d2f26db0e332e3e97e5fa9c00f1768f9eeb85b84e3d21f575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9486179d16d4c066deec0b20df1cf437141dc2dce59f312642dc9f7ae272ae5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d0bc88779faca7d2f26db0e332e3e97e5fa9c00f1768f9eeb85b84e3d21f575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:455cedf7-6580-499e-d57a-369495b3947e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_hom_ι_eq_of_isColimit [IsFilteredOrEmpty J] {D : Cocone F} (hD : IsColimit D)
    (x : ToType D.pt) (k : J) :
    ∃ (j : J) (_ : k ⟶ j) (y : ToType (F.obj j)), D.ι.app j y = x := by
  obtain ⟨j, y, rfl⟩ := isColimit_exists_rep F hD x
  refine ⟨IsFiltered.max k j, IsFiltered.leftToMax _ _, F.map (IsFiltered.rightToMax _ _) y, ?_⟩
  rw [← ConcreteCategory.comp_apply]
  congr 1
  simp

end FilteredColimits

end Colimits

end CategoryTheory.Limits.Concrete
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d0bc88779faca7d2f26db0e332e3e97e5fa9c00f1768f9eeb85b84e3d21f575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d0bc88779faca7d2f26db0e332e3e97e5fa9c00f1768f9eeb85b84e3d21f575.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4e8ee5ab2431625a8f2e29fd8ed32cb4c9e9fbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
