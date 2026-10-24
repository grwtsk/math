# Verification target: GRWTSK.Algebra.Envelope.Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4d4fd93c00f92010b2fc5a67b97abcba4db9cdf",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/index.md) · [Full source](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4d4fd93c00f92010b2fc5a67b97abcba4db9cdf`.

Source path: `GRWTSK/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--2ea90c90c120148e7f880c9b.md) | 26 | `declaration-track:2ea90c90c120148e7f880c9b590b3fd6138df0a3179b0ac69e4e9df0a1033f63` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--03c929e897d5100072196ce7.md) | 28 | `declaration-track:03c929e897d5100072196ce77bba5f6d91d9309ab4a5874ad944282bbda1b3d4` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--6838f1b010f2ea11aba31fd4.md) | 30 | `declaration-track:6838f1b010f2ea11aba31fd4b3579d9ac157f0e76acbc23ea6e7e639e3c31bba` |
| 4 | `theorem` | [exists_true](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/exists-true--352b596dcab4855e880c6f8e.md) | 33 | `result-track:352b596dcab4855e880c6f8e34c4c6d6174fcdc0fa8f795f0378474168422d3a` |
| 5 | `def` | [r](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/r--69caf481cd509b0727d38609.md) | 35 | `declaration-track:69caf481cd509b0727d386094f469dba8437c104b46503b757f8fa894a8e546c` |
| 6 | `def` | [Q](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/q--d1c6cc17da1b79139fc94853.md) | 39 | `declaration-track:d1c6cc17da1b79139fc948533477de32e9e2441e27b35518b64535fa54ea1fe4` |
| 7 | `theorem` | [r_rfl](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/r-rfl--18c5da7c4c4396d99538f074.md) | 43 | `result-track:18c5da7c4c4396d99538f074f3587429756bf2e886b8b0634064fe47ab614c09` |
| 8 | `theorem` | [r_sym](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/r-sym--4fee580ebafe2069001f5b00.md) | 46 | `result-track:4fee580ebafe2069001f5b006148aba9c68ec556d831e223d2aaadcec7874e8f` |
| 9 | `theorem` | [r_trans](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/r-trans--c7542c1e636daecb46cd9c0e.md) | 49 | `result-track:c7542c1e636daecb46cd9c0eb4117a55aee535fb3b37576f2bbcd409da8da30a` |
| 10 | `theorem` | [mul_helper](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/mul-helper--a4c7be12c3339d9828141d2c.md) | 60 | `result-track:a4c7be12c3339d9828141d2cad7c04f99b36a3284cee628d1d43a7e499748fe2` |
| 11 | `def` | [Q.mk](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/q-mk--3030418c31da95b988ed79a8.md) | 92 | `declaration-track:3030418c31da95b988ed79a80696e32c5a54cefdfe79883b77ebeda46489597c` |
| 12 | `def` | [Q.liftOn₂](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/q-lifton--c73c5bafe1ea464aab6fadd1.md) | 95 | `declaration-track:c73c5bafe1ea464aab6fadd104a2142fe2f31d016272cb0491eb90fa7e232f5f` |
| 13 | `theorem` | [Q.ind](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/q-ind--27085cee06d9df54556528dd.md) | 107 | `result-track:27085cee06d9df54556528dd9f5f9b60dedd6eab8f1a4a3961e4f79cf338cac5` |
| 14 | `def` | [natCast](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/natcast--8da230620d74ca1be4c59f0f.md) | 110 | `declaration-track:8da230620d74ca1be4c59f0faae61e976fd3507d8f7447e3b0a2e30894eea91a` |
| 15 | `def` | [intCast](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/intcast--4bb35f5c3b380fca6874d894.md) | 113 | `declaration-track:4bb35f5c3b380fca6874d894423bca1150828345be32de2fcdea02601133670f` |
| 16 | `def` | [sub](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/sub--04eb295e27e4b6e9ed8b537f.md) | 116 | `declaration-track:04eb295e27e4b6e9ed8b537f231eab99068c3015d31b58a2527d7b1e98640456` |
| 17 | `def` | [add](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/add--07a2c04076cb8b54982b2623.md) | 125 | `declaration-track:07a2c04076cb8b54982b262354357561548c1cfefd0680777128b8dba34c84c5` |
| 18 | `def` | [mul](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/mul--541c31c61d7902451283f3fb.md) | 134 | `declaration-track:541c31c61d7902451283f3fb20f970dcd3e6785e3e8a845e96ecf88637d07fd9` |
| 19 | `def` | [neg](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/neg--2739eb95b370a79cf6e4a4a4.md) | 140 | `declaration-track:2739eb95b370a79cf6e4a4a420d92b7002b236b8ed8728d0a56666ec8f15f80c` |
| 20 | `theorem` | [neg_add_cancel](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/neg-add-cancel--9963385a06fd050bfb3aa8c8.md) | 150 | `result-track:9963385a06fd050bfb3aa8c8ea226449c81d4e283abf014b973da3873b062311` |
| 21 | `theorem` | [add_comm](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/add-comm--6ad4cef3fc9374174c0d514a.md) | 155 | `result-track:6ad4cef3fc9374174c0d514a30c4af525fe62dc00b3f8ed8a3901797a4acbb00` |
| 22 | `theorem` | [add_zero](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/add-zero--88a7ca9c20128931db878adc.md) | 160 | `result-track:88a7ca9c20128931db878adc51de4c9c5462836ef9477db2d661953b18eef432` |
| 23 | `theorem` | [add_assoc](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/add-assoc--7eaa7df0da082ff0c4b001c9.md) | 164 | `result-track:7eaa7df0da082ff0c4b001c9372e26594c74233b2b66452a31db385cdca5fc4f` |
| 24 | `theorem` | [sub_eq_add_neg](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/sub-eq-add-neg--e89d9cbbaa6751596abfea15.md) | 170 | `result-track:e89d9cbbaa6751596abfea1585a8fae8c5262a51d407fe8d93b61f50c7948f51` |
| 25 | `theorem` | [intCast_neg](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/intcast-neg--4b378042065f909ad15bc522.md) | 175 | `result-track:4b378042065f909ad15bc522e8adbedd3543150b108074d0837753cbef0ce782` |
| 26 | `theorem` | [intCast_ofNat](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/intcast-ofnat--adb0fba38b7254976195c2f1.md) | 183 | `result-track:adb0fba38b7254976195c2f126a38021303095fdf1dbd0e6fb7bdd59153f5795` |
| 27 | `theorem` | [ofNat_succ](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/ofnat-succ--5dfcf1eceb5cbb4de35b61e5.md) | 186 | `result-track:5dfcf1eceb5cbb4de35b61e51a891d5ff91615972dd5bd00cd15427ba6b124ec` |
| 28 | `theorem` | [mul_assoc](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/mul-assoc--2911458e44e66f962748b24d.md) | 189 | `result-track:2911458e44e66f962748b24d679161af379cc499713e5cc9390c45ea944bcd0b` |
| 29 | `theorem` | [mul_one](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/mul-one--95e2f5aa56b96632853cd932.md) | 196 | `result-track:95e2f5aa56b96632853cd93271d9ea2819c7f2be52625772949a44cd3567c0d5` |
| 30 | `theorem` | [one_mul](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/one-mul--7018e26bfc92cfe2afc8fb85.md) | 199 | `result-track:7018e26bfc92cfe2afc8fb85022ee871b70d0cedf12fad79ddd3c39fd4da2b58` |
| 31 | `theorem` | [zero_mul](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/zero-mul--06e8de437a626be6f97877a7.md) | 202 | `result-track:06e8de437a626be6f97877a7a81ad5ed3157051ff00527359aa5d42387dc6948` |
| 32 | `theorem` | [mul_zero](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/mul-zero--9561fd38cd1120cffddd73e9.md) | 205 | `result-track:9561fd38cd1120cffddd73e93d92721556806dab53b49491f8d449ac79af245d` |
| 33 | `theorem` | [left_distrib](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/left-distrib--02425b56ab627eab445f7daa.md) | 208 | `result-track:02425b56ab627eab445f7daad9491cf0403aba3a4f45be8f2e818248f5fab896` |
| 34 | `theorem` | [right_distrib](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/right-distrib--3ce5d692e694f3e31d947a52.md) | 215 | `result-track:3ce5d692e694f3e31d947a52ff2fdc23213c39aedd290e7ff583f59f526a58e8` |
| 35 | `def` | [npow](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/npow--c07828ad52c369ec5efcd17f.md) | 222 | `declaration-track:c07828ad52c369ec5efcd17f56af6b3c80e37771843601051eab392f692c6437` |
| 36 | `theorem` | [pow_zero](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/pow-zero--7c8e58229cb83f3bbe4c378e.md) | 227 | `result-track:7c8e58229cb83f3bbe4c378ecc429fe42edb0a0b3afea20def16ae75e64f7d83` |
| 37 | `theorem` | [pow_succ](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/pow-succ--83494e795d84bd6f213580e2.md) | 229 | `result-track:83494e795d84bd6f213580e24d51334ce0493aa44226bff3f8f51abb403d5b24` |
| 38 | `def` | [nsmul](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/nsmul--77cfe6a71da139a01cb30825.md) | 231 | `declaration-track:77cfe6a71da139a01cb30825dd00341bcb748279206e950e5132fee81daa41e1` |
| 39 | `def` | [zsmul](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/zsmul--29a1f96fe8459f261c7b5684.md) | 234 | `declaration-track:29a1f96fe8459f261c7b5684569fb6fc23f2a6f6226044d0ed99a3ba578ea278` |
| 40 | `theorem` | [neg_zsmul](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/neg-zsmul--0dade0405361348489a0dde5.md) | 237 | `result-track:0dade0405361348489a0dde51526dae64b278a64af13c2881c36ed5c36246911` |
| 41 | `def` | [ofSemiring](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/ofsemiring--bf8a2cf90d446ea16cf0070b.md) | 250 | `declaration-track:bf8a2cf90d446ea16cf0070b9b18442c66c756dae7be3f20794dbe952952fd51` |
| 42 | `theorem` | [mk_add_mk](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/mk-add-mk--0d93c0e7f36ded847b31b6af.md) | 267 | `result-track:0d93c0e7f36ded847b31b6af078fc8a71a56222b3cc6d9230f784badec2126ae` |
| 43 | `theorem` | [mk_mul_mk](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/mk-mul-mk--e9eb3bee0f71f321b9bcef47.md) | 271 | `result-track:e9eb3bee0f71f321b9bcef472afb79f9a467dcbfc164706a272fb8999491a97c` |
| 44 | `def` | [toQ](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/toq--7677dc4c15daf1860ba6d56f.md) | 275 | `declaration-track:7677dc4c15daf1860ba6d56f78495873fe597471f2060a8c17416f87ae5c12a1` |
| 45 | `theorem` | [toQ_zero](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/toq-zero--11349d2f7f2020330939d58f.md) | 282 | `result-track:11349d2f7f2020330939d58ff604dda520f118cd8174bb6750f8e5d0c1c9fac7` |
| 46 | `theorem` | [toQ_add](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/toq-add--df8eed720010dfee61d86b8d.md) | 285 | `result-track:df8eed720010dfee61d86b8d394563f6c9418db210a08202ebe2ff7f28ca0fcf` |
| 47 | `theorem` | [toQ_mul](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/toq-mul--446f20d4cb340fc22b3e2148.md) | 288 | `result-track:446f20d4cb340fc22b3e2148ada1035ca9ffb6438859f817f631f669fb91307f` |
| 48 | `theorem` | [toQ_natCast](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/toq-natcast--952a618035fa7d1805918242.md) | 291 | `result-track:952a618035fa7d18059182420c4f0366047c2c120d9a0438033d55e5a26d299b` |
| 49 | `theorem` | [toQ_ofNat](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/toq-ofnat--455f10aff2533b015eb0c75b.md) | 294 | `result-track:455f10aff2533b015eb0c75bf184a4d121f48b379069d2be581897fffc5cd06a` |
| 50 | `theorem` | [toQ_pow](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/toq-pow--85315bbecc53818de8c27040.md) | 297 | `result-track:85315bbecc53818de8c27040e18204c4cb23fddac143c8f799142d502f5f07f6` |
| 51 | `def` | [rel](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/rel--933c7e7e64db63e5dafa1f7f.md) | 307 | `declaration-track:933c7e7e64db63e5dafa1f7fc66f31cabd35d6805c24e71e36df68b74cf87db5` |
| 52 | `theorem` | [rel_rfl](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/rel-rfl--c338e252ec3c88812dc8e9aa.md) | 315 | `result-track:c338e252ec3c88812dc8e9aa3adbd5cad54defa2b40d1170db0193d187085a57` |
| 53 | `theorem` | [helper](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/helper--f96254828efd7cbe07a18539.md) | 319 | `result-track:f96254828efd7cbe07a1853940a18bdb4abfe1b6546c04ca953ec721942351e6` |
| 54 | `theorem` | [Q.exact](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/q-exact--a9b5e214f2291129765f3716.md) | 322 | `result-track:a9b5e214f2291129765f37169fd39fb394fb2827d9c244506749e918bed9f407` |
| 55 | `theorem` | [toQ_inj](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/toq-inj--9ef8f2d52888005c8aea2abf.md) | 327 | `result-track:9ef8f2d52888005c8aea2abf61ea89e612f693af83d6e226177cbe5cd564026f` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--3daaff220574eec2dd3b29d7.md) | 334 | `declaration-track:3daaff220574eec2dd3b29d749c8188eb83e9c8a8342bcda6eb8afa0c69bccf4` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--8f6cf985bab1aa00a279b42e.md) | 350 | `declaration-track:8f6cf985bab1aa00a279b42e3faff4aed7096ccd6dcf861c8c34c7c66ba5b8b0` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--a4fa59e41b34b45ad381a604.md) | 370 | `declaration-track:a4fa59e41b34b45ad381a60453a241776c85a93ec6d553d7e081e665c065d7c4` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--1da02046a28c67a0fd0e0ea1.md) | 386 | `declaration-track:1da02046a28c67a0fd0e0ea187985e7835636f7b7db56c0fb0491b62f0c19b2f` |
| 60 | `theorem` | [mk_le_mk](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/mk-le-mk--a911fe00a06a54328bf53687.md) | 389 | `result-track:a911fe00a06a54328bf536875b67945416be7352a2d016fa7dc768b5a8e2c6f0` |
| 61 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--78331233bb8cc48ad1ea06c3.md) | 393 | `declaration-track:78331233bb8cc48ad1ea06c36fc7b75d22aa1512f43bdb70e4d918a310c0000a` |
| 62 | `theorem` | [mk_lt_mk](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/mk-lt-mk--6359e1cf4713966b223613f3.md) | 412 | `result-track:6359e1cf4713966b223613f3e7ac742cde2d20b3007d3b526478fcc0ca04232c` |
| 63 | `theorem` | [mk_pos](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/mk-pos--910c1e098bca315387e9fcf8.md) | 416 | `result-track:910c1e098bca315387e9fcf8dd772db7ccef468b85282af79baddee6418856a7` |
| 64 | `theorem` | [toQ_le](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/toq-le--90a12635c77b4416e1afcefd.md) | 421 | `result-track:90a12635c77b4416e1afcefddae205d8df326e7776c4799781c9485093ffe7d9` |
| 65 | `theorem` | [toQ_lt](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/toq-lt--354bdf0b6cf0d808f9df282f.md) | 425 | `result-track:354bdf0b6cf0d808f9df282f480c22e6a54983d37b87743f90489e06305f8f5d` |
| 66 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--d714f79e71e21192c724262d.md) | 428 | `declaration-track:d714f79e71e21192c724262dd4bb2dd0d2d2680f87a30ccfc5d87c8fb798c916` |
| 67 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--1798a932bcc3bdd4ba8404e1.md) | 442 | `declaration-track:1798a932bcc3bdd4ba8404e1c5d63b04beeb65ab64a0941083b3508dfa4c2cdc` |
| 68 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--b2ee5877872bb753ea05b4e7.md) | 492 | `declaration-track:b2ee5877872bb753ea05b4e7ed11f4aa16278370aa6406a8166fba3b6c58e842` |
| 69 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--a9f6311b4004275604cfbbbf.md) | 494 | `declaration-track:a9f6311b4004275604cfbbbf64c937d10fa303899c60eacaed7fc64e1838b844` |
| 70 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--4bebe88adffd71a29355128f.md) | 496 | `declaration-track:4bebe88adffd71a29355128f776b39e0d790e4e22c9c357cdd56f5a97ffaf296` |
| 71 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--00ffc590135da7f9f30176fc.md) | 498 | `declaration-track:00ffc590135da7f9f30176fcf79c2b4cb2a40e8926296f1b2e06e310c0165be7` |
| 72 | `theorem` | [mul_comm](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/mul-comm--7bfb370e762004bfa5127bc4.md) | 505 | `result-track:7bfb370e762004bfa5127bc4e337b6259f5b1f15db6bced8abdfdf2ca1eadd7d` |
| 73 | `def` | [ofCommSemiring](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/ofcommsemiring--73edd7185e24204baac4892d.md) | 511 | `declaration-track:73edd7185e24204baac4892dab6f6b75e4ad029f014206764bfa0094f4afa2d8` |
| 74 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--9eeb03b1f32c7dc19b55860d.md) | 516 | `declaration-track:9eeb03b1f32c7dc19b55860db22d4035a8cf57cc4e360ce39c5688b610bc639f` |
| 75 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--4f0078651ac17726051b6696.md) | 517 | `declaration-track:4f0078651ac17726051b66960feeff9d225e8bc9ed350e01a794ed42d2182197` |
| 76 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--782d70ba00f004c3c90c8d44.md) | 518 | `declaration-track:782d70ba00f004c3c90c8d4408d17f7eb0bda61abdd22abf274352479e5136c3` |
| 77 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--f80b821014118a19d699ef98.md) | 519 | `declaration-track:f80b821014118a19d699ef989781bf0af8bf71d5341274f210ebd7ce8b2f17ca` |
| 78 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--4f790d1fdca2c3e878e09558.md) | 520 | `declaration-track:4f790d1fdca2c3e878e095582f4bdf458655674c71f1333c064ff6ee44dcbf16` |
| 79 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--de2187e087437bc5fe650462.md) | 522 | `declaration-track:de2187e087437bc5fe650462308ba6bc68b0e318b2b5de6a0221f72685e09de0` |
| 80 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--ce567053769890209eb5557d.md) | 523 | `declaration-track:ce567053769890209eb5557d6eb510e05c4d4f457fa42d713a2c025b42220227` |
| 81 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/instance--f85939f2080879dfc69b69f9.md) | 524 | `declaration-track:f85939f2080879dfc69b69f931ae298fb26ecc12b95f2408a565d4f3fc6ef0ea` |
| 82 | `def` | [toQUnexpander](../../../../mathematics/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/declarations/toqunexpander--fed205a37fbb5571100e7b1d.md) | 532 | `declaration-track:fed205a37fbb5571100e7b1db7405229303b21158bc9d93b95d4f8cf0711372d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
