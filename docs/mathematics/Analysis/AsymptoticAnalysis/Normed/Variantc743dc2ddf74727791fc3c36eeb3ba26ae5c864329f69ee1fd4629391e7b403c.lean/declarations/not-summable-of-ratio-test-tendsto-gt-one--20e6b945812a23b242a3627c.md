# not_summable_of_ratio_test_tendsto_gt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cba3c7b1-f89c-1c08-376e-9346fedfaf79",
  "kind": "theorem",
  "lexical_name": "not_summable_of_ratio_test_tendsto_gt_one",
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
  "slug": "not-summable-of-ratio-test-tendsto-gt-one--20e6b945812a23b242a3627c",
  "source": {
    "blob": "37c38d7968afc5593b67c2ae4a6282dd9d370f42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 563,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20e6b945812a23b242a3627c384b948dc40cac7a3697ed03e74aefabb03b8397",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cba3c7b1-f89c-1c08-376e-9346fedfaf79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_summable_of_ratio_test_tendsto_gt_one {α : Type*} [SeminormedAddCommGroup α]
    {f : ℕ → α} {l : ℝ} (hl : 1 < l) (h : Tendsto (fun n ↦ ‖f (n + 1)‖ / ‖f n‖) atTop (𝓝 l)) :
    ¬Summable f := by
  have key : ∀ᶠ n in atTop, ‖f n‖ ≠ 0 := by
    filter_upwards [eventually_ge_of_tendsto_gt hl h]with _ hn hc
    rw [hc, _root_.div_zero] at hn
    linarith
  rcases exists_between hl with ⟨r, hr₀, hr₁⟩
  refine' not_summable_of_ratio_norm_eventually_ge hr₀ key.frequently _
  filter_upwards [eventually_ge_of_tendsto_gt hr₁ h, key]with _ _ h₁
  rwa [← le_div_iff (lt_of_le_of_ne (norm_nonneg _) h₁.symm)]
#align not_summable_of_ratio_test_tendsto_gt_one not_summable_of_ratio_test_tendsto_gt_one

section

/-! ### Dirichlet and alternating series tests -/


variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

variable {b : ℝ} {f : ℕ → ℝ} {z : ℕ → E}

/-- **Dirichlet's Test** for monotone sequences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37c38d7968afc5593b67c2ae4a6282dd9d370f42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
