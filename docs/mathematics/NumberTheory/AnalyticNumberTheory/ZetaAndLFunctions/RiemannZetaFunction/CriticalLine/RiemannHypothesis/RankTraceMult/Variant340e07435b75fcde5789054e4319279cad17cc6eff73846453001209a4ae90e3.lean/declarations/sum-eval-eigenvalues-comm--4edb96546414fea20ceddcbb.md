# sum_eval_eigenvalues_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32836d47-6be5-1476-052f-2337d2facaef",
  "kind": "lemma",
  "lexical_name": "sum_eval_eigenvalues_comm",
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
  "slug": "sum-eval-eigenvalues-comm--4edb96546414fea20ceddcbb",
  "source": {
    "blob": "aafc530a17776d8aaf5d40bb1ca78e6131f6e88b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 177,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4edb96546414fea20ceddcbba299c8ee5f195e9d08328f4922f25a8d5d84965d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32836d47-6be5-1476-052f-2337d2facaef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_eval_eigenvalues_comm (W : Matrix n ι 𝕜) (q : ℝ[X]) (hq : q.eval 0 = 0) :
    ∑ i, q.eval ((Matrix.posSemidef_self_mul_conjTranspose W).1.eigenvalues i)
      = ∑ j, q.eval ((Matrix.posSemidef_conjTranspose_mul_self W).1.eigenvalues j) := by
  set hP := (Matrix.posSemidef_self_mul_conjTranspose W).1
  set hM := (Matrix.posSemidef_conjTranspose_mul_self W).1
  have h0 : q.coeff 0 = 0 := by rwa [Polynomial.coeff_zero_eq_eval_zero]
  simp_rw [Polynomial.eval_eq_sum_range]
  rw [Finset.sum_comm, Finset.sum_comm (s := (Finset.univ : Finset ι))]
  refine Finset.sum_congr rfl fun k hk => ?_
  rw [← Finset.mul_sum, ← Finset.mul_sum]
  rcases k with _ | k
  · simp [h0]
  · congr 1
    have h1 := rtrace_pow_succ hP k
    have h2 := rtrace_pow_succ hM k
    rw [← h1, ← h2]
    unfold rtrace
    rw [trace_pow_succ_comm]

/-- **Transfer**: for any g : ℝ → ℝ with g 0 = 0,  Σ_i g(λ_i(WWᴴ)) = Σ_j g(μ_j(WᴴW))  (interpolate g on the joint spectrum ∪ {0}). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aafc530a17776d8aaf5d40bb1ca78e6131f6e88b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
