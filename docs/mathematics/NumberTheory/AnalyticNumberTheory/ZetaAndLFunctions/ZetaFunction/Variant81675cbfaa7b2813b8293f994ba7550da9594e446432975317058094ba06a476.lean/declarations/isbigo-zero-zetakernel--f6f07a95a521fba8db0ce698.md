# isBigO_zero_zetaKernel₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "840977beb5e3eaf65ad76ec0ec0d4647db7d0964",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:015eb1c6-3c72-018a-d295-215aafa184dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2053e7c8-9b61-6374-08fc-af4a4757dfd0",
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
  "slug": "isbigo-zero-zetakernel--f6f07a95a521fba8db0ce698",
  "source": {
    "blob": "840977beb5e3eaf65ad76ec0ec0d4647db7d0964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 277,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6f07a95a521fba8db0ce6985b4e59655e15814ae3e70a14e994882d2940e445",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2053e7c8-9b61-6374-08fc-af4a4757dfd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–304.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `840977beb5e3eaf65ad76ec0ec0d4647db7d0964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
