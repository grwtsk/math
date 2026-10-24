# remainingAtomWork_eq_cesaro_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:352d6892-9398-bbb2-7350-3aeeb701d639",
  "kind": "theorem",
  "lexical_name": "remainingAtomWork_eq_cesaro_integral",
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
  "slug": "remainingatomwork-eq-cesaro-integral--ca30556ab94c83d801d63a86",
  "source": {
    "blob": "43b081b85ad204f2e218ed41f8401ebce6e57d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variante8ea137be7ecbb8a0dc73ea68dfd1e2267d766914c52f26ae348d0740b2cc3e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca30556ab94c83d801d63a86d8ad86fa6b0fbb7cd3907f7fa91f9146a671585d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variante8ea137be7ecbb8a0dc73ea68dfd1e2267d766914c52f26ae348d0740b2cc3e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:352d6892-9398-bbb2-7350-3aeeb701d639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainingAtomWork_eq_cesaro_integral (A : ℝ) (hA : 1 ≤ A) :
    remainingAtomWork A =
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
        ∫ t in Real.log 2..2 * A,
          actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t := by
  have hp : 0 < A := by linarith
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hf := criticalPrimeTest_contDiff A hp
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (Real.log 2) (2 * A)
    hlA (criticalPrimeTest A) hf
  have hg : IntervalIntegrable (fun t => Real.eulerMascheroniConstant *
      deriv (criticalPrimeTest A) t) volume (Real.log 2) (2 * A) :=
    (hf.continuous_deriv_one.intervalIntegrable (Real.log 2) (2 * A)).const_mul _
  have hder : (∫ t in Real.log 2..2 * A, deriv (criticalPrimeTest A) t) =
      -criticalPrimeTest A (Real.log 2) := by
    rw [intervalIntegral.integral_deriv_eq_sub]
    · rw [criticalPrimeTest_at_upper A hp, zero_sub]
    · intro t _
      exact hf.differentiable (by norm_num) t
    · exact hf.continuous_deriv_one.intervalIntegrable _ _
  have he : (∫ t in Real.log 2..2 * A, primitiveDensity t * cesaroWeight A t) =
      remainingAtomWork A + Real.eulerMascheroniConstant *
        (∫ t in Real.log 2..2 * A, deriv (criticalPrimeTest A) t) := by
    have heq (t : ℝ) : primitiveDensity t * cesaroWeight A t =
        mangoldtLogError t * deriv (criticalPrimeTest A) t +
          Real.eulerMascheroniConstant * deriv (criticalPrimeTest A) t := by
      rw [criticalPrimeTest_deriv A t hp]
      unfold primitiveDensity cesaroWeight
      ring
    simp_rw [heq]
    rw [intervalIntegral.integral_add hi hg, intervalIntegral.integral_const_mul]
    rfl
  rw [hder] at he
  have hparts := actual_centered_second_primitive_parts A hA
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variante8ea137be7ecbb8a0dc73ea68dfd1e2267d766914c52f26ae348d0740b2cc3e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variante8ea137be7ecbb8a0dc73ea68dfd1e2267d766914c52f26ae348d0740b2cc3e0.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43b081b85ad204f2e218ed41f8401ebce6e57d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
