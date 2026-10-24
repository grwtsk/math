# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Uniform.Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d2e41fc81283a95f539265b839889245e9cdaa5",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d2e41fc81283a95f539265b839889245e9cdaa5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Density` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Equipartition` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Order` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniform--fab191891685260b38051e82.md) | 57 | `declaration-track:fab191891685260b38051e8232dfe37ea1feb1d4099d3440f3521a78c869c246` |
| 2 | `instance` | [IsUniform.instDecidableRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniform-instdecidablerel--f604ca491d12d1988cbab693.md) | 63 | `declaration-track:f604ca491d12d1988cbab693e9abc506a6dbe01cd2f2c0460ef8684dba672716` |
| 3 | `theorem` | [IsUniform.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniform-mono--a0b2e48bdbcaaccd660d7a2e.md) | 66 | `result-track:a0b2e48bdbcaaccd660d7a2e5b0746b6aa5becf730f9a3fd4e38c4727088900c` |
| 4 | `theorem` | [IsUniform.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniform-symm--73bf517a95c0fb754391eb44.md) | 71 | `result-track:73bf517a95c0fb754391eb445970c04076b7987869c812996f3952e422975ea9` |
| 5 | `theorem` | [isUniform_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniform-comm--b81d48a385382f670d3473d3.md) | 78 | `result-track:b81d48a385382f670d3473d39523b52c109abc4754620770c38464d03f36419d` |
| 6 | `lemma` | [isUniform_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniform-one--fc937142d689b19447fc2ec7.md) | 81 | `result-track:fc937142d689b19447fc2ec7b0203b60385a6291d7c93ffac0c62eb45e7afc1e` |
| 7 | `lemma` | [IsUniform.pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniform-pos--0d6ec104ade34955be9e6596.md) | 90 | `result-track:0d6ec104ade34955be9e6596dc5aefa9326715711b2fea70b1cf6f4a0dd9f5c2` |
| 8 | `lemma` | [isUniform_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniform-singleton--bcb68e3792ed7aa50cd564e1.md) | 95 | `result-track:bcb68e3792ed7aa50cd564e1d7547b652bd6ebf5eb6e964f9362618ef4f92a6c` |
| 9 | `theorem` | [not_isUniform_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/not-isuniform-zero--2123b94d2130cdab224cad1d.md) | 106 | `result-track:2123b94d2130cdab224cad1d5e24b8d45a968bbaadd0fbf56ca8ad3ae9bac830` |
| 10 | `theorem` | [not_isUniform_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/not-isuniform-iff--720275b0cba86b94feec245f.md) | 109 | `result-track:720275b0cba86b94feec245f51e9ed855d4680151a20c7c1bcee092bd496a2cd` |
| 11 | `def` | [nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/nonuniformwitnesses--acf7a3c4da7f750f40b2d9e8.md) | 120 | `declaration-track:acf7a3c4da7f750f40b2d9e85291e3a184175a9d2dc1914d8786d4ce8008e13e` |
| 12 | `theorem` | [left_nonuniformWitnesses_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/left-nonuniformwitnesses-subset--027fe2e5956e1b1b3526fb5a.md) | 125 | `result-track:027fe2e5956e1b1b3526fb5aef6f346833604514b70b564e4a5d6b3f770f9eb6` |
| 13 | `theorem` | [left_nonuniformWitnesses_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/left-nonuniformwitnesses-card--b9a13c6625826419310873ff.md) | 130 | `result-track:b9a13c6625826419310873ff51192e017f2f45190a132ef52da201c9be25f717` |
| 14 | `theorem` | [right_nonuniformWitnesses_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/right-nonuniformwitnesses-subset--66096ba1afee480d182f280c.md) | 135 | `result-track:66096ba1afee480d182f280ca49c8ffeeabeb5be6b32f40a241e690bbcad3af1` |
| 15 | `theorem` | [right_nonuniformWitnesses_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/right-nonuniformwitnesses-card--7cc892a9502ea45800341bad.md) | 140 | `result-track:7cc892a9502ea45800341bade76eaf1ceca710998969e701f1ac15485e7edab0` |
| 16 | `theorem` | [nonuniformWitnesses_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/nonuniformwitnesses-spec--e0ddc12cf74111ac463b4b13.md) | 145 | `result-track:e0ddc12cf74111ac463b4b133226267da534658236b22c34bba6aa3531d6e92f` |
| 17 | `def` | [nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/nonuniformwitness--e71ed69c8b6dd34366717bdd.md) | 156 | `declaration-track:e71ed69c8b6dd34366717bdd9cae1534406a97d08437364135a3a87d0b03b58f` |
| 18 | `theorem` | [nonuniformWitness_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/nonuniformwitness-subset--663b0d20f7649ac6cdeb53a8.md) | 159 | `result-track:663b0d20f7649ac6cdeb53a8f86e7ce7c5cb59a8910d83d0e587a70473eb642b` |
| 19 | `theorem` | [le_card_nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/le-card-nonuniformwitness--8f9cea1046e7138c8850bf47.md) | 165 | `result-track:8f9cea1046e7138c8850bf478ad5df1a9bc8c27faca1caf1904d434c7fbc83c2` |
| 20 | `theorem` | [nonuniformWitness_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/nonuniformwitness-spec--daea3f5dd96c3a3d0ca1e689.md) | 172 | `result-track:daea3f5dd96c3a3d0ca1e6894a16bb1ec76bec456eb342f662b094a748069b15` |
| 21 | `def` | [sparsePairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/sparsepairs--ca69f326f214293159400e8d.md) | 194 | `declaration-track:ca69f326f214293159400e8d2bec1b2a9d9cca649d5c1d7de5219b74eff3d781` |
| 22 | `lemma` | [mk_mem_sparsePairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/mk-mem-sparsepairs--02346a02a243bf38f1deb5fe.md) | 199 | `result-track:02346a02a243bf38f1deb5fe2c3e78a4422a1772962b2e2ff1869c5b13ac402e` |
| 23 | `lemma` | [sparsePairs_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/sparsepairs-mono--c41a1e3e43ec55f7902e06ce.md) | 204 | `result-track:c41a1e3e43ec55f7902e06cecdf4e28ad43fada232277a40e57024dee5f27dbf` |
| 24 | `def` | [nonUniforms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/nonuniforms--cf6f95173513d26857dd9b7e.md) | 209 | `declaration-track:cf6f95173513d26857dd9b7e32640c7459db6eb835c16d49a2dd6ab8aa456878` |
| 25 | `lemma` | [mk_mem_nonUniforms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/mk-mem-nonuniforms--43d90cbcd01727bfeb7ce383.md) | 213 | `result-track:43d90cbcd01727bfeb7ce383af72890bcc868aec546735c0635d24d5d3b56148` |
| 26 | `theorem` | [nonUniforms_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/nonuniforms-mono--e955f2c1e6e23e312e39fbba.md) | 217 | `result-track:e955f2c1e6e23e312e39fbba8331edf4274fccefe7af37621e1726bed76794ee` |
| 27 | `theorem` | [nonUniforms_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/nonuniforms-bot--a0145d25bb4195b69b3233e8.md) | 220 | `result-track:a0145d25bb4195b69b3233e84e42bab82904994417cf3b9e59de23f19fa4b378` |
| 28 | `def` | [IsUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniform--ecb1ae5e383cdce073929511.md) | 230 | `declaration-track:ecb1ae5e383cdce073929511e591173ffed6fb51649b05ad239e131bdfe7be81` |
| 29 | `lemma` | [bot_isUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/bot-isuniform--82a71b94cc6741c4809f6f48.md) | 233 | `result-track:82a71b94cc6741c4809f6f48b92ce503ce07501960ef5a08624db4876f21b0ce` |
| 30 | `lemma` | [isUniform_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniform-one--76bc1efcdc0d30c3b3f968c8.md) | 238 | `result-track:76bc1efcdc0d30c3b3f968c82386b2b1ef40536c9c53dc71157c2d1633bd953e` |
| 31 | `theorem` | [IsUniform.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniform-mono--def02bbbff843ab0448bd2ed.md) | 246 | `result-track:def02bbbff843ab0448bd2ed5dd1c74a0083dba474401e9d3cdacdecb91c5b3f` |
| 32 | `theorem` | [isUniformOfEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isuniformofempty--23fba8eaa7f683e2dd19adf9.md) | 250 | `result-track:23fba8eaa7f683e2dd19adf935e2f354849c26a8b9381798da28383b52dd235d` |
| 33 | `theorem` | [nonempty_of_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/nonempty-of-not-uniform--a93e8c34aaaecfcd39cfcf80.md) | 254 | `result-track:a93e8c34aaaecfcd39cfcf80426fce713a3ef1fff3de2cb285648dc2cc76e68b` |
| 34 | `def` | [nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/nonuniformwitnesses--71b2a370db714b4668b833be.md) | 260 | `declaration-track:71b2a370db714b4668b833be438b01678c817d4ce8fec9688bf14ae7e9b96b6a` |
| 35 | `theorem` | [nonuniformWitness_mem_nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/nonuniformwitness-mem-nonuniformwitnesses--88be066d09be1fc6de8c0762.md) | 265 | `result-track:88be066d09be1fc6de8c07629dab2087c269361b19ee236ca97d460bf10af3fc` |
| 36 | `lemma` | [IsEquipartition.card_interedges_sparsePairs_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isequipartition-card-interedges-sparsepairs-le--dd7db63a39a06e9ad89c3c45.md) | 272 | `result-track:dd7db63a39a06e9ad89c3c452c086b0975bdf573314d9f0345694e8f1bd505df` |
| 37 | `lemma` | [IsEquipartition.card_interedges_sparsePairs_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isequipartition-card-interedges-sparsepairs-le--3d96a82a4e73edac5505b8c1.md) | 301 | `result-track:3d96a82a4e73edac5505b8c1f58bdc610056c15ebcabd2f51572bf0b73556034` |
| 38 | `lemma` | [aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/aux--00a5bf072b300e58318a2ea9.md) | 308 | `result-track:00a5bf072b300e58318a2ea98eddea9785eb03b0a4d536195158ed88ca5c5334` |
| 39 | `lemma` | [IsEquipartition.card_biUnion_offDiag_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isequipartition-card-biunion-offdiag-le--6048a5ce984eef51e3d9cfa0.md) | 316 | `result-track:6048a5ce984eef51e3d9cfa02948c8d775eb197ea2534b21241d90783eb9d903` |
| 40 | `lemma` | [IsEquipartition.card_biUnion_offDiag_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isequipartition-card-biunion-offdiag-le--5832439341a0287311b3ef1e.md) | 334 | `result-track:5832439341a0287311b3ef1e16d19fedf76809addfa627159510391418545abe` |
| 41 | `lemma` | [IsEquipartition.sum_nonUniforms_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isequipartition-sum-nonuniforms-lt--dfb7fb934b32113331b2bd1f.md) | 350 | `result-track:dfb7fb934b32113331b2bd1ff0c3ebe6e61df722beb1e2563b45d996f3b8325e` |
| 42 | `lemma` | [IsEquipartition.sum_nonUniforms_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/isequipartition-sum-nonuniforms-lt--3524dd0186ee556e56636d33.md) | 369 | `result-track:3524dd0186ee556e56636d336d4ed6968b3410e665fc2ce9a3619b3ef38a0650` |
| 43 | `def` | [regularityReduced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/regularityreduced--40a9bfc1b25e5301ada347b1.md) | 387 | `declaration-track:40a9bfc1b25e5301ada347b1a280950d4ddfeab3bba2d5d42ddb2ab6f958bceb` |
| 44 | `instance` | [regularityReduced.instDecidableRel_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/regularityreduced-instdecidablerel-adj--51da5b9c315fe3ed3712d536.md) | 396 | `declaration-track:51da5b9c315fe3ed3712d536719bafefa3cba6938e22b4d137f3250270dd7424` |
| 45 | `lemma` | [regularityReduced_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/regularityreduced-le--0d4dfca1f3ee3b3192a8d4ca.md) | 402 | `result-track:0d4dfca1f3ee3b3192a8d4ca65bb81080d98be4a5ad5516979d56cb34d401245` |
| 46 | `lemma` | [regularityReduced_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/regularityreduced-mono--61205c868461d14379a179c9.md) | 404 | `result-track:61205c868461d14379a179c9c84a317d6a900bf2b2982d3f8187835d116d2540` |
| 47 | `lemma` | [regularityReduced_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/regularityreduced-anti--d8c1c5c636aa0afaf5e923fa.md) | 410 | `result-track:d8c1c5c636aa0afaf5e923fa09909b860cd656281f5818c3b2464f0fbe3d28fc` |
| 48 | `lemma` | [unreduced_edges_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/declarations/unreduced-edges-subset--34ff3cd5180c9d8aca73319f.md) | 416 | `result-track:34ff3cd5180c9d8aca73319f4c30104b34e54e9661af703c6cf6f155f837a57c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
