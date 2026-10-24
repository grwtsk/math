# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GaloisObjects.Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f1224d00136de1615caf805d6e28dad5ab7fede",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f1224d00136de1615caf805d6e28dad5ab7fede`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FintypeCat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.SingleObj` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/instance--df8de99f46276a8a2ffe7df2.md) | 45 | `declaration-track:df8de99f46276a8a2ffe7df2d5c4ec33013a7365d3661f045a8aa0a8d073ddb8` |
| 2 | `class` | [IsGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/isgalois--cb738ee1e12913798f77e741.md) | 51 | `declaration-track:cb738ee1e12913798f77e7413a3e15587eb72b36206a174de74450f21723536e` |
| 3 | `instance` | [autMulFiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/autmulfiber--f79356d7d530f6ea3e94807c.md) | 58 | `declaration-track:f79356d7d530f6ea3e94807c10cbb366d754b51cc5dc2380cd5a2f841db652ae` |
| 4 | `def` | [quotientByAutTerminalEquivUniqueQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/quotientbyautterminalequivuniquequotient--f94a057a518f25545092d52d.md) | 71 | `declaration-track:f94a057a518f25545092d52d5d283d8f27c266c38f468f7682cc5334a85538c4` |
| 5 | `lemma` | [isGalois_iff_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/isgalois-iff-aux--ff5c95d942f2faa75629cec4.md) | 84 | `result-track:ff5c95d942f2faa75629cec402cf2edc64a6f26c1fc2fc967eba657fb02b0eab` |
| 6 | `theorem` | [isGalois_iff_pretransitive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/isgalois-iff-pretransitive--e08eac9ddabfd5257ba2661b.md) | 90 | `result-track:e08eac9ddabfd5257ba2661bb2c12ae27ec75f6da4fe8f5b01ee7a2aa8a37a17` |
| 7 | `def` | [isTerminalQuotientOfIsGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/isterminalquotientofisgalois--45771ab3ad0fec3979baa1aa.md) | 96 | `declaration-track:45771ab3ad0fec3979baa1aa2c9186558252815418d27ec1879f70558e1b0260` |
| 8 | `instance` | [isPretransitive_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/ispretransitive-of-isgalois--318f6a8be260e039f30f4034.md) | 102 | `declaration-track:318f6a8be260e039f30f4034e30ba6017703c414c1e548c5a94b83adfc0cbd89` |
| 9 | `lemma` | [stabilizer_normal_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/stabilizer-normal-of-isgalois--229cb8c9b98eadba5468fd25.md) | 107 | `result-track:229cb8c9b98eadba5468fd2518759856de95a0b69190bb318bdfbd8769a60b5a` |
| 10 | `theorem` | [evaluation_aut_surjective_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/evaluation-aut-surjective-of-isgalois--e8593f1b4113e806fa320889.md) | 118 | `result-track:e8593f1b4113e806fa320889592f08636bcdad39ee9fa2a54378c2c748416ab9` |
| 11 | `theorem` | [evaluation_aut_bijective_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/evaluation-aut-bijective-of-isgalois--31270402befff73c11037808.md) | 122 | `result-track:31270402befff73c11037808dfc2ce7fa700e705a48c07177ed768466d920111` |
| 12 | `def` | [evaluationEquivOfIsGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/evaluationequivofisgalois--78ce4f08c37654d711a534aa.md) | 127 | `declaration-track:78ce4f08c37654d711a534aad15f2ccc3d59cbbcb6f2e431aed71e3e1613df2d` |
| 13 | `lemma` | [evaluationEquivOfIsGalois_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/evaluationequivofisgalois-apply--674842098450ab69d6309fc8.md) | 131 | `result-track:674842098450ab69d6309fc896c8a2fcd135256088ab5982066c4997e88bd5a6` |
| 14 | `lemma` | [evaluationEquivOfIsGalois_symm_fiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/evaluationequivofisgalois-symm-fiber--4473909e91b549cf08e42d2f.md) | 136 | `result-track:4473909e91b549cf08e42d2fb935d30ca23dceaca7643477eb43ff95eb97a4c5` |
| 15 | `lemma` | [exists_autMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/exists-autmap--4967cfe1bf4adf774997697e.md) | 145 | `result-track:4967cfe1bf4adf774997697e305156d3609cbadcbdf5fc5d2edd2db9c227d225` |
| 16 | `def` | [autMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/autmap--e92145b31e06b87f61fcc97f.md) | 159 | `declaration-track:e92145b31e06b87f61fcc97ff2ba59ec80afdfc9ce6dc8a1e2ef16090569c0b9` |
| 17 | `lemma` | [comp_autMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/comp-autmap--b33841c204548d80369c94b6.md) | 164 | `result-track:b33841c204548d80369c94b6dd12a4af533add2154f2700d2164d35a3ee2c536` |
| 18 | `lemma` | [comp_autMap_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/comp-autmap-apply--8c0655be7660af2c95bc7a81.md) | 169 | `result-track:8c0655be7660af2c95bc7a81f4e0d982ddf482b004bb10ab867fa58270f7e33b` |
| 19 | `lemma` | [autMap_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/autmap-unique--8136031dc8de18d07f12ce66.md) | 175 | `result-track:8136031dc8de18d07f12ce6610f676fc952abb81750b61dedab2ee0edd0e3f13` |
| 20 | `lemma` | [autMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/autmap-id--0482c80dd639314ce72597e0.md) | 181 | `result-track:0482c80dd639314ce72597e05a05024e0ae1ff95b283850f27a3f4806e01a2e1` |
| 21 | `lemma` | [autMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/autmap-comp--ce672ade7d7491b4c0bd01f7.md) | 185 | `result-track:ce672ade7d7491b4c0bd01f78d4a86bc126a567f2f0e679fdfe952def16e86c4` |
| 22 | `lemma` | [autMap_surjective_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/autmap-surjective-of-isgalois--434e6984bbdffd9b6c02465e.md) | 192 | `result-track:434e6984bbdffd9b6c02465eef6859964a3600b028f1d037b7dacf90a0e6025b` |
| 23 | `lemma` | [autMap_apply_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/autmap-apply-mul--18cc94b81b13ecbf9c39f31c.md) | 204 | `result-track:18cc94b81b13ecbf9c39f31c550814aa3cb62161598793d9e496e4fd6374fc0c` |
| 24 | `def` | [autMapHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/declarations/autmaphom--07df67d7a995c8a95df64d06.md) | 213 | `declaration-track:07df67d7a995c8a95df64d06750dae2721049e217f3e4024decd4cdafc4f56c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
