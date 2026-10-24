# Verification target: GRWTSK.Algebra.Basic.Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a91a6baca9a7f54db0a38a5ef4d438baf70e259",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a91a6baca9a7f54db0a38a5ef4d438baf70e259`.

Source path: `GRWTSK/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [addCommSemigroup](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/addcommsemigroup--d585301c62936818eb003a03.md) | 40 | `declaration-track:d585301c62936818eb003a03a040a3adbeba2848622a7e7d212f77df3508bf82` |
| 2 | `instance` | [addCommMonoid](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/addcommmonoid--b49e62e2d38c10f9ae374c46.md) | 44 | `declaration-track:b49e62e2d38c10f9ae374c46fd6ee5447a09f4ff269c4bfecdb89b62471fca64` |
| 3 | `def` | [instAddMonoidWithOne](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/instaddmonoidwithone--ae941d6b2ce50d45826a9da1.md) | 63 | `declaration-track:ae941d6b2ce50d45826a9da1bd0f8dcea941227a6b100b99cbbe712db5fa81e8` |
| 4 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/addcommgroup--3b1d0c93a5340e542e7e85ab.md) | 75 | `declaration-track:3b1d0c93a5340e542e7e85abfd411e2633dbc676f997faf33bc44e75079faf3e` |
| 5 | `instance` | [instInvolutiveNeg](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/instinvolutiveneg--7c8d56d141968d8c85779454.md) | 88 | `declaration-track:7c8d56d141968d8c8577945466b37b806907defdebe0ced69cc64e74c16ab55e` |
| 6 | `instance` | [instIsCancelAdd](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/instiscanceladd--6e10f698c3ab75a33654f5ec.md) | 92 | `declaration-track:6e10f698c3ab75a33654f5ec743cf8c06a3770cc0dde56e074ead8dd5895a9c0` |
| 7 | `instance` | [instAddLeftCancelSemigroup](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/instaddleftcancelsemigroup--42e33a0b8e4593831431addd.md) | 97 | `declaration-track:42e33a0b8e4593831431addd13f7eb82c24eed7b17d8c727216c11c6b6394fab` |
| 8 | `instance` | [instAddRightCancelSemigroup](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/instaddrightcancelsemigroup--ebe7677b3f855b1a0f49f5a8.md) | 101 | `declaration-track:ebe7677b3f855b1a0f49f5a83c2c033102611386d6783785bdba0525b34cb3c5` |
| 9 | `theorem` | [intCast_def'](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/intcast-def--55e59bdfe8800fde209b6a3a.md) | 108 | `result-track:55e59bdfe8800fde209b6a3afc44070e048748c1633192c82e79d52cd4c2ac25` |
| 10 | `lemma` | [coe_sub_one](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/coe-sub-one--49e70de3d42c2eb9af1960cf.md) | 112 | `result-track:49e70de3d42c2eb9af1960cfc887ae84a007f43fcdbee1e285c50072a0a4fbb7` |
| 11 | `lemma` | [lt_sub_iff](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/lt-sub-iff--a2d33e91f5cde53001c8563d.md) | 120 | `result-track:a2d33e91f5cde53001c8563d81f3f4b8fda8f1caff4cca0404402d0faae05d63` |
| 12 | `lemma` | [sub_le_iff](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/sub-le-iff--96b519d0dfc1c0c343ab7ef7.md) | 124 | `result-track:96b519d0dfc1c0c343ab7ef75f96363ee67091ea259b15429001ffeb61f5eb0e` |
| 13 | `lemma` | [lt_one_iff](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/lt-one-iff--1e7799dcf3609ecf37dff5b4.md) | 128 | `result-track:1e7799dcf3609ecf37dff5b45c3d981f0374da8aee6e43234cdd7bfc434e6188` |
| 14 | `lemma` | [lt_sub_one_iff](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/lt-sub-one-iff--13517034aa108e940378c096.md) | 131 | `result-track:13517034aa108e940378c096860fb26dcad356a5b544cd0dcc941b1f905b30cb` |
| 15 | `lemma` | [le_sub_one_iff](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/le-sub-one-iff--5a1055684dedfdc446565492.md) | 134 | `result-track:5a1055684dedfdc446565492e7d5d7ba3891483e10985d61fccbc7fff2eff783` |
| 16 | `lemma` | [sub_one_lt_iff](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/sub-one-lt-iff--e08908b8a70e0fa344f5ab34.md) | 140 | `result-track:e08908b8a70e0fa344f5ab34e5f8f88ca8e4b276ead1bff1cd4d8f787471d1e9` |
| 17 | `lemma` | [neg_last](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/neg-last--8b79ad96f5d74e5f904589d8.md) | 143 | `result-track:8b79ad96f5d74e5f904589d8721ac1390891cc16ba563b10073c5f801e24cac9` |
| 18 | `lemma` | [neg_natCast_eq_one](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/neg-natcast-eq-one--9175e022d24ef71f3c35e671.md) | 146 | `result-track:9175e022d24ef71f3c35e671f78f05b34302844091ec9445eb87078ffdf4fc56` |
| 19 | `lemma` | [rev_add](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/rev-add--ef7c76dab7203e6c408c9a8f.md) | 149 | `result-track:ef7c76dab7203e6c408c9a8fdb0b269e6cdcb6ad42d62bbff96a5166c7d68342` |
| 20 | `lemma` | [rev_sub](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/rev-sub--07734f50d4dcfb6a0217242e.md) | 154 | `result-track:07734f50d4dcfb6a0217242e16fdffaaf487c1ad77161d7a927c728f7a2b6e5f` |
| 21 | `lemma` | [lt_add_one_of_succ_lt](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/lt-add-one-of-succ-lt--fb9e41f49271c9c95856fff5.md) | 157 | `result-track:fb9e41f49271c9c95856fff50f3247cfd6a507def13f86085d5f6e66ba4eaf86` |
| 22 | `lemma` | [add_lt_left_iff](../../../../mathematics/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/declarations/add-lt-left-iff--97dee3b5e52a43fa723d60c7.md) | 161 | `result-track:97dee3b5e52a43fa723d60c7937af46df9743a45009321da2032f9931fdfdf13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
