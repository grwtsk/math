# actual_translation_first_not_differentiableAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d2858bf-7c4a-17e4-c9e2-ad93253a9d18",
  "kind": "theorem",
  "lexical_name": "actual_translation_first_not_differentiableAt",
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
  "slug": "actual-translation-first-not-differentiableat--413fa1b5ae15b83f5a72437a",
  "source": {
    "blob": "0eaa8ef6f20d2a855dca7eabac04adbe1decfcac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 245,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variant2cea27157412ab86a05e83255f424619b9de70758edf54128b8a1b16751e685c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:413fa1b5ae15b83f5a72437a572975b8c2249febd9084a826ed4dfe688eeb4c3",
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

Occurrence: `result:0d2858bf-7c4a-17e4-c9e2-ad93253a9d18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_translation_first_not_differentiableAt {A : ℝ} {n : ℕ} (hA : 0 < A)
    (hn : n ∈ interiorInventory (Real.exp (2 * A)))
    (hx : -A < A - Real.log n ∧ A - Real.log n < A)
    (hu : ∀ k ∈ interiorInventory (Real.exp (2 * A)),
      A - Real.log n ≠ -A + Real.log k) :
    ¬ DifferentiableAt ℝ (deriv (arithmeticTranslation A (q A))) (A - Real.log n) := by
  intro hd
  have hj := actual_translation_signed_jump hA hn hx hu
    hd.hasDerivAt.hasDerivWithinAt hd.hasDerivAt.hasDerivWithinAt
  have hn0 : (0 : ℝ) < n := by
    exact_mod_cast (by have := (mem_interiorInventory.mp hn).1; omega : 0 < n)
  have hw := ArithmeticFunction.vonMangoldt_pos_iff.mpr (mem_interiorInventory.mp hn).2.2
  have hwpos : 0 < ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) :=
    div_pos hw (mul_pos (by norm_num) (Real.sqrt_pos.mpr hn0))
  have hp := mul_pos hwpos (second_trace_pos hA)
  have hzero : ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) *
      (384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A))) = 0 := by
    exact neg_eq_zero.mp (by simpa only [sub_self] using hj.symm)
  exact hp.ne' hzero

/-- Scalar subtraction of the smooth interior source cannot cancel this actual jump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variant2cea27157412ab86a05e83255f424619b9de70758edf54128b8a1b16751e685c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variant2cea27157412ab86a05e83255f424619b9de70758edf54128b8a1b16751e685c.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaa8ef6f20d2a855dca7eabac04adbe1decfcac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
