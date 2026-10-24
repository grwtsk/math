# not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_within_diff_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33254a46-b8e9-e5d7-2947-8935d6519b3a",
  "kind": "theorem",
  "lexical_name": "not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_within_diff_singleton",
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
  "slug": "not-intervalintegrable-of-tendsto-norm-attop-of-deriv-isbigo-within-diff--9e03675e2648a8d51e055105",
  "source": {
    "blob": "0a99298877567a57f56f3f8e2d9fddcc3fc6470f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e03675e2648a8d51e055105b0514c4adebccaacf95abc738bdbb26bcc5f18ab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33254a46-b8e9-e5d7-2947-8935d6519b3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_within_diff_singleton
    {f : ℝ → E} {g : ℝ → F} {a b c : ℝ} (hne : a ≠ b) (hc : c ∈ [[a, b]])
    (h_deriv : ∀ᶠ x in 𝓝[[[a, b]] \ {c}] c, DifferentiableAt ℝ f x)
    (h_infty : Tendsto (fun x => ‖f x‖) (𝓝[[[a, b]] \ {c}] c) atTop)
    (hg : deriv f =O[𝓝[[[a, b]] \ {c}] c] g) : ¬IntervalIntegrable g volume a b := by
  obtain ⟨l, hl, hl', hle, hmem⟩ :
    ∃ l : Filter ℝ, TendstoIxxClass Icc l l ∧ l.NeBot ∧ l ≤ 𝓝 c ∧ [[a, b]] \ {c} ∈ l := by
    rcases (min_lt_max.2 hne).lt_or_lt c with hlt | hlt
    · refine ⟨𝓝[<] c, inferInstance, inferInstance, inf_le_left, ?_⟩
      rw [← Iic_diff_right]
      exact diff_mem_nhdsWithin_diff (Icc_mem_nhdsLE_of_mem ⟨hlt, hc.2⟩) _
    · refine ⟨𝓝[>] c, inferInstance, inferInstance, inf_le_left, ?_⟩
      rw [← Ici_diff_left]
      exact diff_mem_nhdsWithin_diff (Icc_mem_nhdsGE_of_mem ⟨hc.1, hlt⟩) _
  have : l ≤ 𝓝[[[a, b]] \ {c}] c := le_inf hle (le_principal_iff.2 hmem)
  exact not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_filter l
    (mem_of_superset hmem diff_subset) (h_deriv.filter_mono this) (h_infty.mono_left this)
    (hg.mono this)

/-- If `f` is differentiable in a punctured neighborhood of `c`, `‖f x‖ → ∞` as `x → c` (more
formally, along the filter `𝓝[≠] c`), and `f' = O(g)` along `𝓝[≠] c`, where `f'` is the derivative
of `f`, then `g` is not interval integrable on any nontrivial interval `a..b` such that
`c ∈ [a, b]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a99298877567a57f56f3f8e2d9fddcc3fc6470f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
