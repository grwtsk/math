# unitEarly_add_scale_sub_fractional_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5726e617-aebe-b978-2ad9-696d61487521",
  "kind": "theorem",
  "lexical_name": "unitEarly_add_scale_sub_fractional_abs_le",
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
  "slug": "unitearly-add-scale-sub-fractional-abs-le--05907e7da10ce50f5fe079dc",
  "source": {
    "blob": "b2872b504e1c6d3aee22280299ca8f5d48b319dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 331,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05907e7da10ce50f5fe079dcfeed9d0bfd44e95950337d5b50f93bf4d559a8ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5726e617-aebe-b978-2ad9-696d61487521`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitEarly_add_scale_sub_fractional_abs_le {A : ℝ} (hA : 2 ≤ A) :
    |(∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ), earlyUnitFloorDensity x) +
      A - earlyFractionalConstant| ≤ 2 / A := by
  have hp : 0 < A := by linarith
  have hs := actualCutoff_sqrt_gap_bounds hA
  have ht := earlyFractionalDensity_tail_bounds (actual_cutoff_order A (by linarith : 1 ≤ A)).1
  have hg : A - Real.sqrt (vaughanCutoff A : ℝ) ≤ 2 / A :=
    hs.2.1.trans (div_le_div_of_nonneg_right (by norm_num : (1 : ℝ) ≤ 2) hp.le)
  have htU : (1 / 2 : ℝ) *
      (∫ x in Ioi (vaughanCutoff A : ℝ), earlyFractionalDensity x) ≤ 2 / A := by
    have hh : (1 / 2 : ℝ) *
        (∫ x in Ioi (vaughanCutoff A : ℝ), earlyFractionalDensity x) ≤
        1 / Real.sqrt (vaughanCutoff A : ℝ) := by
      calc
        _ ≤ (1 / 2 : ℝ) * (2 / Real.sqrt (vaughanCutoff A : ℝ)) :=
          mul_le_mul_of_nonneg_left ht.2 (by norm_num)
        _ = _ := by ring
    exact hh.trans hs.2.2
  rw [unitEarly_add_scale_sub_fractional_eq (by linarith : 1 ≤ A)]
  apply abs_le.mpr
  constructor <;> linarith [hs.1, ht.1]

/-- The actual source head plus A has its independently specified fractional constant
with the full true-floor error retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2872b504e1c6d3aee22280299ca8f5d48b319dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
