# oddHigherMoment_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f27498d37f3ba13a8c549a5a744cae4a268a5ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/faf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cd9adce-6537-e3cc-362c-6cb39ee92a12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:092b31db-5740-0963-0d13-10d1562ea2fd",
  "kind": "theorem",
  "lexical_name": "oddHigherMoment_abs_le",
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
  "slug": "oddhighermoment-abs-le--ebb65920c47952528be5d17b",
  "source": {
    "blob": "2f27498d37f3ba13a8c549a5a744cae4a268a5ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 195,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebb65920c47952528be5d17b8de5e5ecd1cc07658db906b5d747de14bbde79d4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:092b31db-5740-0963-0d13-10d1562ea2fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddHigherMoment_abs_le (A : ℝ) (hA : 1 ≤ A) : |oddHigherMoment A| ≤ 12 := by
  have hs : ∀ p ∈ (primePowerInventory (2 * A)).filter Nat.Prime, 2 ≤ p := by
    intro p hp
    exact (Finset.mem_filter.mp hp).2.two_le
  unfold oddHigherMoment
  calc
    _ ≤ ∑ p ∈ (primePowerInventory (2 * A)).filter Nat.Prime,
        |∑ k ∈ (Finset.range ⌊Real.exp (2 * A)⌋₊).filter
          (fun k ↦ p ^ (2 * k + 3) ≤ ⌊Real.exp (2 * A)⌋₊),
          Real.log (p : ℝ) / Real.sqrt (p ^ (2 * k + 3) : ℕ) *
            sourceCorrelation explicitSecondDerivative A (Real.log (p ^ (2 * k + 3) : ℕ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ (primePowerInventory (2 * A)).filter Nat.Prime,
        2 * (Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p)) :=
      Finset.sum_le_sum (fun p hp => odd_prime_block_abs_le A hA p (hs p hp) _)
    _ ≤ 2 * (4 + 2 * Real.log 2) := by
      rw [← Finset.mul_sum]
      exact mul_le_mul_of_nonneg_left (finite_log_sqrt_sum_le _ hs) (by norm_num)
    _ ≤ 12 := by linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]

end
end EstimateOddPrimePowers
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f27498d37f3ba13a8c549a5a744cae4a268a5ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
