# Verification target: GRWTSK.Algebra.GroupTheory.Dihedral.Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e79983d111f0939b128086733f6468722148e9ed",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e79983d111f0939b128086733f6468722148e9ed`.

Source path: `GRWTSK/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Exponent` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DihedralGroup](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/dihedralgroup--36e702ffe214f5c1cd3ec0d9.md) | 34 | `declaration-track:36e702ffe214f5c1cd3ec0d9782fab7e3847b0dec1232b811f782e37f74b4212` |
| 2 | `def` | [mul](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/mul--1e3c4727699a6e6c7bb95fbd.md) | 46 | `declaration-track:1e3c4727699a6e6c7bb95fbd721b1ece1e87bcd6ec1216d6cb61fbc0029f4343` |
| 3 | `def` | [one](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/one--362a620c87fa2c292431202b.md) | 54 | `declaration-track:362a620c87fa2c292431202bbd3e243a66773ca76bc9b1dd0b0e66dd517ed3ca` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/instance--fb5623bfc4b3fef85745147f.md) | 57 | `declaration-track:fb5623bfc4b3fef85745147fad89a8369702e0c3199763d37fe5b96477c29e55` |
| 5 | `def` | [inv](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/inv--7e4e2203856782963e655126.md) | 62 | `declaration-track:7e4e2203856782963e6551268ced1d50e21b763112f056679ebaecaac03a8caf` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/instance--5408e1dfa44b7543ef87ca4d.md) | 68 | `declaration-track:5408e1dfa44b7543ef87ca4d42fd17ef0673a144a92720321728e54091cc6838` |
| 7 | `theorem` | [r_mul_r](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/r-mul-r--eb53e361bd4fc0d4cde78c29.md) | 87 | `result-track:eb53e361bd4fc0d4cde78c2913ef94bb7e42e56cecf9e29503f2cb3f48f3b16e` |
| 8 | `theorem` | [r_mul_sr](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/r-mul-sr--000836a852f18355d792c8f1.md) | 92 | `result-track:000836a852f18355d792c8f1be3bdcc8c66117af2c878b6c32e839db9bb676c3` |
| 9 | `theorem` | [sr_mul_r](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/sr-mul-r--8bd3143ccd3ed42f7fbc6fec.md) | 97 | `result-track:8bd3143ccd3ed42f7fbc6fecbffd4e400713983822a8aa1d2c1ad4ea397f9155` |
| 10 | `theorem` | [sr_mul_sr](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/sr-mul-sr--c8570eeddd9bdeba7d5db498.md) | 102 | `result-track:c8570eeddd9bdeba7d5db498251d32d036d857aa0c630011020b67346fcacbf4` |
| 11 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/one-def--82de29fb93b5bac4ca0b1d3e.md) | 106 | `result-track:82de29fb93b5bac4ca0b1d3e82d9bb59a470b1e41d0e2715cafb22279882764f` |
| 12 | `def` | [fintypeHelper](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/fintypehelper--a6c95b3c844118c138abeab8.md) | 110 | `declaration-track:a6c95b3c844118c138abeab844c60033ba90c274791e50535e0e98f4d4b7a821` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/instance--9e8f426e7b51dbc90b0ee158.md) | 122 | `declaration-track:9e8f426e7b51dbc90b0ee158102c8aa2a84c26fefbdfe2c21a1a3d678d148563` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/instance--b32d14a40c7718ed3c0ecb1a.md) | 125 | `declaration-track:b32d14a40c7718ed3c0ecb1a85578a3cbc5203a6017906e2016ea13ff46efff6` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/instance--289a9767bd465baafff46b72.md) | 128 | `declaration-track:289a9767bd465baafff46b72b8a4c4aaeb956fadf91b5c627d99918d8e90a776` |
| 16 | `theorem` | [card](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/card--7b079477e18a22f13fc65107.md) | 133 | `result-track:7b079477e18a22f13fc651076a23737f1df2cfec1298a6edc4f55791755cf8a3` |
| 17 | `theorem` | [nat_card](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/nat-card--121d943653b03361bbe2ff30.md) | 137 | `result-track:121d943653b03361bbe2ff304143996e1e3f79b67d3fb5b90381c8bbb908af7f` |
| 18 | `theorem` | [r_one_pow](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/r-one-pow--0efb8deed42a2b8a24715e4a.md) | 143 | `result-track:0efb8deed42a2b8a24715e4abc8010c7f4c8fd310cbbc42de80773863c1a47fe` |
| 19 | `theorem` | [r_one_pow_n](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/r-one-pow-n--e01ac8089d3bb1ae546d61e4.md) | 154 | `result-track:e01ac8089d3bb1ae546d61e4b3b13d3c7cdbe60c78b6f2bde3e63c0aaabedbb6` |
| 20 | `theorem` | [sr_mul_self](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/sr-mul-self--5f5c2e72c234ff83573125d6.md) | 161 | `result-track:5f5c2e72c234ff83573125d6809db6a0f04bcda53ba7fcf369d9a11ee227e07f` |
| 21 | `theorem` | [orderOf_sr](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/orderof-sr--225242ed329f68c86cb9a70f.md) | 167 | `result-track:225242ed329f68c86cb9a70f696fbcee6a43dc1ccabaf737d84b1eca93a7dc41` |
| 22 | `theorem` | [orderOf_r_one](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/orderof-r-one--d264bb0c51af2d4c296c4aec.md) | 178 | `result-track:d264bb0c51af2d4c296c4aec7e5c815e13d9b9a4afebd48592c16a20c278bfdd` |
| 23 | `theorem` | [orderOf_r](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/orderof-r--4eee78465141a6677c8e708f.md) | 197 | `result-track:4eee78465141a6677c8e708fcd3f58dd6e96097dabcdec405213c4e4ac58ea87` |
| 24 | `theorem` | [exponent](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/exponent--a5f38306920ccf0575e78c2c.md) | 202 | `result-track:a5f38306920ccf0575e78c2cdc84cc30fa323acd6425c6fa31c250334f9e5102` |
| 25 | `def` | [OddCommuteEquiv](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/oddcommuteequiv--a63af6b5175778cee84da509.md) | 223 | `declaration-track:a63af6b5175778cee84da5093542a6a235e17aafb9658779e93f8469f51c8bbf` |
| 26 | `lemma` | [card_commute_odd](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/card-commute-odd--3890d47d544570489deca961.md) | 256 | `result-track:3890d47d544570489deca96152d3f8df5e4864a8f5252ba11829ed44ed424e45` |
| 27 | `lemma` | [card_conjClasses_odd](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean/declarations/card-conjclasses-odd--e56a73c4988574186441fdbd.md) | 262 | `result-track:e56a73c4988574186441fdbd3e81c309b40bc6c681d9e41b5f16592c5d399b2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
