# fullKappaShortBudget_le_fifty_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a29c789b-f7ba-38af-5778-6bffd84d57c3",
  "kind": "theorem",
  "lexical_name": "fullKappaShortBudget_le_fifty_five",
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
  "slug": "fullkappashortbudget-le-fifty-five--64d6710e5d3d3624d2eb59e2",
  "source": {
    "blob": "103d938f25a615ed3bad83c19e2300a8ca9f1bed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailQuantitative/Variant07d8beca59fdafae9f79e0d37def07c104413cbc10d4a333726efecef27d489f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64d6710e5d3d3624d2eb59e24a68088ae86193c824613b272ae9e86617e353f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailQuantitative/Variant07d8beca59fdafae9f79e0d37def07c104413cbc10d4a333726efecef27d489f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a29c789b-f7ba-38af-5778-6bffd84d57c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullKappaShortBudget_le_fifty_five {A : ℝ} (hA : 25600 ≤ A) :
    fullKappaShortBudget A ≤ 55 := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  let T := Real.log (vaughanCutoff A : ℝ)
  let S := Real.sqrt A
  have hs0 : 0 < S := Real.sqrt_pos.2 hp
  have hs160 : 160 ≤ S := by
    apply Real.le_sqrt_of_sq_le
    norm_num
    exact hA
  have hss : S ^ 2 = A := Real.sq_sqrt hp.le
  have ht0 : 0 ≤ T := Real.log_nonneg (actual_cutoff_order A hA1).1
  have ht2 : T ^ 2 ≤ 64 * S :=
    RH16IndependentChallengeNext.actualCutoff_log_sq_le_sqrt hA1
  have htA : T ^ 2 ≤ A := (actual_cutoff_logs_le_scale hA).1
  have hTS : T ≤ S := by nlinarith
  have hSA : S ≤ A := by nlinarith
  have hK := RH16IndependentChallengeNext.actualFullPositiveKappa_four_abs_bounds
  have h1 : 8640 / S ≤ (54 : ℝ) := by
    apply (div_le_iff₀ hs0).2
    linarith
  have h2 : 2880 / A ≤ (1 / 2 : ℝ) := by
    apply (div_le_iff₀ hp).2
    linarith
  have h3 : 25728 * S / A ^ 3 ≤ (1 / 2 : ℝ) := by
    have hA2 : (51456 : ℝ) ≤ A ^ 2 := by nlinarith
    have hm : 51456 * S ≤ A ^ 3 := calc
      _ ≤ 51456 * A := mul_le_mul_of_nonneg_left hSA (by norm_num)
      _ ≤ A ^ 2 * A := mul_le_mul_of_nonneg_right hA2 hp.le
      _ = _ := by ring
    apply (div_le_iff₀ (by positivity : 0 < A ^ 3)).2
    linarith
  rw [fullKappaShortBudget_eq hp]
  calc
    _ ≤ (120 * T ^ 2 + 960 * T + 2880) / A + 25728 * T / A ^ 3 := by
      change (20 * |fullPositiveKappa 1| * T ^ 2 + 40 * |fullPositiveKappa 2| * T +
        20 * |fullPositiveKappa 3|) / A + (67 / 3 : ℝ) * |fullPositiveKappa 4| * T / A ^ 3 ≤ _
      apply add_le_add
      · apply div_le_div_of_nonneg_right _ hp.le
        nlinarith [mul_le_mul_of_nonneg_right hK.1 (sq_nonneg T),
          mul_le_mul_of_nonneg_right hK.2.1 ht0]
      · apply div_le_div_of_nonneg_right _ (by positivity : 0 ≤ A ^ 3)
        nlinarith [mul_le_mul_of_nonneg_right hK.2.2.2 ht0]
    _ ≤ (7680 * S + 960 * S + 2880) / A + 25728 * S / A ^ 3 := by
      gcongr
    _ = 8640 / S + 2880 / A + 25728 * S / A ^ 3 := by
      have he : 8640 * S / A = 8640 / S := by
        apply (div_eq_div_iff hp.ne' hs0.ne').2
        nlinarith [hss]
      rw [add_div, add_div, ← add_div, show 7680 * S + 960 * S = 8640 * S by ring, he]
      ring
    _ ≤ 55 := by linarith

/-- The actual leading approximation preserves all signed terms with the sharper error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailQuantitative/Variant07d8beca59fdafae9f79e0d37def07c104413cbc10d4a333726efecef27d489f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailQuantitative/Variant07d8beca59fdafae9f79e0d37def07c104413cbc10d4a333726efecef27d489f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `103d938f25a615ed3bad83c19e2300a8ca9f1bed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
