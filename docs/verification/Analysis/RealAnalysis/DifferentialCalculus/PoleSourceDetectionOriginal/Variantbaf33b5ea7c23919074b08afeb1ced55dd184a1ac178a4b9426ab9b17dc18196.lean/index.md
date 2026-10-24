# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PoleSourceDetectionOriginal.Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6be8797ffc479e6ce1d03bee18bebed964290699",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6be8797ffc479e6ce1d03bee18bebed964290699`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceLaplaceDetection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bilateral_laplace_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/bilateral-laplace-add--92b4b0f4cfafa94d9331b609.md) | 37 | `result-track:92b4b0f4cfafa94d9331b609c404a813f63bc6859f2fe3358ede624d31233204` |
| 2 | `theorem` | [bilateral_laplace_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/bilateral-laplace-smul--79723d4e1d28ab889fff53ef.md) | 46 | `result-track:79723d4e1d28ab889fff53ef1a1243c8a13b6a29e9002c985aa839abb6c95f4f` |
| 3 | `theorem` | [bilateral_laplace_reflect](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/bilateral-laplace-reflect--1c9a79d7965f113497a64fc3.md) | 54 | `result-track:1c9a79d7965f113497a64fc366d27df0a6add556663b8a521499ebcbcd0b3394` |
| 4 | `theorem` | [source_normalization_pos_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/source-normalization-pos-of-pos--7a6e24fe8de1d7567a5928e1.md) | 64 | `result-track:7a6e24fe8de1d7567a5928e182b8ecdfd862547abd20721fdb6c777ad831b9e1` |
| 5 | `theorem` | [normalized_test_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/normalized-test-laplace-integrable--8799f2938cb4d3e35b2adfd8.md) | 72 | `result-track:8799f2938cb4d3e35b2adfd8f3f1184c45533adb41a59d8b5faeb3fc15d4e3a3` |
| 6 | `theorem` | [source_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/source-laplace-integrable--a32d05f604af9b2badb1ca28.md) | 79 | `result-track:a32d05f604af9b2badb1ca28132c0ad0070eec96edca837354bcf42c7a4f57e4` |
| 7 | `theorem` | [normalized_test_eq_pole_differential_operator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/normalized-test-eq-pole-differential-operator--1c1042746069afc56f463233.md) | 87 | `result-track:1c1042746069afc56f46323384f898977aad9166c787f94a63650642ee4c8449` |
| 8 | `theorem` | [explicit_second_derivative_laplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/explicit-second-derivative-laplace--7b423b2f155b04039158c562.md) | 95 | `result-track:7b423b2f155b04039158c562736b98861a944cf0fe63aeaa405a2daf6d3f09eb` |
| 9 | `theorem` | [normalized_test_laplace_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/normalized-test-laplace-factor--73fcda882fa20aef2fe526ba.md) | 109 | `result-track:73fcda882fa20aef2fe526ba43ac9e69d81c4a9f3600c03861ba03f62035c028` |
| 10 | `theorem` | [scaled_bump_laplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/scaled-bump-laplace--3cac7e1a865c3efe8260e36d.md) | 127 | `result-track:3cac7e1a865c3efe8260e36d3e58cbf44fd858eabeec48a2324251acde70ca8b` |
| 11 | `theorem` | [normalized_test_laplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/normalized-test-laplace--2cafdc4941b1bfe57a001038.md) | 138 | `result-track:2cafdc4941b1bfe57a00103883ea02f3576eab376207c729a22ddaeccea6bf08` |
| 12 | `theorem` | [source_laplace_eq_test_product](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/source-laplace-eq-test-product--664c4ba2f1062b38a0838727.md) | 146 | `result-track:664c4ba2f1062b38a083872767fe2fcffa1f9b37da927cc7c89757dad4a0d3c8` |
| 13 | `theorem` | [source_laplace_eq_bump_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/source-laplace-eq-bump-square--54ff4599dabf7e757a9a8394.md) | 153 | `result-track:54ff4599dabf7e757a9a8394fcd55cdc329e181f846db5decf25a2f74793689c` |
| 14 | `theorem` | [source_correlation_bilateral_laplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/source-correlation-bilateral-laplace--4eba3ec9f42ded564f416b52.md) | 173 | `result-track:4eba3ec9f42ded564f416b52cfc197a48659d0c5f6b1e513465ce105baead7f6` |
| 15 | `theorem` | [bump_laplace_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/bump-laplace-deriv--bbd17a31aa9c77524152ff76.md) | 180 | `result-track:bbd17a31aa9c77524152ff76914c80191ab7f5e76fb4f7ecdedd12dc09f6e50c` |
| 16 | `theorem` | [bump_laplace_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/bump-laplace-second-deriv--5915300a81cd4a3578c031e2.md) | 187 | `result-track:5915300a81cd4a3578c031e2f799b2be2e2f6a45df94db01847b3e71c3dabd50` |
| 17 | `theorem` | [bump_laplace_ode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/bump-laplace-ode--520d69d6d2d5c0e70f5ad888.md) | 194 | `result-track:520d69d6d2d5c0e70f5ad8888a442682ed637f9031d63848930f11d7f1d6b0f9` |
| 18 | `theorem` | [bump_laplace_zero_real_part_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/bump-laplace-zero-real-part-eq-zero--3e7518a027b6d9520e3f5dca.md) | 200 | `result-track:3e7518a027b6d9520e3f5dca48fb5ef7e3c7d836afc3d598062250319741a49f` |
| 19 | `theorem` | [bump_laplace_scaled_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/bump-laplace-scaled-ne-zero--57fc5f3a3b8fcd21b6c55d63.md) | 205 | `result-track:57fc5f3a3b8fcd21b6c55d635c0f529c738503ad4efca55d5cd680575a5cd754` |
| 20 | `theorem` | [source_correlation_laplace_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/source-correlation-laplace-ne-zero--4fa3b3c88eb58229d1f911c9.md) | 213 | `result-track:4fa3b3c88eb58229d1f911c9dabce86ff4826498503754d27c943d0a58b64a87` |
| 21 | `theorem` | [source_correlation_laplace_strip_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196.lean/declarations/source-correlation-laplace-strip-ne-zero--68a9fe12472529f406aad96f.md) | 225 | `result-track:68a9fe12472529f406aad96fedf46a5184f87b783f75260e764b3ad5da3bcbae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
