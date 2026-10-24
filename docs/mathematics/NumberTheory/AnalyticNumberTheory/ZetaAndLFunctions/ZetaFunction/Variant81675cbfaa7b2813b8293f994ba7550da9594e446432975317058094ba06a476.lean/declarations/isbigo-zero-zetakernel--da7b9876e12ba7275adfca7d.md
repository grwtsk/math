# isBigO_zero_zetaKernel₂

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
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00ea5260-2c00-9673-edf0-dc8ef4ff3fdd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:055bbae5-8fb3-849e-1495-bf20a6f77f77",
  "kind": "theorem",
  "lexical_name": "isBigO_zero_zetaKernel₂",
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
  "slug": "isbigo-zero-zetakernel--da7b9876e12ba7275adfca7d",
  "source": {
    "blob": "840977beb5e3eaf65ad76ec0ec0d4647db7d0964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 240,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da7b9876e12ba7275adfca7d389b6e74a19a5ef081cc5a5efdaf0817ad9c7a27",
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

Occurrence: `result:055bbae5-8fb3-849e-1495-bf20a6f77f77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_zero_zetaKernel₂ : IsBigO (𝓝[>] 0) zetaKernel₂ fun t => exp (-π / t) / sqrt t := by
  have h1 := isBigO_atTop_zetaKernel₂.comp_tendsto tendsto_inv_zero_atTop
  simp_rw [← one_div] at h1
  have h2 : zetaKernel₂ ∘ Div.div 1 =ᶠ[𝓝[>] 0] fun t => sqrt t * zetaKernel₂ t :=
    eventually_of_mem self_mem_nhdsWithin fun t ht => by
      dsimp only; rw [← zetaKernel₂_one_div ht]; rfl
  have h3 := h1.congr' h2 (EventuallyEq.refl _ _)
  have h4 := h3.mul (isBigO_refl (fun t : ℝ => 1 / (sqrt t : ℂ)) (𝓝[>] 0)).norm_right
  refine h4.congr' ?_ ?_
  · refine eventually_of_mem self_mem_nhdsWithin fun x hx => ?_
    dsimp
    rw [mul_comm, ← mul_assoc, one_div_mul_cancel, one_mul]
    exact ofReal_ne_zero.mpr ((sqrt_ne_zero <| le_of_lt hx).mpr (ne_of_gt hx))
  · refine eventually_of_mem self_mem_nhdsWithin fun x _ => ?_
    dsimp only
    rw [Function.comp_apply, mul_one_div, one_div (sqrt x : ℂ), norm_inv, Complex.norm_eq_abs,
      abs_ofReal, abs_of_nonneg (sqrt_nonneg _), ← div_eq_mul_inv]
set_option linter.uppercaseLean3 false in
#align is_O_zero_zeta_kernel₂ isBigO_zero_zetaKernel₂

/-- Weaker but more usable bound for `zetaKernel₂` for `t → 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `840977beb5e3eaf65ad76ec0ec0d4647db7d0964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
