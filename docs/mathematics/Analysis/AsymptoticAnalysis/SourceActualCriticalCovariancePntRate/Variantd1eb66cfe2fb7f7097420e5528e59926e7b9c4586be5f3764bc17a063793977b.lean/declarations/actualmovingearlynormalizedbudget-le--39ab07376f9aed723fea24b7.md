# actualMovingEarlyNormalizedBudget_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36d1fc2e-1066-d842-aff3-3b82de6f2ebc",
  "kind": "theorem",
  "lexical_name": "actualMovingEarlyNormalizedBudget_le",
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
  "slug": "actualmovingearlynormalizedbudget-le--39ab07376f9aed723fea24b7",
  "source": {
    "blob": "95740f3c5a807a52220db2c5e3cb148eb11addca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 70,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantd1eb66cfe2fb7f7097420e5528e59926e7b9c4586be5f3764bc17a063793977b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39ab07376f9aed723fea24b7088f2cd23d171064a4274106567f2d461c94ecb8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantd1eb66cfe2fb7f7097420e5528e59926e7b9c4586be5f3764bc17a063793977b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36d1fc2e-1066-d842-aff3-3b82de6f2ebc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMovingEarlyNormalizedBudget_le {A : ℝ} (hA : 91 ≤ A) :
    actualNormalizedCriticalEarlyBudget A A ≤ (27 / 4 * B) * A ^ 4 * Real.exp (-A / 2) := by
  have ha : Real.log 7 ≤ A := by
    have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    linarith
  have hh := actualEarlyCriticalErrorCenter_abs_le ha
  have hb : 0 ≤ B := by positivity
  have he : Real.exp (A / 2) * Real.exp (-A) = Real.exp (-A / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hpow : A ^ 3 ≤ A ^ 4 := by
    nlinarith [sq_nonneg A, sq_nonneg (A ^ 2)]
  unfold actualNormalizedCriticalEarlyBudget
  calc
    _ ≤ ((B / 2) * Real.exp (A / 2)) * (A ^ 4 * Real.exp (-A)) +
        (2 * B * Real.exp (A / 2) * (5 / 8 * A ^ 2 + 5 / 2 * A)) *
          (A ^ 2 * Real.exp (-A)) :=
      add_le_add (mul_le_mul_of_nonneg_right hh (by positivity)) le_rfl
    _ = B * (7 / 4 * A ^ 4 + 5 * A ^ 3) * Real.exp (-A / 2) := by
      calc
        _ = B * (7 / 4 * A ^ 4 + 5 * A ^ 3) *
            (Real.exp (A / 2) * Real.exp (-A)) := by ring
        _ = _ := by rw [he]
    _ ≤ _ := by
      have hm : 7 / 4 * A ^ 4 + 5 * A ^ 3 ≤ 27 / 4 * A ^ 4 := by linarith
      have hh := mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hm hb)
        (Real.exp_pos (-A / 2)).le
      calc
        _ ≤ B * (27 / 4 * A ^ 4) * Real.exp (-A / 2) := hh
        _ = _ := by ring

/-- A source-specific late PNT rate gives an explicit full normalized budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantd1eb66cfe2fb7f7097420e5528e59926e7b9c4586be5f3764bc17a063793977b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantd1eb66cfe2fb7f7097420e5528e59926e7b9c4586be5f3764bc17a063793977b.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95740f3c5a807a52220db2c5e3cb148eb11addca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
