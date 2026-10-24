# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Correction.Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7826ef9fdd8d2e2277066b91a63c32323477813",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7826ef9fdd8d2e2277066b91a63c32323477813`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Assembly` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Laplace.Continuation` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/normalizationpolynomial--1aabf265659f88ec3de494a2.md) | 52 | `declaration-track:1aabf265659f88ec3de494a27899317c415d4433ce203100cef027984299806e` |
| 2 | `theorem` | [normalizationPolynomial_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/normalizationpolynomial-eq--3903967d2e94ca4968ddc5a2.md) | 59 | `result-track:3903967d2e94ca4968ddc5a22ae4f137267cf6847eca2bedf384240e5853c898` |
| 3 | `def` | [correctedSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/correctedsource--df8c079a62313e1af893ed3a.md) | 67 | `declaration-track:df8c079a62313e1af893ed3a137fdcbd2b4beef199f3d6dbcc1b9af8abff5f1d` |
| 4 | `theorem` | [corrected_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/corrected-source-eq--6fa149478d6264c3cd749b10.md) | 73 | `result-track:6fa149478d6264c3cd749b1034f7e7848f3c168aae6dccfa7bdfb32df39161ff` |
| 5 | `theorem` | [nonnegative_corrected_source_of_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/nonnegative-corrected-source-of-uniform--5124dce7e0b7194460c6c4bf.md) | 83 | `result-track:5124dce7e0b7194460c6c4bf7e84e50c7da17d49212c387d3596348a8d994545` |
| 6 | `def` | [correctionKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/correctionkernel--ac0c614de8d133888a081e14.md) | 105 | `declaration-track:ac0c614de8d133888a081e144a921a8193edf43092a047b4905eb5afbce447f3` |
| 7 | `theorem` | [weighted_correction_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/weighted-correction-eq--e75cc2570ed036bd9c4c8aa6.md) | 112 | `result-track:e75cc2570ed036bd9c4c8aa6d3349223757bb528762f98e295ed592a77619b8d` |
| 8 | `theorem` | [correction_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/correction-integrable--6e205fc6f0d1334d19d77973.md) | 128 | `result-track:6e205fc6f0d1334d19d77973e34f8563e26e7bf23ba3452462d00a87327405b7` |
| 9 | `theorem` | [integral_correction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/integral-correction--9a85f5e23f5ccfcd2021b278.md) | 142 | `result-track:9a85f5e23f5ccfcd2021b278e12f6f2f30823dfa147d68452c95c36b1fb566fd` |
| 10 | `theorem` | [correctionKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/correctionkernel-analytic--b48080cc30493ae627963ae6.md) | 188 | `result-track:b48080cc30493ae627963ae6f507a8787810d23639dcf1256ab1ad258434b4bf` |
| 11 | `def` | [correctedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/correctedtransform--4684965de59360e306797c95.md) | 198 | `declaration-track:4684965de59360e306797c9528ec78fa731f49aaf22a45ac9743a7bb52dedf2b` |
| 12 | `theorem` | [weighted_corrected_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/weighted-corrected-source-eq--5b523a4bc1c08c18954c0fc5.md) | 202 | `result-track:5b523a4bc1c08c18954c0fc52444c06f2f08b98ea1f0475b72e16e5e90a5361c` |
| 13 | `theorem` | [corrected_source_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/corrected-source-integrable--37c3ff45f74cb9ea4f6b7d60.md) | 214 | `result-track:37c3ff45f74cb9ea4f6b7d607210e002f9c16beb6387eecf530fc226d63f4bba` |
| 14 | `theorem` | [integral_corrected_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/integral-corrected-source--04e036fa9b775eeab75baebd.md) | 230 | `result-track:04e036fa9b775eeab75baebd4f94f51277bd13c6b993a7a3461341c5423dfe6d` |
| 15 | `theorem` | [correctedTransform_analytic_on_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/correctedtransform-analytic-on-domain--7c8363ce24d872edebb559d7.md) | 252 | `result-track:7c8363ce24d872edebb559d70940da3b866ae60c2d1832f2c527899e50e5e8ac` |
| 16 | `theorem` | [correctedTransform_meromorphic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/correctedtransform-meromorphic--d4214e82844beb65709707c3.md) | 264 | `result-track:d4214e82844beb65709707c381ea05541beeefc5efd8799a1a8506a52eaf4876` |
| 17 | `theorem` | [correctedTransform_analytic_positive_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/correctedtransform-analytic-positive-real--bbe79253d39b3241934b6d3d.md) | 278 | `result-track:bbe79253d39b3241934b6d3d1ff28b46bcf25563ea366b311ff6dbe612fba17d` |
| 18 | `def` | [CorrectedSourceCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/correctedsourcecheckpoint--1fc87aba0cf971b887a9687a.md) | 289 | `declaration-track:1fc87aba0cf971b887a9687a6dd290a885e1a791be0ba1ac6c9f4ea9262cbba7` |
| 19 | `theorem` | [corrected_source_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/declarations/corrected-source-checkpoint--a63843451d8746ba1e4489f9.md) | 308 | `result-track:a63843451d8746ba1e4489f928a756bb80acde2a4698fa1eb0534e11e963051e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
