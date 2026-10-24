# corrected_count_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e924409e-2c7e-4919-f913-dd98e8d7e451",
  "kind": "theorem",
  "lexical_name": "corrected_count_budget",
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
  "slug": "corrected-count-budget--f1ba490901be3aa238e286f1",
  "source": {
    "blob": "cecdb253bb0c844418c5f46c464d94f69d600d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1ba490901be3aa238e286f1dd491315e99b3cba304ad5349f99ffd248471de7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e924409e-2c7e-4919-f913-dd98e8d7e451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_count_budget (T : ℝ) (hT : Real.exp 1 ≤ T)
    (hBW : CorrectedBellottiWongCount) :
    -actualPositiveZeroCount T/T^6 +
      6*(∫ t : ℝ in Ioi T, actualPositiveZeroCount t/t^7) ≤
        positiveSixthPowerCountEnvelope T := by
  have hp : 0 < T := (Real.exp_pos 1).trans_le hT
  exact corrected_count_budget_of_integral_moments T hT hBW
    (count_main_seventh_integrable T hp) (count_main_seventh_integral T hp)
    (inverse_power_integrable 6 (by norm_num) T hp)
    (inverse_power_integral 6 (by norm_num) T hp)
    (log_ratio_seventh_integrable T hp) (log_ratio_seventh_integral T hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cecdb253bb0c844418c5f46c464d94f69d600d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
