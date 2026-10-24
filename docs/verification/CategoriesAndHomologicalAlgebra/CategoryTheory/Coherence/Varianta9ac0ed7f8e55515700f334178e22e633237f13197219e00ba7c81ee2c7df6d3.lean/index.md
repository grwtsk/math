# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "401d3403e732d95e6f529873a5a0dd05034273e4",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `401d3403e732d95e6f529873a5a0dd05034273e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean.json)

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
| 1 | `class` | [LiftObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/liftobj--c7da5216fc6e847f332b66bd.md) | 48 | `declaration-track:c7da5216fc6e847f332b66bd8646c88993a6e20750e272af998f4869c898f1f9` |
| 2 | `instance` | [unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/unit--8457b17ca147808b7787da09.md) | 53 | `declaration-track:8457b17ca147808b7787da090f3c20571d26ecd93f853f500052282e91d6f44a` |
| 3 | `instance` | [tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/tensor--1f94653619417f24eb2b297c.md) | 55 | `declaration-track:1f94653619417f24eb2b297c9a8b94fddaf91e0ae4bf472a3ea856b24bc507b0` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/instance--99cec87418f7a011b39e050c.md) | 58 | `declaration-track:99cec87418f7a011b39e050c3541071a5f99b1a914ba59c8e877ffb75ea7ff8c` |
| 5 | `class` | [LiftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/lifthom--08b5abd8a2033e5271bfd639.md) | 64 | `declaration-track:08b5abd8a2033e5271bfd639e36089ca4699069c009a8c7ff3bda9a06f5b80c9` |
| 6 | `instance` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/id--d3ab9dda1a9c562353b8f88a.md) | 69 | `declaration-track:d3ab9dda1a9c562353b8f88aed90c4dac944d558e08177e4a08a5a4910e743f6` |
| 7 | `instance` | [leftUnitorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/leftunitorhom--abcdf9816d499441dc86fe9d.md) | 71 | `declaration-track:abcdf9816d499441dc86fe9d9024f9197829d50323680aa056e9445f505573de` |
| 8 | `instance` | [leftUnitorInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/leftunitorinv--668d2202f24773c346cbc909.md) | 74 | `declaration-track:668d2202f24773c346cbc909b3ae91dfecc1f17c2a31cae2a26c72d475f17a39` |
| 9 | `instance` | [rightUnitorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/rightunitorhom--243937558977ad695e8ccd3b.md) | 77 | `declaration-track:243937558977ad695e8ccd3bf01d8b52130b46997538802f23f2f934673f7fac` |
| 10 | `instance` | [rightUnitorInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/rightunitorinv--0531adf1ecaf230888b3b2f2.md) | 80 | `declaration-track:0531adf1ecaf230888b3b2f29a2c2de9dd239ee642a0b4a36012708f4d6819a9` |
| 11 | `instance` | [associatorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/associatorhom--858d6c0384845a890570cc66.md) | 83 | `declaration-track:858d6c0384845a890570cc667b9b15ef6bcca4e5bbd87eb2ab21849e88477ec8` |
| 12 | `instance` | [associatorInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/associatorinv--4efa86ee33f842536b1d7282.md) | 87 | `declaration-track:4efa86ee33f842536b1d7282e2f8e2b88ace4e812e0f22cf5d8e0fa49957d06e` |
| 13 | `instance` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/comp--0e5c7ca31a98819afaf3c57f.md) | 91 | `declaration-track:0e5c7ca31a98819afaf3c57f128ef6ebb03729048b087ccce1247349da3a7afc` |
| 14 | `instance` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/whiskerleft--de2745b1f921a535e84c4f5e.md) | 95 | `declaration-track:de2745b1f921a535e84c4f5e78c0dfa96985dad9721565d9f5e8433f1e3ee6ac` |
| 15 | `instance` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/whiskerright--04d7c066ec6cf3f1ced06f91.md) | 99 | `declaration-track:04d7c066ec6cf3f1ced06f91654baca01ccd21d24737e563237ea977084b69fc` |
| 16 | `instance` | [tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/tensor--c06cfad742e737a0544d0fc4.md) | 103 | `declaration-track:c06cfad742e737a0544d0fc4305c6e355907a53933f4d72c2f02015791f24a9f` |
| 17 | `def` | [exception](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/exception--91b76b2cc42928be99bc3c5d.md) | 114 | `declaration-track:91b76b2cc42928be99bc3c5d7e8261edd04e1c6f9209eacc30e5d31255e774fe` |
| 18 | `def` | [exception'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/exception--b7462d997462af092307a1bd.md) | 118 | `declaration-track:b7462d997462af092307a1bd2e0e391045a2d995c111a513d126e9d584753e30` |
| 19 | `def` | [mkProjectMapExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/mkprojectmapexpr--3a0de9af00a77edd8c8d3b8b.md) | 128 | `declaration-track:3a0de9af00a77edd8c8d3b8be2e458e782a10ba058a2d92900d159f09f5c34a2` |
| 20 | `def` | [monoidalCoherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/monoidalcoherence--c65075ee222f329ae1cfaeb6.md) | 134 | `declaration-track:c65075ee222f329ae1cfaeb6c2ba302eb1707e30d33dd8d7891eec18c3eb595a` |
| 21 | `register_option` | [warn.refl_coherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/warn-refl-coherence--6f18d7119208b00c810e696e.md) | 159 | `declaration-track:6f18d7119208b00c810e696edcd4116bf63474466dc49f0e33f127571b5f7889` |
| 22 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/elab--3df9ad67d9c4cac4d0da23a6.md) | 178 | `declaration-track:3df9ad67d9c4cac4d0da23a6190cf8d67defd56cb5d829122602c4572fdadeaa` |
| 23 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/elab--c4d23721a94b023b58704849.md) | 188 | `declaration-track:c4d23721a94b023b58704849bc22240a7f678fcee154faa4c87ed16139b596e3` |
| 24 | `lemma` | [assoc_liftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/assoc-lifthom--bedd3015a8b9b35bfaf814cf.md) | 201 | `result-track:bedd3015a8b9b35bfaf814cf0980d04b8c43b4df3df6a4c525f4d75d328d489e` |
| 25 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/elab--ab5b3873ac9efd12e8c2036c.md) | 213 | `declaration-track:ab5b3873ac9efd12e8c2036cea6657408cf8d9ddfdffc7511f1295536bc4bfa8` |
| 26 | `lemma` | [insert_id_lhs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/insert-id-lhs--e42a4cb61955d02a2beac23f.md) | 226 | `result-track:e42a4cb61955d02a2beac23f2a14dc9d189f462a59c46067566762e2f43495a0` |
| 27 | `lemma` | [insert_id_rhs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/insert-id-rhs--370bf30e5047b36750b98aea.md) | 230 | `result-track:370bf30e5047b36750b98aea477b65ec2873ee4dd7f9bd1e8fe678a3593a957e` |
| 28 | `def` | [insertTrailingIds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/inserttrailingids--9b62f078d1104cb7672c0ae3.md) | 235 | `declaration-track:9b62f078d1104cb7672c0ae345274c60500534e27332893cdfd1c1d47a3559cb` |
| 29 | `def` | [coherenceLoop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/coherenceloop--4b4eab92a7a7bf52b53d6de8.md) | 250 | `declaration-track:4b4eab92a7a7bf52b53d6de8cbe685f477615445b372b6e20dcf902df57c4dce` |
| 30 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/syntax--ee0886f10c881eab6c463215.md) | 286 | `declaration-track:ee0886f10c881eab6c46321586b352b0d5d36e2f970c3c611ad13e5664d44744` |
| 31 | `elab_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/elab-rules--30b1a70d5c9cbf015798a44d.md) | 289 | `declaration-track:30b1a70d5c9cbf015798a44d4e6b6ee9e86ada5d492421a28a1039152588a642` |
| 32 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/syntax--6be2edbb34a818488d1f9d2e.md) | 317 | `declaration-track:6be2edbb34a818488d1f9d2e97738261ca16cd086f74f7917e027241f85f4260` |
| 33 | `elab_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/declarations/elab-rules--4a4172891a5c44ea86910a03.md) | 320 | `declaration-track:4a4172891a5c44ea86910a03d2fc2fac66a0182eac10d53a5fb1dcce86cd06d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
