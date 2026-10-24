# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cartesian.Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e2c34ace5439a46095aa40f18bf825ac63434f0",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e2c34ace5439a46095aa40f18bf825ac63434f0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Exponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/exponentiable--f8f22edb0f25fa65d4eb2650.md) | 51 | `declaration-track:f8f22edb0f25fa65d4eb26507d71da0a88812cd832299b8842b5f2e5b621b727` |
| 2 | `abbrev` | [Exponentiable.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/exponentiable-mk--905711ec531932c86509b4fe.md) | 55 | `declaration-track:905711ec531932c86509b4fe1b7797d8756f4e41f7606374a32dd2f0b5b14751` |
| 3 | `def` | [binaryProductExponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/binaryproductexponentiable--2fe85cec9603305202c71549.md) | 63 | `declaration-track:2fe85cec9603305202c715493641929d803f0e271a885e41621fb74a7236172d` |
| 4 | `def` | [terminalExponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/terminalexponentiable--c3a52fdfd34fa4bfcd88d67d.md) | 70 | `declaration-track:c3a52fdfd34fa4bfcd88d67d153a889b5b2e55fe3105c42c71c2980696c2a1fe` |
| 5 | `abbrev` | [CartesianClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/cartesianclosed--5bea68fd113dc776d706634b.md) | 75 | `declaration-track:5bea68fd113dc776d706634bea2e80078b67a100fb1a8b5031fc2a9e9d8675ab` |
| 6 | `def` | [CartesianClosed.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/cartesianclosed-mk--1c6d26a1807000efd38f7209.md) | 80 | `declaration-track:1c6d26a1807000efd38f72092874bfdcd3c2e376debff2df14a54305937c345e` |
| 7 | `abbrev` | [exp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/exp--0f9f6a0337f55d520da205cd.md) | 86 | `declaration-track:0f9f6a0337f55d520da205cd10ea5cf05ecb472114fc4e2a53665f3cfc3fe521` |
| 8 | `abbrev` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/adjunction--02be15c2f138ccb22c7972a4.md) | 92 | `declaration-track:02be15c2f138ccb22c7972a4c6081ec17999b6c6514baaed11732ba5e3d45ca1` |
| 9 | `abbrev` | [ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/ev--c4521a5c55c2550c6fc18ca4.md) | 96 | `declaration-track:c4521a5c55c2550c6fc18ca443e7834e06382cd6e50d7befd06605bfa1fb27bb` |
| 10 | `abbrev` | [coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/coev--eca751f949e2e04feba80169.md) | 100 | `declaration-track:eca751f949e2e04feba801691e89742c5e5e8f0442507ae7c8788840c01bf907` |
| 11 | `def` | [delabPrefunctorObjExp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/delabprefunctorobjexp--09b5b8b53654ca8c1e7540f9.md) | 111 | `declaration-track:09b5b8b53654ca8c1e7540f9d00a37fda974b557ee96a7a612eae46ba62ca6b3` |
| 12 | `theorem` | [ev_coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/ev-coev--8e60f09207ceffed5b497c6a.md) | 131 | `result-track:8e60f09207ceffed5b497c6ac9f6f7d5cc911d963cb5e094d18204708fac700f` |
| 13 | `theorem` | [coev_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/coev-ev--dfb6a6951829293a5ddd1bc6.md) | 135 | `result-track:dfb6a6951829293a5ddd1bc6b2eccc7ddc45abc79bfdeecfb7a7b175ec7c1ff6` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/instance--e93f6836db44d59af6c70943.md) | 140 | `declaration-track:e93f6836db44d59af6c7094398511e0f270ce106610244d865eab46da942cdfd` |
| 15 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/curry--b4022b5b22feba94e190bcf4.md) | 149 | `declaration-track:b4022b5b22feba94e190bcf42e10efc93b4731fa5e803d2a0e5d01b540787d78` |
| 16 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/uncurry--58132a9b5f41663a55abd678.md) | 153 | `declaration-track:58132a9b5f41663a55abd6788b71f76c6cff2a2e2ab0d5f4e34cb71887f5f838` |
| 17 | `theorem` | [homEquiv_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/homequiv-apply-eq--5f8bfeb5ce29507a48878423.md) | 156 | `result-track:5f8bfeb5ce29507a488784236c14b09be3294903cd5068f63cff743eacf33087` |
| 18 | `theorem` | [homEquiv_symm_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/homequiv-symm-apply-eq--7518226ebfea417743059ba7.md) | 159 | `result-track:7518226ebfea417743059ba78fb24a598b6ffc8f16be694a62fdb9172c812391` |
| 19 | `theorem` | [curry_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/curry-natural-left--12c9d1d44098517ecc343be0.md) | 164 | `result-track:12c9d1d44098517ecc343be00658a5ac7ce5ec0ce49e4f58811d14c0273cb29f` |
| 20 | `theorem` | [curry_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/curry-natural-right--b74a23ea415f880875bd926f.md) | 169 | `result-track:b74a23ea415f880875bd926f62ef643119dc1b62a6bfaa682dfd896b62863951` |
| 21 | `theorem` | [uncurry_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/uncurry-natural-right--3f0db98f0b1dd841e8c91a91.md) | 174 | `result-track:3f0db98f0b1dd841e8c91a913e06ed94eac9be2afcb1adae9ea94ea180b0f43c` |
| 22 | `theorem` | [uncurry_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/uncurry-natural-left--3eefaa1d3d96ec3f1a056047.md) | 179 | `result-track:3eefaa1d3d96ec3f1a05604777654de9f7e0d8b715786c83cb1543fd8a71313e` |
| 23 | `theorem` | [uncurry_curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/uncurry-curry--4047b4922fe45119893cdc16.md) | 184 | `result-track:4047b4922fe45119893cdc16ecc1269869c5dd9f65c0b8ee35fbd327fd580edf` |
| 24 | `theorem` | [curry_uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/curry-uncurry--7a82d03ebdc2e9e5724b9921.md) | 188 | `result-track:7a82d03ebdc2e9e5724b9921fe71c78b3f9adee3692e3bca2c5c594b8d653749` |
| 25 | `theorem` | [curry_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/curry-eq-iff--567a0ce33235a9f6d9a23c54.md) | 191 | `result-track:567a0ce33235a9f6d9a23c545db5ab8d37d710274882268012b0c4684ecad45b` |
| 26 | `theorem` | [eq_curry_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/eq-curry-iff--63c26d963855a34fb33ffc41.md) | 194 | `result-track:63c26d963855a34fb33ffc41b58042ddb18e4a7798fc67da22ee077de731b302` |
| 27 | `theorem` | [uncurry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/uncurry-eq--2aaf5cd4bbaa4461837d3ba4.md) | 198 | `result-track:2aaf5cd4bbaa4461837d3ba40aca4560c08a9cd8de5b70ac3db0fbebf0139158` |
| 28 | `theorem` | [curry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/curry-eq--6b9118f53e5073a12bb5ee39.md) | 201 | `result-track:6b9118f53e5073a12bb5ee393144fa2fd64fb876b866e12e6af70b9438897a73` |
| 29 | `theorem` | [uncurry_id_eq_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/uncurry-id-eq-ev--12a3e0f660dd75eaadcbf958.md) | 204 | `result-track:12a3e0f660dd75eaadcbf95840a1ecb21d78dd11746ff49996c8ff3ac57f3b68` |
| 30 | `theorem` | [curry_id_eq_coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/curry-id-eq-coev--072ec48bdd1027d6a914bde6.md) | 207 | `result-track:072ec48bdd1027d6a914bde6ca89372cc397349ee0c8df45e05b6226ab847406` |
| 31 | `theorem` | [curry_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/curry-injective--6792eb573f889a171388e43e.md) | 210 | `result-track:6792eb573f889a171388e43e4bc0e1d1e25511fa67fc7c06e6243174ded1054e` |
| 32 | `theorem` | [uncurry_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/uncurry-injective--350ae3d929582268d3db351c.md) | 213 | `result-track:350ae3d929582268d3db351caea5056dc66ecdaa75149bf2afecce6dea3fb7a6` |
| 33 | `def` | [expUnitNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/expunitnatiso--b7ba5d7ca578eec437a4ad46.md) | 222 | `declaration-track:b7ba5d7ca578eec437a4ad46ad46695cce29ea73d800892b7348e69ca1597b73` |
| 34 | `def` | [expUnitIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/expunitisoself--c8e11bd04a82cee6d36670d9.md) | 227 | `declaration-track:c8e11bd04a82cee6d36670d9c7167fff33f6ce81774e01fbdde864161aec5042` |
| 35 | `def` | [internalizeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/internalizehom--79548312129464c7b4a977e9.md) | 231 | `declaration-track:79548312129464c7b4a977e938738858ec696c51d09f835fc89d8255a5c0f5ee` |
| 36 | `def` | [pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/pre--1923f7efe4fbcfb5278a1362.md) | 239 | `declaration-track:1923f7efe4fbcfb5278a1362c93cc5a55063f1ce2c543cf1158d1e5b2948e310` |
| 37 | `theorem` | [prod_map_pre_app_comp_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/prod-map-pre-app-comp-ev--1d8c48f75e9f6da6cb8673c0.md) | 242 | `result-track:1d8c48f75e9f6da6cb8673c0632e6ee64b0edfbb34b8e12eb0ebcbc7c835de09` |
| 38 | `theorem` | [uncurry_pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/uncurry-pre--5fe0300d2267d40c0a14154d.md) | 247 | `result-track:5fe0300d2267d40c0a14154d8968d94343a5e61e9409f46054b10f2960bbf456` |
| 39 | `theorem` | [coev_app_comp_pre_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/coev-app-comp-pre-app--309f83121cf249aa2b4f8a9f.md) | 251 | `result-track:309f83121cf249aa2b4f8a9fe65727c1d6593b8e678f72ecc33cf65e1179613b` |
| 40 | `theorem` | [pre_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/pre-id--e3dba46830d4dca12b94788e.md) | 258 | `result-track:e3dba46830d4dca12b94788e245c08a6a8a4c1a284825168816089eb0f7277d3` |
| 41 | `theorem` | [pre_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/pre-map--51c616dfe05c8a4f2e22d8d2.md) | 263 | `result-track:51c616dfe05c8a4f2e22d8d287b02c95ef88dfeab28ff7a03a1a7fa2a9f30ab6` |
| 42 | `def` | [internalHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/internalhom--352fd4152aac87dadfe4fb48.md) | 271 | `declaration-track:352fd4152aac87dadfe4fb488e79f2b8351130df80efd4d99474779cf34f2dc3` |
| 43 | `def` | [zeroMul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/zeromul--8a45fda5187f08d81f92137c.md) | 277 | `declaration-track:8a45fda5187f08d81f92137cbd1456314efd5da05e333dcf6bc68ebf025b1131` |
| 44 | `def` | [mulZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/mulzero--aa146a61fa281d93348ae9dc.md) | 289 | `declaration-track:aa146a61fa281d93348ae9dccc683d0de85defcf595e4e6ef6fe700f614cdf45` |
| 45 | `def` | [powZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/powzero--2b8a1bea2047c2b346b4a80d.md) | 293 | `declaration-track:2b8a1bea2047c2b346b4a80d8d2c58228e0da61051f7886cdbd3e41ae39d6892` |
| 46 | `def` | [prodCoprodDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/prodcoproddistrib--0711f475381ba1bb1ea03cc7.md) | 303 | `declaration-track:0711f475381ba1bb1ea03cc75580787f1adc6b3fb0c5e812d2e4f5ae110cb2c5` |
| 47 | `theorem` | [strict_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/strict-initial--1d575500085a4f4a5a6cc41d.md) | 326 | `result-track:1d575500085a4f4a5a6cc41dad19e9d87e3f32a9f06875e9e0d7ce3ff2afc337` |
| 48 | `instance` | [to_initial_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/to-initial-isiso--62533b8d1bd4699899119fe8.md) | 333 | `declaration-track:62533b8d1bd4699899119fe837eca12266ab807451a817bd2bc253f9fd2cb6dc` |
| 49 | `theorem` | [initial_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/initial-mono--4decd3908858ba522f5e0470.md) | 337 | `result-track:4decd3908858ba522f5e0470db6459dcaad1a3ddf2ecc2ce26ef51368d00d14f` |
| 50 | `instance` | [Initial.mono_to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/initial-mono-to--2d249a4841795de08ba6f02f.md) | 343 | `declaration-track:2d249a4841795de08ba6f02fb42c3f56aa27ae02cb0f29811c378dfb98cabc1a` |
| 51 | `def` | [cartesianClosedOfEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/declarations/cartesianclosedofequiv--8184fabdf2c8fc391a049a0c.md) | 357 | `declaration-track:8184fabdf2c8fc391a049a0c81fb90565bda6073b0eb9d96a2fe0089a466100a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
