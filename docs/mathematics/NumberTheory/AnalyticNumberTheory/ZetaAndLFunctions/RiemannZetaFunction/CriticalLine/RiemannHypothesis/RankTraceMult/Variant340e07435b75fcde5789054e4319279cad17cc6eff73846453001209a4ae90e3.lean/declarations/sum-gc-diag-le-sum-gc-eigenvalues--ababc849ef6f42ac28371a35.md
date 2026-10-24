# sum_gc_diag_le_sum_gc_eigenvalues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0b3bd33-c27d-fc58-34e3-1667b106952c",
  "kind": "theorem",
  "lexical_name": "sum_gc_diag_le_sum_gc_eigenvalues",
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
  "slug": "sum-gc-diag-le-sum-gc-eigenvalues--ababc849ef6f42ac28371a35",
  "source": {
    "blob": "aafc530a17776d8aaf5d40bb1ca78e6131f6e88b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 127,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ababc849ef6f42ac28371a35277b51c25fbe7700b838d8e702823938a2bb9cea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0b3bd33-c27d-fc58-34e3-1667b106952c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_gc_diag_le_sum_gc_eigenvalues {M : Matrix ι ι 𝕜} (hM : M.PosSemidef) {c : ℝ} (hc : 0 ≤ c) :
    ∑ j, gc c (RCLike.re (M j j)) ≤ ∑ i, gc c (hM.1.eigenvalues i) := by
  set S := normSqMatrix (hM.1.eigenvectorUnitary : Matrix ι ι 𝕜) with hS
  have hDS := normSqMatrix_mem_doublyStochastic_of_unitary (hM.1.eigenvectorUnitary).2
  rw [mem_doublyStochastic_iff_sum] at hDS
  obtain ⟨hnn, hrow, hcol⟩ := hDS
  have hμ : ∀ i, 0 ≤ hM.1.eigenvalues i := fun i => hM.eigenvalues_nonneg i
  calc ∑ j, gc c (RCLike.re (M j j)) = ∑ j, gc c (∑ i, S j i * hM.1.eigenvalues i) := by
        refine Finset.sum_congr rfl fun j _ => by rw [re_diag_eq_sum_normSq_eigenvalues hM.1 j]
    _ ≤ ∑ j, ∑ i, S j i * gc c (hM.1.eigenvalues i) :=
        Finset.sum_le_sum fun j _ => gc_sum_le Finset.univ hc (fun i => S j i) _
          (fun i _ => hnn j i) (hrow j) (fun i _ => hμ i)
    _ = ∑ i, (∑ j, S j i) * gc c (hM.1.eigenvalues i) := by
        rw [Finset.sum_comm]; refine Finset.sum_congr rfl fun i _ => by rw [Finset.sum_mul]
    _ = ∑ i, gc c (hM.1.eigenvalues i) := by
        refine Finset.sum_congr rfl fun i _ => by rw [hcol i, one_mul]

end Schur

/-! ### (C) transfer of the nonzero spectrum: Σ_i g(λ_i(W Wᴴ)) = Σ_j g(μ_j(Wᴴ W)) whenever g(0) = 0 -/

section Transfer
open RHLinalg Polynomial

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n] {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- A^k = specMap (·^k) for k ≥ 1, hence rtrace (A^k) = Σ λ_i^k. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aafc530a17776d8aaf5d40bb1ca78e6131f6e88b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
