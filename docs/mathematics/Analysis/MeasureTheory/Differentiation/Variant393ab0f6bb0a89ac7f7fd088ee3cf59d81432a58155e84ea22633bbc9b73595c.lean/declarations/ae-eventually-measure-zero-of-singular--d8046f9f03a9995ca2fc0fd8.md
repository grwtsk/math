# ae_eventually_measure_zero_of_singular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4306b546065d2c8e4816f30f3507973d6ace6a16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83a8d2bb-d4bb-b388-59ab-a200750d2c79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df4d5e47-7ec9-7867-95e5-e912c4f4a643",
  "kind": "theorem",
  "lexical_name": "ae_eventually_measure_zero_of_singular",
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
  "slug": "ae-eventually-measure-zero-of-singular--d8046f9f03a9995ca2fc0fd8",
  "source": {
    "blob": "4306b546065d2c8e4816f30f3507973d6ace6a16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 160,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8046f9f03a9995ca2fc0fd8fe47988c4d3e0f35ed7fe786787713ffba50fc73",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df4d5e47-7ec9-7867-95e5-e912c4f4a643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eventually_measure_zero_of_singular (hρ : ρ ⟂ₘ μ) :
    ∀ᵐ x ∂μ, Tendsto (fun a => ρ a / μ a) (v.filterAt x) (𝓝 0) := by
  have A : ∀ ε > (0 : ℝ≥0), ∀ᵐ x ∂μ, ∀ᶠ a in v.filterAt x, ρ a < ε * μ a := by
    intro ε εpos
    set s := {x | ¬∀ᶠ a in v.filterAt x, ρ a < ε * μ a} with hs
    change μ s = 0
    obtain ⟨o, _, ρo, μo⟩ : ∃ o : Set α, MeasurableSet o ∧ ρ o = 0 ∧ μ oᶜ = 0 := hρ
    apply le_antisymm _ bot_le
    calc
      μ s ≤ μ (s ∩ o ∪ oᶜ) := by
        conv_lhs => rw [← inter_union_compl s o]
        gcongr
        apply inter_subset_right
      _ ≤ μ (s ∩ o) + μ oᶜ := measure_union_le _ _
      _ = μ (s ∩ o) := by rw [μo, add_zero]
      _ = (ε : ℝ≥0∞)⁻¹ * (ε • μ) (s ∩ o) := by
        simp only [coe_nnreal_smul_apply, ← mul_assoc, mul_comm _ (ε : ℝ≥0∞)]
        rw [ENNReal.mul_inv_cancel (ENNReal.coe_pos.2 εpos).ne' ENNReal.coe_ne_top, one_mul]
      _ ≤ (ε : ℝ≥0∞)⁻¹ * ρ (s ∩ o) := by
        gcongr
        refine v.measure_le_of_frequently_le ρ smul_absolutelyContinuous _ ?_
        intro x hx
        rw [hs] at hx
        simp only [mem_inter_iff, not_lt, not_eventually, mem_setOf_eq] at hx
        exact hx.1
      _ ≤ (ε : ℝ≥0∞)⁻¹ * ρ o := by gcongr; apply inter_subset_right
      _ = 0 := by rw [ρo, mul_zero]
  obtain ⟨u, _, u_pos, u_lim⟩ :
    ∃ u : ℕ → ℝ≥0, StrictAnti u ∧ (∀ n : ℕ, 0 < u n) ∧ Tendsto u atTop (𝓝 0) :=
    exists_seq_strictAnti_tendsto (0 : ℝ≥0)
  have B : ∀ᵐ x ∂μ, ∀ n, ∀ᶠ a in v.filterAt x, ρ a < u n * μ a :=
    ae_all_iff.2 fun n => A (u n) (u_pos n)
  filter_upwards [B, v.ae_eventually_measure_pos]
  intro x hx h'x
  refine tendsto_order.2 ⟨fun z hz => (ENNReal.not_lt_zero hz).elim, fun z hz => ?_⟩
  obtain ⟨w, w_pos, w_lt⟩ : ∃ w : ℝ≥0, (0 : ℝ≥0∞) < w ∧ (w : ℝ≥0∞) < z :=
    ENNReal.lt_iff_exists_nnreal_btwn.1 hz
  obtain ⟨n, hn⟩ : ∃ n, u n < w := ((tendsto_order.1 u_lim).2 w (ENNReal.coe_pos.1 w_pos)).exists
  filter_upwards [hx n, h'x, v.eventually_measure_lt_top x]
  intro a ha μa_pos μa_lt_top
  rw [ENNReal.div_lt_iff (Or.inl μa_pos.ne') (Or.inl μa_lt_top.ne)]
  exact ha.trans_le (mul_le_mul_right' ((ENNReal.coe_le_coe.2 hn.le).trans w_lt.le) _)

section AbsolutelyContinuous

variable (hρ : ρ ≪ μ)
include hρ

/-- A set of points `s` satisfying both `ρ a ≤ c * μ a` and `ρ a ≥ d * μ a` at arbitrarily small
sets in a Vitali family has measure `0` if `c < d`. Indeed, the first inequality should imply
that `ρ s ≤ c * μ s`, and the second one that `ρ s ≥ d * μ s`, a contradiction if `0 < μ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4306b546065d2c8e4816f30f3507973d6ace6a16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
