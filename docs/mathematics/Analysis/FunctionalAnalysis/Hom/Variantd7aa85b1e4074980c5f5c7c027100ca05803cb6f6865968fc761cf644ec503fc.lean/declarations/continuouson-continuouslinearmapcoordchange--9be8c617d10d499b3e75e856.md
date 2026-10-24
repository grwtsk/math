# continuousOn_continuousLinearMapCoordChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fc10f547d6e4af0e18eb15af84848eb6d1c92b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ca8f2f9-59e2-c981-7204-ab10d720baa5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d07a6451-3aa5-8289-b176-cf97e6197459",
  "kind": "theorem",
  "lexical_name": "continuousOn_continuousLinearMapCoordChange",
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
  "slug": "continuouson-continuouslinearmapcoordchange--9be8c617d10d499b3e75e856",
  "source": {
    "blob": "3fc10f547d6e4af0e18eb15af84848eb6d1c92b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 98,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9be8c617d10d499b3e75e856687b33a1d590714187f461b5c9a54bfacf86a1c4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d07a6451-3aa5-8289-b176-cf97e6197459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_continuousLinearMapCoordChange [VectorBundle 𝕜₁ F₁ E₁] [VectorBundle 𝕜₂ F₂ E₂]
    [MemTrivializationAtlas e₁] [MemTrivializationAtlas e₁'] [MemTrivializationAtlas e₂]
    [MemTrivializationAtlas e₂'] :
    ContinuousOn (continuousLinearMapCoordChange σ e₁ e₁' e₂ e₂')
      (e₁.baseSet ∩ e₂.baseSet ∩ (e₁'.baseSet ∩ e₂'.baseSet)) := by
  have h₁ := (compSL F₁ F₂ F₂ σ (RingHom.id 𝕜₂)).continuous
  have h₂ := (ContinuousLinearMap.flip (compSL F₁ F₁ F₂ (RingHom.id 𝕜₁) σ)).continuous
  have h₃ := continuousOn_coordChange 𝕜₁ e₁' e₁
  have h₄ := continuousOn_coordChange 𝕜₂ e₂ e₂'
  refine' ((h₁.comp_continuousOn (h₄.mono _)).clm_comp (h₂.comp_continuousOn (h₃.mono _))).congr _
  · mfld_set_tac
  · mfld_set_tac
  · intro b _; ext L v
    -- Porting note: was
    -- simp only [continuousLinearMapCoordChange, ContinuousLinearEquiv.coe_coe,
    --   ContinuousLinearEquiv.arrowCongrₛₗ_apply, LinearEquiv.toFun_eq_coe, coe_comp',
    --   ContinuousLinearEquiv.arrowCongrSL_apply, comp_apply, Function.comp, compSL_apply,
    --   flip_apply, ContinuousLinearEquiv.symm_symm]
    -- Now `simp` fails to use `ContinuousLinearMap.comp_apply` in this case
    dsimp [continuousLinearMapCoordChange]
    rw [ContinuousLinearEquiv.symm_symm]
#align pretrivialization.continuous_on_continuous_linear_map_coord_change Pretrivialization.continuousOn_continuousLinearMapCoordChange

variable (σ e₁ e₁' e₂ e₂')
variable [e₁.IsLinear 𝕜₁] [e₁'.IsLinear 𝕜₁] [e₂.IsLinear 𝕜₂] [e₂'.IsLinear 𝕜₂]

/-- Given trivializations `e₁`, `e₂` for vector bundles `E₁`, `E₂` over a base `B`,
`Pretrivialization.continuousLinearMap σ e₁ e₂` is the induced pretrivialization for the
continuous `σ`-semilinear maps from `E₁` to `E₂`. That is, the map which will later become a
trivialization, after the bundle of continuous semilinear maps is equipped with the right
topological vector bundle structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc10f547d6e4af0e18eb15af84848eb6d1c92b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
