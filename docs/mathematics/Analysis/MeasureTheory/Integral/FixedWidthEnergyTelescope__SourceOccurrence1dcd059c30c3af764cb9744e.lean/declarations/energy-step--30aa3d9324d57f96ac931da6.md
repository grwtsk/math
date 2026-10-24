# energy_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "beb92fcfbed12582b897e7cb58f05419f05979bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c1f92d2-1ff8-0e35-8d6b-2521aa6dc127",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "beb92fcfbed12582b897e7cb58f05419f05979bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5b77c26-f4fa-523a-f96d-eba3c50070eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a732401-b45b-25df-1cad-a386fa58669c",
  "kind": "theorem",
  "lexical_name": "energy_step",
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
  "slug": "energy-step--30aa3d9324d57f96ac931da6",
  "source": {
    "blob": "beb92fcfbed12582b897e7cb58f05419f05979bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 31,
    "path": "GRWTSK/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30aa3d9324d57f96ac931da6467d721c1fd33ad4f9074a7f0090841986068b3d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a732401-b45b-25df-1cad-a386fa58669c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_step {b T : ℝ} (hb : 0 ≤ b) (hT : b ≤ T) :
    energy T = energy (T-b)+localEnergy b T := by
  have hf : Continuous (fun u : ℝ => globalPickup u^2) := globalPickup_continuous.pow 2
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hf.intervalIntegrable (μ := volume) (a := 0) (b := T-b))
    (hf.intervalIntegrable (μ := volume) (a := T-b) (b := T))
  rw [intervalIntegral.integral_of_le (by linarith : 0 ≤ T-b),
    intervalIntegral.integral_of_le (by linarith : T-b ≤ T),
    intervalIntegral.integral_of_le (by linarith : 0 ≤ T),
    ← integral_Icc_eq_integral_Ioc, ← integral_Icc_eq_integral_Ioc,
    ← integral_Icc_eq_integral_Ioc] at hadd
  rw [energy_eq_global_integral, energy_eq_global_integral]
  exact hadd.symm

/-- Exact finite telescope over every full terminal window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beb92fcfbed12582b897e7cb58f05419f05979bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
