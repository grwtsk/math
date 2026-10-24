# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Outer.Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b22c414e041bddd8b667198e793665b7364de71",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b22c414e041bddd8b667198e793665b7364de71`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LocalTheorem` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [innerIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/innerintegral--43970e818d973083416e7663.md) | 27 | `declaration-track:43970e818d973083416e766340c9bfe7340a5fa52d21caf364e87d4857cf2647` |
| 2 | `def` | [outerIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/outerintegral--f97cf9314eed668b8965c773.md) | 33 | `declaration-track:f97cf9314eed668b8965c77355886a1423cabf6cccc2eca1e8b6694fd3205b04` |
| 3 | `def` | [outerRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/outerremainder--f011330640c46469c90497f8.md) | 37 | `declaration-track:f011330640c46469c90497f8de305be94259c264c162d63d0d9016b88114f85e` |
| 4 | `theorem` | [admissibleK_eq_innerInventory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/admissiblek-eq-innerinventory--b25f6f8c354364d3e0125f8b.md) | 42 | `result-track:b25f6f8c354364d3e0125f8b5531f6d1e0785b3151bc7663efc76611495de1e3` |
| 5 | `theorem` | [sourceKernelTerm_eq_innerWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/sourcekernelterm-eq-innerweight--ebec45d79763d7bb68f79814.md) | 79 | `result-track:ebec45d79763d7bb68f79814c848e935f426e22b77cbf3b90c7885a34aaca06e` |
| 6 | `theorem` | [sourceMobiusKernel_eq_inner_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/sourcemobiuskernel-eq-inner-sum--f34899dab968a35b4b570d58.md) | 91 | `result-track:f34899dab968a35b4b570d58dc30557d0ec5e7f594514d3ebf4df9b93985e905` |
| 7 | `theorem` | [divisor_le_sourceUpper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/divisor-le-sourceupper--93382ed782aa468e01252989.md) | 103 | `result-track:93382ed782aa468e012529898ca943738feaec17ae4e8b579b51956b00aa348b` |
| 8 | `theorem` | [sourceMobiusKernel_eq_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/sourcemobiuskernel-eq-integral-add-error--779b268b2557cc42b69d836f.md) | 112 | `result-track:779b268b2557cc42b69d836f45fce06b313d30770630e9edd36d0a1b4299db70` |
| 9 | `theorem` | [mertensResidual_eq_outer_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/mertensresidual-eq-outer-integral-add-error--0c34605861295db7227d3e6f.md) | 120 | `result-track:0c34605861295db7227d3e6fe800fbcc93425d779aaf5a40aa0b5a1955e7f298` |
| 10 | `theorem` | [outerRemainder_abs_le_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/outerremainder-abs-le-budget--301f0f8ddfd931ab4f5d9216.md) | 134 | `result-track:301f0f8ddfd931ab4f5d9216935db87e4e9c4cdb57f263b9ce0bf750865a2e39` |
| 11 | `theorem` | [outerRemainder_abs_le_twelve](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/outerremainder-abs-le-twelve--f39503f3aaaf84bdd076c7eb.md) | 159 | `result-track:f39503f3aaaf84bdd076c7eb9e0ea2f95ebdcb46728979cbf579a5ed0d4717dc` |
| 12 | `theorem` | [inverse_sqrt_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/inverse-sqrt-sum-le--f908948b87de34a265d2c4f2.md) | 171 | `result-track:f908948b87de34a265d2c4f2947cf61409cde8581e55f880ff03b82d43d4ca76` |
| 13 | `theorem` | [outerRemainder_abs_le_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/outerremainder-abs-le-sqrt--a2777e95f7697d435dc51fd5.md) | 193 | `result-track:a2777e95f7697d435dc51fd591b107e1ce2cbdd9243686f6ad96c087dc2ce157` |
| 14 | `theorem` | [short_outerRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/short-outerremainder-abs-le--6795c372705fb5eea60ae090.md) | 204 | `result-track:6795c372705fb5eea60ae090b8a43d9c044fc4959abaa365f59a3a4c9c507e55` |
| 15 | `theorem` | [full_outerRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/declarations/full-outerremainder-abs-le--fbd40208f078869600f9b554.md) | 218 | `result-track:fbd40208f078869600f9b554cbf735c23920c6e3938fe1af69337c535e0b7c7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
