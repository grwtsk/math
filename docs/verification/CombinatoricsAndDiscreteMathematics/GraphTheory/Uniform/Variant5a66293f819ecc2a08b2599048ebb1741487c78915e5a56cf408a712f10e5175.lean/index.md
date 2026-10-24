# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Uniform.Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86904fccffce121f4229d3abdb339d762c22d895",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86904fccffce121f4229d3abdb339d762c22d895`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isuniform--075a34ab6f4c78aa28c50d4a.md) | 69 | `declaration-track:075a34ab6f4c78aa28c50d4a571219f14f521c0fcb860a845b1cfcf7f0fda04a` |
| 2 | `theorem` | [IsUniform.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isuniform-mono--a6dad0565794eb8e2912c8b0.md) | 76 | `result-track:a6dad0565794eb8e2912c8b068611045b4151745800d90017d08c0ddfe88fa79` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/instance--98c59ab2f383abbf88a2f2e6.md) | 81 | `declaration-track:98c59ab2f383abbf88a2f2e6c95ad9b8ba0d10adf39d49bbb7f857797a58deb0` |
| 4 | `theorem` | [IsUniform.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isuniform-symm--e657e9ebced6ead4894e00be.md) | 87 | `result-track:e657e9ebced6ead4894e00be76a1a6f81ef23032a0420895dc9e116beaa7421f` |
| 5 | `theorem` | [isUniform_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isuniform-comm--793537f7167e59cc4fccf728.md) | 93 | `result-track:793537f7167e59cc4fccf72855544ce3ea0c1d663bd8b17689b1b97e93cb01ef` |
| 6 | `lemma` | [isUniform_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isuniform-one--80c55372d6d50c85bff3df77.md) | 96 | `result-track:80c55372d6d50c85bff3df77bb9eb442476df282a5ce233a20b0950a99c7d4de` |
| 7 | `lemma` | [IsUniform.pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isuniform-pos--1e9978025d69de51e9824301.md) | 105 | `result-track:1e9978025d69de51e98243015d5cb9f1bd12942ed20fa5d881179f2d027ca206` |
| 8 | `lemma` | [isUniform_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isuniform-singleton--ae2aefcd95f8d7c032e8ae80.md) | 110 | `result-track:ae2aefcd95f8d7c032e8ae802a0b38c6b2780c668b24c497c22678e9618c0063` |
| 9 | `theorem` | [not_isUniform_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/not-isuniform-zero--88968455270c5fe51cda1b59.md) | 121 | `result-track:88968455270c5fe51cda1b59712925f90cd45d59ea35dd376e114b166872b6b8` |
| 10 | `theorem` | [not_isUniform_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/not-isuniform-iff--89948f6b73b1d4a32fcedc60.md) | 124 | `result-track:89948f6b73b1d4a32fcedc6056e26a9946416e3b0b3199547e10abc65b1a40b1` |
| 11 | `def` | [nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/nonuniformwitnesses--bba1465ad716a1dbd62640ef.md) | 135 | `declaration-track:bba1465ad716a1dbd62640ef2b501ab220efdbb99dd05c10ad94e66f3b546f49` |
| 12 | `theorem` | [left_nonuniformWitnesses_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/left-nonuniformwitnesses-subset--56fce96a023ab479d6715eef.md) | 140 | `result-track:56fce96a023ab479d6715eef3cb4d9f1a722c72d2015465fae21a7b23c5c4bb1` |
| 13 | `theorem` | [left_nonuniformWitnesses_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/left-nonuniformwitnesses-card--b1d04780b9fdd0d2eb03faf9.md) | 145 | `result-track:b1d04780b9fdd0d2eb03faf930011ddb184110701e5d3ae98f89e9458d1b3285` |
| 14 | `theorem` | [right_nonuniformWitnesses_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/right-nonuniformwitnesses-subset--317f3f97fd1992e151c7fdb3.md) | 150 | `result-track:317f3f97fd1992e151c7fdb3d130c24660a94d2ddbd39ed18482516ce53680cb` |
| 15 | `theorem` | [right_nonuniformWitnesses_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/right-nonuniformwitnesses-card--45eb7a6e0caefe21e2f2ed84.md) | 155 | `result-track:45eb7a6e0caefe21e2f2ed8461723dde2d28f0a282d89683a6cc81fe51c07351` |
| 16 | `theorem` | [nonuniformWitnesses_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/nonuniformwitnesses-spec--43428cccae1222254c4f44db.md) | 160 | `result-track:43428cccae1222254c4f44dbec913b22fddb3b3900773843f47b19ce6dfab9e3` |
| 17 | `def` | [nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/nonuniformwitness--63b381792c49b1efe2781a24.md) | 171 | `declaration-track:63b381792c49b1efe2781a245f143f61b9cdc05dcad9d0f2db12699b0fc5b30d` |
| 18 | `theorem` | [nonuniformWitness_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/nonuniformwitness-subset--06e37228f4d0265c4556b06a.md) | 174 | `result-track:06e37228f4d0265c4556b06aaddf2fca69e8519c043cfca457e56fed0dd9f68d` |
| 19 | `theorem` | [le_card_nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/le-card-nonuniformwitness--b64f1a644e9ede5493b5280b.md) | 180 | `result-track:b64f1a644e9ede5493b5280bfaaa3993e5193202fdbfb1cac7c54c3d1f9f3b12` |
| 20 | `theorem` | [nonuniformWitness_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/nonuniformwitness-spec--443d896aa55b46a385c31e54.md) | 187 | `result-track:443d896aa55b46a385c31e54fd14221ec3b21f49d7a24547689b65508b1fdef5` |
| 21 | `def` | [sparsePairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/sparsepairs--64c804557fa1f63a39105fbe.md) | 209 | `declaration-track:64c804557fa1f63a39105fbe9e55ee4e2a689606ab713b95f1bf44ac03836fa8` |
| 22 | `lemma` | [mk_mem_sparsePairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/mk-mem-sparsepairs--c23f6cf6769b7fe527ebe80d.md) | 214 | `result-track:c23f6cf6769b7fe527ebe80d2933fea46aadfdd8ed1f133959176b134dff05d9` |
| 23 | `lemma` | [sparsePairs_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/sparsepairs-mono--d7ee134440a3a98b6c61b5d0.md) | 219 | `result-track:d7ee134440a3a98b6c61b5d0dca4b49fde0664266ac0836d37e38601108ac58a` |
| 24 | `def` | [nonUniforms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/nonuniforms--9ec2dce0f40aa212b50f6a01.md) | 224 | `declaration-track:9ec2dce0f40aa212b50f6a010ae5986b353c02904aff95f1ef14467e8103e424` |
| 25 | `lemma` | [mk_mem_nonUniforms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/mk-mem-nonuniforms--877662138d842f33759bf23c.md) | 228 | `result-track:877662138d842f33759bf23c6a0056e06e3d2f47e221b876e229285edab4f421` |
| 26 | `theorem` | [nonUniforms_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/nonuniforms-mono--1cf743d7787a78c99f6105eb.md) | 232 | `result-track:1cf743d7787a78c99f6105ebb282d895e0f895ef9f03354af7feb0d977211246` |
| 27 | `theorem` | [nonUniforms_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/nonuniforms-bot--8f6cd99b5db686787a81e145.md) | 235 | `result-track:8f6cd99b5db686787a81e1450e2d9e5e1e823dfb54fa23b71b86877ceda8fb34` |
| 28 | `def` | [IsUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isuniform--faae0441c10e3b85218fea6a.md) | 245 | `declaration-track:faae0441c10e3b85218fea6afc5df1ff86a5e8dfbd76edab2bc2f3c5595a9532` |
| 29 | `lemma` | [bot_isUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/bot-isuniform--615f0bd808de6b81bf546a4e.md) | 248 | `result-track:615f0bd808de6b81bf546a4ea3785d33ec67c28a0f0505bcd4c1e34fc293abfe` |
| 30 | `lemma` | [isUniform_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isuniform-one--849fbd189c286a7cef3947b7.md) | 253 | `result-track:849fbd189c286a7cef3947b73de236c9d1296b5c1965b7ff2f14ea7fb588d782` |
| 31 | `theorem` | [IsUniform.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isuniform-mono--1bc03683207ea77b6b093811.md) | 261 | `result-track:1bc03683207ea77b6b093811302552ac07aa7205dbb96c1510d5a56cd0efed40` |
| 32 | `theorem` | [isUniformOfEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isuniformofempty--cc8437d3dcd645eb93e8db60.md) | 265 | `result-track:cc8437d3dcd645eb93e8db60ea4cfab978dfb4a47efe5eb62a3f42102a61beb9` |
| 33 | `theorem` | [nonempty_of_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/nonempty-of-not-uniform--711c7b31783b8424a9b27537.md) | 269 | `result-track:711c7b31783b8424a9b27537d4f19d975ae4ed932583c759e2beb4928ed892cc` |
| 34 | `def` | [nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/nonuniformwitnesses--63e7e02a67d5552c763870ff.md) | 275 | `declaration-track:63e7e02a67d5552c763870ff1f8e3edf27cfbb505529af3cae30c39fe8de9364` |
| 35 | `lemma` | [card_nonuniformWitnesses_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/card-nonuniformwitnesses-le--375c54a35ede24ffdef6b9d3.md) | 280 | `result-track:375c54a35ede24ffdef6b9d3bbc1879171aba0cf15a698002a0087a48cc386c4` |
| 36 | `theorem` | [nonuniformWitness_mem_nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/nonuniformwitness-mem-nonuniformwitnesses--6ef1bf7e7e7ed052b54fdf83.md) | 283 | `result-track:6ef1bf7e7e7ed052b54fdf83259577a4444acca1337168c552774804128d3c02` |
| 37 | `lemma` | [IsEquipartition.card_interedges_sparsePairs_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isequipartition-card-interedges-sparsepairs-le--03b83a2cf9513b3a7cab7a8c.md) | 290 | `result-track:03b83a2cf9513b3a7cab7a8cefdfe5aedd3dec4382cae9c5f9a28441951f02f2` |
| 38 | `lemma` | [IsEquipartition.card_interedges_sparsePairs_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isequipartition-card-interedges-sparsepairs-le--76a728f4126e9b07a02d30d4.md) | 319 | `result-track:76a728f4126e9b07a02d30d4570fc24695aedc543325ed00d960f06c9f224e38` |
| 39 | `lemma` | [aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/aux--fca0aa23330f80c847368089.md) | 326 | `result-track:fca0aa23330f80c8473680896a847c196933723b76702e46261832ca30724b8a` |
| 40 | `lemma` | [IsEquipartition.card_biUnion_offDiag_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isequipartition-card-biunion-offdiag-le--acf9cabb68d288a499d3f48c.md) | 334 | `result-track:acf9cabb68d288a499d3f48c757afdabc150783ec67d5c18b42e7b488e031177` |
| 41 | `lemma` | [IsEquipartition.card_biUnion_offDiag_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isequipartition-card-biunion-offdiag-le--ac727f11add8c6b5b3795096.md) | 352 | `result-track:ac727f11add8c6b5b37950965bf304e47041314cb5bd9039be1c8e292bc1092f` |
| 42 | `lemma` | [IsEquipartition.sum_nonUniforms_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isequipartition-sum-nonuniforms-lt--246d036e629b0d5a6b0201df.md) | 368 | `result-track:246d036e629b0d5a6b0201dffc8cc7caaea884a1e977ed9c887355d47d6bb61a` |
| 43 | `lemma` | [IsEquipartition.sum_nonUniforms_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/isequipartition-sum-nonuniforms-lt--3c95e64050d6b97be8918b3b.md) | 387 | `result-track:3c95e64050d6b97be8918b3bc5e6a41135ec9f7e24ff56ee00c0657a4ab13b33` |
| 44 | `def` | [regularityReduced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/regularityreduced--4890c96d02757b93bb9f0f5d.md) | 405 | `declaration-track:4890c96d02757b93bb9f0f5d73a3a48d48e327713467dfb0de8e721361b13b68` |
| 45 | `instance` | [regularityReduced.instDecidableRel_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/regularityreduced-instdecidablerel-adj--acadb82aaa6cc53faa27543f.md) | 413 | `declaration-track:acadb82aaa6cc53faa27543ff7e8ab4fa69dce3179ef5954980da07474f5eaed` |
| 46 | `lemma` | [regularityReduced_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/regularityreduced-le--ea5aea5342ac4e117740dc79.md) | 419 | `result-track:ea5aea5342ac4e117740dc79aa581e51ca1520bf1cf8153bcde37b80a4070aaa` |
| 47 | `lemma` | [regularityReduced_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/regularityreduced-mono--db079d1f23a96661056cd587.md) | 421 | `result-track:db079d1f23a96661056cd587844c44981b43ff8e4dbaf3ae5c5c56b4c0f1ce56` |
| 48 | `lemma` | [regularityReduced_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/regularityreduced-anti--c3e470aba8792992486171ed.md) | 427 | `result-track:c3e470aba8792992486171ede17560c29f8c2fec211f315ad08bb2ef505a5ecd` |
| 49 | `lemma` | [unreduced_edges_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant5a66293f819ecc2a08b2599048ebb1741487c78915e5a56cf408a712f10e5175.lean/declarations/unreduced-edges-subset--ac237bc42c091c85120fb77d.md) | 433 | `result-track:ac237bc42c091c85120fb77df9065aaaca2288f3e97511cbfdb0c329beeb34d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
