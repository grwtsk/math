# plainKernel_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31e97f8a-a972-770a-30b9-fc1b88e530cc",
  "kind": "theorem",
  "lexical_name": "plainKernel_inventory",
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
  "slug": "plainkernel-inventory--0f0b260c35d7ea232b7cf2de",
  "source": {
    "blob": "f3bf90751595f1aa42fca0bdd97ae430218090de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 30,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf47b140d74485dbfa362d5b4cb13a0edaf2b8834b8e9f2800eb5f24de44a39b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f0b260c35d7ea232b7cf2de0af929a6bf3932f1c0ed738d51bd7a0b10adcf6e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf47b140d74485dbfa362d5b4cb13a0edaf2b8834b8e9f2800eb5f24de44a39b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31e97f8a-a972-770a-30b9-fc1b88e530cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem plainKernel_inventory (A T : ℝ) (hA : 1 ≤ A) (hAT : A ≤ T)
    (r : ℕ) (hr : 1 ≤ r) :
    sourcePlainKernel A r = ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
      sourcePlainWeight A ((r*k : ℕ) : ℝ) := by
  unfold sourcePlainKernel
  simp only [← Nat.cast_mul]
  apply Finset.sum_subset (Finset.Icc_subset_Icc_right (sourceKernelCutoff_mono hAT))
  intro k hk hnot
  have hcut : sourceKernelCutoff A < k := by
    have := Finset.mem_Icc.mp hk
    simp only [Finset.mem_Icc] at hnot
    omega
  exact sourcePlainWeight_zero_of_cutoff_lt A hA _
    (hcut.trans_le (Nat.le_mul_of_pos_left k hr))

/-- The complete signed k-sum of Omega has a uniform polynomial scale bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf47b140d74485dbfa362d5b4cb13a0edaf2b8834b8e9f2800eb5f24de44a39b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf47b140d74485dbfa362d5b4cb13a0edaf2b8834b8e9f2800eb5f24de44a39b2.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3bf90751595f1aa42fca0bdd97ae430218090de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
