# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Continuum.Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d7dd9599d5b38af0f8a90d461493cf263220f17",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d7dd9599d5b38af0f8a90d461493cf263220f17`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum--e93ce2ab76d91dab3fe3b0bc.md) | 35 | `declaration-track:e93ce2ab76d91dab3fe3b0bc3dae42c458b0a896a2152bc024b5918b1bfedd21` |
| 2 | `theorem` | [two_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/two-power-aleph0--40bd520f859103bd1478cb6d.md) | 41 | `result-track:40bd520f859103bd1478cb6db9cf6972ac4c90552af4b673401435f569c3520c` |
| 3 | `theorem` | [lift_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/lift-continuum--0f0d51498f1727eeaf5541f6.md) | 45 | `result-track:0f0d51498f1727eeaf5541f6a89edf4d388d42539656f1760bbba738ecf84442` |
| 4 | `theorem` | [continuum_le_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-le-lift--715098899300dae799f862c3.md) | 49 | `result-track:715098899300dae799f862c3041090a593ef3e6f8cdbda96e6e616d6912f3379` |
| 5 | `theorem` | [lift_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/lift-le-continuum--0e2f75bd82bc5f136d1cb139.md) | 53 | `result-track:0e2f75bd82bc5f136d1cb139b13dbbcb048ce7440b34f40b15faab65d2695353` |
| 6 | `theorem` | [continuum_lt_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-lt-lift--a3a5134d20dbd7bd1e42337f.md) | 57 | `result-track:a3a5134d20dbd7bd1e42337f8ed702fde93c30528b7fa5b23a957a742f0879b6` |
| 7 | `theorem` | [lift_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/lift-lt-continuum--3a656b487102a98152dbb8d5.md) | 61 | `result-track:3a656b487102a98152dbb8d587c83792182578dc53141837db91d9b313ebc0f4` |
| 8 | `theorem` | [aleph0_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/aleph0-lt-continuum--91c2fa1ca8836946a3a9bcda.md) | 69 | `result-track:91c2fa1ca8836946a3a9bcdaca1b19b28f9d5c2fc23e7bea55c8b1f3747c5f9d` |
| 9 | `theorem` | [aleph0_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/aleph0-le-continuum--91f38728f0f64f6b8b3b38ac.md) | 72 | `result-track:91f38728f0f64f6b8b3b38aca688226aedf33fb4f5ad9682f9de4d1d07f17e18` |
| 10 | `theorem` | [beth_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/beth-one--91f9d644cde17dffde676431.md) | 76 | `result-track:91f9d644cde17dffde676431572d9ea7a487c655115af35d10b2f08b746e3dbe` |
| 11 | `theorem` | [nat_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/nat-lt-continuum--8fbb5538f6399519beb1bb0b.md) | 78 | `result-track:8fbb5538f6399519beb1bb0b7df4d1d38230c9c1c30fdff2cb3b55998f763d8f` |
| 12 | `theorem` | [mk_set_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/mk-set-nat--473cad2624630f628834b740.md) | 81 | `result-track:473cad2624630f628834b7405148d96b01dfc815083ad7a6ac2d63505dd7dc89` |
| 13 | `theorem` | [continuum_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-pos--65749420c17df6981ed3a97d.md) | 83 | `result-track:65749420c17df6981ed3a97d369be47330ba8c00583906707abb4b59c2b6c27f` |
| 14 | `theorem` | [continuum_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-ne-zero--8ba4bea446bb041be4da2121.md) | 86 | `result-track:8ba4bea446bb041be4da2121f82b8c6092ee608f6cc3b38617748b4015224adb` |
| 15 | `theorem` | [aleph_one_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/aleph-one-le-continuum--163aa5ccf159a38814edf697.md) | 89 | `result-track:163aa5ccf159a38814edf6974b3d9cf3f5d12837283587aeab8c65516985adfe` |
| 16 | `theorem` | [continuum_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-tonat--16bac93dcd2b1cac3256d277.md) | 94 | `result-track:16bac93dcd2b1cac3256d2777588501a4df0f5081fdffa97e6dde4b55a40cf59` |
| 17 | `theorem` | [continuum_toENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-toenat--edb22aeb55f0514cccc4ffda.md) | 98 | `result-track:edb22aeb55f0514cccc4ffda4ad03862bd8e5d6a94dfeb7851f0b7a34e4c2f84` |
| 18 | `theorem` | [aleph0_add_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/aleph0-add-continuum--91ba8bd0ac1309f6849ec6fc.md) | 107 | `result-track:91ba8bd0ac1309f6849ec6fcb55b329814309c776d3082f1ad2392f1ab0dafe1` |
| 19 | `theorem` | [continuum_add_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-add-aleph0--ccd0dc38364210d9c594e440.md) | 111 | `result-track:ccd0dc38364210d9c594e440fc6dc79bd665ebd31796b170c3eaee19655b121b` |
| 20 | `theorem` | [continuum_add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-add-self--052504969c4449cbaa440a1a.md) | 115 | `result-track:052504969c4449cbaa440a1a2931f3bffa1ecf3eded803343e07b47828ab5c95` |
| 21 | `theorem` | [nat_add_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/nat-add-continuum--cde08876057b006eb13e1e3f.md) | 119 | `result-track:cde08876057b006eb13e1e3f758db63833ca61ee46d5306e9ca88e2eae07fe3a` |
| 22 | `theorem` | [continuum_add_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-add-nat--61a27da2c691c5aabf90e7d8.md) | 123 | `result-track:61a27da2c691c5aabf90e7d8c9fc689577fd7d29abd7d15fe9b423aaabe6eeaa` |
| 23 | `theorem` | [ofNat_add_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/ofnat-add-continuum--c8a9d0c39c9a32845b1aec1e.md) | 127 | `result-track:c8a9d0c39c9a32845b1aec1e2af830874ba2c5c9b45a4e481a0c27d7b6dae61b` |
| 24 | `theorem` | [continuum_add_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-add-ofnat--c2777990662be67a3c452f31.md) | 131 | `result-track:c2777990662be67a3c452f31c039db5abd2a663f3872a4833b873cae11ae7afa` |
| 25 | `theorem` | [continuum_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-mul-self--8d1d7c2f8331fd1b37212f01.md) | 140 | `result-track:8d1d7c2f8331fd1b37212f01518cabdad69de317097540020f922ca1fe1548e9` |
| 26 | `theorem` | [continuum_mul_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-mul-aleph0--d49717fd7565b9387ec2f16e.md) | 144 | `result-track:d49717fd7565b9387ec2f16e5c6f8cd6a6d3066e014a8252f49a060af2e5c2f1` |
| 27 | `theorem` | [aleph0_mul_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/aleph0-mul-continuum--c3dd5670dd82da58284fdb31.md) | 148 | `result-track:c3dd5670dd82da58284fdb31cc63a5d5dfbafcc0630845103aa84036da058a77` |
| 28 | `theorem` | [nat_mul_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/nat-mul-continuum--236d7975a6c4d28619cfa26a.md) | 152 | `result-track:236d7975a6c4d28619cfa26aea41d11a62ca6e1737d58a509c1f9d0f1e8c0e69` |
| 29 | `theorem` | [continuum_mul_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-mul-nat--2738d3cf89e41f0a9f897aad.md) | 156 | `result-track:2738d3cf89e41f0a9f897aadffd7de3091eded9f4a4f8884cfb13d4728a6559d` |
| 30 | `theorem` | [ofNat_mul_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/ofnat-mul-continuum--c433310435fdc44302e8bc2c.md) | 160 | `result-track:c433310435fdc44302e8bc2c0d03c7ba1149cf49bb22e2617015c5d7f8b925ae` |
| 31 | `theorem` | [continuum_mul_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-mul-ofnat--794e0f30023559d78ca1ede3.md) | 164 | `result-track:794e0f30023559d78ca1ede3d034c38693c2631c6e16f6be9250b82efa3c7146` |
| 32 | `theorem` | [aleph0_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/aleph0-power-aleph0--cb6d3c0a5aacae633016146c.md) | 173 | `result-track:cb6d3c0a5aacae633016146cfab3b2c58d02fd1fe8fcff20353a15c41e43b8a0` |
| 33 | `theorem` | [nat_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/nat-power-aleph0--c71cfee2ce63b2d7c114e764.md) | 177 | `result-track:c71cfee2ce63b2d7c114e764a205568d8963bc16fdbfbb9074aae9f92e18c20a` |
| 34 | `theorem` | [continuum_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/continuum-power-aleph0--ed1175bf67a7698a562d713c.md) | 181 | `result-track:ed1175bf67a7698a562d713c71f1d72f810395b566dce3c6607ddef2d49ed5de` |
| 35 | `theorem` | [power_aleph0_of_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e.lean/declarations/power-aleph0-of-le-continuum--4c2df51fa8806991c7df6fa2.md) | 184 | `result-track:4c2df51fa8806991c7df6fa239da4eaef8c634d5332bf363b9017ac2f753a86c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
