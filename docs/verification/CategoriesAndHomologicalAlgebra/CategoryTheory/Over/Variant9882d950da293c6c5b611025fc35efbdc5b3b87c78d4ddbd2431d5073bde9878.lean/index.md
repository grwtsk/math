# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d823b963e24a24aee2a41eabfb8df85799e2f4ca",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d823b963e24a24aee2a41eabfb8df85799e2f4ca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Products` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [cartesianMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/cartesianmonoidalcategory--942a013b758be6bbd0e15320.md) | 33 | `declaration-track:942a013b758be6bbd0e15320a05593707357b5ea84f965bca3ef627c05cc2aeb` |
| 2 | `abbrev` | [braidedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/braidedcategory--6bfc7da355caa89db5879e9c.md) | 45 | `declaration-track:6bfc7da355caa89db5879e9cb6c59fb21d0c0ee94f6d59660e1956704780fd60` |
| 3 | `lemma` | [tensorObj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/tensorobj-ext--1d3bb2e9d04bf9f0c7ce4092.md) | 55 | `result-track:1d3bb2e9d04bf9f0c7ce4092b3c6cd11769083dfa7c023d41303d3fc378f890e` |
| 4 | `lemma` | [tensorObj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/tensorobj-left--e948c39966f471cf5b47288d.md) | 61 | `result-track:e948c39966f471cf5b47288d8f58816d9b72c16ef4f33545f93bf21e23980504` |
| 5 | `lemma` | [tensorObj_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/tensorobj-hom--52ee248abeeb7e0a889e69fa.md) | 64 | `result-track:52ee248abeeb7e0a889e69fa2cddcb62a8d8ca7fda7ec1280d37a80da9c59d38` |
| 6 | `lemma` | [tensorUnit_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/tensorunit-left--f6f2971c45a1b39c047ed0ab.md) | 67 | `result-track:f6f2971c45a1b39c047ed0ab8ef64f9cffb83489fb7113e36ab59a57b11f33fe` |
| 7 | `lemma` | [tensorUnit_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/tensorunit-hom--c00ce13984494f7251a9b74c.md) | 70 | `result-track:c00ce13984494f7251a9b74c9bd6a6b6f1d0d3f33af215f1a8bdc382be68c1e1` |
| 8 | `lemma` | [lift_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/lift-left--4b4ade628cfd99c03791798e.md) | 73 | `result-track:4b4ade628cfd99c03791798ea3018b69e7487c6a3d1082796a747ad8fad07537` |
| 9 | `lemma` | [toUnit_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/tounit-left--104b781bd7f01074d1d7e410.md) | 77 | `result-track:104b781bd7f01074d1d7e410ada7ba6869fbbd2e56961b8aa0386e9f2968461b` |
| 10 | `lemma` | [associator_hom_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/associator-hom-left-fst--26d0c73c401997aa3ba005f6.md) | 80 | `result-track:26d0c73c401997aa3ba005f6800e68684c4d45c05868f67b2d8c84f6e04a5dbd` |
| 11 | `lemma` | [associator_hom_left_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/associator-hom-left-snd-fst--9cb5f06c051d912a091b0b75.md) | 86 | `result-track:9cb5f06c051d912a091b0b7524c52571cd07a557ed1bd60884092eb8749f15e1` |
| 12 | `lemma` | [associator_hom_left_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/associator-hom-left-snd-snd--9e5b2411adfc34983ea0ab48.md) | 92 | `result-track:9e5b2411adfc34983ea0ab48014b99c51b6676b5ce909310b2efd9affffd69d9` |
| 13 | `lemma` | [associator_inv_left_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/associator-inv-left-fst-fst--54b094744a9d82e980e105ee.md) | 98 | `result-track:54b094744a9d82e980e105eed10c8d9b61220692cb3850ba2e82e592f8fe7a62` |
| 14 | `lemma` | [associator_inv_left_fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/associator-inv-left-fst-snd--888ca926c7dba8f12009d304.md) | 104 | `result-track:888ca926c7dba8f12009d304b3082b3d8662f900d5c0caea8eca78d1c791a6f9` |
| 15 | `lemma` | [associator_inv_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/associator-inv-left-snd--3e620054b1586a60789cc062.md) | 110 | `result-track:3e620054b1586a60789cc0626ee320fc82d24eadbb5c41b2f072bc284e888491` |
| 16 | `lemma` | [leftUnitor_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/leftunitor-hom-left--dfaa6e3187e3f9ede9be00a2.md) | 116 | `result-track:dfaa6e3187e3f9ede9be00a27a33ba90ade5a6cee9ab0e3399f904f30986684c` |
| 17 | `lemma` | [leftUnitor_inv_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/leftunitor-inv-left-fst--aeb1aa8fb7bc27e68ceb3b95.md) | 120 | `result-track:aeb1aa8fb7bc27e68ceb3b959358d77dfa21b0c4dacac80987a99c4774128690` |
| 18 | `lemma` | [leftUnitor_inv_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/leftunitor-inv-left-snd--371d8fcb5d96c1db7363fb4f.md) | 125 | `result-track:371d8fcb5d96c1db7363fb4ff2b19097ca658b6e2d70e222196b6e1a1cbcecb8` |
| 19 | `lemma` | [rightUnitor_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/rightunitor-hom-left--03e4b966b489980fe60754d0.md) | 130 | `result-track:03e4b966b489980fe60754d083bee5ac10a38434bff9f26c3b339436ade2682c` |
| 20 | `lemma` | [rightUnitor_inv_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/rightunitor-inv-left-fst--6cdd36fb30a0a253b96c32e2.md) | 134 | `result-track:6cdd36fb30a0a253b96c32e26edfd7f4bcf408ec38eab77e012bfee7802b82fd` |
| 21 | `lemma` | [rightUnitor_inv_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/rightunitor-inv-left-snd--ad20dbb99c0e49ff581f7827.md) | 139 | `result-track:ad20dbb99c0e49ff581f782771f69fe9e5aedd98d12cb52be9caf7ee1b9e3566` |
| 22 | `lemma` | [whiskerLeft_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/whiskerleft-left--42383100b373bd1fa2f1467f.md) | 143 | `result-track:42383100b373bd1fa2f1467f353d6110d51eea491368277a53cadd7f29e3c314` |
| 23 | `lemma` | [whiskerLeft_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/whiskerleft-left-fst--9fe74150f3404b562108a6f4.md) | 147 | `result-track:9fe74150f3404b562108a6f47594112500a989a516b0257107a53339f578d3ec` |
| 24 | `lemma` | [whiskerLeft_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/whiskerleft-left-snd--c413e62eeaeb170b20d2c3c4.md) | 152 | `result-track:c413e62eeaeb170b20d2c3c4e3dcd4ffb404908cbaa8655bc04fb84e24a7ce16` |
| 25 | `lemma` | [whiskerRight_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/whiskerright-left--2f4b001b770ff4d5593e9bdf.md) | 156 | `result-track:2f4b001b770ff4d5593e9bdf7a82f0ae4d62f92a88a28e3bc2dbe9a5ec2c67ea` |
| 26 | `lemma` | [whiskerRight_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/whiskerright-left-fst--440a6ef08c9283c67e7a98b0.md) | 160 | `result-track:440a6ef08c9283c67e7a98b0db16da02fdfc559c14b3de9072cf991b04cae7f1` |
| 27 | `lemma` | [whiskerRight_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/whiskerright-left-snd--cdb819ea2fd08da29786ad81.md) | 165 | `result-track:cdb819ea2fd08da29786ad816fc1540e08e66ddda03020d94b876f6bcbead764` |
| 28 | `lemma` | [tensorHom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/tensorhom-left--ab383370067edd489e57341a.md) | 169 | `result-track:ab383370067edd489e57341a2407df0ba6de682df9ef21a1caf492bdb44165cb` |
| 29 | `lemma` | [tensorHom_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/tensorhom-left-fst--01420b41bea12e82bac0ca32.md) | 173 | `result-track:01420b41bea12e82bac0ca3230ff5fdec1724eeb7944fe97ee41b8f55058e408` |
| 30 | `lemma` | [tensorHom_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/tensorhom-left-snd--aa39edf5c1cf76620ad44cb9.md) | 178 | `result-track:aa39edf5c1cf76620ad44cb99b47a4084ad04859145b233078f66a9bb001f35c` |
| 31 | `lemma` | [braiding_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/braiding-hom-left--14005ec4f83c54c75f3258fc.md) | 183 | `result-track:14005ec4f83c54c75f3258fc4170ce386fe7f3510fccab3de74fdb2846d107c0` |
| 32 | `lemma` | [braiding_inv_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/declarations/braiding-inv-left--cd19c38ce86bcc4cacaa6a94.md) | 187 | `result-track:cd19c38ce86bcc4cacaa6a94b604cf4d2912b9624a1c5a61388f25b73b5a1d9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
