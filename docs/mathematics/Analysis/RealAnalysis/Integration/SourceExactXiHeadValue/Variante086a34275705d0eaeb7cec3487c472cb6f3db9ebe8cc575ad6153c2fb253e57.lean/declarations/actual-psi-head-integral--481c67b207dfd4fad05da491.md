# actual_psi_head_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30a245f5-ebf7-cbf2-dabe-22734a45495b",
  "kind": "theorem",
  "lexical_name": "actual_psi_head_integral",
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
  "slug": "actual-psi-head-integral--481c67b207dfd4fad05da491",
  "source": {
    "blob": "138889f831987ef434facaa7ec583ee83e9843b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:481c67b207dfd4fad05da4918ebc4ba02b9e19d42312312c44d1ee75fe73aeea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30a245f5-ebf7-cbf2-dabe-22734a45495b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_psi_head_integral :
    (∫ y in (2 : ℝ)..7, Chebyshev.psi y / y ^ (3 / 2 : ℝ)) =
      2 * Real.log 2 * (1 / Real.sqrt 2 - 1 / Real.sqrt 3) +
      2 * Real.log 6 * (1 / Real.sqrt 3 - 1 / 2) +
      2 * Real.log 12 * (1 / 2 - 1 / Real.sqrt 5) +
      2 * Real.log 60 * (1 / Real.sqrt 5 - 1 / Real.sqrt 7) := by
  have hi := psi_inverse_power_intervalIntegrable
  have h23 : IntervalIntegrable
      (fun y : ℝ => Chebyshev.psi y / y ^ (3 / 2 : ℝ)) volume 2 3 := by
    apply hi.mono_set
    rw [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 3),
      uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7)]
    exact Icc_subset_Icc le_rfl (by norm_num)
  have h34 : IntervalIntegrable
      (fun y : ℝ => Chebyshev.psi y / y ^ (3 / 2 : ℝ)) volume 3 4 := by
    apply hi.mono_set
    rw [uIcc_of_le (by norm_num : (3 : ℝ) ≤ 4),
      uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7)]
    exact Icc_subset_Icc (by norm_num) (by norm_num)
  have h45 : IntervalIntegrable
      (fun y : ℝ => Chebyshev.psi y / y ^ (3 / 2 : ℝ)) volume 4 5 := by
    apply hi.mono_set
    rw [uIcc_of_le (by norm_num : (4 : ℝ) ≤ 5),
      uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7)]
    exact Icc_subset_Icc (by norm_num) (by norm_num)
  have h57 : IntervalIntegrable
      (fun y : ℝ => Chebyshev.psi y / y ^ (3 / 2 : ℝ)) volume 5 7 := by
    apply hi.mono_set
    rw [uIcc_of_le (by norm_num : (5 : ℝ) ≤ 7),
      uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7)]
    exact Icc_subset_Icc (by norm_num) le_rfl
  have h24 := intervalIntegral.integral_add_adjacent_intervals h23 h34
  have h25 := intervalIntegral.integral_add_adjacent_intervals (h23.trans h34) h45
  have h27 := intervalIntegral.integral_add_adjacent_intervals ((h23.trans h34).trans h45) h57
  rw [← h27, ← h25, ← h24,
    psi_step_integral (by norm_num : (0 : ℝ) < 2) (by norm_num) (fun y hy => psi_on_two_three hy),
    psi_step_integral (by norm_num : (0 : ℝ) < 3) (by norm_num) (fun y hy => psi_on_three_four hy),
    psi_step_integral (by norm_num : (0 : ℝ) < 4) (by norm_num) (fun y hy => psi_on_four_five hy),
    psi_step_integral (by norm_num : (0 : ℝ) < 5) (by norm_num) (fun y hy => psi_on_five_seven hy)]
  norm_num

/-- Exact explicit head constant; prime seven appears before its closed-boundary cancellation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `138889f831987ef434facaa7ec583ee83e9843b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
