# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt09.Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2ff54efabe20222019f55159394e5afd19431c6",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2ff54efabe20222019f55159394e5afd19431c6`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/outerweight--18fac66c108e1e83bd1a63e5.md) | 18 | `declaration-track:18fac66c108e1e83bd1a63e57d93747c25e5921a7cf0e8ad828d4e22ef1246bb` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/exponentweight--7e225db7b03b0a12143c8dec.md) | 20 | `declaration-track:7e225db7b03b0a12143c8deca3b316442d94b44f59f4e865a02dc912694d8d3c` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/momentatom--cd91060ae8d40fe3acbe9dee.md) | 22 | `declaration-track:cd91060ae8d40fe3acbe9dee7fcd601a35d3f0dfce697191638dfc6fab0d9136` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/primemomentatom--1d7b651faffbea2be3bcbe4d.md) | 25 | `declaration-track:1d7b651faffbea2be3bcbe4d2744a9e9a0e8e319fa896f2c589da3a6bcaebd59` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/properpowermoment--e3fdd85bbabf5f5110a279fe.md) | 27 | `declaration-track:e3fdd85bbabf5f5110a279feb4487ea5aa79c1d4403565b31e78dc5e349504f3` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/properpowerb1--b1aeb525860a8ea6ac41f82a.md) | 29 | `declaration-track:b1aeb525860a8ea6ac41f82a2bd510af43f1172bf21eeb44d0d84bf512d8e619` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/properpowerb2--6f1f7334b60be19b952d00cb.md) | 31 | `declaration-track:6f1f7334b60be19b952d00cbd52e4b414c13921a031ee1d531c2d5d1ce07a6f6` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/outerweight-nonneg--a77477da225818fbdf0638f4.md) | 33 | `result-track:a77477da225818fbdf0638f42430bdd3f13427f09228640aee7c8003c4c856d4` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/exponentweight-nonneg--2e874988c97e1e45fbdffc65.md) | 41 | `result-track:2e874988c97e1e45fbdffc65192c4f488eb10e53259a6d50481d0f8975a0b632` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/momentatom-nonneg--d07eab4c7ce73d153aef8adb.md) | 45 | `result-track:d07eab4c7ce73d153aef8adbb5969a5342f1479ec46e4318f6c7ca1a68e5139e` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/outerweight-summable--53b4761b5c6cab696546cadd.md) | 53 | `result-track:53b4761b5c6cab696546cadd5312d7fa0e6b47e66d3daa524e5b424644c9756f` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/exponentweight-summable--d239d13b867969785d652f25.md) | 83 | `result-track:d239d13b867969785d652f250d4d4d32b95102a1590a58e4e0e1cf14bc3e0025` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/momentatom-le-product--2b8709f78e934fe7be8fd61a.md) | 92 | `result-track:2b8709f78e934fe7be8fd61ad31985ded0e58a6f54a6b9aaa0d79f4ed0002dd7` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/prime-outerweight-summable--68a65a7d625d2f37e330429a.md) | 113 | `result-track:68a65a7d625d2f37e330429a88474704c2d915d3c95bd12af966868fd396add9` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/primemomentatom-summable--de42891bab2f67e7e9f37f36.md) | 117 | `result-track:de42891bab2f67e7e9f37f36978e53b90585a097f6f994e5625b73042c94c65c` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/primemomentatom-inner-summable--1a45601840598cf5d31ed8c8.md) | 124 | `result-track:1a45601840598cf5d31ed8c8b0f39632e551747401900d3f79deee45812d8719` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/primemomentatom-outer-summable--038734c24631088a00e8c651.md) | 129 | `result-track:038734c24631088a00e8c651badae77830cd324e58f6b6c4bd7c4f1c4ddcb3c2` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/properpowermoment-nonneg--8850e305ef86a2e9632095cb.md) | 134 | `result-track:8850e305ef86a2e9632095cbaadd672a257d744c5c2361b14d744fbd4c512964` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/finiteproperpowermoment-le-b1--60dee7e332f586e6a35fa877.md) | 137 | `result-track:60dee7e332f586e6a35fa87770103aa41b11685df47c902ad7b375acb7630887` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/properpowerb1-gt-nine-quarters--9a32404f945859e2596f25e3.md) | 166 | `result-track:9a32404f945859e2596f25e33455b9f7b2191cdffdb2d60e90e046c3b2d1e38f` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/arithmeticconstant-gt-one-five-hundred--8a4d1ee4376344d2a488fd63.md) | 169 | `result-track:8a4d1ee4376344d2a488fd6394aa194ff3f08a56b85ba0bf4c20e897d6e37dbe` |
| 22 | `def` | [omittedOnsetAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/omittedonsetatom--1399f52b9c854e862b7e14e8.md) | 175 | `declaration-track:1399f52b9c854e862b7e14e850bbbeb79b9541b708a3b493bd505c9d037e550b` |
| 23 | `def` | [omittedOnsetTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/omittedonsettail--791c19a6039a418c7e3a2653.md) | 179 | `declaration-track:791c19a6039a418c7e3a2653a399331db4ea81e0eb2954e86a9ae8442ff703cb` |
| 24 | `theorem` | [properPowerMoment_eq_joint_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/properpowermoment-eq-joint-sum--56560064263d990d13be6b7d.md) | 182 | `result-track:56560064263d990d13be6b7d91d65016851cc7b9d95a3520bfbe8c64b2c04d4b` |
| 25 | `theorem` | [omittedOnsetAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/omittedonsetatom-nonneg--50aebddcef7fe9a9fb2afc66.md) | 186 | `result-track:50aebddcef7fe9a9fb2afc66da082aee4257bac53bedcc8c7e397d92e40c3b1f` |
| 26 | `theorem` | [omittedOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/omittedonsetatom-le-zeromoment--c15d255e17cbd862178f5146.md) | 192 | `result-track:c15d255e17cbd862178f5146d00b0e1591e77c0a2631de370c818b14c4619642` |
| 27 | `theorem` | [omittedOnsetTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/omittedonsettail-summable--17bf59171e178ac997408952.md) | 199 | `result-track:17bf59171e178ac99740895208274f34659136175451c6e6cc0513052439e21f` |
| 28 | `theorem` | [omittedOnsetTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/omittedonsettail-nonneg--80d79f6316b235a1d9c3272b.md) | 204 | `result-track:80d79f6316b235a1d9c3272bd6cb9497ae83820ccea011bfb882a4ca4370fc3e` |
| 29 | `theorem` | [omittedOnsetTail_eq_iterated](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/omittedonsettail-eq-iterated--d669942c1c0e24571353bec3.md) | 207 | `result-track:d669942c1c0e24571353bec3c5ef34ad650fd8c3948cdd95a916abce40eca0bf` |
| 30 | `theorem` | [omittedOnsetAtom_secondMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/omittedonsetatom-secondmoment--9cfac6bf3006340840e1f0b8.md) | 211 | `result-track:9cfac6bf3006340840e1f0b8d2e5e3a2dcb77749894f8d5d3e00dd7fd5f8a1ea` |
| 31 | `theorem` | [omittedOnsetTail_le_B2_div_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant28b57030514febd07470a6d9b22521bd314f4c1b381fead7070d9f8fa6a73d15.lean/declarations/omittedonsettail-le-b2-div-square--f6f2db9fad35a0d9130b3a0c.md) | 226 | `result-track:f6f2db9fad35a0d9130b3a0c6234c8df5fb9f8e4bc0df171e674e37212a1b2fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
