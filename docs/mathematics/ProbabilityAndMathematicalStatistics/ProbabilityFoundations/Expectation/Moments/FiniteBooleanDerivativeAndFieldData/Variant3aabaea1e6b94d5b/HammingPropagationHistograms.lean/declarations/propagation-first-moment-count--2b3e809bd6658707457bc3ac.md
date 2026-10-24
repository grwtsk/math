# propagation_first_moment_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0b8d517-de81-d51d-dd4e-c557aceaa0f5",
  "kind": "theorem",
  "lexical_name": "propagation_first_moment_count",
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
  "slug": "propagation-first-moment-count--2b3e809bd6658707457bc3ac",
  "source": {
    "blob": "c5c927ed9373e2963c24f73014cfc599e5c73280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 184,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/HammingPropagationHistograms.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b3e809bd6658707457bc3ac1f24be4e8d3c9cc530433de298c91aee233a4ba8",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/HammingPropagationHistograms.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0b8d517-de81-d51d-dd4e-c557aceaa0f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem propagation_first_moment_count {n : Nat}
    (H : Bits n → Bits n) (i : Fin n) :
    ∑ k ∈ Finset.range (n + 1), k * propagationCount H i k =
      ∑ j : Fin n, sacCount H i j := by
  classical
  have hmaps : Set.MapsTo (propagationWeight H i)
      (Finset.univ : Finset (Bits n)) (Finset.range (n + 1)) := by
    intro x _
    simpa only [Finset.coe_range, Set.mem_Iio, propagationWeight,
      Nat.succ_eq_add_one] using
      Nat.lt_succ_of_le (hammingWeight_le (bitDerivative H i x))
  calc
    ∑ k ∈ Finset.range (n + 1), k * propagationCount H i k =
        ∑ k ∈ Finset.range (n + 1),
          ∑ x ∈ (Finset.univ : Finset (Bits n)) with
              propagationWeight H i x = k,
            propagationWeight H i x := by
      apply Finset.sum_congr rfl
      intro k _
      rw [propagationCount, Nat.mul_comm]
      exact (Finset.sum_const_nat fun x hx => (Finset.mem_filter.mp hx).2).symm
    _ = ∑ x : Bits n, propagationWeight H i x :=
      Finset.sum_fiberwise_of_maps_to hmaps _
    _ = ∑ j : Fin n, sacCount H i j := by
      simp only [propagationWeight, hammingWeight, sacCount,
        Finset.card_eq_sum_ones]
      simp only [Finset.sum_filter]
      rw [Finset.sum_comm (s := (Finset.univ : Finset (Bits n)))
        (t := (Finset.univ : Finset (Fin n)))]
      rfl

/-- Rational first-moment form: `Σ k, k qᵢ(k) = Σ j, S_H(i,j)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/HammingPropagationHistograms.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/HammingPropagationHistograms.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5c927ed9373e2963c24f73014cfc599e5c73280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
