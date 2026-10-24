# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "235775edd03a7d4969ebad86a1880be8b160769f",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `235775edd03a7d4969ebad86a1880be8b160769f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [OrderDual.supSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/orderdual-supset--a56eebf411193c8718d84c14.md) | 55 | `declaration-track:a56eebf411193c8718d84c14fcb0462257eefa48d05c0a6db7f14a937d79bdbb` |
| 2 | `instance` | [OrderDual.infSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/orderdual-infset--ecc8e27d3c90169473c88bf4.md) | 58 | `declaration-track:ecc8e27d3c90169473c88bf4ba673f5e7837e9e7d875641015195a23724585fe` |
| 3 | `class` | [CompleteSemilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/completesemilatticesup--76cd7765e8353047da10f2b6.md) | 66 | `declaration-track:76cd7765e8353047da10f2b67a2d62ca5dae9b903c3b4b4a45f9b0182061b2f6` |
| 4 | `theorem` | [le_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/le-ssup--89b8a13e202da9306e3829a2.md) | 76 | `result-track:89b8a13e202da9306e3829a219d7dc6df4aa54e215c1056f3c71b87da77c3d7d` |
| 5 | `theorem` | [sSup_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/ssup-le--934ba0c525d33dd4321252bf.md) | 79 | `result-track:934ba0c525d33dd4321252bf048ae34ccde3ec3ed08e76064d13ffd3ea997a2c` |
| 6 | `theorem` | [isLUB_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/islub-ssup--10aabeb8f3814c60e0f64e7e.md) | 82 | `result-track:10aabeb8f3814c60e0f64e7efea0760f7b2da6e3a48c9a479476cb1219ef264a` |
| 7 | `lemma` | [isLUB_iff_sSup_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/islub-iff-ssup-eq--007b559052136d36ee04ca7d.md) | 85 | `result-track:007b559052136d36ee04ca7d71f51e038b5d24bb582fe261da72cd475d19b228` |
| 8 | `theorem` | [le_sSup_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/le-ssup-of-le--edd1550c0b45d31f296a5122.md) | 90 | `result-track:edd1550c0b45d31f296a5122c10a81a15dbdc72196218231692f1c6eaeebde7d` |
| 9 | `theorem` | [sSup_le_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/ssup-le-ssup--f48e427f944334c5a86cffd1.md) | 94 | `result-track:f48e427f944334c5a86cffd14988ed2a014e83e914b10f124c7ec7da3bc604d8` |
| 10 | `theorem` | [sSup_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/ssup-le-iff--d1aa5eb6a1ce48c98631c55a.md) | 98 | `result-track:d1aa5eb6a1ce48c98631c55a5adc4e3b945dfc54d1e58448d8389c74eb6eb9d4` |
| 11 | `theorem` | [le_sSup_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/le-ssup-iff--e4c268835ff0af94bcbf5e6f.md) | 101 | `result-track:e4c268835ff0af94bcbf5e6f0787c27de6759061452ef1cb1cb49e3aec09e6f1` |
| 12 | `theorem` | [le_iSup_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/le-isup-iff--7a2d8b2692e9aa6a7115a101.md) | 104 | `result-track:7a2d8b2692e9aa6a7115a101cb2adf8017a9025b51bd5d9257faea164bf75489` |
| 13 | `class` | [CompleteSemilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/completesemilatticeinf--d01407fd384686df56d69bb1.md) | 114 | `declaration-track:d01407fd384686df56d69bb119bae6a139fe8da1b587c59f5d7f440f8d93ae5e` |
| 14 | `theorem` | [sInf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/sinf-le--6825c44a0d89e447e35d5891.md) | 124 | `result-track:6825c44a0d89e447e35d5891ecedcdff882e5e685d44dbd37d97e8a8e03a8200` |
| 15 | `theorem` | [le_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/le-sinf--f1c376d11a02b2f174fc6cfd.md) | 127 | `result-track:f1c376d11a02b2f174fc6cfd52321c655acc57194aa908c263a674d53d9cf17b` |
| 16 | `theorem` | [isGLB_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/isglb-sinf--bda336a11a920baa9b4a2361.md) | 130 | `result-track:bda336a11a920baa9b4a2361a5765032ea624f46fba6bc0886b62574c12dc219` |
| 17 | `lemma` | [isGLB_iff_sInf_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/isglb-iff-sinf-eq--fb07a2c8cfbeca7a91f09c8c.md) | 133 | `result-track:fb07a2c8cfbeca7a91f09c8c0b1f18eef142eb49b536801bdae4a6672bc53580` |
| 18 | `theorem` | [sInf_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/sinf-le-of-le--182280a7b7f62702dad9586f.md) | 138 | `result-track:182280a7b7f62702dad9586f16d6d7fa8640204ac2981428d6114b5ac85f897c` |
| 19 | `theorem` | [sInf_le_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/sinf-le-sinf--44b57db1357c4a3401a661b9.md) | 142 | `result-track:44b57db1357c4a3401a661b981310f37ca3b19e859bc7073c973ef340cd9226d` |
| 20 | `theorem` | [le_sInf_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/le-sinf-iff--36dbb7ebebef3013aa26e2ce.md) | 146 | `result-track:36dbb7ebebef3013aa26e2ce636118d3b9caf7ae397b20ade9d0406165f9482c` |
| 21 | `theorem` | [sInf_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/sinf-le-iff--ac1b99fcb8c8c9479b3a7d41.md) | 149 | `result-track:ac1b99fcb8c8c9479b3a7d41129adf74e1c80e0358edd3006650a47d6e3ccea6` |
| 22 | `theorem` | [iInf_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/iinf-le-iff--a18f23afd065058eb625f007.md) | 152 | `result-track:a18f23afd065058eb625f0075d1c7014d844afefa8e5f8265984d10fa6dc2a33` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/instance--ef83f073b9c9a4cc7e828464.md) | 157 | `declaration-track:ef83f073b9c9a4cc7e8284641fef53e801867655d97a69d7570ca356acc18da1` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/instance--4f80ede8076bd591de361910.md) | 161 | `declaration-track:4f80ede8076bd591de361910fcb37dec40ba0cab4732af9bc20e4b7eaa48bacd` |
| 25 | `class` | [CompleteLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/completelattice--2a28fcd18a240dd846328f31.md) | 167 | `declaration-track:2a28fcd18a240dd846328f31289d5a75b1a379584e5891a3e324058f05a19a92` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/instance--19799e6a69b66524feb45356.md) | 175 | `declaration-track:19799e6a69b66524feb453564e67d34cecb0061d3bcc331a70d024d6f9d49d9f` |
| 27 | `def` | [completeLatticeOfInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/completelatticeofinf--51c9dadffba91d1cb57547c5.md) | 194 | `declaration-track:51c9dadffba91d1cb57547c5ec24b3b5c6b1c17aac5c54d29e683a886f63c0fa` |
| 28 | `def` | [completeLatticeOfCompleteSemilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/completelatticeofcompletesemilatticeinf--22908ac84a96cf0cfb8181bf.md) | 222 | `declaration-track:22908ac84a96cf0cfb8181bf2a3ebdb0ced9dc266c0e275d374c7aeac3259a31` |
| 29 | `def` | [completeLatticeOfSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/completelatticeofsup--d8ac73b8dd782291eb26292e.md) | 241 | `declaration-track:d8ac73b8dd782291eb26292e3fbb2787cc510f909c34a192258923b3393b6993` |
| 30 | `def` | [completeLatticeOfCompleteSemilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/completelatticeofcompletesemilatticesup--c7c07aebd9301a634b0b3ede.md) | 267 | `declaration-track:c7c07aebd9301a634b0b3edeb95568392c64def0641d02d380bd642e41786a8c` |
| 31 | `class` | [CompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/completelinearorder--22de0b8f3b9e26d45f32a133.md) | 274 | `declaration-track:22de0b8f3b9e26d45f32a1334d02467ce7f34ce27b023a355262de6908c70e9a` |
| 32 | `instance` | [CompleteLinearOrder.toLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/completelinearorder-tolinearorder--2d0ff260fc8cf6d54266bb52.md) | 288 | `declaration-track:2d0ff260fc8cf6d54266bb526dd21c3544b476c82ae50b3e1a78f1e0ff75e789` |
| 33 | `instance` | [instCompleteLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/instcompletelattice--e50fbab5c120c87787a639ee.md) | 301 | `declaration-track:e50fbab5c120c87787a639ee2ce7d28651dab60d72c199aa7cbe2c70fa55b97a` |
| 34 | `instance` | [instCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/instcompletelinearorder--ecc71dcad822c457ca6334f4.md) | 308 | `declaration-track:ecc71dcad822c457ca6334f482af5b5ba38776f3d0ff70236937cd2e77d20674` |
| 35 | `theorem` | [toDual_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/todual-ssup--e12141236a2354e3208f8b7d.md) | 322 | `result-track:e12141236a2354e3208f8b7dba561d394387f12a2f2166dc1805ab1f03826e70` |
| 36 | `theorem` | [toDual_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/todual-sinf--0d1f78d87399281aac6c87d3.md) | 326 | `result-track:0d1f78d87399281aac6c87d31743359e7644c7400d03a63ba5ee59feb531b0f3` |
| 37 | `theorem` | [ofDual_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/ofdual-ssup--a7c6604005b1a39d7d5778b9.md) | 330 | `result-track:a7c6604005b1a39d7d5778b9fdba0886d59f88afb79db6cdaca565fe2d93d475` |
| 38 | `theorem` | [ofDual_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/ofdual-sinf--1c3be0996572b08392d1b300.md) | 334 | `result-track:1c3be0996572b08392d1b3008c6e803a67fca86bc201a37fb7139b1d992af88e` |
| 39 | `theorem` | [toDual_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/todual-isup--59d10b5daf865bc9ec725108.md) | 338 | `result-track:59d10b5daf865bc9ec725108a13cf92892579fe1a4b8046a43e9556f469eda1c` |
| 40 | `theorem` | [toDual_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/todual-iinf--0e1a0020a7765a423d91ae57.md) | 342 | `result-track:0e1a0020a7765a423d91ae572cc049fa26b43524978398186d393a8b6321fed5` |
| 41 | `theorem` | [ofDual_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/ofdual-isup--28d6e215f588301b5a726abb.md) | 346 | `result-track:28d6e215f588301b5a726abbf6fd03627ada54a8c417c0c862405d4ace261848` |
| 42 | `theorem` | [ofDual_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/ofdual-iinf--1a8189b81edb4084cebdde3d.md) | 350 | `result-track:1a8189b81edb4084cebdde3d96866fdc6edfa88a9941e8e3a080f4542158f44a` |
| 43 | `theorem` | [lt_sSup_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/lt-ssup-iff--0caaaa84ba5456689437bd6c.md) | 359 | `result-track:0caaaa84ba5456689437bd6c52d3266c41fc9d25d5311869e501052831bab943` |
| 44 | `theorem` | [sInf_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/sinf-lt-iff--38e9494385f4d6d4f30499cf.md) | 362 | `result-track:38e9494385f4d6d4f30499cf4edbd23592415118bae1d8f26f34329e27a796b5` |
| 45 | `theorem` | [sSup_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/ssup-eq-top--d0b11a805361305de1aef3bb.md) | 365 | `result-track:d0b11a805361305de1aef3bb8800ceeb651957031ea8df005512c96c2c736ca5` |
| 46 | `theorem` | [sInf_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/sinf-eq-bot--a251c97fc9219f913740e29f.md) | 372 | `result-track:a251c97fc9219f913740e29febd7452d9cce8430f02a74b579945816c79283c4` |
| 47 | `theorem` | [lt_iSup_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/lt-isup-iff--e41ccece9ebf178e0ffc957c.md) | 375 | `result-track:e41ccece9ebf178e0ffc957ccb4738c03edba9c8dc9d71be47b5c0f7b3103711` |
| 48 | `theorem` | [iInf_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/declarations/iinf-lt-iff--6aefc1767290f496a9002cf7.md) | 378 | `result-track:6aefc1767290f496a9002cf7b710bd7ad0061e474d9bae4736e74f6f87c90008` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
