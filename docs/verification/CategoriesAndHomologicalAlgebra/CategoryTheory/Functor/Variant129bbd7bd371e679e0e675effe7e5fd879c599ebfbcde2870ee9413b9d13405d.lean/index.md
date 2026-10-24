# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cce2a0cada8538c9c24d19bf25b76065a5ec9224",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cce2a0cada8538c9c24d19bf25b76065a5ec9224`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Attr.Register` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Functor.map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/functor-map-id--877ee99341b576d6e4a9f402.md) | 37 | `result-track:877ee99341b576d6e4a9f402fda4790c121c150a511ef734e86fe006a4e93301` |
| 2 | `theorem` | [Functor.map_comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/functor-map-comp-map--f5a59fda04f7decfca5d126f.md) | 39 | `result-track:f5a59fda04f7decfca5d126f6b2f93a798af3e10171e76a8c1d750b4160d0447` |
| 3 | `theorem` | [Functor.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/functor-ext--e9a25573431547c3683b408a.md) | 44 | `result-track:e9a25573431547c3683b408a21c778307c340a2815f7a6bb52aa035a873f54fe` |
| 4 | `def` | [id.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/id-mk--3e72cd311d423457e2a3f68c.md) | 61 | `declaration-track:3e72cd311d423457e2a3f68cee1a8936b4b24219357e2e685e5b9294917a9ab2` |
| 5 | `def` | [Const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/const--098d6468358415d38743d8e7.md) | 70 | `declaration-track:098d6468358415d38743d8e71172ede14f77a21c26ac3accc0d04a411324c107` |
| 6 | `def` | [Const.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/const-mk--a52be6235d5d52a9b539e6d0.md) | 76 | `declaration-track:a52be6235d5d52a9b539e6d059b89cb31d7bc922e8ea54380356890e2f67612d` |
| 7 | `def` | [Const.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/const-mk--54d17ed4f50508686839158e.md) | 81 | `declaration-track:54d17ed4f50508686839158ea4ec6fcc33d057864f061a83f6e8e67f3ad00bf3` |
| 8 | `def` | [Const.run](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/const-run--9ea731d6388c0b9df81ceba7.md) | 85 | `declaration-track:9ea731d6388c0b9df81ceba762ab6a48944ff5377daafb552782513d6a692dd1` |
| 9 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/ext--dcdd92f40b368e52a00a393d.md) | 90 | `result-track:dcdd92f40b368e52a00a393dae6bb21756e44c445f97c3cf5916c66deb37193d` |
| 10 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/map--cd81a497789f14b254139e31.md) | 95 | `declaration-track:cd81a497789f14b254139e3182f268cb3cde8b0b3313dd147590460aed9b4312` |
| 11 | `instance` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/functor--85323e74b1e101ce8fbe3da5.md) | 98 | `declaration-track:85323e74b1e101ce8fbe3da59a9b09f5160a5d1ced4725c59c2ffb40e5f52779` |
| 12 | `instance` | [lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/lawfulfunctor--3a2f6b802e26b86d344bebe2.md) | 100 | `declaration-track:3a2f6b802e26b86d344bebe26f14220aea13d2d01a592548011d33dc1f630c1a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/instance--83828fbc366208316a1be25b.md) | 102 | `declaration-track:83828fbc366208316a1be25bbad7c34cf434ff67386b7f539feec8d782a288fb` |
| 14 | `def` | [AddConst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/addconst--405704c1a87f27de4b856404.md) | 111 | `declaration-track:405704c1a87f27de4b856404e406cdf70af0c6f5a04b90cfde286d504a5cae6d` |
| 15 | `def` | [AddConst.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/addconst-mk--7c6069872746f73b9e3b0443.md) | 117 | `declaration-track:7c6069872746f73b9e3b0443f12bf66f4e1f9b8ba644bb6efef5f2e6f1d19001` |
| 16 | `def` | [AddConst.run](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/addconst-run--9510a1da0a49332b52a9c7ed.md) | 121 | `declaration-track:9510a1da0a49332b52a9c7edd9db56163092d9b88c04db19796d2f15422248f5` |
| 17 | `instance` | [AddConst.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/addconst-functor--61d8cd6226a6c460f2cb4720.md) | 124 | `declaration-track:61d8cd6226a6c460f2cb4720dd72e46c0f82b6be249a071f1df3b5592a6bb168` |
| 18 | `instance` | [AddConst.lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/addconst-lawfulfunctor--06f9965b90febde738897a79.md) | 127 | `declaration-track:06f9965b90febde738897a796e1d9545e76eabcf33ce3429e6fb16f70e42315f` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/instance--269e6840cb7bd122ddb4ad53.md) | 130 | `declaration-track:269e6840cb7bd122ddb4ad538746813f305a97d15b6605ecb9f8122a983e691d` |
| 20 | `def` | [Comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/comp--e97087100bf2bf1a1c6796ce.md) | 136 | `declaration-track:e97087100bf2bf1a1c6796ce54f355c6cc5a4d2bffe2b5901b6dee36cb7e2291` |
| 21 | `def` | [Comp.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/comp-mk--912fa4c3b0ab3cdb4624d464.md) | 142 | `declaration-track:912fa4c3b0ab3cdb4624d4643833f0fc5866b8b6613d93df18697f3ffa2f3e01` |
| 22 | `def` | [Comp.run](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/comp-run--5996784fc8dbfc26cb01de4f.md) | 146 | `declaration-track:5996784fc8dbfc26cb01de4f07ef58aba41066fd94e84dabcec923a25351f0c3` |
| 23 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/ext--48f7cb0349b59b1cbdd4e525.md) | 153 | `result-track:48f7cb0349b59b1cbdd4e5253b1b1e1083526335c983d29e3fbb05ad6f39a314` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/instance--d43be6b7586c522286372038.md) | 156 | `declaration-track:d43be6b7586c522286372038270287c011874041e56ecfb197b5e68ce3661636` |
| 25 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/map--d4dca55ec7df497b9e0d7c09.md) | 162 | `declaration-track:d4dca55ec7df497b9e0d7c09d8ab93f0aaf06b8469f3609de4e828d55f241440` |
| 26 | `instance` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/functor--379dc8244270309dc7038c8b.md) | 165 | `declaration-track:379dc8244270309dc7038c8b914d34dc46516d38f0f483b615cff47708a0e5f1` |
| 27 | `theorem` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/map-mk--bdbd1ebf5b86af13feee9813.md) | 168 | `result-track:bdbd1ebf5b86af13feee98132508bd2103cb6aea62f777f497450f574c7dd9cd` |
| 28 | `theorem` | [run_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/run-map--701ec688ac8f61472d5b36cf.md) | 172 | `result-track:701ec688ac8f61472d5b36cf4dde64d2f1b687b02cbf604e442e391778847134` |
| 29 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/id-map--ee253b017cdc00df27ea369a.md) | 179 | `result-track:ee253b017cdc00df27ea369a0481136c703c1c9f5b0d20e1b4ead3f51249d01f` |
| 30 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/comp-map--25049d6ce7c26981e4c7ce01.md) | 182 | `result-track:25049d6ce7c26981e4c7ce012fc5fc1d21c30b6cadfb29e59430551b66832f5f` |
| 31 | `instance` | [lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/lawfulfunctor--808bd047dbb1c7ee08ad804f.md) | 186 | `declaration-track:808bd047dbb1c7ee08ad804ff4d40596f6cdcaba77cab24a1aea6c4e4d04835f` |
| 32 | `theorem` | [functor_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/functor-comp-id--c43681e5f14feda864923cb6.md) | 192 | `result-track:c43681e5f14feda864923cb65977b90ed876f9b6b18d7626c0f7e29d3d7927c7` |
| 33 | `theorem` | [functor_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/functor-id-comp--578a0c2836e4f6ad6bf0bd8b.md) | 197 | `result-track:578a0c2836e4f6ad6bf0bd8bf3691f01936037248d4037618bc4b7b469d91d03` |
| 34 | `def` | [seq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/seq--3c16619506badca18bc01db6.md) | 212 | `declaration-track:3c16619506badca18bc01db6fbfe95bf92b2161a5f74483a39ac94827493465a` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/instance--b87e9799658e391552d4f0a1.md) | 217 | `declaration-track:b87e9799658e391552d4f0a1a3a319bf432eabfda7e7efa3c1356fb2c65b50f4` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/instance--91977f0cfa4198b9f3cdf68e.md) | 220 | `declaration-track:91977f0cfa4198b9f3cdf68e109eb725ac3f82c71db8c2b07654c881967abb62` |
| 37 | `theorem` | [run_pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/run-pure--ab2d882b4d075f9bd1b3f519.md) | 224 | `result-track:ab2d882b4d075f9bd1b3f51919be7b3cc75a11faa075c0126d45874ae636df52` |
| 38 | `theorem` | [run_seq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/run-seq--b7371cbf6d307cb3bf5d9a79.md) | 228 | `result-track:b7371cbf6d307cb3bf5d9a795289d830fd1bbd0fd13eef8f72796ba762bbcf72` |
| 39 | `instance` | [instApplicativeComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/instapplicativecomp--e4ec8e509fb6374d804af790.md) | 232 | `declaration-track:e4ec8e509fb6374d804af790de43c9df0a0d99a37ad4d5717a8757954e184eb7` |
| 40 | `def` | [Liftp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/liftp--32433be7d0cd6cdc9cec893f.md) | 241 | `declaration-track:32433be7d0cd6cdc9cec893f05999a788fd084e2fc0847954c96edcedbb10dc7` |
| 41 | `def` | [Liftr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/liftr--501ff5ae17e8761c4e164aeb.md) | 247 | `declaration-track:501ff5ae17e8761c4e164aeb6f91d763b3d7ee08e8c437debd7356ec9f1fb753` |
| 42 | `def` | [supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/supp--55f9be2654e377513ea1c03c.md) | 254 | `declaration-track:55f9be2654e377513ea1c03c6fb0ec72298a1321a27676197c9b955f660728b5` |
| 43 | `theorem` | [of_mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/of-mem-supp--8c48bb5278d73d942f49cd63.md) | 257 | `result-track:8c48bb5278d73d942f49cd636714a528881adef16110f324396dde7b0818bcdd` |
| 44 | `abbrev` | [mapConstRev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant129bbd7bd371e679e0e675effe7e5fd879c599ebfbcde2870ee9413b9d13405d.lean/declarations/mapconstrev--a02380cf474e7cce56b4f626.md) | 263 | `declaration-track:a02380cf474e7cce56b4f626cc018744461b99db99f60ed8a1739d3e06056726` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
