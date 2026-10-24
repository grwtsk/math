# weighted_residual_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67699f552cc448ddbeb12bc46c46736516cc1f80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51213e40-8ad4-a3b1-0e9a-4de8dec3e0d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c0d9069-5bb3-e02e-09ef-97fefe4ec486",
  "kind": "theorem",
  "lexical_name": "weighted_residual_intervalIntegrable",
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
  "slug": "weighted-residual-intervalintegrable--a70f47d8a262ae0ec8274817",
  "source": {
    "blob": "67699f552cc448ddbeb12bc46c46736516cc1f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a70f47d8a262ae0ec8274817da87b54bfa5b87657c15e3331f868b7536705c91",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c0d9069-5bb3-e02e-09ef-97fefe4ec486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_residual_intervalIntegrable (T : ℝ) (hT : 1 ≤ T) :
    IntervalIntegrable (fun A ↦ scaleWeight A * mertensResidual A) volume 1 T := by
  have hi (n : ℕ) (hn : n ∈ Finset.Icc 1 (sourceKernelCutoff T)) :
      IntervalIntegrable (fun A ↦ (vonMangoldt n / Real.sqrt n) *
        (scaleWeight A * sourceCorrelation explicitSecondDerivative A (Real.log n))) volume 1 T :=
    (weighted_correlation_intervalIntegrable T _ hT
      (Real.log_nonneg (by exact_mod_cast (Finset.mem_Icc.mp hn).1))).const_mul _
  have hs : IntervalIntegrable (fun A ↦ ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff T),
      (vonMangoldt n / Real.sqrt n) *
        (scaleWeight A * sourceCorrelation explicitSecondDerivative A (Real.log n))) volume 1 T :=
    ⟨integrable_finsetSum _ (fun n hn ↦ (hi n hn).1),
      integrable_finsetSum _ (fun n hn ↦ (hi n hn).2)⟩
  apply hs.congr
  intro A hA
  rw [uIoc_of_le hT] at hA
  exact (weighted_residual_eq A T hA.1.le hA.2).symm

/-- The actual signed primitive retains exactly the degree-twenty short-factor error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67699f552cc448ddbeb12bc46c46736516cc1f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
