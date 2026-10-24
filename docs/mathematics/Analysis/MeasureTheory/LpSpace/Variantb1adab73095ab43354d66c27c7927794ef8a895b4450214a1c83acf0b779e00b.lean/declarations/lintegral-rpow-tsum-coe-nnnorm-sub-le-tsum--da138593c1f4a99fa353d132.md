# lintegral_rpow_tsum_coe_nnnorm_sub_le_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a5ba319-9a79-0c6e-3d75-7bc1bbe84f37",
  "kind": "theorem",
  "lexical_name": "lintegral_rpow_tsum_coe_nnnorm_sub_le_tsum",
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
  "slug": "lintegral-rpow-tsum-coe-nnnorm-sub-le-tsum--da138593c1f4a99fa353d132",
  "source": {
    "blob": "145ecda4c8c3a4972cf1bcac83026924983d5cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1534,
    "line": 1501,
    "path": "GRWTSK/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da138593c1f4a99fa353d132c3ae125b5678be6f1e2dcd128ab4a59225a19b98",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a5ba319-9a79-0c6e-3d75-7bc1bbe84f37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1501–1534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lintegral_rpow_tsum_coe_nnnorm_sub_le_tsum {f : ℕ → α → E}
    (hf : ∀ n, AEStronglyMeasurable (f n) μ) {p : ℝ} (hp1 : 1 ≤ p) {B : ℕ → ℝ≥0∞}
    (h :
      ∀ n,
        (∫⁻ a, (∑ i in Finset.range (n + 1), ‖f (i + 1) a - f i a‖₊ : ℝ≥0∞) ^ p ∂μ) ≤
          (∑' i, B i) ^ p) :
    (∫⁻ a, (∑' i, ‖f (i + 1) a - f i a‖₊ : ℝ≥0∞) ^ p ∂μ) ^ (1 / p) ≤ ∑' i, B i := by
  have hp_pos : 0 < p := zero_lt_one.trans_le hp1
  suffices h_pow : (∫⁻ a, (∑' i, ‖f (i + 1) a - f i a‖₊ : ℝ≥0∞) ^ p ∂μ) ≤ (∑' i, B i) ^ p
  · rwa [← ENNReal.le_rpow_one_div_iff (by simp [hp_pos] : 0 < 1 / p), one_div_one_div]
  have h_tsum_1 :
    ∀ g : ℕ → ℝ≥0∞, ∑' i, g i = atTop.liminf fun n => ∑ i in Finset.range (n + 1), g i := by
    intro g
    rw [ENNReal.tsum_eq_liminf_sum_nat, ← liminf_nat_add _ 1]
  simp_rw [h_tsum_1 _]
  rw [← h_tsum_1]
  have h_liminf_pow :
    (∫⁻ a, (atTop.liminf
      fun n => ∑ i in Finset.range (n + 1), (‖f (i + 1) a - f i a‖₊ : ℝ≥0∞)) ^ p ∂μ) =
      ∫⁻ a, atTop.liminf
        fun n => (∑ i in Finset.range (n + 1), (‖f (i + 1) a - f i a‖₊ : ℝ≥0∞)) ^ p ∂μ := by
    refine' lintegral_congr fun x => _
    have h_rpow_mono := ENNReal.strictMono_rpow_of_pos (zero_lt_one.trans_le hp1)
    have h_rpow_surj := (ENNReal.rpow_left_bijective hp_pos.ne.symm).2
    refine' (h_rpow_mono.orderIsoOfSurjective _ h_rpow_surj).liminf_apply _ _ _ _
    all_goals isBoundedDefault
  rw [h_liminf_pow]
  refine' (lintegral_liminf_le' _).trans _
  · exact fun n =>
      (Finset.aemeasurable_sum (Finset.range (n + 1)) fun i _ =>
            ((hf (i + 1)).sub (hf i)).ennnorm).pow_const
        _
  · exact liminf_le_of_frequently_le' (frequently_of_forall h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean#L1501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `145ecda4c8c3a4972cf1bcac83026924983d5cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
