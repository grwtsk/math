# isBigO_zero_zetaKernel₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fb5b128-ea41-b451-6d99-1481d2cf8e36",
  "kind": "theorem",
  "lexical_name": "isBigO_zero_zetaKernel₁",
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
  "slug": "isbigo-zero-zetakernel--3885b1c09e6e26ea52ba6c24",
  "source": {
    "blob": "32fb55b80053cd2ceca6e621ffb4cda24a0f7394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 285,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3885b1c09e6e26ea52ba6c245642857a774ba6b4b6f06be20df720cdb1717c3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fb5b128-ea41-b451-6d99-1481d2cf8e36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_zero_zetaKernel₁ : IsBigO (𝓝[>] 0) zetaKernel₁ fun t => t ^ (-(1 / 2) : ℝ) := by
  have : zetaKernel₁ =ᶠ[𝓝[>] 0] zetaKernel₂ + fun t => ((1 / sqrt t - 1) / 2 : ℂ) := by
    refine
      eventuallyEq_of_mem (Ioc_mem_nhdsWithin_Ioi <| left_mem_Ico.mpr zero_lt_one) fun t h => ?_
    rw [Pi.add_apply, zetaKernel₂, Pi.add_apply, indicator_of_mem h]
    ring
  refine ((isBigO_zero_zetaKernel₂_rpow _).add ?_).congr' this.symm (EventuallyEq.refl _ _)
  simp_rw [sub_div]
  apply IsBigO.sub
  · apply IsBigO.of_norm_left
    simp_rw [norm_div, norm_one, div_eq_mul_inv, one_mul, mul_comm _ ‖(2 : ℂ)‖⁻¹]
    refine ((isBigO_refl _ _).congr' (EventuallyEq.refl _ _)
        (eventuallyEq_of_mem self_mem_nhdsWithin fun x hx => ?_)).const_mul_left _
    rw [Complex.norm_eq_abs, abs_ofReal, abs_of_nonneg (sqrt_nonneg _), sqrt_eq_rpow,
      rpow_neg (le_of_lt hx), one_div]
  · refine isBigO_iff.mpr ⟨‖(1 / 2 : ℂ)‖, ?_⟩
    refine eventually_of_mem (Ioc_mem_nhdsWithin_Ioi <| left_mem_Ico.mpr zero_lt_one) fun t ht => ?_
    refine le_mul_of_one_le_right (norm_nonneg _) ?_
    rw [norm_of_nonneg (rpow_nonneg_of_nonneg ht.1.le _), rpow_neg ht.1.le]
    exact one_le_inv (rpow_pos_of_pos ht.1 _) (rpow_le_one ht.1.le ht.2 one_half_pos.le)
set_option linter.uppercaseLean3 false in
#align is_O_zero_zeta_kernel₁ isBigO_zero_zetaKernel₁

/-!
## Differentiability of the completed zeta function
-/

/-- The Mellin transform of the first zeta kernel is holomorphic for `1 / 2 < re s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb55b80053cd2ceca6e621ffb4cda24a0f7394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
