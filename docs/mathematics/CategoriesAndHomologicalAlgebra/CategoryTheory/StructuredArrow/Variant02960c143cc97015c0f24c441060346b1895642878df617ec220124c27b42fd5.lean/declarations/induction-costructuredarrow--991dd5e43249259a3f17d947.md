# induction_costructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26cc98de-aa9b-962c-40dd-fa9eab9b29b6",
  "kind": "lemma",
  "lexical_name": "induction_costructuredArrow",
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
  "slug": "induction-costructuredarrow--991dd5e43249259a3f17d947",
  "source": {
    "blob": "959198ca7fd8ac204b96540b81a9e1180e1ddc03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:991dd5e43249259a3f17d947b5bc973759c58fc3008e763dd2b65f178ba639a1",
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

Occurrence: `result:26cc98de-aa9b-962c-40dd-fa9eab9b29b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma induction_costructuredArrow
    (hP₀ : P (CostructuredArrow.mk (𝟙 (L.obj Y))))
    (hP₁ : ∀ ⦃X₁ X₂ : C⦄ (f : X₁ ⟶ X₂) (φ : L.obj X₂ ⟶ L.obj Y),
      P (CostructuredArrow.mk φ) → P (CostructuredArrow.mk (L.map f ≫ φ)))
    (hP₂ : ∀ ⦃X₁ X₂ : C⦄ (w : X₁ ⟶ X₂) (hw : W w) (φ : L.obj X₁ ⟶ L.obj Y),
      P (CostructuredArrow.mk φ) → P (CostructuredArrow.mk ((isoOfHom L W w hw).inv ≫ φ)))
    (g : CostructuredArrow L (L.obj Y)) : P g := by
  let g' := StructuredArrow.mk (T := L.op) (Y := op g.left) g.hom.op
  show P (CostructuredArrow.mk g'.hom.unop)
  induction g' using induction_structuredArrow L.op W.op with
  | hP₀ => exact hP₀
  | hP₁ f φ hφ => exact hP₁ f.unop φ.unop hφ
  | hP₂ w hw φ hφ => simpa [isoOfHom_op_inv L W w hw] using hP₂ w.unop hw φ.unop hφ

end

end Localization

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959198ca7fd8ac204b96540b81a9e1180e1ddc03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
