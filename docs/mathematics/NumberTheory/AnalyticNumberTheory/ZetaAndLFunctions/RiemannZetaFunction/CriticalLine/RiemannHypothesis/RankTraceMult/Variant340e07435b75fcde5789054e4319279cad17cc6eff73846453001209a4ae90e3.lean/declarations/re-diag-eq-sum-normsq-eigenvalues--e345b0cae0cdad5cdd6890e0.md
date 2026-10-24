# re_diag_eq_sum_normSq_eigenvalues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:446fff90-140f-b141-dbf5-64c82c755acf",
  "kind": "lemma",
  "lexical_name": "re_diag_eq_sum_normSq_eigenvalues",
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
  "slug": "re-diag-eq-sum-normsq-eigenvalues--e345b0cae0cdad5cdd6890e0",
  "source": {
    "blob": "aafc530a17776d8aaf5d40bb1ca78e6131f6e88b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e345b0cae0cdad5cdd6890e0d9cd69ca9300a4c66346b7116d32f8db71d61dbf",
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

Occurrence: `result:446fff90-140f-b141-dbf5-64c82c755acf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma re_diag_eq_sum_normSq_eigenvalues {M : Matrix ι ι 𝕜} (hM : M.IsHermitian) (j : ι) :
    RCLike.re (M j j) = ∑ i, normSqMatrix (hM.eigenvectorUnitary : Matrix ι ι 𝕜) j i * hM.eigenvalues i := by
  set U : Matrix ι ι 𝕜 := ↑hM.eigenvectorUnitary with hU
  have hMjj : M j j = ∑ i, U j i * (hM.eigenvalues i : 𝕜) * starRingEnd 𝕜 (U j i) := by
    conv_lhs => rw [hM.spectral_theorem, Unitary.conjStarAlgAut_apply]
    rw [Matrix.mul_apply]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [mul_diagonal, star_apply, RCLike.star_def]
    simp only [Function.comp_apply]
    rfl
  rw [hMjj, map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [show U j i * (hM.eigenvalues i : 𝕜) * starRingEnd 𝕜 (U j i) = (hM.eigenvalues i : 𝕜) * (U j i * starRingEnd 𝕜 (U j i)) by ring,
    RCLike.mul_conj, show ((hM.eigenvalues i : 𝕜) * ((‖U j i‖ : 𝕜) ^ 2) : 𝕜) = ((hM.eigenvalues i * ‖U j i‖ ^ 2 : ℝ) : 𝕜) by push_cast; ring,
    RCLike.ofReal_re]
  simp [normSqMatrix, mul_comm]

/-- **Schur–Jensen for g_c**: Σ_j g_c(re M_jj) ≤ Σ_i g_c(μ_i(M)) for PSD M and c ≥ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aafc530a17776d8aaf5d40bb1ca78e6131f6e88b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
