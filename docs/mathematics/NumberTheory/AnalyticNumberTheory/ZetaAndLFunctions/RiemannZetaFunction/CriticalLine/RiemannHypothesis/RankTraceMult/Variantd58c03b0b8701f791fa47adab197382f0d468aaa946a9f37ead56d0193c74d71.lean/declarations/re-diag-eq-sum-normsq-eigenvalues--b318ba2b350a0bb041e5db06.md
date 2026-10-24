# re_diag_eq_sum_normSq_eigenvalues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56727106c5990a07e3f7e29eae3122be737a1cbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ef6bd86-442e-165c-ed77-857cbf19c437",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80ada42e-938b-e09b-236b-0c8ce9827771",
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
  "slug": "re-diag-eq-sum-normsq-eigenvalues--b318ba2b350a0bb041e5db06",
  "source": {
    "blob": "56727106c5990a07e3f7e29eae3122be737a1cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b318ba2b350a0bb041e5db06147a4fd825958bd1db78e020787f9438c8a67032",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80ada42e-938b-e09b-236b-0c8ce9827771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–118.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56727106c5990a07e3f7e29eae3122be737a1cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
