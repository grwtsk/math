# assocAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36dce4404b23851ef92192e3873af1dea26d6946fd5f0dc8f5713f2fcc1b29d9",
  "kind": "def",
  "lexical_name": "assocAux",
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
  "slug": "assocaux--22c9ab1ffc032a21f1db76f5",
  "source": {
    "blob": "57bbc317145c43569a96d689a815156b8f591b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 423,
    "path": "GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant9236fefa58c3cb5dca0febc037509ddda4c234ddd3164c649f8b89527cad5cb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22c9ab1ffc032a21f1db76f5772d657ea379bb92eb33577a08ff608268a8b750",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/MulStruct/Variant9236fefa58c3cb5dca0febc037509ddda4c234ddd3164c649f8b89527cad5cb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36dce4404b23851ef92192e3873af1dea26d6946fd5f0dc8f5713f2fcc1b29d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def assocAux (φ : (Δ[n + 2] : SSet) ⟶ X)
    (hφ : ∀ (j : Fin (n + 3)) (hj : j ≠ i.castSucc.castSucc.succ),
      stdSimplex.δ j ≫ φ = assocAux.α h₀₂ h₁₃ h j hj) :
    MulStruct f₀₂ f₂₃ f₀₃ i where
  map := stdSimplex.δ i.castSucc.castSucc.succ ≫ φ
  δ_castSucc_castSucc_map := by
    rw [stdSimplex.δ_comp_δ_assoc (by simp), hφ _ (by grind)]
    simp
  δ_succ_castSucc_map := by
    rw [dsimp% stdSimplex.δ_comp_δ_self_assoc (i := i.castSucc.succ),
      hφ _ (by grind)]
    simp
  δ_succ_succ_map := by
    rw [← dsimp% stdSimplex.δ_comp_δ_assoc (i := i.castSucc.succ) (by grind),
      hφ _ (by grind)]
    simp
  δ_map_of_lt j hj := by
    rw [stdSimplex.δ_comp_δ_assoc (by grind), hφ _ (by grind),
      assocAux.α_of_lt _ _ _ _ (by grind)]
    simp
  δ_map_of_gt j hj := by
    rw [← dsimp% stdSimplex.δ_comp_δ_assoc (i := i.castSucc.succ) (by grind),
      hφ _ (by grind), assocAux.α_of_gt _ _ _ _ (by grind)]
    simp

end

/-- Given `f₀₁`, `f₁₂`, `f₂₃`, `f₀₂`, `f₁₃` and `f₀₃` in `X.PtSimplex n x`,
if "the" multiplication of `f₀₁` and `f₁₂` is `f₀₂`,
the multiplication of `f₁₂` and `f₂₃` is `f₁₃`,
and the multiplication of `f₀₁` and `f₁₃` is `f₀₃`,
then the multiplication of `f₀₂` and `f₂₃` is `f₀₃`. -/
@[no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/MulStruct/Variant9236fefa58c3cb5dca0febc037509ddda4c234ddd3164c649f8b89527cad5cb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant9236fefa58c3cb5dca0febc037509ddda4c234ddd3164c649f8b89527cad5cb6.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bbc317145c43569a96d689a815156b8f591b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
