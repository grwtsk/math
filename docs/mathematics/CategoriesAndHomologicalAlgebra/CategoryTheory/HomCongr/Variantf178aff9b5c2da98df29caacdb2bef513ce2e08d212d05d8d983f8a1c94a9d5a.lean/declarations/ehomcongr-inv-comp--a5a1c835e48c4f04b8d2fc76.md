# eHomCongr_inv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02a26e45-7fab-2001-fcd6-accb2e0549c2",
  "kind": "lemma",
  "lexical_name": "eHomCongr_inv_comp",
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
  "slug": "ehomcongr-inv-comp--a5a1c835e48c4f04b8d2fc76",
  "source": {
    "blob": "8ed643711e8deba2c5c513d1d5224a77c4992fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5a1c835e48c4f04b8d2fc76bddc57762e15f473dbb6d6ea716626c4cbe52e35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02a26e45-7fab-2001-fcd6-accb2e0549c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eHomCongr_inv_comp {X Y Z X₁ Y₁ Z₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁)
    (γ : Z ≅ Z₁) (f : X₁ ⟶ Y₁) (g : Y₁ ⟶ Z₁) :
    eHomEquiv V (f ≫ g) ≫ (eHomCongr V α γ).inv =
      (λ_ _).inv ≫ (eHomEquiv V f ≫ (eHomCongr V α β).inv) ▷ _ ≫
        _ ◁ (eHomEquiv V g ≫ (eHomCongr V β γ).inv) ≫ eComp V X Y Z :=
  eHomCongr_comp V α.symm β.symm γ.symm f g

end Iso
end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ed643711e8deba2c5c513d1d5224a77c4992fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
