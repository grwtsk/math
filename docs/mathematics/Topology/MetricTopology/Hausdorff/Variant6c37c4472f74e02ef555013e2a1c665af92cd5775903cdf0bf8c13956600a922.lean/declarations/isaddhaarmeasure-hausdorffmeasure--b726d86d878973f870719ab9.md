# isAddHaarMeasure_hausdorffMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc722253925b36b2371e4fe6c127813eef4f688b462b9c0d742964ce8b30c1ee",
  "kind": "instance",
  "lexical_name": "isAddHaarMeasure_hausdorffMeasure",
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
  "slug": "isaddhaarmeasure-hausdorffmeasure--b726d86d878973f870719ab9",
  "source": {
    "blob": "065cf771a127130908e3624200b95d0b0a238f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 992,
    "line": 967,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b726d86d878973f870719ab9cca0fb5e0cfc4aa8f456ddb4494d55a002ed0b00",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc722253925b36b2371e4fe6c127813eef4f688b462b9c0d742964ce8b30c1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 967–992.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isAddHaarMeasure_hausdorffMeasure {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
    [MeasurableSpace E] [BorelSpace E] :
    IsAddHaarMeasure (G := E) μH[finrank ℝ E] where
  lt_top_of_isCompact K hK := by
    set e : E ≃L[ℝ] Fin (finrank ℝ E) → ℝ := ContinuousLinearEquiv.ofFinrankEq (by simp)
    suffices μH[finrank ℝ E] (e '' K) < ⊤ by
      rw [← e.symm_image_image K]
      apply lt_of_le_of_lt <| e.symm.lipschitz.hausdorffMeasure_image_le (by simp) (e '' K)
      rw [ENNReal.rpow_natCast]
      exact ENNReal.mul_lt_top (ENNReal.pow_lt_top ENNReal.coe_lt_top) this
    conv_lhs => congr; congr; rw [← Fintype.card_fin (finrank ℝ E)]
    rw [hausdorffMeasure_pi_real]
    exact (hK.image e.continuous).measure_lt_top
  open_pos U hU hU' := by
    set e : E ≃L[ℝ] Fin (finrank ℝ E) → ℝ := ContinuousLinearEquiv.ofFinrankEq (by simp)
    suffices 0 < μH[finrank ℝ E] (e '' U) from
      (ENNReal.mul_pos_iff.mp (lt_of_lt_of_le this <|
        e.lipschitz.hausdorffMeasure_image_le (by simp) _)).2.ne'
    conv_rhs => congr; congr; rw [← Fintype.card_fin (finrank ℝ E)]
    rw [hausdorffMeasure_pi_real]
    apply (e.isOpenMap U hU).measure_pos (μ := volume)
    simpa

variable (ι X)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean#L967).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065cf771a127130908e3624200b95d0b0a238f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
