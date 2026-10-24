# Verification target: GRWTSK.Algebra.FieldNormNum.Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f72e8e4a907c171d42170bd1318acb4f0862ff7f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f72e8e4a907c171d42170bd1318acb4f0862ff7f`.

Source path: `GRWTSK/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Rat.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ofRat](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat--020f1bac4a9eab05d8b17d29.md) | 18 | `declaration-track:020f1bac4a9eab05d8b17d29fa2345cd2499f972c393ed4f57fdd9eaf6f050f3` |
| 2 | `theorem` | [dvd_helper₁](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/dvd-helper--f26a832f4e25e8831a18ec09.md) | 25 | `result-track:f26a832f4e25e8831a18ec09c6e8e123fb823aeda61af615c8acff58da123cce` |
| 3 | `theorem` | [dvd_helper₂](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/dvd-helper--bf3ac71ce7add8271a9dae38.md) | 27 | `result-track:bf3ac71ce7add8271a9dae382efaf9b568bf5f5580ab3aba861419a8a6f188ea` |
| 4 | `theorem` | [nonzero_helper](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/nonzero-helper--a50ed47b417ee15f0ead455f.md) | 30 | `result-track:a50ed47b417ee15f0ead455fa47f98ad8241065a3f3d5cc7532cf41bddc9b428` |
| 5 | `theorem` | [ofRat_add'](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-add--26d076bee9e4938a890f1957.md) | 42 | `result-track:26d076bee9e4938a890f1957f3a77827db1216a0016e4a85a84ba496c40effb9` |
| 6 | `theorem` | [ofRat_mul'](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-mul--b9f59f7c6e8aabd8397caad1.md) | 53 | `result-track:b9f59f7c6e8aabd8397caad11609209c0fdd23071f582627f5806d55045f1a6f` |
| 7 | `theorem` | [ofRat_add](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-add--d4ccfd0ed479cdca5706e38a.md) | 63 | `result-track:d4ccfd0ed479cdca5706e38a83e10c1dcd4e54be5bc022f9b32fe637f5ab8e10` |
| 8 | `theorem` | [ofRat_mul](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-mul--def7392aea22bbed3957c3f4.md) | 67 | `result-track:def7392aea22bbed3957c3f43e9143ae242daf1b95487e106f846dbfbe7048e6` |
| 9 | `theorem` | [ofRat_inv](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-inv--22d162cc25a6d0bfe2504a7a.md) | 70 | `result-track:22d162cc25a6d0bfe2504a7add1d38c438960ac2ec1c256a196fd725f3997354` |
| 10 | `theorem` | [ofRat_div'](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-div--39c9f573c3b69e1e0dcbad68.md) | 87 | `result-track:39c9f573c3b69e1e0dcbad68b147b97040c28f4fe44fe2c29639769642cf8ed8` |
| 11 | `theorem` | [ofRat_div](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-div--0c285731a17bc216b2c8eaf2.md) | 101 | `result-track:0c285731a17bc216b2c8eaf224d124a98668813eef3285fe023faf1a4e18cf1f` |
| 12 | `theorem` | [ofRat_neg](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-neg--8783e40c6beb1b417df3aa2d.md) | 104 | `result-track:8783e40c6beb1b417df3aa2de9e61e9b14dbfab6186d97ac320e68644a0e373e` |
| 13 | `theorem` | [ofRat_sub'](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-sub--22eb068c5aa839a2ed0e80c1.md) | 107 | `result-track:22eb068c5aa839a2ed0e80c13079d8dee47c0371933ba29987087f15fc4134bc` |
| 14 | `theorem` | [ofRat_sub](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-sub--a3578fa141970ee247509176.md) | 112 | `result-track:a3578fa141970ee2475091763e59a158cff6ff8afbbf519f0f2f82e906f4cef7` |
| 15 | `theorem` | [ofRat_npow'](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-npow--c77bf65dcee6c8004a9949a7.md) | 116 | `result-track:c77bf65dcee6c8004a9949a7438f532bc6aa6de75b06e558374b8a28ecfe7c04` |
| 16 | `theorem` | [ofRat_npow](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-npow--5c0532a3ae6dbdd538f790de.md) | 136 | `result-track:5c0532a3ae6dbdd538f790de0886d04ce295002f971cfebd2f67c29fbd62188d` |
| 17 | `theorem` | [ofRat_zpow'](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-zpow--ce4284b7e7be9f42eb4189d9.md) | 141 | `result-track:ce4284b7e7be9f42eb4189d9654f66781111b70beca401ad2ecd875daae0c054` |
| 18 | `theorem` | [ofRat_zpow](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofrat-zpow--0662ab50320b105bb6fe78c9.md) | 150 | `result-track:0662ab50320b105bb6fe78c9d223be151665d8d369a8360a85e15d51ebed4ec1` |
| 19 | `theorem` | [natCast_eq](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/natcast-eq--98786204dd1c7ab88a5ef381.md) | 159 | `result-track:98786204dd1c7ab88a5ef381e796662a5a467b923acddbc7e4744c9d333d832b` |
| 20 | `theorem` | [ofNat_eq](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/ofnat-eq--e32e4b75d8b786a5e652eac6.md) | 163 | `result-track:e32e4b75d8b786a5e652eac6a2dda9988d449d876e142640b6f085dc0d3c77c7` |
| 21 | `theorem` | [intCast_eq](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/intcast-eq--a5bb68194bb6e0e21ba5d0a8.md) | 167 | `result-track:a5bb68194bb6e0e21ba5d0a8804e1d1239dd2e9b9e0fc346bffe95d8d669f487` |
| 22 | `theorem` | [add_eq](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/add-eq--e07bc7e055c0c03254c662bf.md) | 170 | `result-track:e07bc7e055c0c03254c662bf101bc9793ef53afe65b5fc010fecbc3012ff57ac` |
| 23 | `theorem` | [sub_eq](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/sub-eq--9762fbb34038ed033a3ced17.md) | 174 | `result-track:9762fbb34038ed033a3ced177835729fa819abe5770efc875ae7174034f31abf` |
| 24 | `theorem` | [mul_eq](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/mul-eq--f056407e38a11887b6be8444.md) | 178 | `result-track:f056407e38a11887b6be84445bfe99f9e80d17f91e9db307b32c2c0fa9e8145c` |
| 25 | `theorem` | [div_eq](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/div-eq--026889b97fc8be7f81226d20.md) | 182 | `result-track:026889b97fc8be7f81226d2029352193aa83cd9b9913f045551028d5cbfbc108` |
| 26 | `theorem` | [inv_eq](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/inv-eq--751b453ea666781e50639582.md) | 186 | `result-track:751b453ea666781e506395823e93cc43ef8bb2bb84155b2853178699c4d1f314` |
| 27 | `theorem` | [neg_eq](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/neg-eq--7a9bc5cb36fe7bd2344c7a28.md) | 190 | `result-track:7a9bc5cb36fe7bd2344c7a28115c23812b62d2cd0c08cbcc876b145cd75da888` |
| 28 | `theorem` | [npow_eq](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/npow-eq--b932b15e3d0e0ed68b195e3c.md) | 194 | `result-track:b932b15e3d0e0ed68b195e3cd469139b48ea062e6cdac500872e5a57db9a4c50` |
| 29 | `theorem` | [zpow_eq](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/zpow-eq--207c3a1bf4b4aa636b75837a.md) | 198 | `result-track:207c3a1bf4b4aa636b75837a9a11cf9ecb05dd50daf5d550e5c694f07300540a` |
| 30 | `theorem` | [eq_int](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/eq-int--41b0947f9751508ee415c94e.md) | 202 | `result-track:41b0947f9751508ee415c94ecb7c608c48b0e1599a4e48b747bbea809c232886` |
| 31 | `theorem` | [eq_inv](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/eq-inv--851e17a4881883a6dc0e4e85.md) | 209 | `result-track:851e17a4881883a6dc0e4e855a106377a67515765d99ad59b124fcf6799acfd9` |
| 32 | `theorem` | [eq_mul_inv](../../../../mathematics/Algebra/FieldNormNum/Variantb6f3473083b788d4f38bb3f41f53a3dbeea2683b3d8f204fb5d8eb54fb30b190.lean/declarations/eq-mul-inv--52440abaa5402934c6d79528.md) | 216 | `result-track:52440abaa5402934c6d79528bdd1dfcd02f719d34d26a32a154b492e723ca7e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
