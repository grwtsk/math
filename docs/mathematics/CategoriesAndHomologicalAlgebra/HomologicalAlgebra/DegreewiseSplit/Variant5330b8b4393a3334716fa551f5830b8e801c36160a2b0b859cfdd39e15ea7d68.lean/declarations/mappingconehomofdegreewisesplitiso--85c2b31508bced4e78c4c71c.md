# mappingConeHomOfDegreewiseSplitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63da62c52e21de9c48f8c9c6c27d3bc3f57f140e7576d1cfc3603d76a388351b",
  "kind": "def",
  "lexical_name": "mappingConeHomOfDegreewiseSplitIso",
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
  "slug": "mappingconehomofdegreewisesplitiso--85c2b31508bced4e78c4c71c",
  "source": {
    "blob": "c999bb1ed96d62db81c5951fada084cad9da630a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 133,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85c2b31508bced4e78c4c71cc6706d2529e89bee79df2bb24892cbbd309017a2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63da62c52e21de9c48f8c9c6c27d3bc3f57f140e7576d1cfc3603d76a388351b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mappingConeHomOfDegreewiseSplitIso :
    mappingCone (homOfDegreewiseSplit S σ) ≅ S.X₂⟦(1 : ℤ)⟧ :=
  Hom.isoOfComponents (fun p => mappingConeHomOfDegreewiseSplitXIso S σ p _ rfl) (by
    rintro p _ rfl
    have r_f := (σ (p + 1 + 1)).r_f
    have s_g := (σ (p + 1)).s_g
    dsimp at r_f s_g ⊢
    simp only [mappingConeHomOfDegreewiseSplitXIso, mappingCone.ext_from_iff _ _ _ rfl,
      mappingCone.inl_v_d_assoc _ (p + 1) _ (p + 1 + 1) (by linarith) (by lia),
      cocycleOfDegreewiseSplit, r_f, Int.reduceNeg, Cochain.ofHom_v, sub_comp, assoc,
      Hom.comm, comp_sub, mappingCone.inl_v_fst_v_assoc, mappingCone.inl_v_snd_v_assoc,
      shiftFunctor_obj_X', zero_comp, sub_zero, homOfDegreewiseSplit_f,
      mappingCone.inr_f_fst_v_assoc, comp_zero, zero_sub, mappingCone.inr_f_snd_v_assoc,
      neg_neg, mappingCone.inr_f_d_assoc, shiftFunctor_obj_d',
      Int.negOnePow_one, neg_comp, sub_neg_eq_add, zero_add, and_true,
      Units.neg_smul, one_smul, comp_neg, ShortComplex.map_X₂, eval_obj, Cocycle.mk_coe,
      Cochain.mk_v]
    simp only [← S.g.comm_assoc, reassoc_of% s_g, comp_id]
    abel)

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c999bb1ed96d62db81c5951fada084cad9da630a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
