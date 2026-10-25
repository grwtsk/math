# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.WithAbs.Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "847cca5d609b2c3ad9d62b8b90af6172b335f92a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `847cca5d609b2c3ad9d62b8b90af6172b335f92a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/withabs--f193d4eefe5db9f87384cc3a.md) | 43 | `declaration-track:f193d4eefe5db9f87384cc3a16801ec848e30f1490a9fe4edde3c5f28edd2759` |
| 2 | `instance` | [instNontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/instnontrivial--869b5b1e28b799542916d08c.md) | 51 | `declaration-track:869b5b1e28b799542916d08cf3b7c809d049714b63ef5a9b09f3c42b6ed49073` |
| 3 | `instance` | [instUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/instunique--146da971dee0b8052e95887d.md) | 53 | `declaration-track:146da971dee0b8052e95887de02e7340435b94c03b31bf22faf71b49803373fe` |
| 4 | `instance` | [instSemiring](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/instsemiring--03269c63356c456ec971c93b.md) | 55 | `declaration-track:03269c63356c456ec971c93bf8c06d6ef0a302aafde7f42430b516e95c9f32f7` |
| 5 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/instinhabited--96da4e8fc64dc6f08044d584.md) | 57 | `declaration-track:96da4e8fc64dc6f08044d584b5263434d8375ce5b9cc9e73789c82918c9eff0d` |
| 6 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/equiv--3644757256722eca714fa2e1.md) | 60 | `declaration-track:3644757256722eca714fa2e10d47221930dc9c2fd4c7dd33cb24ff84d41852ef` |
| 7 | `def` | [ringEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/ringequiv--6c7ead623213b43c03c037fe.md) | 64 | `declaration-track:6c7ead623213b43c03c037fe5682211e7eb944effe810f2f11cb0b55df0bb35e` |
| 8 | `instance` | [instCommSemiring](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/instcommsemiring--c087462ceddb7bb7eca0ea71.md) | 70 | `declaration-track:c087462ceddb7bb7eca0ea71b21401045404b5675be310fd0d8bb1616ceaf8d1` |
| 9 | `instance` | [instRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/instring--3f040c0db9dacdec2cac506e.md) | 73 | `declaration-track:3f040c0db9dacdec2cac506ed652630ae2290eaee1335d706d9c4189a77a20a3` |
| 10 | `instance` | [instCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/instcommring--1f93a0485889bb9c6ddbbf06.md) | 75 | `declaration-track:1f93a0485889bb9c6ddbbf0678f9cbb77543e15ca95df52aebc08ee4b868653b` |
| 11 | `instance` | [normedRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/normedring--96dd756dd63dcaa0c3141f51.md) | 78 | `declaration-track:96dd756dd63dcaa0c3141f51c2373c881163acb3b8d335c00278e4d6bcbc0f8f` |
| 12 | `lemma` | [norm_eq_abv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/norm-eq-abv--43f4f059f50f184b47f8e862.md) | 81 | `result-track:43f4f059f50f184b47f8e8628525deec8fb3dacf72deddca551509e1461058f5` |
| 13 | `instance` | [instModule_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/instmodule-left--80962b811380b3b32ddb0c19.md) | 90 | `declaration-track:80962b811380b3b32ddb0c193e1a711944081a5b638da1bfac2e6cbb0cfa6804` |
| 14 | `instance` | [instModule_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/instmodule-right--837b8c2b5f8f6893d78bfb78.md) | 94 | `declaration-track:837b8c2b5f8f6893d78bfb780cc11b28216a6fc2cc7d3d2b6f8ad91f9ed594a0` |
| 15 | `instance` | [instAlgebra_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/instalgebra-left--f35a0b47506b2339d5a01895.md) | 104 | `declaration-track:f35a0b47506b2339d5a018957e8bed21c69b4fc2bbae3ef4e9c34ce6c304a9fd` |
| 16 | `instance` | [instAlgebra_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/instalgebra-right--c14aa04589ecd8c9ca6d6255.md) | 107 | `declaration-track:c14aa04589ecd8c9ca6d62552e2b9a6e85e98f5850a46f7984719cfbfa576f94` |
| 17 | `def` | [algEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/algequiv--1c03a18df26274266aa9ac64.md) | 112 | `declaration-track:1c03a18df26274266aa9ac6452664243a907a0986cfee0c686590502749a1b1c` |
| 18 | `theorem` | [equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/equiv-zero--7681338f3d0633e39d351b2d.md) | 128 | `result-track:7681338f3d0633e39d351b2d091024c208f25757872957b0d7f1ce7d82891a91` |
| 19 | `theorem` | [equiv_symm_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/equiv-symm-zero--8ccece8a7e36ba6e14c2325d.md) | 131 | `result-track:8ccece8a7e36ba6e14c2325dfd359dd9408acc08a78f45bfa0c0ef1e3adedb56` |
| 20 | `theorem` | [equiv_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/equiv-add--ad22ecfc22aa05810a3cdba8.md) | 134 | `result-track:ad22ecfc22aa05810a3cdba86be698cd8bc0c18e8a61a268f4951decec271aba` |
| 21 | `theorem` | [equiv_symm_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/equiv-symm-add--d8ade1afb00791ddc1d5b7cc.md) | 137 | `result-track:d8ade1afb00791ddc1d5b7cc69ec2e8b2cc4fc59ad694f738cceab7bf3e5ebaa` |
| 22 | `theorem` | [equiv_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/equiv-mul--ceeedc9f4b1846bc49b3a924.md) | 140 | `result-track:ceeedc9f4b1846bc49b3a924d56a93e2f252dcfe8d6f176bd6be16e1a51cf28f` |
| 23 | `theorem` | [equiv_symm_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/equiv-symm-mul--75628a444ddbd5295b40127e.md) | 143 | `result-track:75628a444ddbd5295b40127ea24a2eb6cddadb0b012a725a7d4ea00c461d0aa9` |
| 24 | `theorem` | [equiv_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/equiv-sub--3798754e0a635990f6f7fa2b.md) | 152 | `result-track:3798754e0a635990f6f7fa2b6903832647d27059f3ebcf965dfd742938d060c1` |
| 25 | `theorem` | [equiv_symm_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/equiv-symm-sub--484db8a7e0f7e0fca6b1e381.md) | 155 | `result-track:484db8a7e0f7e0fca6b1e381f48d90e2bad919e5eb15c32b520321bb65a75038` |
| 26 | `theorem` | [equiv_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/equiv-neg--120833316c8fb2ed3912c6ea.md) | 158 | `result-track:120833316c8fb2ed3912c6ea07c717d9f20bb6a3e0d0e6e7f9ce91d83c989f8e` |
| 27 | `theorem` | [equiv_symm_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant478b8a5469139e6adc2b54164023c824cd47886fb115d3cc54400aa7d29ac5af.lean/declarations/equiv-symm-neg--6859a72aa08a8ec2b80b65e3.md) | 161 | `result-track:6859a72aa08a8ec2b80b65e38695128282346d4a4528bf0572043d4657489ec2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
