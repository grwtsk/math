# δ_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2d9d83a-4c33-c7b6-1ae2-58a6c9785f46",
  "kind": "lemma",
  "lexical_name": "δ_apply",
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
  "slug": "apply--06ffb6cfdcac5c05f2524d86",
  "source": {
    "blob": "7a09fbf99fbfdf01202bcbb0b58c1a846060e67f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ConcreteCategory/Variantc48f92d4c683385903cf78a53445f99433e599e0e36284700964f14ddb9fee6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06ffb6cfdcac5c05f2524d86afabfe72b052a7be4dd21fd6792b8e64c6e98802",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ConcreteCategory/Variantc48f92d4c683385903cf78a53445f99433e599e0e36284700964f14ddb9fee6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2d9d83a-4c33-c7b6-1ae2-58a6c9785f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ_apply (x₃ : (forget₂ C Ab).obj (S.X₃.X i))
    (hx₃ : (forget₂ C Ab).map (S.X₃.d i j) x₃ = 0)
    (x₂ : (forget₂ C Ab).obj (S.X₂.X i)) (hx₂ : (forget₂ C Ab).map (S.g.f i) x₂ = x₃)
    (x₁ : (forget₂ C Ab).obj (S.X₁.X j))
    (hx₁ : (forget₂ C Ab).map (S.f.f j) x₁ = (forget₂ C Ab).map (S.X₂.d i j) x₂)
    (k : ι) (hk : c.next j = k) :
    (forget₂ C Ab).map (hS.δ i j hij)
      ((forget₂ C Ab).map (S.X₃.homologyπ i) (S.X₃.cyclesMk x₃ j (c.next_eq' hij) hx₃)) =
        (forget₂ C Ab).map (S.X₁.homologyπ j) (S.X₁.cyclesMk x₁ k hk (by
          have := hS.mono_f
          apply (Preadditive.mono_iff_injective (S.f.f k)).1 inferInstance
          rw [← ConcreteCategory.forget₂_comp_apply, ← HomologicalComplex.Hom.comm,
            ConcreteCategory.forget₂_comp_apply, hx₁, ← ConcreteCategory.forget₂_comp_apply,
            HomologicalComplex.d_comp_d, Functor.map_zero, map_zero]; rfl)) := by
  refine hS.δ_apply' i j hij _ ((forget₂ C Ab).map (S.X₂.pOpcycles i) x₂) _ ?_ ?_
  · rw [← ConcreteCategory.forget₂_comp_apply, ← ConcreteCategory.forget₂_comp_apply,
      HomologicalComplex.p_opcyclesMap, Functor.map_comp, ConcreteCategory.comp_apply,
      HomologicalComplex.homology_π_ι, ConcreteCategory.forget₂_comp_apply, hx₂,
      HomologicalComplex.i_cyclesMk]
  · apply (Preadditive.mono_iff_injective (S.X₂.iCycles j)).1 inferInstance
    conv_lhs =>
      rw [← ConcreteCategory.forget₂_comp_apply, HomologicalComplex.cyclesMap_i,
        ConcreteCategory.forget₂_comp_apply, HomologicalComplex.i_cyclesMk, hx₁]
    conv_rhs =>
      rw [← ConcreteCategory.forget₂_comp_apply, ← ConcreteCategory.forget₂_comp_apply,
        HomologicalComplex.pOpcycles_opcyclesToCycles_assoc, HomologicalComplex.toCycles_i]

end ShortExact

end ShortComplex

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ConcreteCategory/Variantc48f92d4c683385903cf78a53445f99433e599e0e36284700964f14ddb9fee6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ConcreteCategory/Variantc48f92d4c683385903cf78a53445f99433e599e0e36284700964f14ddb9fee6d.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a09fbf99fbfdf01202bcbb0b58c1a846060e67f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
