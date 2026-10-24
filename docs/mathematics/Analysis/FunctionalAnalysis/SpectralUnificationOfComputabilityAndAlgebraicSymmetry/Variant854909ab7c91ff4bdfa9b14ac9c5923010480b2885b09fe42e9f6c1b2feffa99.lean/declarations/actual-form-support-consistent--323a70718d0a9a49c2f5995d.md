# actual_form_support_consistent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a58ea3b-add9-0375-7025-a4deb309961e",
  "kind": "theorem",
  "lexical_name": "actual_form_support_consistent",
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
  "slug": "actual-form-support-consistent--323a70718d0a9a49c2f5995d",
  "source": {
    "blob": "34903a7af4b17fb558af797833e5ceb777a1ffea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 69,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant854909ab7c91ff4bdfa9b14ac9c5923010480b2885b09fe42e9f6c1b2feffa99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:323a70718d0a9a49c2f5995dd22a553c8c7754a378a8cc6435db3eb7c7aa411e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant854909ab7c91ff4bdfa9b14ac9c5923010480b2885b09fe42e9f6c1b2feffa99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a58ea3b-add9-0375-7025-a4deb309961e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_form_support_consistent (A R : ℝ) (hA : 1 ≤ A) (hAR : A ≤ R) :
    BridgeAdmissibility.realArithmeticForm R (actualTest A) =
      BridgeAdmissibility.realArithmeticForm A (actualTest A) := by
  classical
  let s (r : ℝ) := (Finset.Icc 2 ⌊Real.exp (2 * r)⌋₊).filter
    (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * r))
  have hexp : Real.exp (2 * A) ≤ Real.exp (2 * R) := Real.exp_le_exp.mpr (by linarith)
  have hsub : s A ⊆ s R := by
    intro n hn
    obtain ⟨hn, hlt⟩ := Finset.mem_filter.mp hn
    obtain ⟨hn2, hnA⟩ := Finset.mem_Icc.mp hn
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨hn2, hnA.trans (Nat.floor_mono hexp)⟩, hlt.trans_le hexp⟩
  have hsum :
      (∑ n ∈ s A, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        (∫ x, actualTest A x * actualTest A (x - Real.log n))) =
      ∑ n ∈ s R, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        (∫ x, actualTest A x * actualTest A (x - Real.log n)) := by
    apply Finset.sum_subset hsub
    intro n hnR hnA
    have hn2 : 2 ≤ n := (Finset.mem_Icc.mp (Finset.mem_filter.mp hnR).1).1
    have hnpos : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
    have hnexp : Real.exp (2 * A) ≤ (n : ℝ) := by
      by_contra h
      have hlt : (n : ℝ) < Real.exp (2 * A) := lt_of_not_ge h
      exact hnA (Finset.mem_filter.mpr
        ⟨Finset.mem_Icc.mpr ⟨hn2, Nat.le_floor hlt.le⟩, hlt⟩)
    have hnlog : 2 * A ≤ Real.log n := (Real.le_log_iff_exp_le hnpos).2 hnexp
    rw [actual_correlation_zero_of_two_mul_le_abs A (Real.log n) hA
      (hnlog.trans (le_abs_self _)), mul_zero]
  unfold BridgeAdmissibility.realArithmeticForm
  change _ + _ - 2 * (∑ n ∈ s R, _) = _ + _ - 2 * (∑ n ∈ s A, _)
  rw [hsum]

end
end ZeroFormSupport
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant854909ab7c91ff4bdfa9b14ac9c5923010480b2885b09fe42e9f6c1b2feffa99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant854909ab7c91ff4bdfa9b14ac9c5923010480b2885b09fe42e9f6c1b2feffa99.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34903a7af4b17fb558af797833e5ceb777a1ffea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
