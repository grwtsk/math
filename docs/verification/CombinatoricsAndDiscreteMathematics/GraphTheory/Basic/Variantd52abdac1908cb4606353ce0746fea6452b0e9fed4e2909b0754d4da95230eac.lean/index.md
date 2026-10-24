# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Basic.Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce12df52e0f7b8fdc5e281293ab8a0fa7fac5956",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce12df52e0f7b8fdc5e281293ab8a0fa7fac5956`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean.json)

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
| 1 | `structure` | [Digraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/digraph--583cb366aa9c3341e8310020.md) | 56 | `declaration-track:583cb366aa9c3341e83100203e88392a36f182aa789bbf0621227389721543dc` |
| 2 | `def` | [Digraph.mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/digraph-mk--9d8af71e8a107ed131f66fca.md) | 66 | `declaration-track:9d8af71e8a107ed131f66fcaea86d0a5146db4f3e76b39290a831850b2db0b8f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/instance--1dfc05cfab1935c72502343f.md) | 74 | `declaration-track:1dfc05cfab1935c72502343f2b04463efcf299f3a5efa272ce5e6b791eff952e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/instance--0c2be761d95d8c050db2c8ee.md) | 77 | `declaration-track:0c2be761d95d8c050db2c8ee6c225390e796085697f775aa5a57fca65148c0eb` |
| 5 | `def` | [completeDigraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/completedigraph--a31afda2e4e50f2257b6fc91.md) | 93 | `declaration-track:a31afda2e4e50f2257b6fc91273a8841a2b1b5d5dfb01354777d709667965181` |
| 6 | `def` | [emptyDigraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/emptydigraph--1285980e47c26d86c6d3440b.md) | 100 | `declaration-track:1285980e47c26d86c6d3440bedb333988b88daab2bfae27e08bbca58a3705c30` |
| 7 | `def` | [completeBipartiteGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/completebipartitegraph--d588a2fd61494de6a74547a3.md) | 108 | `declaration-track:d588a2fd61494de6a74547a393de78dae55ed8da626fcb8099589ce38b7ecb10` |
| 8 | `theorem` | [adj_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/adj-injective--47ea1e19a5ea861501b8fcd9.md) | 113 | `result-track:47ea1e19a5ea861501b8fcd98225e179db7a5521d9327f759c02aff1a3bc9ff2` |
| 9 | `theorem` | [adj_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/adj-inj--9cc32c3496c177d746d59bed.md) | 115 | `result-track:9cc32c3496c177d746d59bedfaa539e06bc3b561076cc7568a13630621400f7b` |
| 10 | `def` | [IsSubgraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/issubgraph--0a9bcdd7e5323833873f274b.md) | 123 | `declaration-track:0a9bcdd7e5323833873f274b50429dc6365498e08d2eabff582c7a4a8b0c1422` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/instance--2b70abc8ddbbadf4a8071123.md) | 127 | `declaration-track:2b70abc8ddbbadf4a8071123dc9b785cba447d1dff4e26e2d3810963391e04c4` |
| 12 | `theorem` | [isSubgraph_eq_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/issubgraph-eq-le--c0f08804e87cb211e0f8ea03.md) | 130 | `result-track:c0f08804e87cb211e0f8ea0314a2e4b4546737cf703bb3eb75c0606dd32ff3c0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/instance--23ea4a9f12e359ce7ce0a47f.md) | 133 | `declaration-track:23ea4a9f12e359ce7ce0a47f093cc5c526a957edc9eeebffe73d0b908d4b69cc` |
| 14 | `theorem` | [sup_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/sup-adj--2724586db8128e42a753c0bf.md) | 137 | `result-track:2724586db8128e42a753c0bfdd220b5fe02f06ebce39a38a795a0f7e5005c972` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/instance--8bcbeb5a2904d4095f75ded1.md) | 140 | `declaration-track:8bcbeb5a2904d4095f75ded1d7971f4a97088b38eca1a2b87cff3605d62edf9a` |
| 16 | `theorem` | [inf_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/inf-adj--fdabcf54a0654b7436e1f2a4.md) | 144 | `result-track:fdabcf54a0654b7436e1f2a423ff04273b5f8863969c03b21b1cbd45c423eb8a` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/instance--965166612ae023dd316bfe73.md) | 148 | `declaration-track:965166612ae023dd316bfe73f008af23c8c88afb7910c70afbcddc21754a9ca4` |
| 18 | `theorem` | [compl_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/compl-adj--1ee489f2a9b326df6b7d620d.md) | 151 | `result-track:1ee489f2a9b326df6b7d620d06b82a12bb8bb14a2f6361b9f2b953a9834dbdcd` |
| 19 | `instance` | [sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/sdiff--6d5dbb1816e26de08b0e4db9.md) | 154 | `declaration-track:6d5dbb1816e26de08b0e4db9a9b78870f84795f0927dba86973a353cf4b3efd1` |
| 20 | `theorem` | [sdiff_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/sdiff-adj--1324c642c5ea5a8c3f9bc38c.md) | 158 | `result-track:1324c642c5ea5a8c3f9bc38c4935252d4d2ab62947475ffa55d4901adf4ebee9` |
| 21 | `instance` | [supSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/supset--b3e00857e3a3f9aa132c44d7.md) | 160 | `declaration-track:b3e00857e3a3f9aa132c44d731c9734f41c85c39db703d0e6493b36761556c35` |
| 22 | `instance` | [infSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/infset--e0c6ac5e0cc300687eb91129.md) | 163 | `declaration-track:e0c6ac5e0cc300687eb911290dcf55f788e8782d4aa1edaa6df4253b841c5a5c` |
| 23 | `theorem` | [sSup_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/ssup-adj--fd6989bd519dec9a94643a5d.md) | 167 | `result-track:fd6989bd519dec9a94643a5d1f63c9d2b9a7f5220c4887cb9d503f33fdf82424` |
| 24 | `theorem` | [sInf_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/sinf-adj--7e7cdd646b57fde8b8ac1821.md) | 170 | `result-track:7e7cdd646b57fde8b8ac18213af91b4eace2b395e29b83a5d4d168c8c8367ed0` |
| 25 | `theorem` | [iSup_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/isup-adj--e6c7b1102bedc441efa01780.md) | 173 | `result-track:e6c7b1102bedc441efa0178089175eba2a30f7c69821e69e79cafc3a444f92fa` |
| 26 | `theorem` | [iInf_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/iinf-adj--cc49321a36f26aef69e69d42.md) | 176 | `result-track:cc49321a36f26aef69e69d42eceb0c20d1bd0e7cdbb20b0058b7c54e88b331ce` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/instance--8b83a203443c70a65cd3207e.md) | 178 | `declaration-track:8b83a203443c70a65cd3207e725a4fe495a56e27df22fb5a7e0ecd2dfce29255` |
| 28 | `instance` | [distribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/distriblattice--56fb87bafa1fb6528d6a1aef.md) | 180 | `declaration-track:56fb87bafa1fb6528d6a1aef63a230831e21f64f9e2590f0e61ddb0b7ebf93ba` |
| 29 | `instance` | [completeAtomicBooleanAlgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/completeatomicbooleanalgebra--f9ed3b0b3c86cd7e895a35b2.md) | 183 | `declaration-track:f9ed3b0b3c86cd7e895a35b2ccf677d50cbd3adeadc88adeb972590555472bc5` |
| 30 | `theorem` | [top_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/top-adj--61b90cec480b72d04b16af79.md) | 194 | `result-track:61b90cec480b72d04b16af79e1612abb12cad7648f545eccc7e587a5967f3e72` |
| 31 | `theorem` | [bot_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/bot-adj--0d4eec5a2df229239cc4509d.md) | 196 | `result-track:0d4eec5a2df229239cc4509db7f655480527bea70ede362a8e8e9f45ef478d68` |
| 32 | `theorem` | [completeDigraph_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/completedigraph-eq-top--b93d0e208401152cb1eba03c.md) | 198 | `result-track:b93d0e208401152cb1eba03cc7222f5b147d56497c92270448087e028816e0ec` |
| 33 | `theorem` | [emptyDigraph_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/emptydigraph-eq-bot--215cea6d704cc4463b2fa48e.md) | 200 | `result-track:215cea6d704cc4463b2fa48e6bac9ee296258e96dd89ec03da56ebc2e6e8e33b` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/instance--555450e6e1506eda8f9d06ea.md) | 202 | `declaration-track:555450e6e1506eda8f9d06eaed5f3201e2490840e71c6df2ef76397575e7ae72` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/instance--d52f2153e402ec00f938732f.md) | 204 | `declaration-track:d52f2153e402ec00f938732fecd46c646917ae15d7ff62d1ccd3da30da65285f` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/instance--b3885fc1633397574afabd52.md) | 208 | `declaration-track:b3885fc1633397574afabd52bcc23d2928467254c44ae175d7d65d2f8d30e9f2` |
| 37 | `instance` | [Bot.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/bot-adjdecidable--e3d5265f6a0f99906384753d.md) | 217 | `declaration-track:e3d5265f6a0f99906384753d9858a752b8091a8e47b6524879c39c0afecd2aca` |
| 38 | `instance` | [Sup.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/sup-adjdecidable--a764d165499fa999c8f152cf.md) | 220 | `declaration-track:a764d165499fa999c8f152cf1e8acddadef0d2963a092ea7170cb2573b53abf8` |
| 39 | `instance` | [Inf.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/inf-adjdecidable--11133144fb13e0ab96640fe1.md) | 223 | `declaration-track:11133144fb13e0ab96640fe1d0480dc473675e8ead2eee64741bdace4b05bbae` |
| 40 | `instance` | [SDiff.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/sdiff-adjdecidable--34de7931cfc3fa4483a69577.md) | 226 | `declaration-track:34de7931cfc3fa4483a6957704b17d2ade53f5de175189addd1fdd2d9ac74510` |
| 41 | `instance` | [Top.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/top-adjdecidable--40e0d63a79e8e71645b6f945.md) | 229 | `declaration-track:40e0d63a79e8e71645b6f945b6480017d8c1bfe6f3ba12ed022c21ba31f685f1` |
| 42 | `instance` | [Compl.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean/declarations/compl-adjdecidable--2ca1e400317ef851b6697560.md) | 232 | `declaration-track:2ca1e400317ef851b669756083604cbe948c3ed2c2ae9dc85698600f860a853c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
