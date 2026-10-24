# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunctions.Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebb1876c7283274e0b8611c72b32eb40595383ab",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebb1876c7283274e0b8611c72b32eb40595383ab`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/free--6b74ecf977bab8ef2e242253.md) | 37 | `declaration-track:6b74ecf977bab8ef2e24225346a1137a5f9e99b3ba2ca33dc248aac540d77e0b` |
| 2 | `def` | [freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/freemk--34e564f5da3c993fe726badb.md) | 46 | `declaration-track:34e564f5da3c993fe726badb956f195dd53afdc51ac071a262e1aa134fe01a58` |
| 3 | `lemma` | [free_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/free-hom-ext--ff7b1df3b87c1ddf805881b0.md) | 49 | `result-track:ff7b1df3b87c1ddf805881b0e21cb33413ec6a9918d724c41ec9a9bbba5ee996` |
| 4 | `def` | [freeDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/freedesc--0609fdb4d412e73a1e5756cb.md) | 56 | `declaration-track:0609fdb4d412e73a1e5756cbe805206fb062d70cb6f6dc70e1ff4e3fc17c6db2` |
| 5 | `lemma` | [freeDesc_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/freedesc-apply--56bcfc74d3abf9260deffb02.md) | 61 | `result-track:56bcfc74d3abf9260deffb0275209c733c168966fb837f4860564e532a15e899` |
| 6 | `lemma` | [free_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/free-map-apply--0f62392277a95a944b36f897.md) | 68 | `result-track:0f62392277a95a944b36f897138e793abd66d79c88680d6c97f0b6f3e10dff23` |
| 7 | `def` | [freeHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/freehomequiv--d18b232e6dcede6da4e49748.md) | 74 | `declaration-track:d18b232e6dcede6da4e49748ac1962eb571673303920134faf4dca888b8c8207` |
| 8 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/adj--954dbe2a4cbe128c76c68b29.md) | 85 | `declaration-track:954dbe2a4cbe128c76c68b2948755580ff14ab7fe6633f9abfdd2fc95eb3fb07` |
| 9 | `lemma` | [adj_homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/adj-homequiv--8b0de6adb8dd1cdaec6f882f.md) | 91 | `result-track:8b0de6adb8dd1cdaec6f882faf1913bab88d99e4250acb6d93cb4076dc143752` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/instance--aa5c6a5a84fa9bbbe6f08132.md) | 95 | `declaration-track:aa5c6a5a84fa9bbbe6f081324d09dbff61df315919b4a3de445dd431783d0e9d` |
| 11 | `def` | [εIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/iso--1dcb7156c2176b97c6fdb893.md) | 111 | `declaration-track:1dcb7156c2176b97c6fdb8936936ad88ff3f19bcf5464762cb4b90f4b6bc6593` |
| 12 | `lemma` | [εIso_hom_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/iso-hom-one--459df32418d03a867427e6a9.md) | 124 | `result-track:459df32418d03a867427e6a9c89a3a541425281caef9747698dce3f8aa51f799` |
| 13 | `lemma` | [εIso_inv_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/iso-inv-freemk--81661c9ed12935d385ba0369.md) | 127 | `result-track:81661c9ed12935d385ba0369b9c6fe683e7358f670fdeb0f0dfd2c72dd5ff06a` |
| 14 | `def` | [μIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/iso--af2a96bd1c01d77c392c3cec.md) | 136 | `declaration-track:af2a96bd1c01d77c392c3ceca8d24bd010c5a70d79cd7f3799c97c2d7e2d3a28` |
| 15 | `lemma` | [μIso_hom_freeMk_tmul_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/iso-hom-freemk-tmul-freemk--f98c6c4d3bc7a95a6986156f.md) | 141 | `result-track:f98c6c4d3bc7a95a6986156f51fbdd513fbb9d7e186401f5eb83677c060676cf` |
| 16 | `lemma` | [μIso_inv_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/iso-inv-freemk--f49164ec8d02c0667d068f3f.md) | 148 | `result-track:f49164ec8d02c0667d068f3f23d7a30573394b4f8a1e43cea2be13e272df4851` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/instance--ec5eaedef1e3e8a467eb6425.md) | 157 | `declaration-track:ec5eaedef1e3e8a467eb6425075ea54fbee7f4f4a7873134c2fecccc85f69cbd` |
| 18 | `lemma` | [free_ε_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/free-one--9402d8344c2382b22e5f566d.md) | 187 | `result-track:9402d8344c2382b22e5f566dbb8c83bfba44f4a7564c7f6264bdf97f983c7f92` |
| 19 | `lemma` | [free_η_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/free-freemk--130bb4a4d09f5fd7fc31a1ef.md) | 190 | `result-track:130bb4a4d09f5fd7fc31a1efde98afecd1afaa4a6e6b604558423abf19eea053` |
| 20 | `lemma` | [free_μ_freeMk_tmul_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/free-freemk-tmul-freemk--70cc5225b6345a0e360fb660.md) | 194 | `result-track:70cc5225b6345a0e360fb660d28c0d10a9857495e0a329a1d73a1ffb9e6838c4` |
| 21 | `lemma` | [free_δ_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/free-freemk--0e8e5d7d24e3f01e3cdb1c26.md) | 199 | `result-track:0e8e5d7d24e3f01e3cdb1c261a5aa26e61498abb2954a040fa846415f1b5d070` |
| 22 | `def` | [Free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/free--0c7e2433fd3b6f734dd565e7.md) | 216 | `declaration-track:0c7e2433fd3b6f734dd565e78c82de5c6798f68ff8d18704ad1d323a5a29af36` |
| 23 | `def` | [Free.of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/free-of--d279608edb5cba3030508f19.md) | 224 | `declaration-track:d279608edb5cba3030508f19a3df7d5cd252859ad3d3b8a340c183bf29c25063` |
| 24 | `instance` | [categoryFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/categoryfree--270bb9883cd9edb075b89353.md) | 234 | `declaration-track:270bb9883cd9edb075b8935378901412819868b4382c37a128eccc386d92a900` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/instance--be3b808169ea246debf56ca1.md) | 249 | `declaration-track:be3b808169ea246debf56ca10dbc1d82615891d762d74d7debc6ae68fe76b962` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/instance--3f821ecc3b5e4dcc1360a970.md) | 260 | `declaration-track:3f821ecc3b5e4dcc1360a9701038c9115539fe43a33ef9ebab7028b6fdefc851` |
| 27 | `theorem` | [single_comp_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/single-comp-single--1865fc65982ef3c0b1bd5656.md) | 271 | `result-track:1865fc65982ef3c0b1bd5656526bf30eafbb47ab684baea336fd0ed58dec2774` |
| 28 | `def` | [embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/embedding--311aebceb247c425c0086a7a.md) | 282 | `declaration-track:311aebceb247c425c0086a7a2e3d0e214e21ae41e3a1408d5612457765d6377e` |
| 29 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/lift--5e32c4af504040ee00ca8c8a.md) | 297 | `declaration-track:5e32c4af504040ee00ca8c8a4c7e9c894f747bf7f3d25e59b54ece56be376fff` |
| 30 | `theorem` | [lift_map_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/lift-map-single--d4dfc59d9d33349af209c6d7.md) | 327 | `result-track:d4dfc59d9d33349af209c6d761bf5692f8a20cf594e1e011ed5380b34ea8ed17` |
| 31 | `instance` | [lift_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/lift-additive--296fa356c15420f1fee24fe2.md) | 330 | `declaration-track:296fa356c15420f1fee24fe2bb8ea8a5cb20300072e9deee948487a3f6f44105` |
| 32 | `instance` | [lift_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/lift-linear--43dd15baaa1daf9ba7993ccc.md) | 335 | `declaration-track:43dd15baaa1daf9ba7993ccc90e8fe5f2fc3cb9d805ecbf041e76c3e57dd229a` |
| 33 | `def` | [embeddingLiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/embeddingliftiso--9fbefb91bb196314c60bf907.md) | 343 | `declaration-track:9fbefb91bb196314c60bf907bda5723cbf2f306c7d56d24be0e0df217b19af48` |
| 34 | `def` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/ext--c54428e85d655b9c50d9735e.md) | 349 | `declaration-track:c54428e85d655b9c50d9735e955d72e72c67f6b7ba44f1e362a33a22dfd32dd8` |
| 35 | `def` | [liftUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/declarations/liftunique--3e8c37c1a5764bb832c0bcf4.md) | 367 | `declaration-track:3e8c37c1a5764bb832c0bcf47e6e8abd540bcee9b8b613bb8996f2592c280903` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
