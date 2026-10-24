# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Norm.Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fabdde33a4bfdfa755fe64690b04827ced6e3a01",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fabdde33a4bfdfa755fe64690b04827ced6e3a01`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LineDeriv.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_differentiableAt_norm_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/not-differentiableat-norm-zero--bc7c20ffc522048078bab7c2.md) | 44 | `result-track:bc7c20ffc522048078bab7c2bcc8ca251a6b22049fca6beb1c99a7a58d1568bb` |
| 2 | `theorem` | [ContDiffAt.contDiffAt_norm_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/contdiffat-contdiffat-norm-smul--3c9864d56069208ca7fafd2b.md) | 56 | `result-track:3c9864d56069208ca7fafd2b9fcda447d559cc062e4a2c87eb8c8c78eebab0de` |
| 3 | `theorem` | [contDiffAt_norm_smul_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/contdiffat-norm-smul-iff--9c5989687d2ad06c150a5d28.md) | 66 | `result-track:9c5989687d2ad06c150a5d28ddbb63e57cecdaaa68abfa477a2957c4cafa2455` |
| 4 | `theorem` | [ContDiffAt.contDiffAt_norm_of_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/contdiffat-contdiffat-norm-of-smul--442cd774290043d65dc918ef.md) | 73 | `result-track:442cd774290043d65dc918efad26391782a3ad9ab62a9413e0f00b07dd36e9cb` |
| 5 | `theorem` | [HasStrictFDerivAt.hasStrictFDerivAt_norm_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/hasstrictfderivat-hasstrictfderivat-norm-smul--677f63d789e1b21fdcf31328.md) | 89 | `result-track:677f63d789e1b21fdcf31328d1e422855a9f2af47710649a53070f513f6664dc` |
| 6 | `theorem` | [HasStrictFDerivAt.hasStrictDerivAt_norm_smul_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/hasstrictfderivat-hasstrictderivat-norm-smul-neg--101b5052b0f59b2218d282a0.md) | 103 | `result-track:101b5052b0f59b2218d282a0622bad5ed01dcb407cca437b7dc206165c268405` |
| 7 | `theorem` | [HasStrictFDerivAt.hasStrictDerivAt_norm_smul_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/hasstrictfderivat-hasstrictderivat-norm-smul-pos--68a62285ecfb7cba49e0633b.md) | 108 | `result-track:68a62285ecfb7cba49e0633b4ed246ed681abeb30da32b3b96d6211a7b8374d9` |
| 8 | `theorem` | [HasFDerivAt.hasFDerivAt_norm_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/hasfderivat-hasfderivat-norm-smul--2a3df58937ca6c5c207f8273.md) | 113 | `result-track:2a3df58937ca6c5c207f8273cd4ccaf255d42e2e49d4734066405603178ee0f1` |
| 9 | `theorem` | [HasFDerivAt.hasFDerivAt_norm_smul_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/hasfderivat-hasfderivat-norm-smul-neg--568ef2c59b9ae04f055c5d80.md) | 128 | `result-track:568ef2c59b9ae04f055c5d807e8cbabfbf4c98e269269bdf09f1f1980f0afdb8` |
| 10 | `theorem` | [HasFDerivAt.hasFDerivAt_norm_smul_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/hasfderivat-hasfderivat-norm-smul-pos--4db032d71bac7e6da0b3b4c8.md) | 133 | `result-track:4db032d71bac7e6da0b3b4c83b05bce48ff8007d4061cb5284b14a77fbdbd617` |
| 11 | `theorem` | [differentiableAt_norm_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/differentiableat-norm-smul--1fda9985d5a95b5e26552c1e.md) | 138 | `result-track:1fda9985d5a95b5e26552c1e47cf5e06224ce12541eb5c2b9effb6b0667b5acd` |
| 12 | `theorem` | [DifferentiableAt.differentiableAt_norm_of_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/differentiableat-differentiableat-norm-of-smul--94a62df6cd529f2142cda1dd.md) | 145 | `result-track:94a62df6cd529f2142cda1dde66acddc9b7b7a38626b357d8a51acee3087dead` |
| 13 | `theorem` | [DifferentiableAt.fderiv_norm_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/differentiableat-fderiv-norm-self--df854c53411cafea8c7272fe.md) | 155 | `result-track:df854c53411cafea8c7272fe54918f30d303bbcd23644c4d5e9944b629ee84b0` |
| 14 | `theorem` | [fderiv_norm_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/fderiv-norm-smul--447c3dad9400fb50aa026759.md) | 170 | `result-track:447c3dad9400fb50aa0267594fa6238be1c71b6e1ebcdec15d889fc976545b5d` |
| 15 | `theorem` | [fderiv_norm_smul_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/fderiv-norm-smul-pos--95a11e87ab4b46ce953c7e14.md) | 184 | `result-track:95a11e87ab4b46ce953c7e1401ee191bc8af3a79f9e623d8bd1e97669cb4d9aa` |
| 16 | `theorem` | [fderiv_norm_smul_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/fderiv-norm-smul-neg--d362a2505bafa23a3b1dae97.md) | 188 | `result-track:d362a2505bafa23a3b1dae9728c590e1bd8650cf2a1ffacda8d076b6d94efceb` |
| 17 | `theorem` | [norm_fderiv_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/declarations/norm-fderiv-norm--97f983895f0888d95febfb11.md) | 192 | `result-track:97f983895f0888d95febfb118cf875e70f0067ddf2c5b5c5fc4640a151fb6c3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
