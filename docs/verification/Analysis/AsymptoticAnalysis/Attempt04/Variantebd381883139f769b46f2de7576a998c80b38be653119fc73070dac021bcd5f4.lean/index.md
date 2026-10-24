# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt04.Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ef6b489ab823228f595cb25ba0e271e56a99389",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ef6b489ab823228f595cb25ba0e271e56a99389`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean.json)

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
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/outerweight--14e25462c58af2196887dae8.md) | 26 | `declaration-track:14e25462c58af2196887dae8076e1879b5812971f4954b5b0a5001d36c78ac6a` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/exponentweight--a18462ea432d1e4498695c0c.md) | 28 | `declaration-track:a18462ea432d1e4498695c0ca9e1dce2d871c8aef154022ec42ba9499e9adb23` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/momentatom--d96eff925c9add97ea16ef52.md) | 30 | `declaration-track:d96eff925c9add97ea16ef528a954f6eadf864453e362d4de0f4db9aa0f4c12e` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/primemomentatom--593710587189ba77b0488555.md) | 33 | `declaration-track:593710587189ba77b048855559cb05c4aa29552ffc8061301ae47ebb846c9129` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/properpowermoment--0a55d75644780ea4da8d4461.md) | 35 | `declaration-track:0a55d75644780ea4da8d44610f956d73f6d4bfff3fb268806028b836bf9f408a` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/properpowerb1--4fbd4108c7705f0c9446f78c.md) | 37 | `declaration-track:4fbd4108c7705f0c9446f78cf1144af451ec6e103bd5a77d8c4ac3aa92654b80` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/properpowerb2--9653299b2b0aa95c6844b721.md) | 39 | `declaration-track:9653299b2b0aa95c6844b721c2a6616074c79c98ea9ae2e46e08d9b6cc2ba9db` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/outerweight-nonneg--cd1558b5df3a15beaa1fad0a.md) | 41 | `result-track:cd1558b5df3a15beaa1fad0a393a94b8dac6e0684743cc40126841d037fa79fd` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/exponentweight-nonneg--d883baecf09e4b98afe137da.md) | 49 | `result-track:d883baecf09e4b98afe137da737e2b8b18ce63fb2734293dfd688544cfc686a1` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/momentatom-nonneg--b95df16df6fd38928cc3c6a4.md) | 53 | `result-track:b95df16df6fd38928cc3c6a4794f144867259c04650f56e38363cfe8f3899deb` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/outerweight-summable--4656e872ae99690c96655ce1.md) | 61 | `result-track:4656e872ae99690c96655ce1ca2467415c36264e149ae20f938ea2a01e7e1c1b` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/exponentweight-summable--a8a88b946ae6639fe8d2a61e.md) | 91 | `result-track:a8a88b946ae6639fe8d2a61ed8229c18fa7abb2ab2a30113f5fe9a25bd736e94` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/momentatom-le-product--74354d901722b0bd1dcaf318.md) | 100 | `result-track:74354d901722b0bd1dcaf31807e79b4f54cd3325b1006f9105bfd72ff3771ce8` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/prime-outerweight-summable--b770152cc6e97be905d43aa7.md) | 121 | `result-track:b770152cc6e97be905d43aa74f8664d23841e52884a9da2d7ec1796512186273` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/primemomentatom-summable--7c46acdb04c261b3dc065616.md) | 125 | `result-track:7c46acdb04c261b3dc065616425150896adb7c5b2ee7df21a7d2d45b3141454a` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/primemomentatom-inner-summable--e132093650b22f737a6b981d.md) | 132 | `result-track:e132093650b22f737a6b981d7d4169bd576b934f4435e16057f8a156887b2459` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/primemomentatom-outer-summable--de589a2c89f3ca934edb4dc9.md) | 137 | `result-track:de589a2c89f3ca934edb4dc99851c36f9026816625b4e3b26beca4e9bf43e942` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/properpowermoment-nonneg--16cb8a87699cc9b6e4071c3f.md) | 142 | `result-track:16cb8a87699cc9b6e4071c3fd90e0aceca5b207d6a1cccf03dd0b162015fa4c5` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/finiteproperpowermoment-le-b1--c90170b75393973cc84ebe6b.md) | 145 | `result-track:c90170b75393973cc84ebe6bd5cb061decd6533c4108bb2668756fb8d75f4524` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/properpowerb1-gt-nine-quarters--389d520fb6c3b1ce702f330e.md) | 174 | `result-track:389d520fb6c3b1ce702f330ee25b46aa19695130ab625cca2b6d34de5c47fb2f` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variantebd381883139f769b46f2de7576a998c80b38be653119fc73070dac021bcd5f4.lean/declarations/arithmeticconstant-gt-one-five-hundred--484fa9e1afa57cb13033b981.md) | 177 | `result-track:484fa9e1afa57cb13033b981834c816ac0388471fd13746655d7cbb5e0b762e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
