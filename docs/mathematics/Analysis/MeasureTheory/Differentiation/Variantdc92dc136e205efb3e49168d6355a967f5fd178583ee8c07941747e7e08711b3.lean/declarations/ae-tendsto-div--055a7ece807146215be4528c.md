# ae_tendsto_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66a02e45-a3d0-39e0-a67e-eca2fe74bc8a",
  "kind": "theorem",
  "lexical_name": "ae_tendsto_div",
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
  "slug": "ae-tendsto-div--055a7ece807146215be4528c",
  "source": {
    "blob": "08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 238,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:055a7ece807146215be4528c2680b711de73d7c2af82e350895ff602606622c7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66a02e45-a3d0-39e0-a67e-eca2fe74bc8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_tendsto_div : ∀ᵐ x ∂μ, ∃ c, Tendsto (fun a => ρ a / μ a) (v.filterAt x) (𝓝 c) := by
  obtain ⟨w, w_count, w_dense, _, w_top⟩ :
    ∃ w : Set ℝ≥0∞, w.Countable ∧ Dense w ∧ 0 ∉ w ∧ ∞ ∉ w :=
    ENNReal.exists_countable_dense_no_zero_top
  have I : ∀ x ∈ w, x ≠ ∞ := fun x xs hx => w_top (hx ▸ xs)
  have A : ∀ c ∈ w, ∀ d ∈ w, c < d → ∀ᵐ x ∂μ,
      ¬((∃ᶠ a in v.filterAt x, ρ a / μ a < c) ∧ ∃ᶠ a in v.filterAt x, d < ρ a / μ a) := by
    intro c hc d hd hcd
    lift c to ℝ≥0 using I c hc
    lift d to ℝ≥0 using I d hd
    apply v.null_of_frequently_le_of_frequently_ge hρ (ENNReal.coe_lt_coe.1 hcd)
    · simp only [and_imp, exists_prop, not_frequently, not_and, not_lt, not_le, not_eventually,
        mem_setOf_eq, mem_compl_iff, not_forall]
      intro x h1x _
      apply h1x.mono fun a ha => ?_
      refine (ENNReal.div_le_iff_le_mul ?_ (Or.inr (bot_le.trans_lt ha).ne')).1 ha.le
      simp only [ENNReal.coe_ne_top, Ne, or_true, not_false_iff]
    · simp only [and_imp, exists_prop, not_frequently, not_and, not_lt, not_le, not_eventually,
        mem_setOf_eq, mem_compl_iff, not_forall]
      intro x _ h2x
      apply h2x.mono fun a ha => ?_
      exact ENNReal.mul_le_of_le_div ha.le
  have B : ∀ᵐ x ∂μ, ∀ c ∈ w, ∀ d ∈ w, c < d →
      ¬((∃ᶠ a in v.filterAt x, ρ a / μ a < c) ∧ ∃ᶠ a in v.filterAt x, d < ρ a / μ a) := by
    #adaptation_note /-- 2024-04-23
    The next two lines were previously just `simpa only [ae_ball_iff w_count, ae_all_iff]` -/
    rw [ae_ball_iff w_count]; intro x hx; rw [ae_ball_iff w_count]; revert x
    simpa only [ae_all_iff]
  filter_upwards [B]
  intro x hx
  exact tendsto_of_no_upcrossings w_dense hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
