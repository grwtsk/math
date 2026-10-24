# norm_condexpIndL1Fin_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f765fc33-b076-d3c3-68d9-46b467cd625f",
  "kind": "theorem",
  "lexical_name": "norm_condexpIndL1Fin_le",
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
  "slug": "norm-condexpindl1fin-le--d8546854bfdfd910cecfc176",
  "source": {
    "blob": "5b60ab07be3708195f1e012bc688de60f74db63b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8546854bfdfd910cecfc17690c654390ee43f87142bf2fe6f2c2ea06daacdf2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f765fc33-b076-d3c3-68d9-46b467cd625f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_condexpIndL1Fin_le (hs : MeasurableSet s) (hμs : μ s ≠ ∞) (x : G) :
    ‖condexpIndL1Fin hm hs hμs x‖ ≤ (μ s).toReal * ‖x‖ := by
  have : 0 ≤ ∫ a : α, ‖condexpIndL1Fin hm hs hμs x a‖ ∂μ :=
    integral_nonneg fun a => norm_nonneg _
  rw [L1.norm_eq_integral_norm, ← ENNReal.toReal_ofReal (norm_nonneg x), ← ENNReal.toReal_mul, ←
    ENNReal.toReal_ofReal this,
    ENNReal.toReal_le_toReal ENNReal.ofReal_ne_top (ENNReal.mul_ne_top hμs ENNReal.ofReal_ne_top),
    ofReal_integral_norm_eq_lintegral_nnnorm]
  swap; · rw [← memℒp_one_iff_integrable]; exact Lp.memℒp _
  have h_eq :
    ∫⁻ a, ‖condexpIndL1Fin hm hs hμs x a‖₊ ∂μ = ∫⁻ a, ‖condexpIndSMul hm hs hμs x a‖₊ ∂μ := by
    refine' lintegral_congr_ae _
    refine' (condexpIndL1Fin_ae_eq_condexpIndSMul hm hs hμs x).mono fun z hz => _
    dsimp only
    rw [hz]
  rw [h_eq, ofReal_norm_eq_coe_nnnorm]
  exact lintegral_nnnorm_condexpIndSMul_le hm hs hμs x
#align measure_theory.norm_condexp_ind_L1_fin_le MeasureTheory.norm_condexpIndL1Fin_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b60ab07be3708195f1e012bc688de60f74db63b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
