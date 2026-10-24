# abs_signedAbelDepthShiftResponse_le_two_mul_right_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da52f27d-fcd2-9515-b1db-7fadb0805229",
  "kind": "theorem",
  "lexical_name": "abs_signedAbelDepthShiftResponse_le_two_mul_right_inv",
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
  "slug": "abs-signedabeldepthshiftresponse-le-two-mul-right-inv--e802c7f1fb7525106673142e",
  "source": {
    "blob": "41e7d4e872da780caa4fbd208a04f6c2cca0ecbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 98,
    "path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e802c7f1fb7525106673142eeca60114a9fd557ecf5056f9c3c80fcd2dfd8d1e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da52f27d-fcd2-9515-b1db-7fadb0805229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_signedAbelDepthShiftResponse_le_two_mul_right_inv
    {j t a : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    |signedAbelDepthShiftResponse j t a| ≤
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  rw [signedAbelDepthShiftResponse_eq_range htY]
  calc
    |∑ k ∈ Finset.range (2 ^ (j + 1) - t - 2),
        2 * moebiusReal (a + 2 + k) *
          dyadicMertensShiftWeightDrop j (k + 1) t| ≤
      ∑ k ∈ Finset.range (2 ^ (j + 1) - t - 2),
        |2 * moebiusReal (a + 2 + k) *
          dyadicMertensShiftWeightDrop j (k + 1) t| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.range (2 ^ (j + 1) - t - 2),
        2 * dyadicMertensShiftWeightDrop j (k + 1) t := by
      apply Finset.sum_le_sum
      intro k _hk
      have hdrop :=
        dyadicMertensShiftWeightDrop_nonneg j (k + 1) t
      simp only [abs_mul, abs_of_nonneg hdrop,
        abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
      have hcoeff := mul_le_mul_of_nonneg_right
        (moebiusReal_abs_le_one (a + 2 + k)) hdrop
      nlinarith
    _ = 2 * signedAbelDepthShiftWeightMass j t := by
      unfold signedAbelDepthShiftWeightMass
      rw [Finset.mul_sum]
    _ ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
      exact mul_le_mul_of_nonneg_left
        (signedAbelDepthShiftWeightMass_le_right_inv htY)
        (by norm_num)

/-- Normalize the complete shift response to a one-bounded real test family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41e7d4e872da780caa4fbd208a04f6c2cca0ecbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
