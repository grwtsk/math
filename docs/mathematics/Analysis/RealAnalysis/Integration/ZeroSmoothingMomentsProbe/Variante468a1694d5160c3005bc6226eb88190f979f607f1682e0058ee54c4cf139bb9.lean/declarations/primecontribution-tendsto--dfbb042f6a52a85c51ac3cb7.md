# primeContribution_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e34dfb74ec0d1e00e44f6bb7bc8929b5563a65c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95760882-85f6-e577-ab77-ebf647391f6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cd5e316-7474-b879-099e-3bc14414e311",
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
  "slug": "primecontribution-tendsto--dfbb042f6a52a85c51ac3cb7",
  "source": {
    "blob": "7e34dfb74ec0d1e00e44f6bb7bc8929b5563a65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfbb042f6a52a85c51ac3cb7227b14da086bfcad782c8ea447136a501d8a32de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cd5e316-7474-b879-099e-3bc14414e311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–206.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e34dfb74ec0d1e00e44f6bb7bc8929b5563a65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
