# sum_geometric_Icc_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55dd9681-0f12-d13a-41a0-6bc4254cd9c1",
  "kind": "theorem",
  "lexical_name": "sum_geometric_Icc_one",
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
  "slug": "sum-geometric-icc-one--99ac37f97fa2bdbabe4e1e44",
  "source": {
    "blob": "31c7eb737036e4c24eb61befc3252d7c6340b3e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variantfb936cf4b8d3a2b5e3964521ff999b08d8a9c9f67a7aa37ade7006073fb2d103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99ac37f97fa2bdbabe4e1e449b889cf39d37f1cde2e1d8a1ad4a841601100527",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variantfb936cf4b8d3a2b5e3964521ff999b08d8a9c9f67a7aa37ade7006073fb2d103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55dd9681-0f12-d13a-41a0-6bc4254cd9c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_geometric_Icc_one (N : ℕ) (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r < 1) :
    (∑ j ∈ Finset.Icc 1 N, r ^ j) ≤ r * (1 - r)⁻¹ := by
  have hs : (∑ j ∈ Finset.Icc 1 N, r ^ j) =
      ∑ k ∈ Finset.range N, r ^ (k + 1) := by
    apply Finset.sum_bij (fun j _ => j - 1)
    · intro j hj
      simp only [Finset.mem_Icc] at hj
      simp only [Finset.mem_range]
      omega
    · intro j hj k hk heq
      simp only [Finset.mem_Icc] at hj hk
      omega
    · intro k hk
      refine ⟨k + 1, ?_, by omega⟩
      simp only [Finset.mem_range] at hk
      exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
    · intro j hj
      have := (Finset.mem_Icc.mp hj).1
      congr 1
      omega
  have ht := (summable_geometric_of_lt_one hr0 hr1).sum_le_tsum
    (Finset.range N) (fun k _ => pow_nonneg hr0 k)
  rw [tsum_geometric_of_lt_one hr0 hr1] at ht
  rw [hs]
  calc
    (∑ k ∈ Finset.range N, r ^ (k + 1)) = r * ∑ k ∈ Finset.range N, r ^ k := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k hk
      rw [pow_succ]
      ring
    _ ≤ r * (1 - r)⁻¹ := mul_le_mul_of_nonneg_left ht hr0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variantfb936cf4b8d3a2b5e3964521ff999b08d8a9c9f67a7aa37ade7006073fb2d103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variantfb936cf4b8d3a2b5e3964521ff999b08d8a9c9f67a7aa37ade7006073fb2d103.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31c7eb737036e4c24eb61befc3252d7c6340b3e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
