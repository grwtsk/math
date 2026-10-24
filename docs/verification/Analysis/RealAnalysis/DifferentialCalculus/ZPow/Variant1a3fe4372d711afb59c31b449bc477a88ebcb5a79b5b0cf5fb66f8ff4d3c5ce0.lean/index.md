# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZPow.Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ca2f0ed57b3c4d6473a3f78ac0e8208df5687f0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ca2f0ed57b3c4d6473a3f78ac0e8208df5687f0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/hasstrictderivat-zpow--3f3535f4dd448a1f76bf05ac.md) | 35 | `result-track:3f3535f4dd448a1f76bf05acf9845b41482dee234bbe35da2f6c0f07add0cb15` |
| 2 | `theorem` | [hasDerivAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/hasderivat-zpow--170a207e39002964eaf789f8.md) | 56 | `result-track:170a207e39002964eaf789f82b3c1897edd73341f99de0164e9426fcbebb1000` |
| 3 | `theorem` | [hasDerivWithinAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/hasderivwithinat-zpow--12e478bb2adeea9253b61438.md) | 60 | `result-track:12e478bb2adeea9253b614382d67bf469d084ff12e46510f3215550c45d0945c` |
| 4 | `theorem` | [differentiableAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/differentiableat-zpow--0360b5f44ceed7710a58505a.md) | 64 | `result-track:0360b5f44ceed7710a58505a7d510c39982dec2f13ca5a125a0bda6cafcf6d44` |
| 5 | `theorem` | [differentiableWithinAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/differentiablewithinat-zpow--960e55b2a2a524b090f06270.md) | 68 | `result-track:960e55b2a2a524b090f0627073ba54a3457609233b266d050c4c7a7b99fcc29d` |
| 6 | `theorem` | [differentiableOn_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/differentiableon-zpow--52479aef148e1bc056550b25.md) | 72 | `result-track:52479aef148e1bc056550b2510fbcf92d4a5b89927d301da26089598dbc185f9` |
| 7 | `theorem` | [deriv_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/deriv-zpow--7632e93764493cd006a0f709.md) | 76 | `result-track:7632e93764493cd006a0f7099c6cd14455260268e8fe79518706547788bf0d25` |
| 8 | `theorem` | [deriv_zpow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/deriv-zpow--e07f6dfc44860e7c3a684815.md) | 85 | `result-track:e07f6dfc44860e7c3a684815bfc9fc9301ee3d12fbf349cdc75dd5b6ae0bd68f` |
| 9 | `theorem` | [derivWithin_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/derivwithin-zpow--51f00bd5c6479fad694f4bac.md) | 88 | `result-track:51f00bd5c6479fad694f4bac530260ccad05581e2bc9837c26109533f1f0a793` |
| 10 | `theorem` | [iter_deriv_zpow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/iter-deriv-zpow--0c8acd16641502e5d7e91129.md) | 93 | `result-track:0c8acd16641502e5d7e911295af78e2ba3234251b456f2cebb50fd3073894aec` |
| 11 | `theorem` | [iter_deriv_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/iter-deriv-zpow--b0f78975b4810c151b6e18eb.md) | 103 | `result-track:b0f78975b4810c151b6e18ebe4d33198460905a7999220723f4ed5dbb7b11d67` |
| 12 | `theorem` | [iter_deriv_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/iter-deriv-pow--4ba5b467a446ccc6cc17f2c1.md) | 107 | `result-track:4ba5b467a446ccc6cc17f2c177b74459be32e4b614655dce424177dcbac8155c` |
| 13 | `theorem` | [iter_deriv_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/iter-deriv-pow--961de50acdddca679f2cd22b.md) | 117 | `result-track:961de50acdddca679f2cd22b6258e86adf76141fbb30617cb23ce6db280da2f5` |
| 14 | `theorem` | [iter_deriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/iter-deriv-inv--02345430a86a9a10ca900a34.md) | 122 | `result-track:02345430a86a9a10ca900a34dcd3106119933eabab8e7368cc2ea391cc3256dc` |
| 15 | `theorem` | [iter_deriv_inv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/iter-deriv-inv--19a6b1ac849ff674cdc89cfe.md) | 132 | `result-track:19a6b1ac849ff674cdc89cfe4935a4b33fc9677fad9200812fc17b8a816129a0` |
| 16 | `theorem` | [DifferentiableWithinAt.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/differentiablewithinat-zpow--3d36b728c98a37852e0438ac.md) | 138 | `result-track:3d36b728c98a37852e0438ac82828f0614fb228b5dd91fbeff34145165dc4169` |
| 17 | `theorem` | [DifferentiableAt.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/differentiableat-zpow--1746b93bc8d21ccb50545eea.md) | 142 | `result-track:1746b93bc8d21ccb50545eea86e42e7695f5bf6d16c99f56b912a1b1ee2179dc` |
| 18 | `theorem` | [DifferentiableOn.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/differentiableon-zpow--ead8ef1971e0348869042ca4.md) | 146 | `result-track:ead8ef1971e0348869042ca451c342434eee521627923076872a7620f53716de` |
| 19 | `theorem` | [Differentiable.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant1a3fe4372d711afb59c31b449bc477a88ebcb5a79b5b0cf5fb66f8ff4d3c5ce0.lean/declarations/differentiable-zpow--592e5dc887b02bbbe5894546.md) | 150 | `result-track:592e5dc887b02bbbe5894546e95ef244a399a3a7dc1c981c76663a1d9c9a4307` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
