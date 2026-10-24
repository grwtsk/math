# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceAttempt1.Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "398355f0d447fb854e2007c292367bc7ecef7da7",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `398355f0d447fb854e2007c292367bc7ecef7da7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/p--442c2007cfa8b71532c26984.md) | 15 | `declaration-track:442c2007cfa8b71532c26984807e0176860af44b9875d55107df3428a84c207d` |
| 2 | `abbrev` | [a](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/a--527575f754558261fab779be.md) | 16 | `declaration-track:527575f754558261fab779bed0a4a8da0cbd45777d61943a51e670ed83a9b03a` |
| 3 | `def` | [firstTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/firstterm--9e334a82e1d19ebd2ae6536a.md) | 18 | `declaration-track:9e334a82e1d19ebd2ae6536acec5dee66abbf37b5eb0d61e38c36200a321fec2` |
| 4 | `def` | [secondTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/secondterm--e8e7728db0a0fc53ba772ee6.md) | 20 | `declaration-track:e8e7728db0a0fc53ba772ee6d4f8eb32109fd7b3dc1822eb3512b7214987b289` |
| 5 | `def` | [firstSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/firstseries--9f4d7e9fa25fe9c461848fd8.md) | 22 | `declaration-track:9f4d7e9fa25fe9c461848fd8b8e531e135eb47c313ba7ff606de81f34f07e84f` |
| 6 | `def` | [secondSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/secondseries--78ed3ca5df56b573919f1a1e.md) | 24 | `declaration-track:78ed3ca5df56b573919f1a1ed3b1f2c7f1b9bcde8842dc4b0487b33cd7f561a9` |
| 7 | `def` | [weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/weight--f4da80191174d2349ef08c59.md) | 26 | `declaration-track:f4da80191174d2349ef08c59213bcb844f2d1ad30dc164f3f84608ceffdfbff3` |
| 8 | `theorem` | [weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/weight-eq--901154988a329f3d54d78d5b.md) | 28 | `result-track:901154988a329f3d54d78d5b7337d5890eef10c4ffd7acc756be747a794c92b4` |
| 9 | `theorem` | [weight_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/weight-summable--c52f0c3228bbf29b1110e245.md) | 33 | `result-track:c52f0c3228bbf29b1110e245af82fc720272bf1497ffac720733e9d86387215a` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/pairedterm-hasderivat--ddba47416a236c9cd942ecec.md) | 36 | `result-track:ddba47416a236c9cd942ecec36a42633f7a69dd7205bb6d5228b07d7628140fd` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/firstterm-hasderivat--988d73c20595028bedb4fd7a.md) | 49 | `result-track:988d73c20595028bedb4fd7aaa5b38eb77d0fe026ca659d6c1933b47ac70a8d5` |
| 12 | `def` | [lowerCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/lowercoefficient--1068415569f1d0b4fea88175.md) | 65 | `declaration-track:1068415569f1d0b4fea88175774a6d4b2421f5e6043b52f560b1db3526a70cec` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/lowercoefficient-pos--5f0c38ded07e0065d9d76760.md) | 67 | `result-track:5f0c38ded07e0065d9d767605b923801a000e6b977fb1375cd86fa4d3e2a2b5f` |
| 14 | `theorem` | [rate_lower](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/rate-lower--183c565835503d46ac3b28b2.md) | 70 | `result-track:183c565835503d46ac3b28b24585efa49155511b860ab73ce0fc961f7de1d164` |
| 15 | `theorem` | [firstTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/firstterm-bound--67e3764dbf4265bdc5e8c623.md) | 79 | `result-track:67e3764dbf4265bdc5e8c623d64941e1e8d7c1994ecb0f4f3f435e0dd9c20b08` |
| 16 | `theorem` | [secondTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/secondterm-bound--51268bbe88d0925fa2b38b75.md) | 107 | `result-track:51268bbe88d0925fa2b38b75440be3c32528d90d399e6a15cafec773e19b5418` |
| 17 | `theorem` | [firstTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/firstterm-summable--fc00f0c6957c4f98625622ab.md) | 123 | `result-track:fc00f0c6957c4f98625622ab756457f83b247bbacb3fd44194030e2343a95754` |
| 18 | `theorem` | [secondTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/secondterm-summable--e5dab0ef91f084d77695d2e2.md) | 130 | `result-track:e5dab0ef91f084d77695d2e2536a568282b9be8b78b530341dfd790d833d8386` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/actualprofile-hasderivat--e42e7354150b6cb9a1427806.md) | 136 | `result-track:e42e7354150b6cb9a1427806b210def4b1ea2363ac688ff045702f3ccb0ee0b1` |
| 20 | `theorem` | [actualProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/actualprofile-deriv--3de4f9b5a45e601ed4c9f1ac.md) | 152 | `result-track:3de4f9b5a45e601ed4c9f1acd9268bc27407a8b0f37dfbf9b4eac8ab805c8180` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/firstseries-hasderivat--c387a4c201aaa3dbcafc8da0.md) | 155 | `result-track:c387a4c201aaa3dbcafc8da0b4a9831590acaa70c759e226883a6c9b90e6027f` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/actualprofile-second-hasderivat--2fe4c778805f2d8cff1b81d7.md) | 167 | `result-track:2fe4c778805f2d8cff1b81d7edd7a06bc6b95c5d651f67a83f0eabe06ef53a75` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/declarations/actualprofile-second-deriv--2e6f1dbb8db37fcd7c0216c0.md) | 174 | `result-track:2e6f1dbb8db37fcd7c0216c0d8f50cb4f8660a037ae22efc74ad72bd04b6e83a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
