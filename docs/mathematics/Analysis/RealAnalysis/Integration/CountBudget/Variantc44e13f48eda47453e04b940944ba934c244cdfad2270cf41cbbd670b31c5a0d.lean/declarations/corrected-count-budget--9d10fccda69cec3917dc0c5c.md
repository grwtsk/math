# corrected_count_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c04d142e-c5b0-1958-df96-e08c672abb41",
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
  "slug": "corrected-count-budget--9d10fccda69cec3917dc0c5c",
  "source": {
    "blob": "56f42c36fb0fca00678ad266e553e28e15c066a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CountBudget/Variantc44e13f48eda47453e04b940944ba934c244cdfad2270cf41cbbd670b31c5a0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d10fccda69cec3917dc0c5ce2b8025028ac40edd233702d20f3ffb263dc9e53",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CountBudget/Variantc44e13f48eda47453e04b940944ba934c244cdfad2270cf41cbbd670b31c5a0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c04d142e-c5b0-1958-df96-e08c672abb41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CountBudget/Variantc44e13f48eda47453e04b940944ba934c244cdfad2270cf41cbbd670b31c5a0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CountBudget/Variantc44e13f48eda47453e04b940944ba934c244cdfad2270cf41cbbd670b31c5a0d.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56f42c36fb0fca00678ad266e553e28e15c066a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
