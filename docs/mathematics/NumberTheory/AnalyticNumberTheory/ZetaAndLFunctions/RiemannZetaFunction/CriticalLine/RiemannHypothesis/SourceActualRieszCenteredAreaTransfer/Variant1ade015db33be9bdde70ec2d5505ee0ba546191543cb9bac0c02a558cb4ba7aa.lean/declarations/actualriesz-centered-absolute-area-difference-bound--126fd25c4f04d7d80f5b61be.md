# actualRiesz_centered_absolute_area_difference_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db7501c4-29e7-a4ac-244f-6abea049c4dc",
  "kind": "theorem",
  "lexical_name": "actualRiesz_centered_absolute_area_difference_bound",
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
  "slug": "actualriesz-centered-absolute-area-difference-bound--126fd25c4f04d7d80f5b61be",
  "source": {
    "blob": "f6fef7839a8948e78dc5d9ad09c957f956f3a0ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant1ade015db33be9bdde70ec2d5505ee0ba546191543cb9bac0c02a558cb4ba7aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:126fd25c4f04d7d80f5b61bebb87dec77b4408b0b6bd82f1126bad14758620b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant1ade015db33be9bdde70ec2d5505ee0ba546191543cb9bac0c02a558cb4ba7aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db7501c4-29e7-a4ac-244f-6abea049c4dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRiesz_centered_absolute_area_difference_bound {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    |(∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) -
      (∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|)| ≤
        2 * (actualRieszLimitingLinearCenter - actualRieszLinearCenter A) * A ^ 2 := by
  have hA0 : 0 < A := by linarith
  have h2A : 0 ≤ 2 * A := by linarith
  let δ := actualRieszLimitingLinearCenter - actualRieszLinearCenter A
  have hδ : 0 ≤ δ := (actualRiesz_finite_center_payment_bound hA0).1
  have hfixed := (actualFixedCenteredMangoldtRiesz_intervalIntegrable hA b).abs
  have hfinite := (actualCenteredMangoldtRiesz_intervalIntegrable hA b).abs
  have hlinear : IntervalIntegrable (fun t : ℝ => δ * t) volume 0 (2 * A) :=
    (continuous_const.mul continuous_id).intervalIntegrable 0 (2 * A)
  have htime : (∫ t in 0..2 * A, t) = 2 * A ^ 2 := by
    have hd (t : ℝ) : HasDerivAt (fun x : ℝ => x ^ 2 / 2) t t := by
      simpa using ((hasDerivAt_id t).pow 2).div_const (2 : ℝ)
    calc
      _ = (2 * A) ^ 2 / 2 - (0 : ℝ) ^ 2 / 2 :=
        intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
          (continuous_id.intervalIntegrable 0 (2 * A))
      _ = _ := by ring
  have hb := intervalIntegral.norm_integral_le_of_norm_le h2A
    (f := fun t : ℝ => |actualFixedCenteredMangoldtRieszPrimitive b t| -
      |actualCenteredMangoldtRieszPrimitive A b t|) (g := fun t : ℝ => δ * t) ?_ hlinear
  · calc
      _ = |(∫ t in 0..2 * A, (|actualFixedCenteredMangoldtRieszPrimitive b t| -
          |actualCenteredMangoldtRieszPrimitive A b t|))| := by
        rw [intervalIntegral.integral_sub hfixed hfinite]
      _ ≤ ∫ t in 0..2 * A, δ * t := by simpa only [Real.norm_eq_abs] using hb
      _ = _ := by
        rw [intervalIntegral.integral_const_mul, htime]
        dsimp only [δ]
        ring
  · apply Filter.Eventually.of_forall
    intro t ht
    have ht0 : 0 ≤ t := ht.1.le
    rw [Real.norm_eq_abs]
    have hh := abs_abs_sub_abs_le_abs_sub
      (actualFixedCenteredMangoldtRieszPrimitive b t)
      (actualCenteredMangoldtRieszPrimitive A b t)
    rw [centered_profiles_sub, abs_mul, abs_neg, abs_of_nonneg hδ,
      abs_of_nonneg ht0] at hh
    exact hh

/-- The exact finite payment makes the full area difference uniformly at most 112. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant1ade015db33be9bdde70ec2d5505ee0ba546191543cb9bac0c02a558cb4ba7aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant1ade015db33be9bdde70ec2d5505ee0ba546191543cb9bac0c02a558cb4ba7aa.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6fef7839a8948e78dc5d9ad09c957f956f3a0ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
