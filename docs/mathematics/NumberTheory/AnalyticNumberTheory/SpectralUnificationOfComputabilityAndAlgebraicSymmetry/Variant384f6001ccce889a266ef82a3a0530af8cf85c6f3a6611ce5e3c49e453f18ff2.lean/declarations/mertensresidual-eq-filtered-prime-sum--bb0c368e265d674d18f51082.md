# mertensResidual_eq_filtered_prime_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "abdc0b023f637d25b287ce5d441b8bbae42b9876",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/384f6001ccce889a266ef82a3a0530af8cf85c6f3a6611ce5e3c49e453f18ff2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09765469-5419-d93f-f3ba-c0c1efd3271d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1917b4a3-3f8b-fa60-ae22-d851cd949b6b",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_filtered_prime_sum",
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
  "slug": "mertensresidual-eq-filtered-prime-sum--bb0c368e265d674d18f51082",
  "source": {
    "blob": "abdc0b023f637d25b287ce5d441b8bbae42b9876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant384f6001ccce889a266ef82a3a0530af8cf85c6f3a6611ce5e3c49e453f18ff2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb0c368e265d674d18f51082c681ed7a1522075b379b67f74f63e59d0e1663a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant384f6001ccce889a266ef82a3a0530af8cf85c6f3a6611ce5e3c49e453f18ff2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1917b4a3-3f8b-fa60-ae22-d851cd949b6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_filtered_prime_sum (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = (1 / sourceNormalization A) *
      ∑ j ∈ Finset.Icc 9 17, boundaryCoefficient j / A ^ j *
        ∑ n ∈ primePowerInventory (2 * A),
          ArithmeticFunction.vonMangoldt n / Real.sqrt n *
            monomialFilter j (2 * A - Real.log n) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment]
  rw [Finset.mul_sum]
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n hn
  have hn2 := (Finset.mem_Icc.mp hn).1
  have hlog : 0 ≤ Real.log n := Real.log_nonneg (by norm_cast; omega)
  have hlog2 := (inventory_log_bounds (2 * A) n hn).2
  have hc := sourceCorrelation_eq_boundary_filter A (2 * A - Real.log n) hA
    (by linarith) (by linarith)
  rw [sub_sub_cancel] at hc
  rw [exponentialTest_log _ n (by omega)]
  have hZ := ne_of_gt (source_normalization_pos A hA)
  calc
    _ = (ArithmeticFunction.vonMangoldt n / Real.sqrt n) *
        ((1 / sourceNormalization A) *
          ∑ j ∈ Finset.Icc 9 17, boundaryCoefficient j / A ^ j *
            monomialFilter j (2 * A - Real.log n)) := by rw [← hc]; field_simp
    _ = _ := by
      rw [← mul_assoc, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      ring

/-- Normalized finite logarithmic means of the actual von Mangoldt sequence,
including its zero atom at one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant384f6001ccce889a266ef82a3a0530af8cf85c6f3a6611ce5e3c49e453f18ff2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant384f6001ccce889a266ef82a3a0530af8cf85c6f3a6611ce5e3c49e453f18ff2.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abdc0b023f637d25b287ce5d441b8bbae42b9876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
