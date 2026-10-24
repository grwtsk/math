# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Inv.Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46b9cb6439f3de8c6424f7e0c80a09c3def4324d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46b9cb6439f3de8c6424f7e0c80a09c3def4324d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/hasstrictderivat-inv--70e0791716115303b0afdcc9.md) | 45 | `result-track:70e0791716115303b0afdcc99ae73e72bcd44bac25b89d2e6ad0ac0650bbd779` |
| 2 | `theorem` | [hasDerivAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/hasderivat-inv--e67763444f7194b927f8c1c5.md) | 60 | `result-track:e67763444f7194b927f8c1c5652af9dead0e71f03f2c908674f1634f7bba9941` |
| 3 | `theorem` | [hasDerivWithinAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/hasderivwithinat-inv--bab012c840ed54461a3ade6e.md) | 63 | `result-track:bab012c840ed54461a3ade6e1a0c5a9225abaac868e216d6102e8546e6b2d040` |
| 4 | `theorem` | [differentiableAt_inv_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/differentiableat-inv-iff--94ecf5c1da169e071c7c7ab2.md) | 67 | `result-track:94ecf5c1da169e071c7c7ab29fc38fedc7d30cdff99fd716503db1ad7fc58d0d` |
| 5 | `theorem` | [deriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/deriv-inv--8ba3e4d219d1602a64ad3822.md) | 71 | `result-track:8ba3e4d219d1602a64ad38221b5b0c5dda60c8625e2d7696370ee291cdf49cab` |
| 6 | `theorem` | [deriv_inv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/deriv-inv--58646ee7c85afe347b8a25a3.md) | 77 | `result-track:58646ee7c85afe347b8a25a37c1dcf46c9917a57fcd7a46f42274ac42c28afc5` |
| 7 | `theorem` | [derivWithin_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/derivwithin-inv--d66aa81812946795e6650a54.md) | 80 | `result-track:d66aa81812946795e6650a54e6e61993b7f0b844785b4defa84d5654beee0df2` |
| 8 | `theorem` | [hasFDerivAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/hasfderivat-inv--2c3d79f2af773f2e0b235556.md) | 85 | `result-track:2c3d79f2af773f2e0b23555637a83d2125a5de7d361fdf2f24d333459e262351` |
| 9 | `theorem` | [hasStrictFDerivAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/hasstrictfderivat-inv--f3b8bf94f7a244b6f5e982c7.md) | 89 | `result-track:f3b8bf94f7a244b6f5e982c7c2870d00632488a9a8ba2320de4685080ea1db70` |
| 10 | `theorem` | [hasFDerivWithinAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/hasfderivwithinat-inv--f00235e33d0d0697bb16fe9e.md) | 93 | `result-track:f00235e33d0d0697bb16fe9e5f49d9f18b66f9d178fb59c63dc114697578eec1` |
| 11 | `theorem` | [fderiv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/fderiv-inv--59671881941b4047740f1813.md) | 97 | `result-track:59671881941b4047740f1813fb2e5d4193354791cec223ef609f612d7a091d80` |
| 12 | `theorem` | [fderivWithin_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/fderivwithin-inv--d775f187620478662a3dbbe1.md) | 100 | `result-track:d775f187620478662a3dbbe1bb6bc9371d24212f103a57583a6676d7862f0f6c` |
| 13 | `theorem` | [HasDerivWithinAt.inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/hasderivwithinat-inv--8b20a05b8f5122d30501284a.md) | 107 | `result-track:8b20a05b8f5122d30501284a35a1170ec72c9c1bcc0cfe4c8e8372e1a938b0b8` |
| 14 | `theorem` | [HasDerivAt.inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/hasderivat-inv--7593881c91466af94db5c20e.md) | 112 | `result-track:7593881c91466af94db5c20ea5884e518b775f53b739881022544f04e41060e9` |
| 15 | `theorem` | [derivWithin_inv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/derivwithin-inv--01aa054c9a65b086ddfbcd5b.md) | 117 | `result-track:01aa054c9a65b086ddfbcd5b51838778b358bd52d265bd602cd1c96ac39f6ee8` |
| 16 | `theorem` | [deriv_inv''](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/deriv-inv--008dca4c1710af6bc491419a.md) | 124 | `result-track:008dca4c1710af6bc491419abd509cb2ac50aef36dfa59e700f98df8b08f7dde` |
| 17 | `theorem` | [HasDerivWithinAt.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/hasderivwithinat-div--badfcd3fb6d4c95c8b9e1d13.md) | 136 | `result-track:badfcd3fb6d4c95c8b9e1d13a8ddaec3e4792d84454231e3c8b1f82e275845e6` |
| 18 | `theorem` | [HasStrictDerivAt.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/hasstrictderivat-div--4bdd0eb1c158456d7002267f.md) | 144 | `result-track:4bdd0eb1c158456d7002267f5adce4da49e5a299b5c0babe9248a3213ab2a297` |
| 19 | `theorem` | [HasDerivAt.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/hasderivat-div--2cb9a48e9d54b06a03955cd3.md) | 151 | `result-track:2cb9a48e9d54b06a03955cd3dfe0c9383946eb12a2c77ef114fb91b1e369fe82` |
| 20 | `theorem` | [DifferentiableWithinAt.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/differentiablewithinat-div--5580b937a0a74b3ee222ebd2.md) | 156 | `result-track:5580b937a0a74b3ee222ebd2547efa7d13806322ce14f0907219c79922017688` |
| 21 | `theorem` | [DifferentiableAt.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/differentiableat-div--a10c45991506dcfa148aec65.md) | 162 | `result-track:a10c45991506dcfa148aec653dde67f1c1fd8767b8c62bffb219add3778c0e22` |
| 22 | `theorem` | [DifferentiableOn.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/differentiableon-div--637b1bcaeb8143823a1740c2.md) | 166 | `result-track:637b1bcaeb8143823a1740c2e2088c19e3da0500b74507beff51097ef49904e7` |
| 23 | `theorem` | [Differentiable.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/differentiable-div--69bf19b50280ba5262e51d68.md) | 171 | `result-track:69bf19b50280ba5262e51d68d4eb9a3f16ea73edaf1c615175c39603f4bdc855` |
| 24 | `theorem` | [derivWithin_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/derivwithin-div--55e152dccb6e828f011bf1fa.md) | 174 | `result-track:55e152dccb6e828f011bf1fab8cb60aef0cf7749e917d89d77bfe9709e141c87` |
| 25 | `theorem` | [deriv_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variante678cd6cfe099ed878a1dae7a5d743b997c9b9f9a9d30449f18b002faab3802f.lean/declarations/deriv-div--df1add38518eb40a5cbb01b4.md) | 183 | `result-track:df1add38518eb40a5cbb01b409f7fb4511d4d963f77ccdb5f0aa84b7bed0196a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
