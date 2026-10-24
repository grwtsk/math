# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.RadonNikodym.Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc3f7e000f3f37b6a49cf35971591c7cb796a7fd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc3f7e000f3f37b6a49cf35971591c7cb796a7fd`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.WithDensity` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.AbsolutelyContinuous` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [rnDeriv_measure_compProd_left_of_ac](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/declarations/rnderiv-measure-compprod-left-of-ac--48e2a420a041632ebec41160.md) | 57 | `result-track:48e2a420a041632ebec411608c483613ae3b71528228c527dd6fc36b5d9dbb8a` |
| 2 | `lemma` | [rnDeriv_compProd_withDensity_rnDeriv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/declarations/rnderiv-compprod-withdensity-rnderiv--79106929180209bfc1ce5724.md) | 89 | `result-track:79106929180209bfc1ce572433d58ee814d8738357eb35317a4259b192cf1241` |
| 3 | `lemma` | [rnDeriv_measure_compProd_left](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/declarations/rnderiv-measure-compprod-left--a47698d7581f1f7887a41206.md) | 104 | `result-track:a47698d7581f1f7887a412065b45786f4a3efc209105ab589890880a1c74a19e` |
| 4 | `lemma` | [rnDeriv_compProd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/declarations/rnderiv-compprod--711c4a75bbaf99809a74fb71.md) | 123 | `result-track:711c4a75bbaf99809a74fb71367f320c0f19d0a74e5aa5bcc6ab3d30cbe7fb13` |
| 5 | `lemma` | [rnDeriv_measure_compProd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/declarations/rnderiv-measure-compprod--fc135c0b3de6ca00e1f332b2.md) | 137 | `result-track:fc135c0b3de6ca00e1f332b2a9881eaae983c5e6eb44dd2029b299ff97fd2a48` |
| 6 | `lemma` | [rnDeriv_measure_compProd_right](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/declarations/rnderiv-measure-compprod-right--3c171c63d96c43c7a55bba54.md) | 164 | `result-track:3c171c63d96c43c7a55bba540043bde775a0339c5c11bfa5f0391a315046c02a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
