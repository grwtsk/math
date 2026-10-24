# actual_strict_real_rectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64e63dc3-9bc4-b1ff-7022-fef80021454b",
  "kind": "theorem",
  "lexical_name": "actual_strict_real_rectangle",
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
  "slug": "actual-strict-real-rectangle--c1a20e86b3d1997e81bf8ff8",
  "source": {
    "blob": "2d14ba0f3a121582c429602d6277e23565b1af2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1a20e86b3d1997e81bf8ff8cf8d01ac3a1fba114f4e4fb544f1b27875ca461b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64e63dc3-9bc4-b1ff-7022-fef80021454b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_strict_real_rectangle {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : t ∈ Icc (Real.log (vaughanCutoff A : ℝ))
      (Real.log (vaughanCutoff A : ℝ) + 1))
    (hu : u ∈ Icc ((vaughanCutoff A + 1 : ℕ) : ℝ)
      ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    Real.exp t * u < (sourceKernelCutoff A : ℝ) := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  have hg : 4 * ((vaughanCutoff A : ℝ) + 2) ^ 2 ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast actual_strict_cutoff_square_gap hA
  have he : Real.exp t < 3 * (vaughanCutoff A : ℝ) := by
    calc
      Real.exp t ≤ Real.exp (Real.log (vaughanCutoff A : ℝ) + 1) :=
        Real.exp_le_exp.mpr ht.2
      _ = (vaughanCutoff A : ℝ) * Real.exp 1 := by rw [Real.exp_add, Real.exp_log hU]
      _ < 3 * (vaughanCutoff A : ℝ) := by
        nlinarith [mul_lt_mul_of_pos_left Real.exp_one_lt_three hU]
  have hu1 : (vaughanCutoff A : ℝ) + 1 ≤ u := by exact_mod_cast hu.1
  have hu2 : u ≤ (vaughanCutoff A : ℝ) + 2 := by exact_mod_cast hu.2
  have hu0 : 0 < u := by linarith
  nlinarith [mul_lt_mul_of_pos_right he hu0,
    mul_le_mul_of_nonneg_left hu2 (by positivity : 0 ≤ 3 * (vaughanCutoff A : ℝ))]

/-- The rectangle is genuinely inside the true source support as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d14ba0f3a121582c429602d6277e23565b1af2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
