# actualNinthNormalizedCriticalCovariance_Pnt_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd0b5b28-9a02-4355-a5d7-2af04ea30252",
  "kind": "theorem",
  "lexical_name": "actualNinthNormalizedCriticalCovariance_Pnt_budget",
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
  "slug": "actualninthnormalizedcriticalcovariance-pnt-budget--8e895c20c1c6a601734d2b82",
  "source": {
    "blob": "923048bf5ed7e6fba1ad4b46a9fde106d4460501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 107,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variantdd06be6b5c58031f9c3c3b28bb061df8990ead52a936740d0421c51202e7b5e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e895c20c1c6a601734d2b82a2346e8c5b1cef31ff13bcd5e866e4cfa52c0e0d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variantdd06be6b5c58031f9c3c3b28bb061df8990ead52a936740d0421c51202e7b5e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd0b5b28-9a02-4355-a5d7-2af04ea30252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNinthNormalizedCriticalCovariance_Pnt_budget {A c C : ℝ} (hA : 91 ≤ A)
    (hc : 0 < c) (hC : 0 ≤ C)
    (hG : ∀ t ≥ A, |actualCenteredMangoldtLogError t| ≤
      C * Real.exp (-c * t ^ ((1 : ℝ) / 10))) :
    |actualNinthNormalizedCriticalCovariance A| ≤
      (27 / 4 * B) * A ^ 9 * Real.exp (-A / 2) +
        101921587200 * C * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  have hA0 : 0 ≤ A := by linarith
  have ha : Real.log 7 ≤ A := by
    have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    linarith
  have hlate : ∀ t, A ≤ t → |actualCenteredMangoldtLogError t| ≤
      C * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
    intro t ht
    have hp := Real.rpow_le_rpow hA0 ht (by norm_num : (0 : ℝ) ≤ 1 / 10)
    have he : Real.exp (-c * t ^ ((1 : ℝ) / 10)) ≤
        Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
      apply Real.exp_le_exp.mpr
      nlinarith
    exact (hG t ht).trans (mul_le_mul_of_nonneg_left he hC)
  have h := actualNinthNormalizedCriticalCovariance_abs_le hA ha (by linarith : A ≤ 2 * A)
    (mul_nonneg hC (Real.exp_pos _).le) hlate
  have hh := h.trans (add_le_add (actualMovingEarlyNinthNormalizedBudget_le hA) le_rfl)
  simpa only [mul_assoc] using hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variantdd06be6b5c58031f9c3c3b28bb061df8990ead52a936740d0421c51202e7b5e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variantdd06be6b5c58031f9c3c3b28bb061df8990ead52a936740d0421c51202e7b5e1.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `923048bf5ed7e6fba1ad4b46a9fde106d4460501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
