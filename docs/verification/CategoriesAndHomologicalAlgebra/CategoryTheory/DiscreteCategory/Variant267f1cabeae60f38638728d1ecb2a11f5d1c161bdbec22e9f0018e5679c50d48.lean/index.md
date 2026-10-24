# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DiscreteCategory.Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bd6dfb869e7374037b3298010dfe854cb7a551d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bd6dfb869e7374037b3298010dfe854cb7a551d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/discrete--0025fa617a7422704e3743ee.md) | 56 | `declaration-track:0025fa617a7422704e3743ee8d97de2c89d4281dc797a4d7031f35b781b747a8` |
| 2 | `theorem` | [Discrete.mk_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/discrete-mk-as--c08d9436c3c77bd36003f735.md) | 63 | `result-track:c08d9436c3c77bd36003f7357b3fc306120594d910de4ff19596fba9430e71e4` |
| 3 | `def` | [discreteEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/discreteequiv--907f1f998928e8c816a68587.md) | 70 | `declaration-track:907f1f998928e8c816a685870cd9d11ee39566ff9fbb9dba1f65fc4dcb852cc5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/instance--0ec4333931ac75ab8534a14c.md) | 77 | `declaration-track:0ec4333931ac75ab8534a14cddefd269ce1f44eaea93b4bb0c91494b3c7ab8b4` |
| 5 | `instance` | [discreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/discretecategory--bc3409fd84f0fcba7a0c671f.md) | 87 | `declaration-track:bc3409fd84f0fcba7a0c671f9791d2727ca6a9283170a418ba6e44023986a8ba` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/instance--0edf95ba76c31b8b27a9ea01.md) | 102 | `declaration-track:0edf95ba76c31b8b27a9ea018e79b6641f6cb718a362c9cddb0163adf6521167` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/instance--06681d58e72f4a2bf390fceb.md) | 105 | `declaration-track:06681d58e72f4a2bf390fceb40171d16d1676fa375228cd20097237458cc0a31` |
| 8 | `instance` | [instSubsingletonDiscreteHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/instsubsingletondiscretehom--b93c78ccb9f1e45853c5f43f.md) | 108 | `declaration-track:b93c78ccb9f1e45853c5f43ff2d53dd28983ea181d8ac36a06434f7a5f4e774f` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/macro--17ce9d65c46d92495c95000f.md) | 113 | `declaration-track:17ce9d65c46d92495c95000fa276d715387d783cfc388b2aaafd7d4cae4eb33b` |
| 10 | `def` | [discreteCases](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/discretecases--f1d4a1bdb3c55d9ef154f25c.md) | 126 | `declaration-track:f1d4a1bdb3c55d9ef154f25c853805f58398aa358ca5ba7b2d29064252626951` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/instance--a2ba5a612e322ec32443ecc7.md) | 136 | `declaration-track:a2ba5a612e322ec32443ecc7e463a4a9e29a3f410e23d9ac97963aab06063b85` |
| 12 | `theorem` | [eq_of_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/eq-of-hom--d2ee1cd1fc65300dc4cd4d13.md) | 140 | `result-track:d2ee1cd1fc65300dc4cd4d1398d692b286a6ec24ff78a88e3aec0a76676a88d7` |
| 13 | `abbrev` | [eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/eqtohom--573c9c363534f2a3d994ac7e.md) | 146 | `declaration-track:573c9c363534f2a3d994ac7ea82f0c9ee49a11a8fc40c2f98b659edbbc2ba9a8` |
| 14 | `abbrev` | [eqToIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/eqtoiso--915bfe2ab34ebe40f0dee5bc.md) | 152 | `declaration-track:915bfe2ab34ebe40f0dee5bca5219cb3eb3b32a6f5286b486fee2afd0169b5c5` |
| 15 | `abbrev` | [eqToHom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/eqtohom--2cfb4ee69f1a25e55f21d316.md) | 157 | `declaration-track:2cfb4ee69f1a25e55f21d316e6ded830774aa66786b79209232de500957da1d2` |
| 16 | `abbrev` | [eqToIso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/eqtoiso--b5b8a1b5a9e7766b65f8f6a4.md) | 162 | `declaration-track:b5b8a1b5a9e7766b65f8f6a4182d2dcf37448f9116a2a1123b8ef4d13a323531` |
| 17 | `theorem` | [id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/id-def--d1b79cb229a38ce81c2d8f3e.md) | 167 | `result-track:d1b79cb229a38ce81c2d8f3ef366eb742bbf6e6ec2a94e7985dbbe394d6701f0` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/instance--e58ec72ef648494c57de71fa.md) | 173 | `declaration-track:e58ec72ef648494c57de71fa9080c5f4711844578368852488a44f05e3c437dc` |
| 19 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/functor--c354ed3a70bbba660564e399.md) | 180 | `declaration-track:c354ed3a70bbba660564e399a0021bd90a55b897c75034019f1d3e0bcb08fc27` |
| 20 | `theorem` | [functor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/functor-obj--e236bab1b09a5fdf6f43d5f5.md) | 189 | `result-track:e236bab1b09a5fdf6f43d5f5b866fc10e76cd1138eeb6c831272b9cada6d78a7` |
| 21 | `theorem` | [functor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/functor-map--775fcb0d69e15f1681821dfe.md) | 194 | `result-track:775fcb0d69e15f1681821dfea27134e0d446c195a88899b6423d96f492ebd5c3` |
| 22 | `def` | [functorComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/functorcomp--7a2ad4d2060c011c26743e19.md) | 202 | `declaration-track:7a2ad4d2060c011c26743e19efa8dea5011f3aa5182f237edc001a28b8d3c08e` |
| 23 | `def` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/nattrans--30e5dda99ccda78ef9df1015.md) | 212 | `declaration-track:30e5dda99ccda78ef9df1015877f9436afcf6c8d0eff206825ec54059e53dda7` |
| 24 | `def` | [natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/natiso--8215a4c2d7abc05e3f16d3c1.md) | 227 | `declaration-track:8215a4c2d7abc05e3f16d3c1ca2c5327170bb58f468961202e5a4696e60c0391` |
| 25 | `theorem` | [natIso_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/natiso-app--da1a5c33abbc07f41db4850f.md) | 237 | `result-track:da1a5c33abbc07f41db4850f33fed69f233d7cab6afe1eab76f3f74dc3ad0a9f` |
| 26 | `def` | [natIsoFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/natisofunctor--adadda89f02b5d317f0aac26.md) | 244 | `declaration-track:adadda89f02b5d317f0aac265477531c495b4df2db32f3d6388e3901d272cfcd` |
| 27 | `def` | [compNatIsoDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/compnatisodiscrete--8ca545559fde08f8f8402884.md) | 250 | `declaration-track:8ca545559fde08f8f84028840159057d30daa08803fcc973acbaef51cfc38d92` |
| 28 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/equivalence--2995a3a80c1448569d2d83e5.md) | 259 | `declaration-track:2995a3a80c1448569d2d83e59e9eb7d1f3a6ad39360f11b0978ea7ea158699cf` |
| 29 | `def` | [equivOfEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/equivofequivalence--8ac09776168cb3622a014770.md) | 270 | `declaration-track:8ac09776168cb3622a014770a3f8b9b197535961bf0ded9249df8967ea7ace04` |
| 30 | `def` | [opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/opposite--f17fb9b6bccc4656f31e52a6.md) | 287 | `declaration-track:f17fb9b6bccc4656f31e52a6f77680ffe5c099fbf622b2c4ff7804de927b5848` |
| 31 | `theorem` | [functor_map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant267f1cabeae60f38638728d1ecb2a11f5d1c161bdbec22e9f0018e5679c50d48.lean/declarations/functor-map-id--d5003f75be1ddc0ee40ec607.md) | 298 | `result-track:d5003f75be1ddc0ee40ec60765a9562e3496561acfab72ccdc63286209004069` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
