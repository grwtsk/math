# lintegral_rpow_eq_lintegral_meas_lt_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa2776d7-d191-50b8-0db8-c9438df3f212",
  "kind": "theorem",
  "lexical_name": "lintegral_rpow_eq_lintegral_meas_lt_mul",
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
  "slug": "lintegral-rpow-eq-lintegral-meas-lt-mul--9c54fa72cac74d01f550b653",
  "source": {
    "blob": "d19866ba90671e5d7abc7e000390ac59e90fdea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 364,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c54fa72cac74d01f550b653cd7bae584e9eaa66deb44ddb657ac923509a3ad8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa2776d7-d191-50b8-0db8-c9438df3f212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_rpow_eq_lintegral_meas_lt_mul (μ : Measure α) [SigmaFinite μ] (f_nn : 0 ≤ f)
    (f_mble : Measurable f) {p : ℝ} (p_pos : 0 < p) :
    (∫⁻ ω, ENNReal.ofReal (f ω ^ p) ∂μ) =
      ENNReal.ofReal p * ∫⁻ t in Ioi 0, μ {a : α | t < f a} * ENNReal.ofReal (t ^ (p - 1)) := by
  rw [lintegral_rpow_eq_lintegral_meas_le_mul μ f_nn f_mble p_pos]
  apply congr_arg fun z => ENNReal.ofReal p * z
  apply lintegral_congr_ae
  filter_upwards [Measure.meas_le_ae_eq_meas_lt μ (volume.restrict (Ioi 0)) f_mble] with t ht
  rw [ht]
#align lintegral_rpow_eq_lintegral_meas_lt_mul lintegral_rpow_eq_lintegral_meas_lt_mul

end LayercakeLT
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d19866ba90671e5d7abc7e000390ac59e90fdea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
