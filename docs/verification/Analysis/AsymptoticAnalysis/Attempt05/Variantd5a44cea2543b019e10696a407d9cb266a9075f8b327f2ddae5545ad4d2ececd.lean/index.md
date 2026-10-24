# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt05.Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8eb176542c43b85399b0f8537948aced86280e6f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8eb176542c43b85399b0f8537948aced86280e6f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/outerweight--1e228926ea3031c68c773516.md) | 26 | `declaration-track:1e228926ea3031c68c7735169fd1c9536039eda783f8918fc86a21e0eff20e03` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/exponentweight--370f529006b44ddef279c9e3.md) | 28 | `declaration-track:370f529006b44ddef279c9e34b51f0a470a9c42dbf7909a13b1fd38836706cf1` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/momentatom--5e43f4581619d92e48d55acb.md) | 30 | `declaration-track:5e43f4581619d92e48d55acb8ad80a0595a0f76c540aec12683890a5256ffe18` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/primemomentatom--b4e52bc1dff89d864269d3f0.md) | 33 | `declaration-track:b4e52bc1dff89d864269d3f0006f769d19c69e306bb0efd11a9f7ca220341617` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/properpowermoment--96a37d9cf4c188b08419cef2.md) | 35 | `declaration-track:96a37d9cf4c188b08419cef274769ec1e8c2236fcd0cf4e64978d764f5389dcd` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/properpowerb1--c667d69e653c1ad989639d17.md) | 37 | `declaration-track:c667d69e653c1ad989639d1716676526dfae6e039e62bd5978afdcd57515d69f` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/properpowerb2--30849119133aa5aedaf848c8.md) | 39 | `declaration-track:30849119133aa5aedaf848c868f64d70aa63af24f250f80cd8591e3ccd725be6` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/outerweight-nonneg--7195ac8a5122db8dacd75b3c.md) | 41 | `result-track:7195ac8a5122db8dacd75b3c419c9c0719673957ed5ffd7b9207ea588473e031` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/exponentweight-nonneg--7b16c81c556ecd79398dc4e5.md) | 49 | `result-track:7b16c81c556ecd79398dc4e55e933508d4f5c81d95fac652b17e3da46c647e03` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/momentatom-nonneg--f39c6b7d131efbec82df9c53.md) | 53 | `result-track:f39c6b7d131efbec82df9c538ec7b9912ade41960d0c1b65b848b6f222813a6e` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/outerweight-summable--ee2b483771895a8cde839b0d.md) | 61 | `result-track:ee2b483771895a8cde839b0d24d2ef04c4166fc5d9baeae496e2d46a022c2093` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/exponentweight-summable--e9850dde0c067377f0694b23.md) | 91 | `result-track:e9850dde0c067377f0694b23719e311a66a458c57f056397fc3c86e562da1e6d` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/momentatom-le-product--407475b096d977873754ea9c.md) | 100 | `result-track:407475b096d977873754ea9c21dcaa3df8b5128b08879c3c56569ef79485afba` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/prime-outerweight-summable--c06a5ccac3ca49bcbb027a78.md) | 121 | `result-track:c06a5ccac3ca49bcbb027a78bac30cd0c859c0367311df8814d2d03cd00d690d` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/primemomentatom-summable--81f39dbfd3e6a819b1102f83.md) | 125 | `result-track:81f39dbfd3e6a819b1102f8314103b9ccecb7598bad0b0663ddd0b2dfec68280` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/primemomentatom-inner-summable--f0cd57bdfc731a972adb16ec.md) | 132 | `result-track:f0cd57bdfc731a972adb16ec1e244a9b34d72eb220c92a65b34f8a8a6d63d581` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/primemomentatom-outer-summable--99900d5ca485d2c1fabb78e1.md) | 137 | `result-track:99900d5ca485d2c1fabb78e19e31be56ce7f1476e7da6bd01663a0281a4e0cca` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/properpowermoment-nonneg--370b9709d529376323fe1de7.md) | 142 | `result-track:370b9709d529376323fe1de7c3d707e3f5e5ec842de32a681f1ef84914a1bf31` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/finiteproperpowermoment-le-b1--9fc1beab733dedb1f8bb911c.md) | 145 | `result-track:9fc1beab733dedb1f8bb911cb1bc1b61b5b593497dcbefe9974957f0b3048d3a` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/properpowerb1-gt-nine-quarters--43e87a9c495d8329781979df.md) | 175 | `result-track:43e87a9c495d8329781979dfd9cff9d5a9e56c221e4b74c96011bc2e06c046ba` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variantd5a44cea2543b019e10696a407d9cb266a9075f8b327f2ddae5545ad4d2ececd.lean/declarations/arithmeticconstant-gt-one-five-hundred--68a56376da97d7e5b31583a2.md) | 178 | `result-track:68a56376da97d7e5b31583a2f5214e57371bdb0e996f82ff6a31f842f4a1c54a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
