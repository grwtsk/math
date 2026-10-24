# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PoleGreenWeakIdentity.Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8982e1d065f016d8bc6fce4c1b64951e21661e81",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8982e1d065f016d8bc6fce4c1b64951e21661e81`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleGreenKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Bounded` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryFluxFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/boundaryfluxfunction--24a843812085245366272d84.md) | 30 | `declaration-track:24a843812085245366272d84bd8fc4ca75e3ba9b65dd3f943984327dcccaf4f9` |
| 2 | `theorem` | [has_deriv_at_iterated_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/has-deriv-at-iterated-deriv--984886b00609123a258ec58b.md) | 36 | `result-track:984886b00609123a258ec58b4a07b1f8efb7aa62150a3ab4fe70748b689cd748` |
| 3 | `theorem` | [boundary_flux_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/boundary-flux-has-deriv-at--dd78e8fa547f62010000582d.md) | 43 | `result-track:dd78e8fa547f62010000582dbe884463a244d93d90df36db97710e07c5da3a59` |
| 4 | `theorem` | [pole_squared_operator_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/pole-squared-operator-continuous--6f92b4ad6e1aa018ef0ca3c1.md) | 66 | `result-track:6f92b4ad6e1aa018ef0ca3c17a75d07da9a3c436f1e7efb196118a57b9a5e46c` |
| 5 | `theorem` | [homogeneous_branch_green_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/homogeneous-branch-green-identity--c9f8156fe2601232521ee5d1.md) | 73 | `result-track:c9f8156fe2601232521ee5d18606026e879e411ed69fd0deead2ec29fd224072` |
| 6 | `theorem` | [boundary_flux_eq_zero_of_jets](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/boundary-flux-eq-zero-of-jets--483ca401bbc0f0e016d983da.md) | 85 | `result-track:483ca401bbc0f0e016d983daf4f824fff0a247c4f68b1d0b1c4cf0051fb6e6d6` |
| 7 | `theorem` | [pole_squared_green_weak_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/pole-squared-green-weak-identity--265bafcac53e41bfec7baae1.md) | 93 | `result-track:265bafcac53e41bfec7baae14d1654a971d4e932c4dbea11a2ead37b4980bbde` |
| 8 | `theorem` | [tsupport_iterated_deriv_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/tsupport-iterated-deriv-subset--36f8ace2e069f8f2549b59a0.md) | 142 | `result-track:36f8ace2e069f8f2549b59a0414b8fc48c204b63d484bf9680caaa2319155b1a` |
| 9 | `theorem` | [iterated_deriv_eq_zero_of_not_mem_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/iterated-deriv-eq-zero-of-not-mem-tsupport--5799f871ffa92d626cecc2ae.md) | 151 | `result-track:5799f871ffa92d626cecc2ae0eb48202ef09002b72b9d53255fa0cd667afe8d4` |
| 10 | `theorem` | [pole_squared_green_operator_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/pole-squared-green-operator-integrable--b502e4c2ddebc93a42af49e2.md) | 157 | `result-track:b502e4c2ddebc93a42af49e28d5d7bd6af976531673678df273de6a996ff84e6` |
| 11 | `theorem` | [pole_squared_green_full_weak_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/pole-squared-green-full-weak-identity--8a82825235a3e2cd69ad4814.md) | 174 | `result-track:8a82825235a3e2cd69ad4814a2e51cac4a24fd27c527115f3641f9673a9adb14` |
| 12 | `theorem` | [pole_squared_operator_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/pole-squared-operator-const-sub--f55197ae0a4876341504651d.md) | 213 | `result-track:f55197ae0a4876341504651d0e40c814f36afbb972a541afc7875952b06c9d45` |
| 13 | `theorem` | [pole_squared_green_convolution_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/pole-squared-green-convolution-identity--f9b081390b747cdcaf8f327d.md) | 221 | `result-track:f9b081390b747cdcaf8f327ddee337665b672d7e1adfb3051adfe4e0dec94fd4` |
| 14 | `theorem` | [base_correlation_has_compact_support](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/base-correlation-has-compact-support--efdb5021f0867a2f5dd65c03.md) | 233 | `result-track:efdb5021f0867a2f5dd65c03bd9d6bd175324b0103b3b181bb62074a0f2d99f9` |
| 15 | `theorem` | [green_source_correlation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/green-source-correlation-integrable--93de29516f6d9fcf61e10892.md) | 248 | `result-track:93de29516f6d9fcf61e10892f798f3ab9a61f2a7c2a9b63acf66e4e3ea3799cb` |
| 16 | `theorem` | [green_source_correlation_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/green-source-correlation-integral--72703b0825f18216206e7c80.md) | 257 | `result-track:72703b0825f18216206e7c8006cbb200e4ab05ecb45fe85a81be427708b839dd` |
| 17 | `theorem` | [source_normalization_mul_green_correlation_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/source-normalization-mul-green-correlation-integral--a246ab440b6a340426ecd90b.md) | 265 | `result-track:a246ab440b6a340426ecd90b7c682df437b0d3c9cff2fd550df04d7ec2a94feb` |
| 18 | `theorem` | [green_source_correlation_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/green-source-correlation-product-integrable--1c67ca85046ef2225ce30b31.md) | 273 | `result-track:1c67ca85046ef2225ce30b31ab029a7eb02d4f5a30b5fb0934aded7e9ff01697` |
| 19 | `theorem` | [green_source_correlation_convolution](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/declarations/green-source-correlation-convolution--477ce4ffdbd9c10ede2d60bf.md) | 287 | `result-track:477ce4ffdbd9c10ede2d60bf1b0d7c6400437e8be3f628780a917bfd30195379` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
