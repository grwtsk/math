# preservesLimit_flip_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:116a3b7b-e83b-72ee-9bd0-b6f19a675cb7",
  "kind": "lemma",
  "lexical_name": "preservesLimit_flip_obj",
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
  "slug": "preserveslimit-flip-obj--fb3af8154f990fd92a74d08f",
  "source": {
    "blob": "31c8f460477acd9bd59ac52cf60e28d112fc9dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedLimits/Variantc4c07d310c466f7b0b4d8642054451d8325fcbe52cc2f0bd85b02f181224cec6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb3af8154f990fd92a74d08f908239f46dc537a240bcf5d135a8e6b8876233df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedLimits/Variantc4c07d310c466f7b0b4d8642054451d8325fcbe52cc2f0bd85b02f181224cec6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:116a3b7b-e83b-72ee-9bd0-b6f19a675cb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesLimit_flip_obj (P : J ⥤ C₁ᵒᵖ)
    [∀ (X₂ : C₂), PreservesColimit P.leftOp (F.flip.obj X₂)] (X₃ : C₃) :
    PreservesLimit P (G.flip.obj X₃) where
  preserves {c} hc := ⟨by
    let cocone (s : Cone (P ⋙ G.flip.obj X₃)) :
        Cocone (P.leftOp ⋙ F.flip.obj s.pt) :=
      { pt := X₃
        ι.app j := adj₂.homEquiv.symm (s.π.app j.unop)
        ι.naturality _ _ f := by
          simp [← s.w f.unop, dsimp% adj₂.homEquiv_symm_naturality_one (P.map f.unop).unop] }
    let hc' (s : Cone (P ⋙ G.flip.obj X₃)) :=
      isColimitOfPreserves (F.flip.obj s.pt) (isColimitCoconeLeftOpOfCone _ hc)
    exact {
      lift s := adj₂.homEquiv ((hc' s).desc (cocone s))
      fac s j := by
        dsimp
        rw [← dsimp% adj₂.homEquiv_naturality_one (c.π.app j).unop,
          dsimp% (hc' s).fac (cocone s) (op j)]
        simp [cocone]
      uniq s m hm := adj₂.homEquiv.symm.injective (by
        simp only [op_unop, Equiv.symm_apply_apply]
        refine (hc' s).uniq (cocone s) _ (fun j ↦ ?_)
        simp [cocone, ← hm,
          dsimp% adj₂.homEquiv_symm_naturality_one (c.π.app j.unop).unop]) }⟩

variable (J) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedLimits/Variantc4c07d310c466f7b0b4d8642054451d8325fcbe52cc2f0bd85b02f181224cec6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedLimits/Variantc4c07d310c466f7b0b4d8642054451d8325fcbe52cc2f0bd85b02f181224cec6.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31c8f460477acd9bd59ac52cf60e28d112fc9dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
