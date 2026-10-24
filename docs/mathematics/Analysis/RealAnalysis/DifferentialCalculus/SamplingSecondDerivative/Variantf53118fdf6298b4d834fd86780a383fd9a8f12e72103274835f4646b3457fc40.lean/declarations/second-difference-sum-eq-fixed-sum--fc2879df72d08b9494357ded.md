# second_difference_sum_eq_fixed_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:142d973d-2457-1394-bb05-800a4f0035cd",
  "kind": "theorem",
  "lexical_name": "second_difference_sum_eq_fixed_sum",
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
  "slug": "second-difference-sum-eq-fixed-sum--fc2879df72d08b9494357ded",
  "source": {
    "blob": "284769d36036617eb160abc852328382730410cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc2879df72d08b9494357ded950f5f720a1b38c71d9d5129e4f4eb2bbbcd7fe0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:142d973d-2457-1394-bb05-800a4f0035cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_difference_sum_eq_fixed_sum (A x : ℝ) (N : ℕ)
    (hA : 1 ≤ A) (hx : 0 < x) (hN : Real.exp (2 * A) / x ≤ (N : ℝ)) :
    (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      secondDifference A (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Finset.Icc 1 N, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        secondDifference A (Real.log (x * (k : ℝ))) := by
  apply Finset.sum_subset (samplingIndices_subset_fixed A x N hx hN)
  intro k hk hout
  have hk1 := (Finset.mem_Icc.mp hk).1
  have hcut : Real.exp (2 * A) ≤ x * (k : ℝ) := by
    by_contra h
    exact hout ((mem_samplingIndices_iff A x k hx).mpr ⟨hk1, lt_of_not_ge h⟩)
  have hlog : 2 * A ≤ Real.log (x * (k : ℝ)) := by
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
  rw [secondDifference_zero_right A _ hA hlog, mul_zero]

/-- The actual source kernel has this second derivative through every moving cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `284769d36036617eb160abc852328382730410cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
