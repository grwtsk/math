# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:516fc02ea425410bd2624e9d129a4cb7acbf94238e68848147d9dedf51eae203",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--60a6e1ea9a4ae266ab7e04bd",
  "source": {
    "blob": "5fbed2555f7d8c52c66bbea3df044f694ff0b80a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 473,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60a6e1ea9a4ae266ab7e04bd3fa904d7ce9f6d9ef47d9b78b70dcf2ab8062d9d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:516fc02ea425410bd2624e9d129a4cb7acbf94238e68848147d9dedf51eae203`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] : HasContDiffBump E := by
  refine ⟨⟨?_⟩⟩
  borelize E
  have IR : ∀ R : ℝ, 1 < R → 0 < (R - 1) / (R + 1) := by intro R hR; apply div_pos <;> linarith
  exact
    { toFun := fun R x => if 1 < R then y ((R - 1) / (R + 1)) (((R + 1) / 2)⁻¹ • x) else 0
      mem_Icc := fun R x => by
        simp only [mem_Icc]
        split_ifs with h
        · refine ⟨y_nonneg _ _, y_le_one _ (IR R h)⟩
        · simp only [le_refl, zero_le_one, and_self]
      symmetric := fun R x => by
        split_ifs
        · simp only [y_neg, smul_neg]
        · rfl
      smooth := by
        suffices
          ContDiffOn ℝ ∞
            (uncurry y ∘ fun p : ℝ × E => ((p.1 - 1) / (p.1 + 1), ((p.1 + 1) / 2)⁻¹ • p.2))
            (Ioi 1 ×ˢ univ) by
          apply this.congr
          rintro ⟨R, x⟩ ⟨hR : 1 < R, _⟩
          simp only [hR, uncurry_apply_pair, if_true, Function.comp_apply]
        apply (y_smooth E).comp
        · apply ContDiffOn.prodMk
          · refine
              (contDiffOn_fst.sub contDiffOn_const).div (contDiffOn_fst.add contDiffOn_const) ?_
            rintro ⟨R, x⟩ ⟨hR : 1 < R, _⟩
            apply ne_of_gt
            dsimp only
            linarith
          · apply ContDiffOn.smul _ contDiffOn_snd
            refine ((contDiffOn_fst.add contDiffOn_const).div_const _).inv ?_
            rintro ⟨R, x⟩ ⟨hR : 1 < R, _⟩
            apply ne_of_gt
            dsimp only
            linarith
        · rintro ⟨R, x⟩ ⟨hR : 1 < R, _⟩
          have A : 0 < (R - 1) / (R + 1) := by apply div_pos <;> linarith
          have B : (R - 1) / (R + 1) < 1 := by apply (div_lt_one _).2 <;> linarith
          simp only [mem_preimage, prodMk_mem_set_prod_eq, mem_Ioo, mem_univ, and_true, A, B]
      eq_one := fun R hR x hx => by
        have A : 0 < R + 1 := by linarith
        simp only [hR, if_true]
        apply y_eq_one_of_mem_closedBall (IR R hR)
        simp only [norm_smul, inv_div, mem_closedBall_zero_iff, Real.norm_eq_abs, abs_div, abs_two,
          abs_of_nonneg A.le]
        calc
          2 / (R + 1) * ‖x‖ ≤ 2 / (R + 1) := mul_le_of_le_one_right (by positivity) hx
          _ = 1 - (R - 1) / (R + 1) := by field_simp; ring
      support := fun R hR => by
        have A : 0 < (R + 1) / 2 := by linarith
        have C : (R - 1) / (R + 1) < 1 := by apply (div_lt_one _).2 <;> linarith
        simp only [hR, if_true, support_comp_inv_smul₀ A.ne', y_support _ (IR R hR) C,
          _root_.smul_ball A.ne', Real.norm_of_nonneg A.le, smul_zero]
        refine congr (congr_arg ball (Eq.refl 0)) ?_
        field_simp; ring }

end ExistsContDiffBumpBase

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fbed2555f7d8c52c66bbea3df044f694ff0b80a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
