# whole_short_error_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fe46628-f9f0-fc46-3a78-32f52719661a",
  "kind": "theorem",
  "lexical_name": "whole_short_error_abs_le",
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
  "slug": "whole-short-error-abs-le--21bc2e0aab3eb1a8adfe063c",
  "source": {
    "blob": "2f545aabf9b7ffacb1f37e461c3ce9ada8d276a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21bc2e0aab3eb1a8adfe063c4396edb8fa9a31bb3e8b903b4f0abba80f29e3ff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fe46628-f9f0-fc46-3a78-32f52719661a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whole_short_error_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicErrorRow A (d : ℝ)| ≤ 85760 / A ^ 3 := by
  have hc : 0 ≤ 42880 / A ^ 4 := by positivity
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * wholeCubicErrorRow A (d : ℝ)| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        (42880 / A ^ 4) * (|realMoebius d| / Real.sqrt (d : ℝ)) := by
      apply Finset.sum_le_sum
      intro d hd
      have hd0 : 0 < (d : ℝ) := by
        exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
      rw [abs_mul]
      apply (mul_le_mul_of_nonneg_left (wholeCubicErrorRow_abs_le hA hd0)
        (abs_nonneg _)).trans
      apply le_of_eq
      ring
    _ = (42880 / A ^ 4) *
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ)) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (42880 / A ^ 4) * (2 * A) :=
      mul_le_mul_of_nonneg_left (actualMoebiusSqrtMass_le A (by linarith)) hc
    _ = _ := by
      field_simp [show A ≠ 0 by linarith]
      ring
/-- Fixed full-axis four-jet main, with independently defined signed coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f545aabf9b7ffacb1f37e461c3ce9ada8d276a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
