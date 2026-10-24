# _root_.GRWTSK.Analysis.FunctionalAnalysis.ToLp.Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.MeasureTheory.memLp_id_of_self_sub_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d79ab9e1-c0b1-e556-2e6c-8780df9e8c40",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.FunctionalAnalysis.ToLp.Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.MeasureTheory.memLp_id_of_self_sub_integral",
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
  "slug": "root-grwtsk-analysis-functionalanalysis-tolp-variantb5caf8c5b24cf9e7b042--e60152cb64c4eef815dea266",
  "source": {
    "blob": "e80cde296bc69db2a1015dddbf0d3a68b4797da7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 255,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e60152cb64c4eef815dea266e63b3a1ecf35dc41229101f62227ffc817c2cb38",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d79ab9e1-c0b1-e556-2e6c-8780df9e8c40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.FunctionalAnalysis.ToLp.Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.MeasureTheory.memLp_id_of_self_sub_integral {p : ℝ≥0∞}
    (h_Lp : MemLp (fun x ↦ x - ∫ y, y ∂μ) p μ) : MemLp id p μ := by
  have : (id : E → E) = fun x ↦ x - ∫ x, x ∂μ + ∫ x, x ∂μ := by ext; simp
  rw [this]
  apply h_Lp.add
  set c := ∫ x, x ∂μ
  /- We need to check that the constant `c = ∫ x, x ∂μ` is in `L^p`. Note that we don't assume
  that `μ` is finite, so this requires an argument. If the constant is zero, it's obvious.
  If it's nonzero, this means that `x` is integrable for `μ` (as otherwise the integral would be
  `0` by our choice of junk value), so `‖x‖ ^ (1/p)` is in `L^p`.
  The constant `c` is controlled by `2 ‖x - c‖` close to `0` (say when `‖x‖ ≤ ‖c‖ / 2`)
  and by a multiple of `‖x‖ ^ (1/p)` away from `0`. Those two functions
  are in `L^p` by assumptions, so the constant `c` also is. -/
  by_cases hx : c = 0
  · simp [hx]
  rcases eq_or_ne p 0 with rfl | hp0
  · simp [aestronglyMeasurable_const]
  rcases eq_or_ne p ∞ with rfl | hptop
  · exact memLp_top_const c
  apply (integrable_norm_rpow_iff (by fun_prop) hp0 hptop).1
  have I : Integrable (fun (x : E) ↦ ‖x‖) μ := by
    apply Integrable.norm
    contrapose hx
    exact integral_undef hx
  have := (h_Lp.integrable_norm_rpow hp0 hptop).const_mul (2 ^ p.toReal)
  apply (((I.const_mul (2 * ‖c‖ ^ (p.toReal - 1))).add this)).mono' (by fun_prop)
  filter_upwards [] with y
  lift p to ℝ≥0 using hptop
  simp only [ENNReal.coe_toReal, Real.norm_eq_abs, Pi.add_apply]
  rw [abs_of_nonneg (by positivity)]
  rcases le_total ‖y‖ (‖c‖ / 2)
  · have : ‖c‖ ≤ ‖y‖ + ‖y - c‖ := Eq.trans_le (by abel_nf) (norm_sub_le y (y - c))
    calc ‖c‖ ^ (p : ℝ)
    _ ≤ (2 * ‖y - c‖) ^ (p : ℝ) := by
      gcongr
      linarith
    _ = 0 + 2 ^ (p : ℝ) * ‖y - c‖ ^ (p : ℝ) := by
      rw [Real.mul_rpow (by simp) (by positivity)]
      ring
    _ ≤ 2 * ‖c‖ ^ (p - 1 : ℝ) * ‖y‖ + 2 ^ (p : ℝ) * ‖y - c‖ ^ (p : ℝ) := by
      gcongr
      positivity
  · calc ‖c‖ ^ (p : ℝ)
    _ = ‖c‖ ^ ((p - 1) + 1 : ℝ) := by abel_nf
    _ = ‖c‖ ^ (p - 1 : ℝ) * ‖c‖ := by rw [Real.rpow_add (by positivity), Real.rpow_one]
    _ ≤ ‖c‖ ^ (p - 1 : ℝ) * (2 * ‖y‖) := by gcongr; linarith
    _ = 2 * ‖c‖ ^ (p - 1 : ℝ) * ‖y‖ + 0 := by ring
    _ ≤ 2 * ‖c‖ ^ (p - 1 : ℝ) * ‖y‖ + 2 ^ (p : ℝ) * ‖y - c‖ ^ (p : ℝ) := by gcongr; positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80cde296bc69db2a1015dddbf0d3a68b4797da7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
