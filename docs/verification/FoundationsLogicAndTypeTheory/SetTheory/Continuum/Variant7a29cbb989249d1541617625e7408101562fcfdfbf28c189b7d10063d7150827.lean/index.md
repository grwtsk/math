# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Continuum.Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f36674f9acb7b8798371510410f6b36eba436b5",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f36674f9acb7b8798371510410f6b36eba436b5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum--de338014baae43e6594d0428.md) | 27 | `declaration-track:de338014baae43e6594d04281855cd61d1393e2eccbbf3bb45d8148bc2288973` |
| 2 | `theorem` | [two_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/two-power-aleph0--5c66adab0cb1c6d2c56eadeb.md) | 33 | `result-track:5c66adab0cb1c6d2c56eadeb9c1f1674dfac204db0b5d4a710edb3c91a321972` |
| 3 | `theorem` | [lift_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/lift-continuum--95761299ce546ca48b9f89a4.md) | 37 | `result-track:95761299ce546ca48b9f89a42a28658d97e730658281a8f32aee7528726baf5a` |
| 4 | `theorem` | [continuum_le_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-le-lift--94e6545b0c10cc04fddbbb73.md) | 41 | `result-track:94e6545b0c10cc04fddbbb7316600e42f35753fce2618197b39f2c67ad13c8ed` |
| 5 | `theorem` | [lift_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/lift-le-continuum--6ca6a2a6c40fe051520b9567.md) | 45 | `result-track:6ca6a2a6c40fe051520b956711c96978f89cbcd9342912112346f0b66f134a84` |
| 6 | `theorem` | [continuum_lt_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-lt-lift--c336626275a615a835ec631c.md) | 49 | `result-track:c336626275a615a835ec631cf51e4f76e9dede5f4724e3d45720bc5effcedd2f` |
| 7 | `theorem` | [lift_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/lift-lt-continuum--e6bcb6fc12d58a0d70761b03.md) | 53 | `result-track:e6bcb6fc12d58a0d70761b0368ab3dd777fe80076b0832e18595f85f6f94df24` |
| 8 | `theorem` | [aleph0_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/aleph0-lt-continuum--62028c79ff07e59f166412c6.md) | 61 | `result-track:62028c79ff07e59f166412c62bdd21aa2225ccf4f4b4609f5175e69f5f2de534` |
| 9 | `theorem` | [aleph0_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/aleph0-le-continuum--b3712f2ff67b948f9365b59b.md) | 64 | `result-track:b3712f2ff67b948f9365b59b6fc54219cec7f90ca7c442e4b91b17a047829b76` |
| 10 | `theorem` | [beth_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/beth-one--085cd470d2016d28fd513795.md) | 68 | `result-track:085cd470d2016d28fd51379562c0ed8a3fa3c22530b521d46d697140f20e636c` |
| 11 | `theorem` | [nat_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/nat-lt-continuum--db63b247ea2be43b49ea679a.md) | 70 | `result-track:db63b247ea2be43b49ea679ae04c468fef94a1741e0f70bf91a375eb077ddc8c` |
| 12 | `theorem` | [mk_set_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/mk-set-nat--b990537d7464438c2d0196cb.md) | 73 | `result-track:b990537d7464438c2d0196cbe88f11dfd429d6d4648b68bfeaa3ce116e202778` |
| 13 | `theorem` | [continuum_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-pos--f97bfb031cba5bebbeb90973.md) | 75 | `result-track:f97bfb031cba5bebbeb90973e77e478807139345930be1a50d18cbf8688a233c` |
| 14 | `theorem` | [continuum_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-ne-zero--054a544fc1f011a2fbad9e9b.md) | 78 | `result-track:054a544fc1f011a2fbad9e9be6d3ba594c3d9763474b60f4d7afb83f4abb6d34` |
| 15 | `theorem` | [aleph_one_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/aleph-one-le-continuum--f4c9b5f37a8df77debaecf22.md) | 81 | `result-track:f4c9b5f37a8df77debaecf2295bd33cda2360a2463a21be86fedffa3287fe987` |
| 16 | `theorem` | [continuum_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-tonat--a73754ba13f62ed25699b2a9.md) | 86 | `result-track:a73754ba13f62ed25699b2a9d705fbf14f25d0481d1d99767b79a06a9eaabba1` |
| 17 | `theorem` | [continuum_toENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-toenat--f8e6d495a4235c90e2d060bd.md) | 90 | `result-track:f8e6d495a4235c90e2d060bd8569991fbe51f3af1e76ee364edf0a0eeb2a6788` |
| 18 | `theorem` | [aleph0_add_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/aleph0-add-continuum--3c4ff22bf962d542d0843f51.md) | 99 | `result-track:3c4ff22bf962d542d0843f51a8084cb032dde773cf124b053561c600e0feef7b` |
| 19 | `theorem` | [continuum_add_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-add-aleph0--6e9881e1f9e845c24b0cb67c.md) | 103 | `result-track:6e9881e1f9e845c24b0cb67ce71bad54b739e6b2a34eed24bc5b432ad7332061` |
| 20 | `theorem` | [continuum_add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-add-self--9eb46dfe717368129e08613a.md) | 107 | `result-track:9eb46dfe717368129e08613a962e61a2a200b6e22c7592acc442182867388723` |
| 21 | `theorem` | [nat_add_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/nat-add-continuum--ac6c6e6f799c6d3e72716fac.md) | 111 | `result-track:ac6c6e6f799c6d3e72716facb8a6d58b79c0af02855814fef7f03ca59658d7e4` |
| 22 | `theorem` | [continuum_add_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-add-nat--59ff8a370b6ec06ab8c0b263.md) | 115 | `result-track:59ff8a370b6ec06ab8c0b263f0585000e65e5cd249f26ab9d437d7364976c209` |
| 23 | `theorem` | [ofNat_add_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/ofnat-add-continuum--c64c8b3bdd50bd3d7422adac.md) | 119 | `result-track:c64c8b3bdd50bd3d7422adac1f4efacd4f0fda33c7e5cd99032a43f3ddfce8a8` |
| 24 | `theorem` | [continuum_add_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-add-ofnat--4ba1c304419a50e0594a5831.md) | 123 | `result-track:4ba1c304419a50e0594a58319d42ca2142d294b2ddf86e300414eaf8833bbb9f` |
| 25 | `theorem` | [continuum_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-mul-self--13ca402805dd392e4c0a0afb.md) | 132 | `result-track:13ca402805dd392e4c0a0afbde1bfd710dcbab3329cfbe94b9e7923ca181641b` |
| 26 | `theorem` | [continuum_mul_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-mul-aleph0--06ede04971de6a5f9196163a.md) | 136 | `result-track:06ede04971de6a5f9196163a5c22d82ca15196015f69e90d05308a75ab45a538` |
| 27 | `theorem` | [aleph0_mul_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/aleph0-mul-continuum--c6d37a06dfeba3f407e767d6.md) | 140 | `result-track:c6d37a06dfeba3f407e767d65c79f537bc5d6f1b6d1390f4b90b7218546f5e1b` |
| 28 | `theorem` | [nat_mul_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/nat-mul-continuum--784917ad1970f462b5e5593f.md) | 144 | `result-track:784917ad1970f462b5e5593f2efcb6173678915ebc50b3842c8c7832629f43f8` |
| 29 | `theorem` | [continuum_mul_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-mul-nat--2ffde7c0b4e2849595e9cdf6.md) | 148 | `result-track:2ffde7c0b4e2849595e9cdf6573acf47ab3da4197d916e4a4cef73c4c62266ee` |
| 30 | `theorem` | [ofNat_mul_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/ofnat-mul-continuum--cbb2a84edca3bd19055cef49.md) | 152 | `result-track:cbb2a84edca3bd19055cef495ee8c71141c243bc5260bc704f89d21e6fbb18e3` |
| 31 | `theorem` | [continuum_mul_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-mul-ofnat--1cdd6277ed52b1410002b882.md) | 156 | `result-track:1cdd6277ed52b1410002b882a81e22760aaeb00bdc42d478d517c7f5476d0a1b` |
| 32 | `theorem` | [aleph0_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/aleph0-power-aleph0--f8775696d04a49d24a8058ff.md) | 165 | `result-track:f8775696d04a49d24a8058ff8bc27d968d3a22cb020fa435f919f33e40e89438` |
| 33 | `theorem` | [nat_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/nat-power-aleph0--1c627010874a497d654dff3e.md) | 169 | `result-track:1c627010874a497d654dff3e5159591b4cf9c6aa184a57bacb4b2780f0afe52c` |
| 34 | `theorem` | [continuum_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/continuum-power-aleph0--318d75f94c5fa7dcddf13065.md) | 173 | `result-track:318d75f94c5fa7dcddf13065c76c131129ed01187277a762b76da89872aa9e93` |
| 35 | `theorem` | [power_aleph0_of_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827.lean/declarations/power-aleph0-of-le-continuum--f8e411fe0ecc097e41fb02c2.md) | 176 | `result-track:f8e411fe0ecc097e41fb02c2bef08382e2b0df637be406ef6e0f5ec6f6c6a4d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
