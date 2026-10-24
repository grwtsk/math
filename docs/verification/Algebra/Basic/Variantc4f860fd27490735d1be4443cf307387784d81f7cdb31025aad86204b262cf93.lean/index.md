# Verification target: GRWTSK.Algebra.Basic.Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7faa2e10828ffb01a6b936bac2acb0c31e51e9e1",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7faa2e10828ffb01a6b936bac2acb0c31e51e9e1`.

Source path: `GRWTSK/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Indicator` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Invertible` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Units.neg_smul](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/units-neg-smul--681451aa9a01314034824218.md) | 36 | `result-track:681451aa9a01314034824218d63c2268e3fc3535dea1b794c071adf9ce104046` |
| 2 | `theorem` | [invOf_two_smul_add_invOf_two_smul](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/invof-two-smul-add-invof-two-smul--9f60f427676af20628a8d51c.md) | 41 | `result-track:9f60f427676af20628a8d51cafb6c4b5f601454445d7798a528e24b20e18c7d0` |
| 3 | `theorem` | [map_inv_natCast_smul](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/map-inv-natcast-smul--78c970d3fa325f6f085c9275.md) | 46 | `result-track:78c970d3fa325f6f085c9275afe54772df05252030a6b1bf13b76c6374432ece` |
| 4 | `theorem` | [map_inv_intCast_smul](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/map-inv-intcast-smul--2e816420cf07a698645c3e5a.md) | 63 | `result-track:2e816420cf07a698645c3e5aac42584ee288f392d0201affa8c50af20ca1a0f0` |
| 5 | `theorem` | [inv_natCast_smul_eq](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/inv-natcast-smul-eq--f03da479a63d293d09d54e36.md) | 73 | `result-track:f03da479a63d293d09d54e36509f2b0b2ff5cb51d9548f248cba3c66612e1b38` |
| 6 | `theorem` | [inv_intCast_smul_eq](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/inv-intcast-smul-eq--748a739c0edc0c93a3134834.md) | 80 | `result-track:748a739c0edc0c93a31348348cd670cad70fffd3d78154c748c0ee75b8960617` |
| 7 | `theorem` | [inv_natCast_smul_comm](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/inv-natcast-smul-comm--fe73ad9b0e8185d6e1be4b31.md) | 86 | `result-track:fe73ad9b0e8185d6e1be4b317bb907437f0704d7dcf3a31b03f1b969f0680e6b` |
| 8 | `theorem` | [inv_intCast_smul_comm](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/inv-intcast-smul-comm--326997c52f938324989b20a6.md) | 93 | `result-track:326997c52f938324989b20a6b94e1edacae86c8e8fe11fe49212f4626f092547` |
| 9 | `lemma` | [support_smul_subset_left](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/support-smul-subset-left--e065e27402341d100336eac4.md) | 100 | `result-track:e065e27402341d100336eac46e5194f77a67e680ba3c29532ec632bad5cb025d` |
| 10 | `lemma` | [support_smul_subset_right](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/support-smul-subset-right--2a9f49d183e571486041e98d.md) | 106 | `result-track:2a9f49d183e571486041e98dd1deea07bf636ee9fae56dd8f5475dce1f287a62` |
| 11 | `lemma` | [support_const_smul_of_ne_zero](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/support-const-smul-of-ne-zero--45ec781c1bddfca837b7e48f.md) | 110 | `result-track:45ec781c1bddfca837b7e48f6a5dcb6de694ac36d389cf256aaeba9331d7dfd3` |
| 12 | `lemma` | [support_smul](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/support-smul--6840d6a84c63d4e19398affa.md) | 114 | `result-track:6840d6a84c63d4e19398affadc28d1b78ec9a9c20650cca57db80329652f1181` |
| 13 | `lemma` | [support_const_smul_subset](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/support-const-smul-subset--162ce68badddcef322bbaea8.md) | 118 | `result-track:162ce68badddcef322bbaea84c1aa5cd084465f8a7bb18d111e48eb1a2d009b2` |
| 14 | `lemma` | [indicator_smul_apply](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/indicator-smul-apply--7937ceccf9441c612027cd4c.md) | 127 | `result-track:7937ceccf9441c612027cd4cf6c3e0c5ac923295b88a8a187f3704a442eb58fc` |
| 15 | `lemma` | [indicator_smul](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/indicator-smul--0ba1b39e999c08f03dac428b.md) | 133 | `result-track:0ba1b39e999c08f03dac428baa535fd01cf8089c20f2b23ffb016eb01861803e` |
| 16 | `lemma` | [indicator_const_smul_apply](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/indicator-const-smul-apply--16cfa63de361bf6bcd852c0d.md) | 137 | `result-track:16cfa63de361bf6bcd852c0d7b5c07a43622bebdb433283a12e6cc6bb72cf149` |
| 17 | `lemma` | [indicator_const_smul](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/indicator-const-smul--7bce6a247e5b120c137028b1.md) | 141 | `result-track:7bce6a247e5b120c137028b1931c40a35826953a7bfa1ec9f3ce24eb5778a5fe` |
| 18 | `lemma` | [indicator_smul_apply_left](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/indicator-smul-apply-left--75b6a5cad2cda1fdc4af33e0.md) | 150 | `result-track:75b6a5cad2cda1fdc4af33e051f9ae96a56c8a1d956ed72ddb2beb1e961312b8` |
| 19 | `lemma` | [indicator_smul_left](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/indicator-smul-left--b57bd2251f20f8e31921a8d4.md) | 156 | `result-track:b57bd2251f20f8e31921a8d4cb455167169b4485cf8c3458290e7016e0372aa9` |
| 20 | `lemma` | [indicator_smul_const_apply](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/indicator-smul-const-apply--5e46025633faa43ce41140d9.md) | 160 | `result-track:5e46025633faa43ce41140d94a9b30fabe42d9889398cd0fc7e41d41a1eef097` |
| 21 | `lemma` | [indicator_smul_const](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/indicator-smul-const--6cebf3ae05db6ed69f0bf849.md) | 163 | `result-track:6cebf3ae05db6ed69f0bf849012eda38d4f4c1a2a603625ecfe9f48d01ac710b` |
| 22 | `lemma` | [smul_indicator_one_apply](../../../../mathematics/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/declarations/smul-indicator-one-apply--7d0ea0794d6a8a87c90d047d.md) | 173 | `result-track:7d0ea0794d6a8a87c90d047d57a7d3dc9bc8c00ed6c503910f0682cabe6f5596` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
