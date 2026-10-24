# earlyFractionalDensity_tail_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e213afda-d93a-bd47-1ed0-3efb92c4534d",
  "kind": "theorem",
  "lexical_name": "earlyFractionalDensity_tail_bounds",
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
  "slug": "earlyfractionaldensity-tail-bounds--04cfacde067fae94c3a00e80",
  "source": {
    "blob": "db4c9daff0e07b2c0efc58900c7d55f7c83a0a8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04cfacde067fae94c3a00e80d0421f292449651ba6f55a90075979d913fddba1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e213afda-d93a-bd47-1ed0-3efb92c4534d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem earlyFractionalDensity_tail_bounds {u : ℝ} (hu : 1 ≤ u) :
    0 ≤ (∫ x in Ioi u, earlyFractionalDensity x) ∧
      (∫ x in Ioi u, earlyFractionalDensity x) ≤ 2 / Real.sqrt u := by
  have hu0 : 0 < u := by linarith
  have hi := earlyFractionalDensity_integrable.mono_set (Ioi_subset_Ioi hu)
  have hr := integrableOn_Ioi_rpow_of_lt (by norm_num : -(3 : ℝ) / 2 < -1) hu0
  constructor
  · exact setIntegral_nonneg measurableSet_Ioi
      (fun x hx => earlyFractionalDensity_nonneg (hu0.trans hx))
  · calc
      _ ≤ ∫ x in Ioi u, x ^ (-(3 : ℝ) / 2) := by
        apply setIntegral_mono_on hi hr measurableSet_Ioi
        intro x hx
        unfold earlyFractionalDensity
        exact mul_le_of_le_one_left (Real.rpow_pos_of_pos (hu0.trans hx) _).le
          (Int.fract_lt_one x).le
      _ = 2 / Real.sqrt u := by
        rw [integral_Ioi_rpow_of_lt (by norm_num : -(3 : ℝ) / 2 < -1) hu0]
        norm_num
        rw [Real.rpow_neg hu0.le, ← Real.sqrt_eq_rpow]
        ring

/-- The independent literal fractional constant is finite and lies between one and two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db4c9daff0e07b2c0efc58900c7d55f7c83a0a8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
