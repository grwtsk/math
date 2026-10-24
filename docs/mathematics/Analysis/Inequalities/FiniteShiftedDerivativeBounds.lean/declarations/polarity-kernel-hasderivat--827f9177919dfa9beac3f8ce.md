# polarity_kernel_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6a54b47-523a-1d0f-6751-43af210ea59d",
  "kind": "theorem",
  "lexical_name": "polarity_kernel_hasDerivAt",
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
  "slug": "polarity-kernel-hasderivat--827f9177919dfa9beac3f8ce",
  "source": {
    "blob": "74d88a9d9b6872734b6d02b89253de0d8fdf8caa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 70,
    "path": "GRWTSK/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:827f9177919dfa9beac3f8ce27d6a742b17d7f3bb1fbd270d2c0f5ff46512ae9",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6a54b47-523a-1d0f-6751-43af210ea59d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polarity_kernel_hasDerivAt {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (polarityKernel A)
      (∑ k ∈ Finset.Icc 2 (integerCutoff A), Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
        (deriv (deriv (deriv (correlation A))) (t + Real.log k) -
          (1 / 2 : ℝ) * deriv (deriv (correlation A)) (t + Real.log k))) t := by
  unfold polarityKernel
  apply HasDerivAt.fun_sum
  intro k _hk
  have shift := (hasDerivAt_id t).add_const (Real.log (k : ℝ))
  have first := ((correlation_first_contDiff_three hA).differentiable (by norm_num)
    (t + Real.log k)).hasDerivAt
  have second := ((correlation_second_contDiff_two hA).differentiable (by norm_num)
    (t + Real.log k)).hasDerivAt
  convert!
    ((second.comp t shift).sub ((first.comp t shift).const_mul (1 / 2 : ℝ))).const_mul
      (Real.log (k : ℝ) / Real.sqrt (k : ℝ)) using 1
  simp only [mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74d88a9d9b6872734b6d02b89253de0d8fdf8caa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
