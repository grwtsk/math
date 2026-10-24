# sourceMobiusKernel_integerAgreement_one

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
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d47bd270-9f6c-1f35-67fd-d006f8c85789",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:766ead63-ea04-7497-0ba3-ca371a80bb67",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_integerAgreement_one",
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
  "slug": "sourcemobiuskernel-integeragreement-one--d4698f13e5ade9b47153fa65",
  "source": {
    "blob": "1bfc63d0bc656e515f05bf340c0425d3735d890c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantcff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4698f13e5ade9b47153fa653b9fd6af752ddd42d4afc728a8bbe4ae11eaa526",
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

Occurrence: `result:766ead63-ea04-7497-0ba3-ca371a80bb67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_integerAgreement_one (A : ℝ) (_hA : 1 ≤ A) :
    sourceMobiusKernel A 1 =
      ∑ n ∈ primePowerInventory (2 * A),
        ∑ dk ∈ n.divisorsAntidiagonal,
          if dk.1 = 1 then Real.log dk.2 * closedPrimeWeight A n else 0 := by
  have hrhs : (∑ n ∈ primePowerInventory (2 * A),
      ∑ dk ∈ n.divisorsAntidiagonal,
        if dk.1 = 1 then Real.log dk.2 * closedPrimeWeight A n else 0) =
      ∑ n ∈ Finset.Icc 2 (sourceKernelCutoff A),
        sourceKernelTerm A n 1 := by
    apply Finset.sum_congr rfl
    intro n hn
    rw [antidiagonal_first_factor A 1 n (by
      have := (Finset.mem_Icc.mp hn).1
      omega)]
    simp [sourceKernelTerm, closedPrimeWeight]
  rw [hrhs]
  unfold sourceMobiusKernel
  symm
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Icc.mp hn).1; omega,
      (Finset.mem_Icc.mp hn).2⟩
  · intro n hn hnnot
    have hn1 : n = 1 := by
      simp only [Finset.mem_Icc] at hn hnnot
      omega
    subst n
    simp [sourceKernelTerm]

/-- Agreement with the unchanged source kernel at every positive integer divisor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantcff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantcff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bfc63d0bc656e515f05bf340c0425d3735d890c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
