# Verification target: GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "861fbf16f6dc0196e7a4e407d10ef2398418fd76",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `861fbf16f6dc0196e7a4e407d10ef2398418fd76`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean.json)

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
| 1 | `def` | [tensorObjMap](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/tensorobjmap--37ca4285eb454f55018ff1cb.md) | 42 | `declaration-track:37ca4285eb454f55018ff1cb0bbef1da4c2e6b9fb5163dc5c101dec2c73281cd` |
| 2 | `def` | [tensorObj](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/tensorobj--7eedc12b3fa8f994fd775c53.md) | 59 | `declaration-track:7eedc12b3fa8f994fd775c532e45f29ea7c8065aa1b9812afba4478137bf29e1` |
| 3 | `lemma` | [tensorObj_map_tmul](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/tensorobj-map-tmul--398c6592a139d2a7848b6389.md) | 74 | `result-track:398c6592a139d2a7848b63896411b92b276ec9694b7c7a490fac03835f18a699` |
| 4 | `def` | [tensorHom](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/tensorhom--c563dbe9af7bf7bdc8224210.md) | 84 | `declaration-track:c563dbe9af7bf7bdc82242101b9c0754624fa1c578b0007796171a8ebf9442fc` |
| 5 | `instance` | [monoidalCategoryStruct](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/monoidalcategorystruct--1a6093761b62a4a5a8ede59a.md) | 96 | `declaration-track:1a6093761b62a4a5a8ede59abb520e40a8c0bdb838f08a7a41109d084ce5f1dd` |
| 6 | `instance` | [monoidalCategory](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/monoidalcategory--a207523c808fae6b932b1b5b.md) | 118 | `declaration-track:a207523c808fae6b932b1b5b06d76abafa6ce709623f6774eac7e0f4822a2ec1` |
| 7 | `instance` | [symmetricCategory](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/symmetriccategory--a179fa144b321a37a3bd3b53.md) | 137 | `declaration-track:a179fa144b321a37a3bd3b537028bbfefd77025769317280c802eab562e4d3cf` |
| 8 | `lemma` | [tensorObj_obj](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/tensorobj-obj--c51cc545b285e4bea2aa2b69.md) | 162 | `result-track:c51cc545b285e4bea2aa2b69202f9542d261a3a8702d3988eb2ef83e79fdeefb` |
| 9 | `lemma` | [whiskerLeft_app](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/whiskerleft-app--d107b4074408b47c01aa2ccc.md) | 169 | `result-track:d107b4074408b47c01aa2ccc27ba216dff2d3a9faa4ed9e3d8ad9c14b1d088fb` |
| 10 | `lemma` | [whiskerRight_app](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/whiskerright-app--a937ef74d25c9d12a3e15557.md) | 174 | `result-track:a937ef74d25c9d12a3e155570e65bcbc8400553ef9881d700d66f6b95c4c82bc` |
| 11 | `lemma` | [tensorHom_app](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/tensorhom-app--b1c983d2941d4d6891403211.md) | 180 | `result-track:b1c983d2941d4d6891403211c6487da316f95a23bb7bdd8db906336d81e9f749` |
| 12 | `lemma` | [leftUnitor_hom_app](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/leftunitor-hom-app--8ddd61568567dcbdf94fdf50.md) | 185 | `result-track:8ddd61568567dcbdf94fdf5077ba20657d4f7d78bff97d885a8255ca76c766a9` |
| 13 | `lemma` | [leftUnitor_inv_app](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/leftunitor-inv-app--93c527541a28438aea0dce05.md) | 190 | `result-track:93c527541a28438aea0dce054432f060733843968e63420c1d4237993962b187` |
| 14 | `lemma` | [rightUnitor_hom_app](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/rightunitor-hom-app--df18b05d70f79994ae0628db.md) | 195 | `result-track:df18b05d70f79994ae0628dbcd0389812bee2ae4c82ba140759fc70810238a67` |
| 15 | `lemma` | [rightUnitor_inv_app](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/rightunitor-inv-app--095379221a554b8da06e4c35.md) | 200 | `result-track:095379221a554b8da06e4c35bcb37263e68742d25ee3f7b4b77f270f338a1341` |
| 16 | `lemma` | [associator_hom_app](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/associator-hom-app--e3004a150cb24b229a5c71de.md) | 205 | `result-track:e3004a150cb24b229a5c71de4e0d45e2f8bbccfb1095af7333daec76887c6c05` |
| 17 | `lemma` | [associator_inv_app](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/associator-inv-app--aec4862fc40749af74429c34.md) | 211 | `result-track:aec4862fc40749af74429c34cb270a9bf2b8b5668439a336dbb6b59f67ec572d` |
| 18 | `lemma` | [braiding_hom_app](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/braiding-hom-app--c9ae44be4b601bf59f2c9cb3.md) | 217 | `result-track:c9ae44be4b601bf59f2c9cb3526d02cfba8d3d2f84e303957d6eac02f556bcbb` |
| 19 | `lemma` | [braiding_inv_app](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/braiding-inv-app--8442f37f20ae242dd7701b6b.md) | 223 | `result-track:8442f37f20ae242dd7701b6b73d2ec45240e1657b12deb3dc2b0c886857fbb0d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/instance--3015276abcb78464539cc1d9.md) | 229 | `declaration-track:3015276abcb78464539cc1d9853622f96dc787cd2f654278715560cff07c4e95` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante153e2702a211ab54d08e5a430c87f3d8e9311d4b45bdfef8fc433ac32661a02.lean/declarations/instance--5042092915b0e287dcbd69f6.md) | 235 | `declaration-track:5042092915b0e287dcbd69f638c35a429be5d41b8c69a3e8cae3cb2d6204ad73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
