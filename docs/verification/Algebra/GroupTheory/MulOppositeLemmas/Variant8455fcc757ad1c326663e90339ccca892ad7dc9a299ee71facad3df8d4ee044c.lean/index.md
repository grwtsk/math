# Verification target: GRWTSK.Algebra.GroupTheory.MulOppositeLemmas.Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70ce1e8e2cebc56856588431b797d2082e39bbe3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70ce1e8e2cebc56856588431b797d2082e39bbe3`.

Source path: `GRWTSK/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.MulOpposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.MulOpposite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSMul](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/instsmul--83c7e05d3e9966b32aebd783.md) | 40 | `declaration-track:83c7e05d3e9966b32aebd783dd1ae22cb3f16231b05cb1adb6e9ce0290152289` |
| 2 | `theorem` | [op_bot](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-bot--ae0a6434431d5b9072fee186.md) | 45 | `result-track:ae0a6434431d5b9072fee18658a9fd354d24e09b8a9289fa3995375c0461206e` |
| 3 | `theorem` | [op_eq_bot](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-eq-bot--ea43926dae97bc5c28e3bfe0.md) | 48 | `result-track:ea43926dae97bc5c28e3bfe042c849e0291295f2b928a6740cf670133a0aeadf` |
| 4 | `theorem` | [unop_bot](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-bot--8eed5503ddead1da6c169e1e.md) | 51 | `result-track:8eed5503ddead1da6c169e1ebdf341f838991bc7435b8c10fce72814c5497d52` |
| 5 | `theorem` | [unop_eq_bot](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-eq-bot--8e87d3c2d357171ffc122292.md) | 54 | `result-track:8e87d3c2d357171ffc12229230c323cf73299a6243f28fba78947b8f06e247fa` |
| 6 | `theorem` | [op_top](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-top--44f498daf6f334295e1bebc8.md) | 57 | `result-track:44f498daf6f334295e1bebc8cc1c474f84df66296702609ad57c6c21312caed2` |
| 7 | `theorem` | [op_eq_top](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-eq-top--1e20460a224846c3791c6984.md) | 60 | `result-track:1e20460a224846c3791c698406eb366fa2628f6d582aaa751fdd0562176289d6` |
| 8 | `theorem` | [unop_top](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-top--158951443f904ef5c4f31c29.md) | 63 | `result-track:158951443f904ef5c4f31c29f7775a06be25af515b509cccbb1fea0ebb6916b8` |
| 9 | `theorem` | [unop_eq_top](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-eq-top--0eb6df5ae0732ee8a13207b5.md) | 66 | `result-track:0eb6df5ae0732ee8a13207b5f2e9048436f74dd12c6939df08267144140e5c3e` |
| 10 | `theorem` | [op_sup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-sup--f38c90c881a4f8aa0582a5a9.md) | 69 | `result-track:f38c90c881a4f8aa0582a5a9e90cc8a607965db14b42dbe4567cf6fcca9c539e` |
| 11 | `theorem` | [unop_sup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-sup--9273ee69a2b19eeadfae904e.md) | 73 | `result-track:9273ee69a2b19eeadfae904e687325bc2d503dbca3783bc72ea31090d2776d6d` |
| 12 | `theorem` | [op_inf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-inf--0cf5c6d0cbb6eac34387bfba.md) | 77 | `result-track:0cf5c6d0cbb6eac34387bfba40d20dfca32ae132188725715c7a327f7705e1b4` |
| 13 | `theorem` | [unop_inf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-inf--6de40fef2748ed688cef4543.md) | 80 | `result-track:6de40fef2748ed688cef45430655a268407a2f8af5c913eb436bb7f18a874241` |
| 14 | `theorem` | [op_sSup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-ssup--6bade3bcac9be833b60f4a17.md) | 83 | `result-track:6bade3bcac9be833b60f4a1769870660fe3eb5b6c053a743cb696973e6f41637` |
| 15 | `theorem` | [unop_sSup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-ssup--27f59093a4bf5dab796bdf0c.md) | 87 | `result-track:27f59093a4bf5dab796bdf0c4bf13d344ba783e63ee19b91166ed7c4208cce43` |
| 16 | `theorem` | [op_sInf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-sinf--5dd598de5a02b3a6d5ff26b0.md) | 91 | `result-track:5dd598de5a02b3a6d5ff26b0629b5e3a5200d44a47c73c26f4ae94a84802d25b` |
| 17 | `theorem` | [unop_sInf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-sinf--9bdfd5a72f50d10e0e5aa846.md) | 95 | `result-track:9bdfd5a72f50d10e0e5aa846f83480f1ea23036e848d71cd3e415e0bd2e3eaf8` |
| 18 | `theorem` | [op_iSup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-isup--bf063544aa6cea38eeef88f1.md) | 99 | `result-track:bf063544aa6cea38eeef88f11822a0f21be3826c857735dc51b6918a4cf646f1` |
| 19 | `theorem` | [unop_iSup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-isup--860fb0388c7cf39d177aebf4.md) | 102 | `result-track:860fb0388c7cf39d177aebf472f70a96742b1f95ed66712662f31ca48d877bcd` |
| 20 | `theorem` | [op_iInf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-iinf--570a039188cf594be0ebedfd.md) | 106 | `result-track:570a039188cf594be0ebedfd1c70309884dfc8b9b735386fb10a8100b1e4dbbd` |
| 21 | `theorem` | [unop_iInf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-iinf--d05e01f688d14e7f39236f05.md) | 109 | `result-track:d05e01f688d14e7f39236f057f90cb3abbcb1a67ec9e260cdac0ec21f009d47d` |
| 22 | `theorem` | [op_closure](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-closure--69b6c87122acea53e4211780.md) | 113 | `result-track:69b6c87122acea53e421178070edba7328e290c73ebe1b1e1d2ca357bea6f92b` |
| 23 | `theorem` | [unop_closure](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-closure--13ed5a45711f89767ce633e2.md) | 119 | `result-track:13ed5a45711f89767ce633e22b4e3d0cf295849b0c7178d236344561a079023d` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/instance--81186048b9971dddd50cd79c.md) | 124 | `declaration-track:81186048b9971dddd50cd79c75aa4316d4db119116014ddc439faaaa6b198dda` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/instance--936d2197edd1134d2912b98e.md) | 128 | `declaration-track:936d2197edd1134d2912b98ef125ff3d178da20c272213333d8cb1071d20caaf` |
| 26 | `theorem` | [smul_opposite_mul](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/smul-opposite-mul--d325e1f5c385a92f380dddca.md) | 132 | `result-track:d325e1f5c385a92f380dddca9139bc80192a7ffaf5bee79047e8530faf26f3ba` |
| 27 | `theorem` | [normal_op](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/normal-op--f5d8fcafb57e1a83d9156069.md) | 137 | `result-track:f5d8fcafb57e1a83d9156069b95f525e62a75ac5cd92aa172ddc797808daffcf` |
| 28 | `instance` | [op.instNormal](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/op-instnormal--e77b6cbaeb94a9905c869309.md) | 143 | `declaration-track:e77b6cbaeb94a9905c869309530ce841f98f082b307a6a7073b09cd0c871a6f3` |
| 29 | `theorem` | [normal_unop](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/normal-unop--4479c5f5c108d5d268b2dfc4.md) | 146 | `result-track:4479c5f5c108d5d268b2dfc4e3eaa73132351346d5cd846c8739eb66c3376d4f` |
| 30 | `instance` | [unop.instNormal](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant8455fcc757ad1c326663e90339ccca892ad7dc9a299ee71facad3df8d4ee044c.lean/declarations/unop-instnormal--503af81579e456fb4045fe2e.md) | 152 | `declaration-track:503af81579e456fb4045fe2eaac1d2d0bde304559ede5c91d2231af6e9a31cc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
