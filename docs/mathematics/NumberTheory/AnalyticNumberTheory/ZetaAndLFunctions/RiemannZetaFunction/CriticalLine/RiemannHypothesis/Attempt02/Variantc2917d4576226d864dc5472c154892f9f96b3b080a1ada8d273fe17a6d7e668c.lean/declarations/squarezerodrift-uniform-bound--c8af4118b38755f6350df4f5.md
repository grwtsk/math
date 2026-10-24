# squareZeroDrift_uniform_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35995f2b-06b2-b06b-9914-e5eb9eea9170",
  "kind": "theorem",
  "lexical_name": "squareZeroDrift_uniform_bound",
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
  "slug": "squarezerodrift-uniform-bound--c8af4118b38755f6350df4f5",
  "source": {
    "blob": "c8993281da90d989eece92c7282b2dd45e7790e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 142,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantc2917d4576226d864dc5472c154892f9f96b3b080a1ada8d273fe17a6d7e668c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8af4118b38755f6350df4f521e0eeac459f73f404c75e78b69260534a86d4d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantc2917d4576226d864dc5472c154892f9f96b3b080a1ada8d273fe17a6d7e668c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35995f2b-06b2-b06b-9914-e5eb9eea9170`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareZeroDrift_uniform_bound (t : ℝ) (ht : Real.log 7 ≤ t) :
    |squareZeroDrift t| ≤
      2 * (Real.log 4 + 4) + 2 * Real.log 4 +
        |Real.log 7 - squarePrimitiveReadout (Real.log 7)| := by
  have ht0 : 0 ≤ t / 2 := by
    have := Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)
    linarith
  have hp := weightedPrime_logcutoff_fixed (t / 2) ht0
  have he : |primeLogError (t / 2)| ≤ Real.log 4 + 4 := by
    simpa only [primeLogError, primeLogPrefix, weightedPrime_eq_filtered, primeLogInventory]
      using hp
  have htheta : 0 ≤ Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2) :=
    div_nonneg (Chebyshev.theta_nonneg _) (Real.exp_pos _).le
  have htheta2 : Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2) ≤ Real.log 4 := by
    apply (div_le_iff₀ (Real.exp_pos _)).mpr
    simpa only [mul_comm] using
      Chebyshev.theta_le_log4_mul_x (Real.exp_pos (t / 2)).le
  rw [squareZeroDrift_eq_actual_error t ht]
  rw [show 2 * primeLogError (t / 2) -
    2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2) + Real.log 7 -
    squarePrimitiveReadout (Real.log 7) =
      (2 * primeLogError (t / 2) -
        2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2)) +
        (Real.log 7 - squarePrimitiveReadout (Real.log 7)) by ring]
  calc
    _ ≤ |2 * primeLogError (t / 2)| +
        |2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2)| +
          |Real.log 7 - squarePrimitiveReadout (Real.log 7)| := by
      exact (abs_add_le _ _).trans (add_le_add_right (abs_sub _ _) _)
    _ ≤ _ := by
      rw [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      have hh : |2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2)| ≤
          2 * Real.log 4 := by
        rw [abs_of_nonneg (by positivity)]
        calc
          _ = 2 * (Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2)) := by ring
          _ ≤ _ := mul_le_mul_of_nonneg_left htheta2 (by norm_num)
      linarith

end RH16SquarePrimitiveBalance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantc2917d4576226d864dc5472c154892f9f96b3b080a1ada8d273fe17a6d7e668c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantc2917d4576226d864dc5472c154892f9f96b3b080a1ada8d273fe17a6d7e668c.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8993281da90d989eece92c7282b2dd45e7790e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
