# thetaRankFour_tenth_power_exp_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41a0a99806959c01e48ca189bdd4f38a2464b1a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8dc525b574bfd650687fdef982c1443dbabb1d992217ceee2418ac2a9a0fdd01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fccda190-adc7-8502-b673-3f224cac00d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:793b19a0-66f2-bcbe-ef7b-a23fef5da6a5",
  "kind": "theorem",
  "lexical_name": "thetaRankFour_tenth_power_exp_bound",
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
  "slug": "thetarankfour-tenth-power-exp-bound--0a0603d50dd88a9c78d05134",
  "source": {
    "blob": "41a0a99806959c01e48ca189bdd4f38a2464b1a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8dc525b574bfd650687fdef982c1443dbabb1d992217ceee2418ac2a9a0fdd01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a0603d50dd88a9c78d05134fe9ad667e011c9177083d066bdf4317f8b3164a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8dc525b574bfd650687fdef982c1443dbabb1d992217ceee2418ac2a9a0fdd01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:793b19a0-66f2-bcbe-ef7b-a23fef5da6a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRankFour_tenth_power_exp_bound
    {A : ℝ} (hA : 12 ≤ A) :
    A ^ 10 * Real.exp (-3 * A) ≤ 12 ^ 10 / 20 ^ 12 := by
  have hA0 : 0 ≤ A := by linarith
  have he : A ≤ 12 * Real.exp ((A - 12) / 12) := by
    have h := Real.add_one_le_exp ((A - 12) / 12)
    nlinarith
  have hp := pow_le_pow_left₀ hA0 he 10
  have hexp :
      (12 * Real.exp ((A - 12) / 12)) ^ 10 =
        12 ^ 10 * Real.exp (10 * ((A - 12) / 12)) := by
    rw [mul_pow, ← Real.exp_nat_mul]
    norm_num
  rw [hexp] at hp
  have hprod :=
    mul_le_mul_of_nonneg_right hp (Real.exp_nonneg (-3 * A))
  have heq :
      (12 ^ 10 * Real.exp (10 * ((A - 12) / 12))) *
          Real.exp (-3 * A) =
        12 ^ 10 *
          Real.exp (10 * ((A - 12) / 12) + (-3 * A)) := by
    rw [mul_assoc, ← Real.exp_add]
  rw [heq] at hprod
  have harg :
      10 * ((A - 12) / 12) + (-3 * A) ≤ -36 := by
    linarith
  have ht :
      Real.exp (10 * ((A - 12) / 12) + (-3 * A)) ≤ Real.exp (-36) :=
    Real.exp_le_exp.mpr harg
  have hpow := pow_le_pow_left₀
    (by norm_num : (0 : ℝ) ≤ 20) thetaExpThree_gt_twenty.le 12
  have h36 : Real.exp (36 : ℝ) = Real.exp 3 ^ 12 := by
    convert! Real.exp_nat_mul (3 : ℝ) 12 using 1
    norm_num
  have hlast : Real.exp (-36 : ℝ) ≤ 1 / 20 ^ 12 := by
    rw [Real.exp_neg, ← one_div]
    apply one_div_le_one_div_of_le (by positivity)
    rwa [h36]
  calc
    A ^ 10 * Real.exp (-3 * A) ≤
        12 ^ 10 *
          Real.exp (10 * ((A - 12) / 12) + (-3 * A)) := hprod
    _ ≤ 12 ^ 10 * Real.exp (-36) :=
      mul_le_mul_of_nonneg_left ht (by positivity)
    _ ≤ 12 ^ 10 * (1 / 20 ^ 12) :=
      mul_le_mul_of_nonneg_left hlast (by positivity)
    _ = 12 ^ 10 / 20 ^ 12 := by ring

/-- The positive quartic polynomial from the determinant perturbation bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8dc525b574bfd650687fdef982c1443dbabb1d992217ceee2418ac2a9a0fdd01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8dc525b574bfd650687fdef982c1443dbabb1d992217ceee2418ac2a9a0fdd01.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a0a99806959c01e48ca189bdd4f38a2464b1a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
