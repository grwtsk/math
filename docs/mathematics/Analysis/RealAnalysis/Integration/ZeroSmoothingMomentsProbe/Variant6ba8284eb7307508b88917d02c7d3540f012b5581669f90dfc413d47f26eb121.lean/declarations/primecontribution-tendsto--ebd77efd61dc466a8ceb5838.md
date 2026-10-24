# primeContribution_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cb8f3ff-83bf-cc12-af06-cb5cd77a7850",
  "kind": "theorem",
  "lexical_name": "primeContribution_tendsto",
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
  "slug": "primecontribution-tendsto--ebd77efd61dc466a8ceb5838",
  "source": {
    "blob": "4d62234dd52486b18705bce054cfb11be2920917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebd77efd61dc466a8ceb58388cfb2ccc924318f66f85965537124ccdf94037ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cb8f3ff-83bf-cc12-af06-cb5cd77a7850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeContribution_tendsto {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A R : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ 2 * ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * R)⌋₊).filter
      (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * R)),
      ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        (∫ x, smoothedTest A (ε i) (hε i) x * smoothedTest A (ε i) (hε i) (x - Real.log n))) l
      (𝓝 (2 * ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * R)⌋₊).filter
        (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * R)),
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          (∫ x, actualTest A x * actualTest A (x - Real.log n)))) := by
  apply tendsto_const_nhds.mul
  apply tendsto_finsetSum
  intro n _
  exact tendsto_const_nhds.mul (correlation_tendsto A (Real.log n) hA ε hε hlim)

end
end ZeroSmoothingMomentsProbe

#check ZeroSmoothingMomentsProbe.exists_common_bound
#check ZeroSmoothingMomentsProbe.smoothedTest_zero_outside_common
#check ZeroSmoothingMomentsProbe.actual_weighted_integrable
#check ZeroSmoothingMomentsProbe.smoothed_weighted_integrable
#check ZeroSmoothingMomentsProbe.weighted_integral_tendsto
#check ZeroSmoothingMomentsProbe.exponential_moment_tendsto
#check ZeroSmoothingMomentsProbe.actual_correlation_integrable
#check ZeroSmoothingMomentsProbe.smoothed_correlation_integrable
#check ZeroSmoothingMomentsProbe.correlation_tendsto
#check ZeroSmoothingMomentsProbe.poleContribution_tendsto
#check ZeroSmoothingMomentsProbe.primeContribution_tendsto

#print axioms ZeroSmoothingMomentsProbe.exists_common_bound
#print axioms ZeroSmoothingMomentsProbe.smoothedTest_zero_outside_common
#print axioms ZeroSmoothingMomentsProbe.actual_weighted_integrable
#print axioms ZeroSmoothingMomentsProbe.smoothed_weighted_integrable
#print axioms ZeroSmoothingMomentsProbe.weighted_integral_tendsto
#print axioms ZeroSmoothingMomentsProbe.exponential_moment_tendsto
#print axioms ZeroSmoothingMomentsProbe.actual_correlation_integrable
#print axioms ZeroSmoothingMomentsProbe.smoothed_correlation_integrable
#print axioms ZeroSmoothingMomentsProbe.correlation_tendsto
#print axioms ZeroSmoothingMomentsProbe.poleContribution_tendsto
#print axioms ZeroSmoothingMomentsProbe.primeContribution_tendsto
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d62234dd52486b18705bce054cfb11be2920917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
