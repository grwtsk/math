# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Continuum.Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e6f6ee428b14d47f25e2b7f03c0b0d69e4d0afc",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e6f6ee428b14d47f25e2b7f03c0b0d69e4d0afc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Ordinal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum--928be24b11c2ad6e00ebafbd.md) | 29 | `declaration-track:928be24b11c2ad6e00ebafbdf04c8d3b3d13e576d0f91ac0c4e950085d92e1f9` |
| 2 | `theorem` | [two_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/two-power-aleph0--98b6a43313892ca5e881517c.md) | 37 | `result-track:98b6a43313892ca5e881517cb885fe456c08193fffb4dab900cd35557bd81ff6` |
| 3 | `theorem` | [lift_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/lift-continuum--28ed7fc3e7fabdcfeea9857a.md) | 42 | `result-track:28ed7fc3e7fabdcfeea9857aa726c73ec46aff9a73df195d01cb39461ada8f20` |
| 4 | `theorem` | [continuum_le_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-le-lift--b91bf64a926b1a52730e0475.md) | 47 | `result-track:b91bf64a926b1a52730e04758535b0c69ea97c48514e677e96dc4e22ea87e7b7` |
| 5 | `theorem` | [lift_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/lift-le-continuum--ae978353defbc3cc99810d05.md) | 53 | `result-track:ae978353defbc3cc99810d05bfe74d022a9107cb9463b689d319bcef9568a175` |
| 6 | `theorem` | [continuum_lt_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-lt-lift--bf03ab8e4435df84b8637c6e.md) | 59 | `result-track:bf03ab8e4435df84b8637c6e8bce3f88372c6e00a0d5cf3a2af3b492487975e1` |
| 7 | `theorem` | [lift_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/lift-lt-continuum--fb801165e93db1daf1afbc8e.md) | 65 | `result-track:fb801165e93db1daf1afbc8e11ff52caa9c5c278b7010e55e7582083c79500ee` |
| 8 | `theorem` | [aleph0_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/aleph0-lt-continuum--48c3c45c6f711eaec6ff9dc5.md) | 75 | `result-track:48c3c45c6f711eaec6ff9dc546356c116d336ba266600e29c49e30ee49c18d87` |
| 9 | `theorem` | [aleph0_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/aleph0-le-continuum--614a8b1e051296a199f7ce04.md) | 79 | `result-track:614a8b1e051296a199f7ce04593fd262b29c899d798a301edd64d76fad40ff85` |
| 10 | `theorem` | [beth_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/beth-one--ae2a3e296d447677852e3b98.md) | 84 | `result-track:ae2a3e296d447677852e3b9817e812bbfd0cb4531523b1601265f1520ac1cb42` |
| 11 | `theorem` | [nat_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/nat-lt-continuum--87a5cbc38a5f639f29339f43.md) | 87 | `result-track:87a5cbc38a5f639f29339f4396c0bf977b9f63e523cf732ef8c46c9b13a6ae06` |
| 12 | `theorem` | [mk_set_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/mk-set-nat--0aa37da3375fdbb3812dc53f.md) | 91 | `result-track:0aa37da3375fdbb3812dc53f0d068a04919b80c98a21d68744dc673f08a4beff` |
| 13 | `theorem` | [continuum_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-pos--3e8056345528f3e2968fff15.md) | 94 | `result-track:3e8056345528f3e2968fff15a72a793ef25195cef6bdf9cc79fa08a292f76d5a` |
| 14 | `theorem` | [continuum_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-ne-zero--482fe1e0329ce38ad9394210.md) | 98 | `result-track:482fe1e0329ce38ad939421006cbd454712840b493e330ee7574b5763c721237` |
| 15 | `theorem` | [aleph_one_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/aleph-one-le-continuum--1e2c77fcf36e97f821f5bd3e.md) | 102 | `result-track:1e2c77fcf36e97f821f5bd3e2da9bc18c82ccb2961dba73bb61cb24b6649618a` |
| 16 | `theorem` | [continuum_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-tonat--9f1ea2176e6247798e3726eb.md) | 108 | `result-track:9f1ea2176e6247798e3726eb9928ca2816389db6652a9b4f1abfe279f55806e7` |
| 17 | `theorem` | [continuum_toPartENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-topartenat--691b8f4ff69f9f2c8ef76f85.md) | 113 | `result-track:691b8f4ff69f9f2c8ef76f85a9e669d31c41b8a66a32928224ea0a6f62a1ac82` |
| 18 | `theorem` | [aleph0_add_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/aleph0-add-continuum--d2f915aa49543aab506a3837.md) | 123 | `result-track:d2f915aa49543aab506a38371e73df3450552d7f4fc942e6b2fec727ae161ed1` |
| 19 | `theorem` | [continuum_add_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-add-aleph0--bc8996e7544079c43277286a.md) | 128 | `result-track:bc8996e7544079c43277286ad45d08d16378c1692d4c4add35bb36564e8595ff` |
| 20 | `theorem` | [continuum_add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-add-self--e78b8ed292f9d55a8bf37810.md) | 133 | `result-track:e78b8ed292f9d55a8bf378101337df7f2302e0d0b5c673f3e60812fb67caeb29` |
| 21 | `theorem` | [nat_add_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/nat-add-continuum--735c992ce055947bd16b835f.md) | 138 | `result-track:735c992ce055947bd16b835fa8904436b4cdd91ffa411397e0dc1faa3320c2a2` |
| 22 | `theorem` | [continuum_add_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-add-nat--20db2b850fc8c7fbece8d62b.md) | 143 | `result-track:20db2b850fc8c7fbece8d62b82a5cc12d46f00a117da9f0d315c7d63081a1135` |
| 23 | `theorem` | [continuum_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-mul-self--6275068e82b7570ef38d20d5.md) | 153 | `result-track:6275068e82b7570ef38d20d5fc6953df11884e770cde52606f9e91623379a3f3` |
| 24 | `theorem` | [continuum_mul_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-mul-aleph0--c12f8ba08bb58ad14d91c76e.md) | 158 | `result-track:c12f8ba08bb58ad14d91c76ebbf3a320d8d1eb3298ef21a9b20f730792d872fa` |
| 25 | `theorem` | [aleph0_mul_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/aleph0-mul-continuum--72d27e6bd3a2a956f1dede41.md) | 163 | `result-track:72d27e6bd3a2a956f1dede41c1a38483e650405c84bc65132657442f440c7289` |
| 26 | `theorem` | [nat_mul_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/nat-mul-continuum--3f0b59a9bc07231f0572809f.md) | 168 | `result-track:3f0b59a9bc07231f0572809f2e303a81b317de35a0e66028bf19f37ae4a7887f` |
| 27 | `theorem` | [continuum_mul_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-mul-nat--1de83cad054273a7a4154e4e.md) | 173 | `result-track:1de83cad054273a7a4154e4ec45685127e33dbb6fbaf64bebae453d7a6a4e567` |
| 28 | `theorem` | [aleph0_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/aleph0-power-aleph0--ac036535aa76038ed8ad2b2b.md) | 183 | `result-track:ac036535aa76038ed8ad2b2bdcc65b25fa669389c67e79582d1856d1ec02c531` |
| 29 | `theorem` | [nat_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/nat-power-aleph0--bfd4ae19b6d799ad2f74d966.md) | 188 | `result-track:bfd4ae19b6d799ad2f74d966e07164b223b46c453884478777008bcad7ef9f2e` |
| 30 | `theorem` | [continuum_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variantd1646eb6bb0c52ea377d14a909acf0cb2b768d5e809d716d6f9c3214e623d120.lean/declarations/continuum-power-aleph0--fc7f5e8e07daf66a6c4dada7.md) | 193 | `result-track:fc7f5e8e07daf66a6c4dada78601c139df49e44c9ba171d46c0a5891867329a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
