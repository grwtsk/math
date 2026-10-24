# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ac562bc24cfca57309505415fb0772f5583363c1d0dbe6a7ea60176d20c1cae",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--3fdffd6ec3705b769a395234",
  "source": {
    "blob": "2b32608e7acf271928a6282f77602d0571185067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 17,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/37fe6ace60ab92f96359e3c5ba7582610e2765dbae51a4b3b83b51d66e809e8bVaughanDeclarati/Variant52226e9517879a55e8fa92211e2b8f6e3d748828d7c93eb2d3de59979604954f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fdffd6ec3705b769a3952348efd16dfff9996887ee5da38cb3a5f9e4bd4f108",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/37fe6ace60ab92f96359e3c5ba7582610e2765dbae51a4b3b83b51d66e809e8bVaughanDeclarati/Variant52226e9517879a55e8fa92211e2b8f6e3d748828d7c93eb2d3de59979604954f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ac562bc24cfca57309505415fb0772f5583363c1d0dbe6a7ea60176d20c1cae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example
    (h : ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        EstimateVaughanSource.typeTwoSource A ≤
          D - EstimateVaughanSource.shortMangoldtSource A -
            EstimateVaughanSource.shortLogSource A +
            EstimateVaughanSource.shortPlainSource A) :
    CorrelationAssembly.EstimateObligation :=
  EstimateMertensResidual.estimate_of_mertens_residual_tail
    (EstimateVaughanSource.mertens_residual_tail_iff_signed_typeTwo_tail.mpr h)

#print FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.shortPart
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.shortPart
#print FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.longPart
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.longPart
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.shortPart_apply
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.shortPart_apply
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.longPart_apply
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.longPart_apply
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.vaughan_identity
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.vaughan_identity
#print FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.beta
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.beta
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.beta_eq_long_convolution
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.beta_eq_long_convolution
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.beta_eq_delta_sub_short
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.beta_eq_delta_sub_short
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.beta_zero_of_le
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.beta_zero_of_le
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.beta_one
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.beta_one
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.finite_convolution_sum
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.finite_convolution_sum
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.finite_vaughan_sum
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity.finite_vaughan_sum
#print FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePlainKernel.sourcePlainWeight
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePlainKernel.sourcePlainWeight
#print FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePlainKernel.sourcePlainKernel
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePlainKernel.sourcePlainKernel
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sourceLower_le_sourceUpper
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sourceLower_le_sourceUpper
#print FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.vaughanCutoff
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.vaughanCutoff
#print FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.shortMangoldtSource
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.shortMangoldtSource
#print FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.shortLogSource
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.shortLogSource
#print FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.shortPlainSource
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.shortPlainSource
#print FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.typeTwoSource
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.typeTwoSource
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.vaughanCutoff_pos
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.vaughanCutoff_pos
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.vaughanCutoff_le_sourceKernelCutoff
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.vaughanCutoff_le_sourceKernelCutoff
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sqrt_vaughanCutoff_le
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sqrt_vaughanCutoff_le
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sourcePlainWeight_nat_eq
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sourcePlainWeight_nat_eq
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sourcePlainWeight_upper_zero
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sourcePlainWeight_upper_zero
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sourcePlainWeight_zero_of_cutoff_lt
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sourcePlainWeight_zero_of_cutoff_lt
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sourceMobiusKernel_eq_plainWeight
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.sourceMobiusKernel_eq_plainWeight
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.typeTwoSource_eq_rectangle
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.typeTwoSource_eq_rectangle
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.mertensResidual_eq_plainWeight_sum
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.mertensResidual_eq_plainWeight_sum
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.mertensResidual_eq_vaughan
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.mertensResidual_eq_vaughan
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.mertens_residual_tail_iff_signed_typeTwo_tail
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource.mertens_residual_tail_iff_signed_typeTwo_tail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/37fe6ace60ab92f96359e3c5ba7582610e2765dbae51a4b3b83b51d66e809e8bVaughanDeclarati/Variant52226e9517879a55e8fa92211e2b8f6e3d748828d7c93eb2d3de59979604954f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/37fe6ace60ab92f96359e3c5ba7582610e2765dbae51a4b3b83b51d66e809e8bVaughanDeclarati/Variant52226e9517879a55e8fa92211e2b8f6e3d748828d7c93eb2d3de59979604954f.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b32608e7acf271928a6282f77602d0571185067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
