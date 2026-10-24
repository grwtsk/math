# homToNerveMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c78f36643236443de7e4e2f1aaa9f69b07194590933065c634cdc23063f2839f",
  "kind": "def",
  "lexical_name": "homToNerveMk",
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
  "slug": "homtonervemk--bafdbd611164777ae45c4d57",
  "source": {
    "blob": "dbb502bca8ac6ac01d14a22f00c00348a9475566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 238,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantee4fd32ca3b5bf3f877cfde63e672c1a2eece48d7b11936f844be97acd4829e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bafdbd611164777ae45c4d578a46db3c0af316179040e3847245691deb507e91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantee4fd32ca3b5bf3f877cfde63e672c1a2eece48d7b11936f844be97acd4829e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c78f36643236443de7e4e2f1aaa9f69b07194590933065c634cdc23063f2839f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homToNerveMk (F : X.HomotopyCategory ⥤ C) : X ⟶ (truncation 2).obj (nerve C) :=
  liftOfStrictSegal (fun x ↦ nerveEquiv.symm (F.obj (mk x)))
    (fun f ↦ ComposableArrows.mk₁ (F.map (homMk (Truncated.Edge.mk' f))))
    (fun f ↦ ComposableArrows.ext₀ rfl)
    (fun f ↦ ComposableArrows.ext₀ rfl)
    (fun x y h₂ h₀ ↦ by
      have h' {a b : X _⦋0⦌₂} (e : Edge a b) :
          ComposableArrows.mk₁ (F.map (homMk (Edge.mk' e.edge))) =
            ComposableArrows.mk₁ (F.map (homMk e)) :=
        ComposableArrows.arrowEquiv.injective
          (congr_arg F.mapArrow.obj (congr_arrowMk_homMk (Edge.mk' e.edge) e rfl))
      obtain ⟨x₀, x₁, x₂, e₀₁, e₁₂, e₀₂, h, rfl⟩ := Edge.CompStruct.exists_of_simplex x
      dsimp at h₀ h₂ ⊢
      have : ComposableArrows.mk₂ (F.map (homMk e₀₁)) (F.map (homMk e₁₂)) = y := by
        rw [h.d₂, h'] at h₂
        rw [h.d₀, h'] at h₀
        refine (spine_bijective (X := (truncation 2).obj (nerve C)) _ _).injective ?_
        ext i
        fin_cases i
        · dsimp
          simp only [SimplexCategory.mkOfSucc_zero_eq_δ, ← h₂]
          apply nerve.δ₂_mk₂_eq
        · dsimp
          simp only [SimplexCategory.mkOfSucc_one_eq_δ, ← h₀]
          apply nerve.δ₀_mk₂_eq
      rw [h.d₁, ← this]
      have := (nerve.δ₁_mk₂_eq (F.map (homMk e₀₁)) (F.map (homMk e₁₂))).symm
      rwa [← Functor.map_comp, homMk_comp_homMk h, ← h'] at this)
    (fun x ↦ ComposableArrows.arrowEquiv.injective
      ((congr_arg F.mapArrow.obj
        (congr_arrowMk_homMk (Edge.mk' (X.map (σ₂ 0).op x)) (Edge.id x) rfl)).trans (by aesop)))
    ((Nerve.strictSegal C).truncation 1)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantee4fd32ca3b5bf3f877cfde63e672c1a2eece48d7b11936f844be97acd4829e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantee4fd32ca3b5bf3f877cfde63e672c1a2eece48d7b11936f844be97acd4829e9.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbb502bca8ac6ac01d14a22f00c00348a9475566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
