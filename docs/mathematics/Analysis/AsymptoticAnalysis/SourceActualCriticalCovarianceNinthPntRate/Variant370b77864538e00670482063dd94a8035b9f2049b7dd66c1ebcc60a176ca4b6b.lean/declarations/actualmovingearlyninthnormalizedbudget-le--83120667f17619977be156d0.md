# actualMovingEarlyNinthNormalizedBudget_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6cd8243-c6b5-8cc7-518e-c79e6431c960",
  "kind": "theorem",
  "lexical_name": "actualMovingEarlyNinthNormalizedBudget_le",
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
  "slug": "actualmovingearlyninthnormalizedbudget-le--83120667f17619977be156d0",
  "source": {
    "blob": "6809ba32c4f7206e85f5a4b0b40c220a86508214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 79,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variant370b77864538e00670482063dd94a8035b9f2049b7dd66c1ebcc60a176ca4b6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83120667f17619977be156d0c0a1d984899d33b61fde2cecbc9ead972c6b9ce9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variant370b77864538e00670482063dd94a8035b9f2049b7dd66c1ebcc60a176ca4b6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6cd8243-c6b5-8cc7-518e-c79e6431c960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMovingEarlyNinthNormalizedBudget_le {A : ℝ} (hA : 91 ≤ A) :
    actualNinthNormalizedCriticalEarlyBudget A A ≤ (27 / 4 * B) * A ^ 9 * Real.exp (-A / 2) := by
  have ha : Real.log 7 ≤ A := by
    have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    linarith
  have hh := actualEarlyCriticalErrorCenter_abs_le ha
  have hb : 0 ≤ B := by positivity
  have he : Real.exp (A / 2) * Real.exp (-A) = Real.exp (-A / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hpow : A ^ 8 ≤ A ^ 9 := by
    calc
      _ = A ^ 8 * 1 := by ring
      _ ≤ A ^ 8 * A := mul_le_mul_of_nonneg_left (by linarith) (by positivity)
      _ = _ := by ring
  unfold actualNinthNormalizedCriticalEarlyBudget
  calc
    _ ≤ ((B / 2) * Real.exp (A / 2)) * (A ^ 9 * Real.exp (-A)) +
        (2 * B * Real.exp (A / 2) * (5 / 8 * A ^ 2 + 5 / 2 * A)) *
          (A ^ 7 * Real.exp (-A)) :=
      add_le_add (mul_le_mul_of_nonneg_right hh (by positivity)) le_rfl
    _ = B * (7 / 4 * A ^ 9 + 5 * A ^ 8) * Real.exp (-A / 2) := by
      calc
        _ = B * (7 / 4 * A ^ 9 + 5 * A ^ 8) *
            (Real.exp (A / 2) * Real.exp (-A)) := by ring
        _ = _ := by rw [he]
    _ ≤ _ := by
      have hm : 7 / 4 * A ^ 9 + 5 * A ^ 8 ≤ 27 / 4 * A ^ 9 := by linarith
      have hh := mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hm hb)
        (Real.exp_pos (-A / 2)).le
      calc
        _ ≤ B * (27 / 4 * A ^ 9) * Real.exp (-A / 2) := hh
        _ = _ := by ring

/-- A source-specific late PNT rate gives an explicit full normalized budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variant370b77864538e00670482063dd94a8035b9f2049b7dd66c1ebcc60a176ca4b6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variant370b77864538e00670482063dd94a8035b9f2049b7dd66c1ebcc60a176ca4b6b.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6809ba32c4f7206e85f5a4b0b40c220a86508214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
