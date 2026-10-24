# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomotopyCategory.Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6de3e4c7270c24a477a9ed12a256bc40b5585d2a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6de3e4c7270c24a477a9ed12a256bc40b5585d2a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homotopic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/homotopic--a02f6acfc6ed65ad19ff38db.md) | 45 | `declaration-track:a02f6acfc6ed65ad19ff38db8074eacd1e412b48cb080d073efc340b589edab3` |
| 2 | `instance` | [homotopy_congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/homotopy-congruence--5442f5f50e5c1f4137d23852.md) | 48 | `declaration-track:5442f5f50e5c1f4137d2385275915b4081220ff2514a066e95f3f717dc762d64` |
| 3 | `def` | [HomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/homotopycategory--dbd216557dfa379f187696dd.md) | 59 | `declaration-track:dbd216557dfa379f187696dd43bd33aad498d6d644c396aac2ab72abc7ad97f5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/instance--f6e99ba804cb95816e2fceb6.md) | 63 | `declaration-track:f6e99ba804cb95816e2fceb62a779815cf2399b29b8445a2de0137a4d9423b4e` |
| 5 | `def` | [quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/quotient--f7440ee991b2743cb83937fa.md) | 71 | `declaration-track:f7440ee991b2743cb83937faa8d4c6a4eb45f1375f70dfae5eef00ef50684de6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/instance--4e3355b87751d758c4dd86e8.md) | 78 | `declaration-track:4e3355b87751d758c4dd86e832504ae9a1ba768291fda2bd09845710995adee8` |
| 7 | `theorem` | [quotient_obj_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/quotient-obj-as--b21100b3d2e9dc87261b89ac.md) | 85 | `result-track:b21100b3d2e9dc87261b89acb8c9ec145ff46da566cdd9c95f6fadb32413358d` |
| 8 | `theorem` | [quotient_map_out](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/quotient-map-out--57caff6b23c469984307952e.md) | 90 | `result-track:57caff6b23c469984307952e6eb53f5b35b7df6119fdff225c47d3ceaf335a6a` |
| 9 | `theorem` | [quot_mk_eq_quotient_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/quot-mk-eq-quotient-map--0c363dc95ac99d770f3d2fe4.md) | 95 | `result-track:0c363dc95ac99d770f3d2fe49d4bdcb741d7d47c4d93f8452c3057289b81aa11` |
| 10 | `theorem` | [eq_of_homotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/eq-of-homotopy--f49a11c656638feea08dfb72.md) | 98 | `result-track:f49a11c656638feea08dfb7289c1bf2083b4f62e3609e0bd9d62745842b0bc6a` |
| 11 | `def` | [homotopyOfEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/homotopyofeq--7f350a41d38211092b96429c.md) | 104 | `declaration-track:7f350a41d38211092b96429c42bf5e70360ad6b905a65d04e9beb26efa089831` |
| 12 | `def` | [homotopyOutMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/homotopyoutmap--c3614e60afc5362860fa47ff.md) | 112 | `declaration-track:c3614e60afc5362860fa47ff55b5394a35dcbce276880d6ce9fec87e917d8e9e` |
| 13 | `theorem` | [quotient_map_out_comp_out](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/quotient-map-out-comp-out--50be563ff5f4b81dff3c2c2e.md) | 119 | `result-track:50be563ff5f4b81dff3c2c2e3f0d6943a031670343e60ad368e23ee5152d8573` |
| 14 | `def` | [isoOfHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/isoofhomotopyequiv--55ae142d74a4438d6bea7b07.md) | 125 | `declaration-track:55ae142d74a4438d6bea7b073fb977afaab6b731435de51accb024081faa3348` |
| 15 | `def` | [homotopyEquivOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/homotopyequivofiso--74788c9965865bff93bd9a61.md) | 139 | `declaration-track:74788c9965865bff93bd9a61ba227313946cb1600169f7527b808d7db16936df` |
| 16 | `def` | [homologyFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/homologyfunctor--7472b87c308179e686b3bedf.md) | 155 | `declaration-track:7472b87c308179e686b3bedf9deab7af714ef6bd2e65436e0b9f5c2c63c09a0d` |
| 17 | `def` | [homologyFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/homologyfactors--79f887658f2299f09aba90a8.md) | 161 | `declaration-track:79f887658f2299f09aba90a84ec8c8702ba02320ae8f3ef1d0787c45591c2ea1` |
| 18 | `theorem` | [homologyFactors_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/homologyfactors-hom-app--8d9ee32cb1c7292e1e3c6fcd.md) | 167 | `result-track:8d9ee32cb1c7292e1e3c6fcd839ea6088f8f34aa4573d4054529d94f8ae7e0b6` |
| 19 | `theorem` | [homologyFactors_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/homologyfactors-inv-app--0ba46fc166f7cb1d3074c0e9.md) | 173 | `result-track:0ba46fc166f7cb1d3074c0e9b35b87b3df1dbbba358ecfb735d81e4cf402017f` |
| 20 | `theorem` | [homologyFunctor_map_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/homologyfunctor-map-factors--a6f5405b5018ec4e5d84159e.md) | 178 | `result-track:a6f5405b5018ec4e5d84159e2d1a47abf99184e935b6f654ecfd625e962ff208` |
| 21 | `def` | [Functor.mapHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/functor-maphomotopycategory--22d033925ef2855852f77b02.md) | 193 | `declaration-track:22d033925ef2855852f77b02f0e8ab9449fb363e6a8518201fc17605b3319e14` |
| 22 | `lemma` | [Functor.mapHomotopyCategory_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/functor-maphomotopycategory-map--8af1fb3d5871ebeb561ec112.md) | 201 | `result-track:8af1fb3d5871ebeb561ec11242e19ec1703b6e38fcafe57c090439f90428215c` |
| 23 | `def` | [NatTrans.mapHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/nattrans-maphomotopycategory--9b2dc4efe76003565865e967.md) | 213 | `declaration-track:9b2dc4efe76003565865e9672da87e7fb2cef4edc1ecf461af78a1df970ea5a0` |
| 24 | `theorem` | [NatTrans.mapHomotopyCategory_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/nattrans-maphomotopycategory-id--9df0128e28ad6147a9830bca.md) | 223 | `result-track:9df0128e28ad6147a9830bca7d1b0afebebabb8b56031ff678f7a4c446eca9a0` |
| 25 | `theorem` | [NatTrans.mapHomotopyCategory_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/declarations/nattrans-maphomotopycategory-comp--5f49959ffe5e06b4b79a492a.md) | 228 | `result-track:5f49959ffe5e06b4b79a492a360fccd1b1b22e900883dad6131fc5264f1cced9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
