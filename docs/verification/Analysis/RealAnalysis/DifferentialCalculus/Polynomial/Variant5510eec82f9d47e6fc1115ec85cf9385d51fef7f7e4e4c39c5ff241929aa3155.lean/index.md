# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Polynomial.Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2da2679432af38366970dc95af4cdccd020fbf04",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2da2679432af38366970dc95af4cdccd020fbf04`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/hasstrictderivat--7f6094bb8203b2e4ecbf3457.md) | 56 | `result-track:7f6094bb8203b2e4ecbf3457be34249ded0551bbf51523b5f284550a9ea46cab` |
| 2 | `theorem` | [hasStrictDerivAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/hasstrictderivat-aeval--c06a4e8390e5da6cff1a4da8.md) | 63 | `result-track:c06a4e8390e5da6cff1a4da890a8dd82efe98c042b920db937beaed66a48b235` |
| 3 | `theorem` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/hasderivat--853f0531bdca53985c2bd5c5.md) | 69 | `result-track:853f0531bdca53985c2bd5c58af14c34ae1031c795fa885600dd7f3975a0990d` |
| 4 | `theorem` | [hasDerivAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/hasderivat-aeval--4607e8f67576e4836f2753b4.md) | 72 | `result-track:4607e8f67576e4836f2753b46c45dbad74924d87b8c452bd2895095e529de649` |
| 5 | `theorem` | [hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/hasderivwithinat--db49113efb10290705414271.md) | 76 | `result-track:db49113efb102907054142719a5484ea06de1dadbb1640f279656fcdf148a5de` |
| 6 | `theorem` | [hasDerivWithinAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/hasderivwithinat-aeval--fa1b659bc066f27c38d9123c.md) | 80 | `result-track:fa1b659bc066f27c38d9123c9c76458f29b734ea898fb59f9a0dff2375511012` |
| 7 | `theorem` | [differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/differentiableat--df5b66c4624ed4fcbb4d7161.md) | 84 | `result-track:df5b66c4624ed4fcbb4d7161a7fc9a8d75c134a10224cd5b211536848f8c010b` |
| 8 | `theorem` | [differentiableAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/differentiableat-aeval--5fbd5cb49464f399e5c821e1.md) | 87 | `result-track:5fbd5cb49464f399e5c821e1dc1ba1d02b95b258c6af5e92b47a199d9d95ea8a` |
| 9 | `theorem` | [differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/differentiablewithinat--a573b7605110666cb44f9cb7.md) | 90 | `result-track:a573b7605110666cb44f9cb74a6c5de44ec5576333390db172552695bcee93d1` |
| 10 | `theorem` | [differentiableWithinAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/differentiablewithinat-aeval--51f20ceb1b13bb435d198086.md) | 93 | `result-track:51f20ceb1b13bb435d19808659535430327678c5597d0d08c41977f2d73d8598` |
| 11 | `theorem` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/differentiable--721bd2d4e12fb1b36121a512.md) | 97 | `result-track:721bd2d4e12fb1b36121a512f60bfb003533f8e559f613401d990dc79f89c66a` |
| 12 | `theorem` | [differentiable_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/differentiable-aeval--cecb75dbf4973140bff90926.md) | 99 | `result-track:cecb75dbf4973140bff909267607f2c0ee5b9cf076504ea473c7060563344308` |
| 13 | `theorem` | [differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/differentiableon--cabe148a81fa5c08cda15828.md) | 102 | `result-track:cabe148a81fa5c08cda158284b48fbc96ee170614975e48a7e9b59dd71815bb0` |
| 14 | `theorem` | [differentiableOn_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/differentiableon-aeval--f824992d463e5ae22b1cb2bb.md) | 105 | `result-track:f824992d463e5ae22b1cb2bbb1ba1962e14d5553aaaea4112c489b29e33ef462` |
| 15 | `theorem` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/deriv--fd0264a82f37916470536cb4.md) | 109 | `result-track:fd0264a82f37916470536cb43bb4bf6ae3c3959ae66790e68a0140081d12e7ed` |
| 16 | `theorem` | [deriv_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/deriv-aeval--6f6666f4e3a32500aa87942f.md) | 113 | `result-track:6f6666f4e3a32500aa87942f66a6559ffcaa37a6a0ca65e6f5268f6a060833d8` |
| 17 | `theorem` | [derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/derivwithin--fb6711a46e04d11ddecf0302.md) | 116 | `result-track:fb6711a46e04d11ddecf030275ee45d84a344e5697d6a673e76bc26e95e21d65` |
| 18 | `theorem` | [derivWithin_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/derivwithin-aeval--0a558ae41c089ddbcad1fbef.md) | 121 | `result-track:0a558ae41c089ddbcad1fbef9a6c3f323831cd3d6644b31362c80151d5f43439` |
| 19 | `theorem` | [hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/hasfderivat--4922c964dcdf56a451676336.md) | 126 | `result-track:4922c964dcdf56a45167633668a506d0fee3c86bf38aab5b130af2a2056d8833` |
| 20 | `theorem` | [hasFDerivAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/hasfderivat-aeval--60a62f9c5d7b418ded8c340e.md) | 130 | `result-track:60a62f9c5d7b418ded8c340e06cd5d7334fa0530d5e43f5762179e18af3a580b` |
| 21 | `theorem` | [hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/hasfderivwithinat--34c0cd684808d83e57354c84.md) | 134 | `result-track:34c0cd684808d83e57354c84ef24fa05258e31a6d28b7ed6396b20a06c89e38f` |
| 22 | `theorem` | [hasFDerivWithinAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/hasfderivwithinat-aeval--33b80ca0ca66f615e18cf1e9.md) | 138 | `result-track:33b80ca0ca66f615e18cf1e9de186ba281635f95205f239c12ba45147b1fae8c` |
| 23 | `theorem` | [fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/fderiv--d479eab4ee685bfd9513cfd1.md) | 144 | `result-track:d479eab4ee685bfd9513cfd1da6fd747963faf203426fa85f2730bc6576ffe0b` |
| 24 | `theorem` | [fderiv_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/fderiv-aeval--093c17ebc575a236ac267ee4.md) | 149 | `result-track:093c17ebc575a236ac267ee43c1a369380d07baba637a695bd1bfaa5be0e21fa` |
| 25 | `theorem` | [fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/fderivwithin--a02542c3eb7566c2d32d49b8.md) | 153 | `result-track:a02542c3eb7566c2d32d49b85a51a5bfbefc1da0e6ae69de431361dfed477cab` |
| 26 | `theorem` | [fderivWithin_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variant5510eec82f9d47e6fc1115ec85cf9385d51fef7f7e4e4c39c5ff241929aa3155.lean/declarations/fderivwithin-aeval--9d529a9a8ea5ffd8ff08bb14.md) | 157 | `result-track:9d529a9a8ea5ffd8ff08bb14eeab59487bd867e41b7afa15aeef38ae69b81096` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
