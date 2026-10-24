# Verification target: GRWTSK.Algebra.LinearAlgebra.VecNotation.Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ffc3ff2cbea383e55ad6a2d352503a3cf50cd39",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ffc3ff2cbea383e55ad6a2d352503a3cf50cd39`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vecEmpty](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vecempty--78251ea44734b41640ed97f0.md) | 55 | `declaration-track:78251ea44734b41640ed97f04cb879acedeec9bc0fe611f9cdff22ed519f0529` |
| 2 | `def` | [vecCons](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/veccons--ce762142d8037e41c4e73c59.md) | 63 | `declaration-track:ce762142d8037e41c4e73c592ef12c61b6dfc45e6782838adf74fbcc6640b26f` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/syntax--f28fbb355fdba5c0e2a56afa.md) | 74 | `declaration-track:f28fbb355fdba5c0e2a56afad4a4ee18ae25c4ffafb2a06f80befc39f2bc0c8b` |
| 4 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/macro-rules--fe00824e83e9547c0048001a.md) | 76 | `declaration-track:fe00824e83e9547c0048001ac2c62487c7a4579165a79f43fc5dfa9300af7f37` |
| 5 | `def` | [vecConsUnexpander](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vecconsunexpander--1d0bdcdf968fd37226d0ea0b.md) | 83 | `declaration-track:1d0bdcdf968fd37226d0ea0b2f37a44db6e4c9456106147996702c569ca82325` |
| 6 | `def` | [vecEmptyUnexpander](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vecemptyunexpander--fdbf59a6bd6164d2467d333a.md) | 91 | `declaration-track:fdbf59a6bd6164d2467d333aec26320c6d0ddf2c18d484c53602f69dc01ebf6a` |
| 7 | `def` | [vecHead](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vechead--4fb7daa8c4dfbc4377980991.md) | 96 | `declaration-track:4fb7daa8c4dfbc437798099155196cc9587774f8a4cae324f8c93c6f8becaac1` |
| 8 | `def` | [vecTail](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vectail--9ff262760a82dcd3a343999c.md) | 100 | `declaration-track:9ff262760a82dcd3a343999c660aab7d800792bfc14a3b357e7d4474d0420a23` |
| 9 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.VecEmpty.Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.PiFin.hasRepr](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/root-grwtsk-algebra-linearalgebra-vecempty-variant39fd12d19aa4fd2120eb21--c72ad05800df7c433fcb1011.md) | 111 | `declaration-track:c72ad05800df7c433fcb101153ea1e77e633e23d5a9ff7c82c427f584d299feb` |
| 10 | `theorem` | [empty_eq](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/empty-eq--d894544b842aaec1e135b149.md) | 120 | `result-track:d894544b842aaec1e135b149b9987c3a4f2f22a05d5c4e7a1d2fba5890ff1d89` |
| 11 | `theorem` | [head_fin_const](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/head-fin-const--4fc898055e271cf07c64b153.md) | 126 | `result-track:4fc898055e271cf07c64b153c6e1933f46d667709201ed01e17f9fa189fcf787` |
| 12 | `theorem` | [cons_val_zero](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-val-zero--b09200f85063ae37517c62a9.md) | 130 | `result-track:b09200f85063ae37517c62a9d34c6174895bbe876e588beb1f528314a26c87c0` |
| 13 | `theorem` | [cons_val_zero'](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-val-zero--268e4ea41a95f14f7c0cd0ba.md) | 133 | `result-track:268e4ea41a95f14f7c0cd0baef73bbdd55f2607fb5418ba0a07ef8e6eae432fd` |
| 14 | `theorem` | [cons_val_succ](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-val-succ--18094afcbba55ed46de7c956.md) | 137 | `result-track:18094afcbba55ed46de7c956ca8b5fd3663afa8ced0f2b56dd36bbe163149799` |
| 15 | `theorem` | [cons_val_succ'](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-val-succ--b9452f21641de8ff19db372d.md) | 141 | `result-track:b9452f21641de8ff19db372dcdb6db67a0a4fe72c5bc4495d487ec2a7fc42a5b` |
| 16 | `def` | [matchVecConsPrefix](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/matchvecconsprefix--d7d9965ac0ab49dfbcb32e4e.md) | 152 | `declaration-track:d7d9965ac0ab49dfbcb32e4e1fc30c48ef017dd7de2d6eec71a2b1fdc4d94985` |
| 17 | `theorem` | [head_cons](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/head-cons--9c22ddf06268fa6ffae0b2e5.md) | 198 | `result-track:9c22ddf06268fa6ffae0b2e5fefc1ca8f94f8bcb034d8c2aca73412d8014aec4` |
| 18 | `theorem` | [tail_cons](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/tail-cons--c0aa9143d10bdf8ab91c7bc2.md) | 202 | `result-track:c0aa9143d10bdf8ab91c7bc27b005395ea226fbee6b376b2885c77c78c9e8f93` |
| 19 | `theorem` | [empty_val'](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/empty-val--2d2174fb2453e9706e2f4872.md) | 206 | `result-track:2d2174fb2453e9706e2f48727b2192890656a553971cb8e99bb0b45d7167ee23` |
| 20 | `theorem` | [cons_head_tail](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-head-tail--2517bd254041ac0d83df36e2.md) | 210 | `result-track:2517bd254041ac0d83df36e2aebafc3435648d497ce6123b400a3f841ee3b884` |
| 21 | `theorem` | [range_cons](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/range-cons--77f3d964c702c5aec5167ebe.md) | 214 | `result-track:77f3d964c702c5aec5167ebe40c6bd70c4a5174c244c0f9b7785a3eac232e096` |
| 22 | `theorem` | [range_empty](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/range-empty--1c756a04de7a232e6492f1b1.md) | 218 | `result-track:1c756a04de7a232e6492f1b1750444423c576b5ae6b64a7fe401d6de97764906` |
| 23 | `theorem` | [range_cons_empty](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/range-cons-empty--adac698dff62ab8b95bfec87.md) | 221 | `result-track:adac698dff62ab8b95bfec87b2500bfe3720ba97d977fd97bef04880fe1934ab` |
| 24 | `theorem` | [range_cons_cons_empty](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/range-cons-cons-empty--dec55b08cc963f8b21ee0ebd.md) | 225 | `result-track:dec55b08cc963f8b21ee0ebdce867f1088228e3b5787a7a9bb46cc5dfcbd61ac` |
| 25 | `theorem` | [vecCons_const](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/veccons-const--f919cc4ef8c1425561e59c33.md) | 229 | `result-track:f919cc4ef8c1425561e59c334c9fd40fc52cd5fd92cb17a79a7a99d974e00961` |
| 26 | `theorem` | [vec_single_eq_const](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vec-single-eq-const--851e84fc8f02e7eede58a2d2.md) | 232 | `result-track:851e84fc8f02e7eede58a2d25b23b88e08f8773320017b464b1370853d61cfe3` |
| 27 | `theorem` | [cons_val_one](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-val-one--4ef35fe047e54bfa5c70f493.md) | 242 | `result-track:4ef35fe047e54bfa5c70f493bf58696f928ee85a37e3b2fab3ce7f325988474d` |
| 28 | `theorem` | [cons_val_two](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-val-two--ecb149787a500f76c354c59d.md) | 245 | `result-track:ecb149787a500f76c354c59d60492431b90cc22706fdea56b88c70949717a061` |
| 29 | `lemma` | [cons_val_three](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-val-three--3ac2ef163770fdb455bb6727.md) | 247 | `result-track:3ac2ef163770fdb455bb6727b5bda5e71b55a400ab7eefabc712ab469a5659c5` |
| 30 | `lemma` | [cons_val_four](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-val-four--377a5a65974c3cd36f4e775c.md) | 251 | `result-track:377a5a65974c3cd36f4e775ca8103814afa96589457b12e70e12f9a7a6f0fc81` |
| 31 | `theorem` | [cons_val_fin_one](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-val-fin-one--a4c25e75efe5e44b33bc6223.md) | 256 | `result-track:a4c25e75efe5e44b33bc62235684c2046c27ac0fb035080b332b7d5b5eea4d1e` |
| 32 | `theorem` | [cons_fin_one](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-fin-one--fa807e5716c12ecc73d56ae7.md) | 260 | `result-track:fa807e5716c12ecc73d56ae7be09106a4bad456384969ad32337ffac5bbd050e` |
| 33 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.VecEmpty.Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.PiFin.mkLiteralQ](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/root-grwtsk-algebra-linearalgebra-vecempty-variant39fd12d19aa4fd2120eb21--42f317c15a075887134edae7.md) | 265 | `declaration-track:42f317c15a075887134edae760beefcfd50fb7a2fbc8bf5e1975e544d4c402af` |
| 34 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.VecEmpty.Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.PiFin.toExpr](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/root-grwtsk-algebra-linearalgebra-vecempty-variant39fd12d19aa4fd2120eb21--dbfcc2d0ec5fa8bfb2ace545.md) | 277 | `declaration-track:dbfcc2d0ec5fa8bfb2ace5452f8ad30fd2a192aaecb79a213772fac46f0ba258` |
| 35 | `def` | [vecAppend](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vecappend--ff0d6e10e571cdb1d19cc140.md) | 300 | `declaration-track:ff0d6e10e571cdb1d19cc140e3dfc09930aeefc1c5339ebad76d62ff726b4547` |
| 36 | `theorem` | [vecAppend_eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vecappend-eq-ite--6d6e70eda90b26d03f38f3eb.md) | 303 | `result-track:6d6e70eda90b26d03f38f3eb889c50f76e491b69338b037ca930eed254dae265` |
| 37 | `theorem` | [vecAppend_apply_zero](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vecappend-apply-zero--9f8587fab9bb3ca06dd2265c.md) | 313 | `result-track:9f8587fab9bb3ca06dd2265ce44f0a02fe60c274d017bebff75e6654105f9f1d` |
| 38 | `theorem` | [empty_vecAppend](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/empty-vecappend--9696dde36248ae697a261ed0.md) | 318 | `result-track:9696dde36248ae697a261ed06da3d3f920d75adaaa3cbed30b6044051e94f419` |
| 39 | `theorem` | [cons_vecAppend](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-vecappend--01783d1d57d0d5086379f147.md) | 323 | `result-track:01783d1d57d0d5086379f1473c9034dab0cbd79354512c7bd6925f1a4e91bc29` |
| 40 | `def` | [vecAlt0](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vecalt0--4603a404b7d996d194ebd498.md) | 339 | `declaration-track:4603a404b7d996d194ebd4981b10a5d7c2e02da1d05208ae4384691e3046f942` |
| 41 | `def` | [vecAlt1](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vecalt1--8124ad61d94654a1dd701a99.md) | 343 | `declaration-track:8124ad61d94654a1dd701a992bd35b5d6d47052aa2d2cea8d2ef42361892582b` |
| 42 | `theorem` | [vecAlt0_vecAppend](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vecalt0-vecappend--1bed5c301abeb0aab690694d.md) | 348 | `result-track:1bed5c301abeb0aab690694d19580dd5a0301bdcdecf6774e6ec60745d8dd39c` |
| 43 | `theorem` | [vecAlt1_vecAppend](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vecalt1-vecappend--64a7e2d92dc76f8019e96c27.md) | 360 | `result-track:64a7e2d92dc76f8019e96c272a4c3dc0d3fc27da75db8361a6726f093306be17` |
| 44 | `theorem` | [vecHead_vecAlt0](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vechead-vecalt0--4a75585b80d0611da695088e.md) | 378 | `result-track:4a75585b80d0611da695088e99a8123ee37207cd8a994d2bd821a048ad82be86` |
| 45 | `theorem` | [vecHead_vecAlt1](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/vechead-vecalt1--933850200cbcbba92c59f455.md) | 383 | `result-track:933850200cbcbba92c59f455312cf4673f657a906afec8c1d33b2bf986f05b5e` |
| 46 | `theorem` | [cons_vec_bit0_eq_alt0](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-vec-bit0-eq-alt0--fe748fb526a430afeeb27e1b.md) | 386 | `result-track:fe748fb526a430afeeb27e1b6425250ba031e78ef12bcfde5ad149e7c8eb5048` |
| 47 | `theorem` | [cons_vec_bit1_eq_alt1](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-vec-bit1-eq-alt1--49f4c637acfc242c8d264da2.md) | 390 | `result-track:49f4c637acfc242c8d264da27015e51cd9b5ee347263b56e5599e74af3450665` |
| 48 | `theorem` | [cons_vecAlt0](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-vecalt0--cbe2d1d3f5685d6df7bff68d.md) | 397 | `result-track:cbe2d1d3f5685d6df7bff68d342f873ac8bfd23bd9951a64c1f410546ebfd941` |
| 49 | `theorem` | [empty_vecAlt0](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/empty-vecalt0--b944b95d021d27b611ef8f80.md) | 407 | `result-track:b944b95d021d27b611ef8f8084afd7bfc9dee05876d23db9742351e5b995a2fe` |
| 50 | `theorem` | [cons_vecAlt1](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/cons-vecalt1--e089254d3d1ed526b7d2cbb8.md) | 411 | `result-track:e089254d3d1ed526b7d2cbb81258e1725d987a2af9569ce18f6b15f9430b8597` |
| 51 | `theorem` | [empty_vecAlt1](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/empty-vecalt1--e63bc6ac44df37a7ec920789.md) | 420 | `result-track:e63bc6ac44df37a7ec920789c750607c3eeb39a040aed80dba429e0797b5c040` |
| 52 | `lemma` | [const_fin1_eq](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/declarations/const-fin1-eq--98457902773fb07a76b13c4d.md) | 425 | `result-track:98457902773fb07a76b13c4d055815f1aebda50d8add6830688a9e5b3eea7964` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
