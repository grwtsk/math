# whole_head_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02b75095-cc91-2ccb-108d-5736b52dfb78",
  "kind": "theorem",
  "lexical_name": "whole_head_abs_le",
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
  "slug": "whole-head-abs-le--2f76d2b3316af99df292c455",
  "source": {
    "blob": "077e2219afafcd67aba5bef7ebeafbac5c9d9dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant6eaa2e4d9e4359f772a45b8c7137b46661953a2f07ca5038edfe90476c3a19b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f76d2b3316af99df292c455462dc25f2e0a469f8bca37fc4a0b642d1cae1fe3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant6eaa2e4d9e4359f772a45b8c7137b46661953a2f07ca5038edfe90476c3a19b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02b75095-cc91-2ccb-108d-5736b52dfb78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem whole_head_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |(actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re| ≤
      actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 +
        (actualBumpMovingTailConstant (3 / 2) +
          actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) / A ^ 9 := by
  have hE : 0 ≤ actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4) := by
    unfold actualClosedPrimeHeadErrorConstant
    have hh := actualRightLineMass_nonneg (5 / 4)
    positivity
  have he : Real.exp (-2 * (3 / 2 - 5 / 4) * A) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by nlinarith)
  have herr := actualResidual_sub_closedHead_norm_le A (3 / 2) (5 / 4) hA
    (by norm_num) (by norm_num)
  have herr' : ‖(mertensResidual A : ℂ) -
      actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ ≤
        (actualBumpMovingTailConstant (3 / 2) +
          actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) / A ^ 9 := by
    apply herr.trans
    apply div_le_div_of_nonneg_right _ (by positivity)
    nlinarith [mul_le_mul_of_nonneg_left he hE]
  calc
    _ ≤ ‖actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ :=
      Complex.abs_re_le_norm _
    _ ≤ ‖(mertensResidual A : ℂ)‖ +
        ‖(mertensResidual A : ℂ) -
          actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ := by
      have hh := norm_sub_le (mertensResidual A : ℂ)
        ((mertensResidual A : ℂ) -
          actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2)))
      simpa only [sub_sub_cancel] using hh
    _ ≤ _ := add_le_add (by
      rw [Complex.norm_real, Real.norm_eq_abs]
      exact (residual_abs_le_mass hA).trans (actualClosedAbsolutePrimeMoment_le hA)) herr'

/-- The denominator is eventually positive at all real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant6eaa2e4d9e4359f772a45b8c7137b46661953a2f07ca5038edfe90476c3a19b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant6eaa2e4d9e4359f772a45b8c7137b46661953a2f07ca5038edfe90476c3a19b8.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `077e2219afafcd67aba5bef7ebeafbac5c9d9dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
