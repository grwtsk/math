# shell_log_squared_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3631572d-6589-c17e-31ad-158be4336ae9",
  "kind": "theorem",
  "lexical_name": "shell_log_squared_le",
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
  "slug": "shell-log-squared-le--1ee457190ce64ad1510e55f3",
  "source": {
    "blob": "a4ab8ba51e7f2c2ff6602883e7404d007483b043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt02/Variant79ff1d91245b1fcc31449d67e33455341cd5005ff0c9c0f39163a3849176bf99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ee457190ce64ad1510e55f3bd522ec3ec43bf22e8a00959d5b824693429208d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt02/Variant79ff1d91245b1fcc31449d67e33455341cd5005ff0c9c0f39163a3849176bf99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3631572d-6589-c17e-31ad-158be4336ae9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_log_squared_le {N n : ℕ} (hn : 2 ≤ n) (hnN : n ≤ N) :
    (Real.log n - Real.log (shellEndpoint N n)) ^ 2 ≤ 4 / (n : ℝ) := by
  have hnm := (shellEndpoint_bounds hn hnN).1
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hM0 : (0 : ℝ) < shellEndpoint N n := by exact_mod_cast (by omega : 0 < shellEndpoint N n)
  have hnS : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hn0
  have hMS : 0 < Real.sqrt (shellEndpoint N n : ℝ) := Real.sqrt_pos.2 hM0
  have hgap := shell_sqrt_gap_lt_one hn hnN
  have hl := Real.log_le_sub_one_of_pos (div_pos hMS hnS)
  have heq : Real.log (Real.sqrt (shellEndpoint N n : ℝ) / Real.sqrt (n : ℝ)) =
      (Real.log (shellEndpoint N n) - Real.log n) / 2 := by
    rw [Real.log_div hMS.ne' hnS.ne', Real.log_sqrt hM0.le, Real.log_sqrt hn0.le]
    ring
  rw [heq] at hl
  have hbound : Real.sqrt (n : ℝ) *
      (Real.log (shellEndpoint N n) - Real.log n) ≤ 2 := by
    have hm := mul_le_mul_of_nonneg_left hl (by positivity : 0 ≤ 2 * Real.sqrt (n : ℝ))
    field_simp [hnS.ne'] at hm
    nlinarith
  have hnonneg : 0 ≤ Real.log (shellEndpoint N n) - Real.log n := by
    exact sub_nonneg.mpr (Real.log_le_log hn0 (by exact_mod_cast hnm))
  have hprod0 : 0 ≤ Real.sqrt (n : ℝ) *
      (Real.log (shellEndpoint N n) - Real.log n) := mul_nonneg hnS.le hnonneg
  have hsq := (sq_le_sq₀ hprod0 (by norm_num : (0 : ℝ) ≤ 2)).2 hbound
  rw [mul_pow, Real.sq_sqrt hn0.le] at hsq
  apply (le_div_iff₀ hn0).2
  nlinarith [hsq]

/-- Taylor five gives the pointwise geometric remainder without arithmetic input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt02/Variant79ff1d91245b1fcc31449d67e33455341cd5005ff0c9c0f39163a3849176bf99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt02/Variant79ff1d91245b1fcc31449d67e33455341cd5005ff0c9c0f39163a3849176bf99.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4ab8ba51e7f2c2ff6602883e7404d007483b043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
