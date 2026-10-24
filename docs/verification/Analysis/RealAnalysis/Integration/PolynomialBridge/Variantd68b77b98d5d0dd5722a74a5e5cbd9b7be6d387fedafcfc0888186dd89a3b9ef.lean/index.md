# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PolynomialBridge.Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d38320b376954ce5aeabe2d437155d679d514c7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d38320b376954ce5aeabe2d437155d679d514c7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Landau.Bridge` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePolynomialResidual` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/sourcemeasure--fcca27c5174d6d60868585f1.md) | 38 | `declaration-track:fcca27c5174d6d60868585f16b9c5b79a1d8f2e3bd26f71fe27a6b7c4c922819` |
| 2 | `theorem` | [corrected_source_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/corrected-source-aemeasurable--f9e47d90df0940c03893bbcc.md) | 44 | `result-track:f9e47d90df0940c03893bbccbfe352d45ef6f78b1b658bb90d92c4c76d7eb814` |
| 3 | `theorem` | [density_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/density-aemeasurable--c7615a735b08a0a9f29ad941.md) | 67 | `result-track:c7615a735b08a0a9f29ad941b768d3efc8013ff487c770580c5782ada9aeaceb` |
| 4 | `theorem` | [density_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/density-lt-top--ec8652b4fb6a2b362f778dc2.md) | 74 | `result-track:ec8652b4fb6a2b362f778dc25149d139cb3dae4a1a23cef00f9755a499bb2481` |
| 5 | `theorem` | [density_toReal_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/density-toreal-ae--ad2fe8dda0c1ca13fccf5fdc.md) | 83 | `result-track:ad2fe8dda0c1ca13fccf5fdc7667f710c3dfda432e764bae9be80bf0827a8a28` |
| 6 | `theorem` | [one_lt_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/one-lt-ae--6e7a44b9c1a5104dff0dc612.md) | 94 | `result-track:6e7a44b9c1a5104dff0dc612354807799f536c5649df218f5bd1b00afb4526fa` |
| 7 | `theorem` | [id_nonneg_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/id-nonneg-ae--c545417573c40a31f3dd222a.md) | 101 | `result-track:c545417573c40a31f3dd222a77efda644dd2083ee3ae3380ce2d278150614037` |
| 8 | `theorem` | [exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/exp-integrable--c7ebc85aaaf104e496815554.md) | 109 | `result-track:c7ebc85aaaf104e49681555486f0fce9a5b35758f4a79685d8366ffba4419aab` |
| 9 | `theorem` | [integral_exp_eq_correctedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/integral-exp-eq-correctedtransform--21f530eb016e28abdc303ac9.md) | 128 | `result-track:21f530eb016e28abdc303ac9efefa0535b124d61a2f149ad10115eccff381359` |
| 10 | `theorem` | [complexMGF_eq_correctedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/complexmgf-eq-correctedtransform--bf787f5f47f24f376054ceae.md) | 151 | `result-track:bf787f5f47f24f376054ceaec80b694ec1fae871acb1cc54ad4c90e7f4fd9684` |
| 11 | `theorem` | [real_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/real-laplace-integrable--0a26d37c630cacc63aefaf84.md) | 160 | `result-track:0a26d37c630cacc63aefaf842f643cf242d62bc1fc06198a3f220ca71a86fdcd` |
| 12 | `theorem` | [correction_at_shifted_center_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/correction-at-shifted-center-analytic--4468fbe3dc498df9123c1795.md) | 176 | `result-track:4468fbe3dc498df9123c1795de7026a6eb65e79d2f53cbed9bde92700d447f1a` |
| 13 | `theorem` | [corrected_transform_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/corrected-transform-cleared-tendsto--f36727ba3be5c3dbd502acb4.md) | 202 | `result-track:f36727ba3be5c3dbd502acb4f32fb555c3e480fcac0352e8efefee7c02bc5495` |
| 14 | `theorem` | [correctedTransform_punctured_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/correctedtransform-punctured-differentiable--d8c72de4bb8bc79acf1b1b73.md) | 222 | `result-track:d8c72de4bb8bc79acf1b1b7310c1a89c14606d8db0972ecc043058d1cac5c21d` |
| 15 | `theorem` | [corrected_transform_exact_pole](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/corrected-transform-exact-pole--05eb542710b7d87cccacc287.md) | 244 | `result-track:05eb542710b7d87cccacc2874a5c17825c851e143edd9c7e1f2e65a120423018` |
| 16 | `theorem` | [corrected_order_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/corrected-order-nonneg--ef59a0fc577eb93083329aad.md) | 283 | `result-track:ef59a0fc577eb93083329aad47d0905cdae0eba6e4dd061c8727e07b9d76f87a` |
| 17 | `theorem` | [riemann_hypothesis_of_polynomial_residual_tail_upper_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/declarations/riemann-hypothesis-of-polynomial-residual-tail-upper-bound--8c5905bb390e3728f3dbb04e.md) | 310 | `result-track:8c5905bb390e3728f3dbb04e1bc1ff6254a5f88f9390e3cd111ee40f0541c935` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
