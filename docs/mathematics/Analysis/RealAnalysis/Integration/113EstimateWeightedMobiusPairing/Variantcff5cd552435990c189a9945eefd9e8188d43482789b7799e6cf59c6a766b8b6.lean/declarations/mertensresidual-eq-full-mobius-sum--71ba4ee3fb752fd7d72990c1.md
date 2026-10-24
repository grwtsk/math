# mertensResidual_eq_full_mobius_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bfc63d0bc656e515f05bf340c0425d3735d890c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c25374c-e1fa-5a39-6bc2-4d737de76de3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c4b507c-3d90-e704-8513-7d8aab4a37b5",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_full_mobius_sum",
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
  "slug": "mertensresidual-eq-full-mobius-sum--71ba4ee3fb752fd7d72990c1",
  "source": {
    "blob": "1bfc63d0bc656e515f05bf340c0425d3735d890c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantcff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71ba4ee3fb752fd7d72990c1bd779dbe1695c4048a8e5f8d862fd70c2ebd7af3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantcff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c4b507c-3d90-e704-8513-7d8aab4a37b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_full_mobius_sum (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d * sourceMobiusKernel A d := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_mobius]
  symm
  calc
    _ = ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
        (∑ n ∈ primePowerInventory (2 * A), ∑ dk ∈ n.divisorsAntidiagonal,
          if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [sourceMobiusKernel_integerAgreement_pos A hA d (Finset.mem_Icc.mp hd).1]
    _ = ∑ n ∈ primePowerInventory (2 * A), ∑ dk ∈ n.divisorsAntidiagonal,
        ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
          (if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n hn
      rw [Finset.sum_comm]
    _ = mobiusClosedPrimeMoment A := by
      unfold mobiusClosedPrimeMoment
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro dk hdk
      have hmem := first_factor_mem_full_inventory A n hn dk hdk
      rw [Finset.sum_eq_single dk.1]
      · simp [realMoebius, mobiusLogTerm, mul_assoc]
      · intro d hd hne
        simp [Ne.symm hne]
      · simp [hmem]

/-- The full unweighted real kernel is differentiable throughout the finite Abel interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantcff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantcff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bfc63d0bc656e515f05bf340c0425d3735d890c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
