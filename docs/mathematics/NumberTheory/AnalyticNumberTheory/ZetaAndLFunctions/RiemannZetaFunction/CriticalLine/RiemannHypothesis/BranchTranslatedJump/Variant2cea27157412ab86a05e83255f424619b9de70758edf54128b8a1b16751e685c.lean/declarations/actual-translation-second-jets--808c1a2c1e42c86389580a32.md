# actual_translation_second_jets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77a48697-b1cf-39ea-a5e8-be2c70e74789",
  "kind": "theorem",
  "lexical_name": "actual_translation_second_jets",
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
  "slug": "actual-translation-second-jets--808c1a2c1e42c86389580a32",
  "source": {
    "blob": "0eaa8ef6f20d2a855dca7eabac04adbe1decfcac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 186,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variant2cea27157412ab86a05e83255f424619b9de70758edf54128b8a1b16751e685c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:808c1a2c1e42c86389580a329a422c387711a566376d0d875655a981b076b0c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variant2cea27157412ab86a05e83255f424619b9de70758edf54128b8a1b16751e685c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77a48697-b1cf-39ea-a5e8-be2c70e74789`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_translation_second_jets {A : ℝ} {n : ℕ} (hA : 0 < A)
    (hn : n ∈ interiorInventory (Real.exp (2 * A)))
    (hx : -A < A - Real.log n ∧ A - Real.log n < A)
    (hu : ∀ k ∈ interiorInventory (Real.exp (2 * A)),
      A - Real.log n ≠ -A + Real.log k) :
    ∃ b : ℝ,
      HasDerivWithinAt (deriv (arithmeticTranslation A (q A)))
        (b + ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) *
          (384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A))))
        (Icc (-A - Real.log n) (A - Real.log n)) (A - Real.log n) ∧
      HasDerivWithinAt (deriv (arithmeticTranslation A (q A))) b
        (Ici (A - Real.log n)) (A - Real.log n) := by
  have hd := (remainder_first_differentiableAt hA hn hx hu).hasDerivAt
  have he : deriv (arithmeticTranslation A (q A)) = fun x ↦
      ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) * deriv (q A) (x + Real.log n) +
        translationRemainder A n (deriv (q A)) x := by
    rw [actual_translation_deriv hA]
    funext x
    exact arithmeticTranslation_split (interiorInventory_mem_closed_cutoff hn) _ x
  refine ⟨deriv (translationRemainder A n (deriv (q A))) (A - Real.log n), ?_, ?_⟩
  · rw [he]
    simpa only [add_comm] using
      ((shifted_first_hasDerivWithinAt_inside hA (Real.log n)).const_mul
        (ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n))).fun_add hd.hasDerivWithinAt
  · rw [he]
    simpa only [mul_zero, zero_add] using
      ((shifted_first_hasDerivWithinAt_outside hA (Real.log n)).const_mul
        (ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n))).fun_add hd.hasDerivWithinAt

/-- The source's arithmetic half-weight is strictly positive at every retained prime power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variant2cea27157412ab86a05e83255f424619b9de70758edf54128b8a1b16751e685c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variant2cea27157412ab86a05e83255f424619b9de70758edf54128b8a1b16751e685c.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaa8ef6f20d2a855dca7eabac04adbe1decfcac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
