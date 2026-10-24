# model_counting_power_saving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09770a82-38a7-a1e7-ffdc-3ebf453b1357",
  "kind": "theorem",
  "lexical_name": "model_counting_power_saving",
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
  "slug": "model-counting-power-saving--1b8557b65a795a348f644569",
  "source": {
    "blob": "349c4f714ecf6236181f44e282d9efcb04713b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneCountermodel/Variantc9db2074f97fd593919b37385520d3a278220b9072c4831afbeffb8dd88d87fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b8557b65a795a348f64456965c25dd2200b3771450e64513cb2a9175cd3b16d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneCountermodel/Variantc9db2074f97fd593919b37385520d3a278220b9072c4831afbeffb8dd88d87fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09770a82-38a7-a1e7-ffdc-3ebf453b1357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem model_counting_power_saving (x : ℝ) (hx : 2 ≤ x) :
    |weightedPrefix (Real.log x) - x| < 3 * x ^ (3 / 4 : ℝ) := by
  have hx0 : 0 < x := by linarith
  have hp0 := Real.rpow_pos_of_pos hx0 (3 / 4 : ℝ)
  have hp1 : 1 ≤ x ^ (3 / 4 : ℝ) := Real.one_le_rpow (by linarith) (by norm_num)
  have h2 : (2 : ℝ) ^ (3 / 4 : ℝ) ≤ 2 := by
    simpa only [Real.rpow_one] using Real.rpow_le_rpow_of_exponent_le
      (by norm_num : (1 : ℝ) ≤ 2) (by norm_num : (3 / 4 : ℝ) ≤ 1)
  have h20 := Real.rpow_pos_of_pos (by norm_num : (0 : ℝ) < 2) (3 / 4 : ℝ)
  rw [counting_exact x hx]
  have hnorm : |x - 2 + amplitude / 3 * (x ^ (3 / 4 : ℝ) - (2 : ℝ) ^ (3 / 4 : ℝ)) - x| ≤
      2 + amplitude / 3 * (x ^ (3 / 4 : ℝ) + (2 : ℝ) ^ (3 / 4 : ℝ)) := by
    have he : x - 2 + amplitude / 3 * (x ^ (3 / 4 : ℝ) - (2 : ℝ) ^ (3 / 4 : ℝ)) - x =
      -2 + amplitude / 3 * (x ^ (3 / 4 : ℝ) - (2 : ℝ) ^ (3 / 4 : ℝ)) := by ring
    rw [he]
    have ht := abs_add_le (-2 : ℝ) (amplitude / 3 * (x ^ (3 / 4 : ℝ) - (2 : ℝ) ^ (3 / 4 : ℝ)))
    rw [abs_mul, abs_of_pos (div_pos amplitude_pos (by norm_num))] at ht
    have hs := abs_sub (x ^ (3 / 4 : ℝ)) ((2 : ℝ) ^ (3 / 4 : ℝ))
    rw [abs_of_pos hp0, abs_of_pos h20] at hs
    norm_num at ht
    have hm := mul_le_mul_of_nonneg_left hs (div_nonneg amplitude_pos.le (by norm_num : (0 : ℝ) ≤ 3))
    linarith
  have ha : amplitude < 1 := amplitude_lt_one_fifth.trans (by norm_num)
  have hm := mul_lt_mul_of_pos_right ha hp0
  have hgap := mul_nonneg (sub_nonneg.mpr hp1) amplitude_pos.le
  have htail := mul_le_mul_of_nonneg_left h2 (div_nonneg amplitude_pos.le (by norm_num : (0 : ℝ) ≤ 3))
  nlinarith

#check sourceModeMoment_dictionary
#print axioms sourceModeMoment_dictionary
#check sourceReadout_actual_square
#print axioms sourceReadout_actual_square
#check actual_sourceReadout_tendsto
#print axioms actual_sourceReadout_tendsto
#check actual_sourceReadout_scaled_limit
#print axioms actual_sourceReadout_scaled_limit
#check actual_sourceReadout_boundary_limit
#print axioms actual_sourceReadout_boundary_limit
#check model_counting_power_saving
#print axioms model_counting_power_saving
end
end ContinuousResearch.MonotoneCountermodel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneCountermodel/Variantc9db2074f97fd593919b37385520d3a278220b9072c4831afbeffb8dd88d87fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneCountermodel/Variantc9db2074f97fd593919b37385520d3a278220b9072c4831afbeffb8dd88d87fb.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349c4f714ecf6236181f44e282d9efcb04713b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
