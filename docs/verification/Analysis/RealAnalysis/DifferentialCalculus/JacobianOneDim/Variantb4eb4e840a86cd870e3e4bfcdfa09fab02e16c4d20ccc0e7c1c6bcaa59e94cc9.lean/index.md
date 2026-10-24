# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.JacobianOneDim.Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcd70216dd5680eb95ffea220a9fa82e4a045ac7",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcd70216dd5680eb95ffea220a9fa82e4a045ac7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_image_eq_lintegral_abs_deriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/lintegral-image-eq-lintegral-abs-deriv-mul--d26248311d8a00de394765db.md) | 44 | `result-track:d26248311d8a00de394765db1a794a3985557f3fab0e826cb99dbd915878e1e9` |
| 2 | `theorem` | [integrableOn_image_iff_integrableOn_abs_deriv_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/integrableon-image-iff-integrableon-abs-deriv-smul--f89a9443ad6dbd0468ba7d03.md) | 56 | `result-track:f89a9443ad6dbd0468ba7d0309e0341242d02df6ce5be90933e29709913ada7c` |
| 3 | `theorem` | [integral_image_eq_integral_abs_deriv_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/integral-image-eq-integral-abs-deriv-smul--dbc8f2a23e6fd12135d9d45c.md) | 66 | `result-track:dbc8f2a23e6fd12135d9d45c66d3e423074bdf172e904a65f849c0a503133167` |
| 4 | `theorem` | [exists_decomposition_of_monotoneOn_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/exists-decomposition-of-monotoneon-hasderivwithinat--eeccba66f0dddf9d09081406.md) | 80 | `result-track:eeccba66f0dddf9d090814061f01ec345099d19ce164db29eb4940656d24b2c4` |
| 5 | `theorem` | [lintegral_image_eq_lintegral_deriv_mul_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/lintegral-image-eq-lintegral-deriv-mul-of-monotoneon--ae7ffd45b34872e128efbc09.md) | 182 | `result-track:ae7ffd45b34872e128efbc092f722e9002faa22b47b752ea11d413ad77ebf444` |
| 6 | `theorem` | [lintegral_deriv_eq_volume_image_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/lintegral-deriv-eq-volume-image-of-monotoneon--31021f17dc9950bf50b9aeb0.md) | 222 | `result-track:31021f17dc9950bf50b9aeb0fd13aa98689dd50e6bf7eca5d7af6759661f56fc` |
| 7 | `theorem` | [integrableOn_image_iff_integrableOn_deriv_smul_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/integrableon-image-iff-integrableon-deriv-smul-of-monotoneon--5055d5c8142ba7df4ce78b67.md) | 230 | `result-track:5055d5c8142ba7df4ce78b6739a63467638f671a6048d85690a9e69a4da9585b` |
| 8 | `theorem` | [integral_image_eq_integral_deriv_smul_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/integral-image-eq-integral-deriv-smul-of-monotoneon--607d52d208717381b5633609.md) | 266 | `result-track:607d52d208717381b563360973438d8bf75f03a05a13c5bb7e5c72e6b05d2c91` |
| 9 | `theorem` | [integral_Icc_deriv_smul_of_deriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/integral-icc-deriv-smul-of-deriv-nonneg--e01e9e1a9e52d3d4150576b5.md) | 309 | `result-track:e01e9e1a9e52d3d4150576b571ed88b8da1057adcf3ced7f85a36eca88bbe325` |
| 10 | `theorem` | [integrableOn_Icc_deriv_smul_iff_of_deriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/integrableon-icc-deriv-smul-iff-of-deriv-nonneg--118acaeab6db11c0ac6208f7.md) | 333 | `result-track:118acaeab6db11c0ac6208f73e91423bae074fb474ad3de66532542c56b2c90d` |
| 11 | `theorem` | [lintegral_image_eq_lintegral_deriv_mul_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/lintegral-image-eq-lintegral-deriv-mul-of-antitoneon--ed72583e9426c2d2ac53153b.md) | 361 | `result-track:ed72583e9426c2d2ac53153b3e10d1c3e1802c5f21b065507ddb861c76045b3b` |
| 12 | `theorem` | [lintegral_deriv_eq_volume_image_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/lintegral-deriv-eq-volume-image-of-antitoneon--6ed09335e5fdfa4c2c325c1d.md) | 380 | `result-track:6ed09335e5fdfa4c2c325c1dff275cf47518a96c5fc51f80d5349cdc8973f037` |
| 13 | `theorem` | [integrableOn_image_iff_integrableOn_deriv_smul_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/integrableon-image-iff-integrableon-deriv-smul-of-antitoneon--1a92709da2b766e93599e9f5.md) | 388 | `result-track:1a92709da2b766e93599e9f5c0ee12c4ebdd67f454b3d091833086e464f36817` |
| 14 | `theorem` | [integral_image_eq_integral_deriv_smul_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/integral-image-eq-integral-deriv-smul-of-antitoneon--f3dd882f685e4acd746e6519.md) | 407 | `result-track:f3dd882f685e4acd746e651901f13573bed5762717e0e814ebda2b91ce978c80` |
| 15 | `theorem` | [integral_Icc_deriv_smul_of_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/integral-icc-deriv-smul-of-deriv-nonpos--c21bb26c0e7360bec7ed55e7.md) | 425 | `result-track:c21bb26c0e7360bec7ed55e72b1b026c6d46b36139d6dae58f70dd78e8d188db` |
| 16 | `theorem` | [integrableOn_Icc_deriv_smul_iff_of_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/integrableon-icc-deriv-smul-iff-of-deriv-nonpos--850552f8b053d5d1e7b116a1.md) | 450 | `result-track:850552f8b053d5d1e7b116a141bd8c6811c8aad61b2af037989ec7aef4c809ed` |
| 17 | `lemma` | [_root_.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_deriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/root-measurableembedding-withdensity-ofreal-comap-apply-eq-integral-abs--10518f7992fa4d5f6dc8caa2.md) | 477 | `result-track:10518f7992fa4d5f6dc8caa28e7f70d5f28d3f91d27d26089e669ecf20a8b35e` |
| 18 | `lemma` | [_root_.MeasurableEquiv.withDensity_ofReal_map_symm_apply_eq_integral_abs_deriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/root-measurableequiv-withdensity-ofreal-map-symm-apply-eq-integral-abs-d--12c0b0f8d8e19a91138efb3d.md) | 487 | `result-track:12c0b0f8d8e19a91138efb3d9c5da4dffce7cbca778aafe458bd3459370e6752` |
| 19 | `lemma` | [_root_.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_deriv_mul'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/root-measurableembedding-withdensity-ofreal-comap-apply-eq-integral-abs--576573a7d5711f54093c8bf4.md) | 497 | `result-track:576573a7d5711f54093c8bf41545f7300da3a60e5e56b75e4b6f5f1388b589dc` |
| 20 | `lemma` | [_root_.MeasurableEquiv.withDensity_ofReal_map_symm_apply_eq_integral_abs_deriv_mul'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/declarations/root-measurableequiv-withdensity-ofreal-map-symm-apply-eq-integral-abs-d--97e8ff0795c64d6688f36fda.md) | 507 | `result-track:97e8ff0795c64d6688f36fda62bf3c8669e8ac8aa9fa5f554f99c3481b48a696` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
