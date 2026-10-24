# Verification target: GRWTSK.Algebra.UniversalAlgebra.FreimanHom.Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56fecdd60efa4df5eef11b5380d8f76593fd149a",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56fecdd60efa4df5eef11b5380d8f76593fd149a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Multiset` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddFreimanHom](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/isaddfreimanhom--8ef7e7b94bad956d47d038ff.md) | 84 | `declaration-track:8ef7e7b94bad956d47d038ffc748ed916a100fcf701e80b6cef3947e4c4a4de5` |
| 2 | `structure` | [IsMulFreimanHom](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom--e415baf5c9f88d81301f1b62.md) | 95 | `declaration-track:e415baf5c9f88d81301f1b62f8d4b7f50241f8b903911a0820d30e7da932effb` |
| 3 | `structure` | [IsAddFreimanIso](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/isaddfreimaniso--b0bfb99bb21e005a8f83eabf.md) | 104 | `declaration-track:b0bfb99bb21e005a8f83eabfe71d5da0087528731b5f0942fd4ce59b5d690275` |
| 4 | `structure` | [IsMulFreimanIso](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso--2b44c58831bbde102f816ffd.md) | 115 | `declaration-track:2b44c58831bbde102f816ffd6b2e4feeaa91d2d1287e4ed636f2d1d496cf358c` |
| 5 | `lemma` | [IsMulFreimanIso.isMulFreimanHom](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-ismulfreimanhom--034854053ddd27a0032644b1.md) | 123 | `result-track:034854053ddd27a0032644b1d41e9e66bf7cb6b2be7713b39b920e4ad69dab81` |
| 6 | `lemma` | [IsMulFreimanHom.congr](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-congr--69ccd6f05d59453a5d6956c7.md) | 127 | `result-track:69ccd6f05d59453a5d6956c7b5e11dbb356189a4152e7610d3663f15e920ad24` |
| 7 | `lemma` | [IsMulFreimanIso.congr](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-congr--2a8ccd8c7f8fa23442366d50.md) | 134 | `result-track:2a8ccd8c7f8fa23442366d50e87642a26d236e46ce0c5bb6d153a4be24f7ef9f` |
| 8 | `lemma` | [IsMulFreimanHom.mul_eq_mul](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-mul-eq-mul--8b8ac7f4910f9810ae2bf252.md) | 142 | `result-track:8b8ac7f4910f9810ae2bf252343cd67a80537ea4e09b2ae7715045b73ad7b3b0` |
| 9 | `lemma` | [IsMulFreimanIso.mul_eq_mul](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-mul-eq-mul--a4ded8e43c75a2e3dba7d84b.md) | 149 | `result-track:a4ded8e43c75a2e3dba7d84bff234e1f103fc7bb9952895cf222b683bedf7d6a` |
| 10 | `lemma` | [isMulFreimanHom_two](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-two--077dfcc796d030fcf2077e14.md) | 157 | `result-track:077dfcc796d030fcf2077e143b4e128f9a1592f41c9222d2c40957ff57ba2b40` |
| 11 | `lemma` | [isMulFreimanIso_two](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-two--9432bd299a8b1add9ec92807.md) | 165 | `result-track:9432bd299a8b1add9ec9280780eea62a523ddbdb85f08354e0920adf0c39b866` |
| 12 | `lemma` | [isMulFreimanHom_id](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-id--48a83e9a4c994d17086f8880.md) | 171 | `result-track:48a83e9a4c994d17086f88802ea057b5b47ab4da1b7c52f1687d273c2cd0101a` |
| 13 | `lemma` | [isMulFreimanIso_id](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-id--dd7cef85b7e2a9ab75cdabd3.md) | 175 | `result-track:dd7cef85b7e2a9ab75cdabd39676d3bf9108cab9fbccd315fc61e105197f3ab3` |
| 14 | `lemma` | [IsMulFreimanHom.comp](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-comp--bfe1320725b7af0ea042f9b8.md) | 179 | `result-track:bfe1320725b7af0ea042f9b895596e2bc911945e39598696711fa05b455ba9a1` |
| 15 | `lemma` | [IsMulFreimanIso.comp](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-comp--9fefb90c91ba5b0126aa6e97.md) | 189 | `result-track:9fefb90c91ba5b0126aa6e97bc71309bcec612bb420260bf300b9c658fac4dcd` |
| 16 | `lemma` | [IsMulFreimanHom.subset](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-subset--afa7f8b840aa3bad5b3980ca.md) | 199 | `result-track:afa7f8b840aa3bad5b3980ca990b82ef24dd7c2f00750f2a750bc69151f8281b` |
| 17 | `lemma` | [IsMulFreimanHom.superset](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-superset--28ab25fe935f8cac08692e38.md) | 204 | `result-track:28ab25fe935f8cac08692e3834ce5914a4954cf00d4ce9e3267e3d4e93550c1e` |
| 18 | `lemma` | [IsMulFreimanIso.subset](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-subset--1386c43ff43147b2d0b7a69e.md) | 207 | `result-track:1386c43ff43147b2d0b7a69e6a3faa0a7fa540d4d0ab6596bb2efdfd272e3454` |
| 19 | `lemma` | [isMulFreimanHom_const](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-const--3e263c4a9815fdda180c7fd6.md) | 214 | `result-track:3e263c4a9815fdda180c7fd65680d017609a70a3651c90a918c5f73c867264a6` |
| 20 | `lemma` | [isMulFreimanHom_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-zero-iff--475ffcef244e990853d2ddc1.md) | 219 | `result-track:475ffcef244e990853d2ddc12a10ac5b55bd47112385f584a82b49b4b3e3c2a0` |
| 21 | `lemma` | [isMulFreimanIso_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-zero-iff--9c8033f2463245c37752f124.md) | 223 | `result-track:9c8033f2463245c37752f1247c5fd6610f460537224431fde0348476e5cc0856` |
| 22 | `lemma` | [isMulFreimanHom_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-one-iff--e5e456949783b22cb89cd127.md) | 227 | `result-track:e5e456949783b22cb89cd12735d63278ab063c78ec22d0d44d4035bdf747f6b2` |
| 23 | `lemma` | [isMulFreimanIso_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-one-iff--a6843bc189af5b7d926b6f2c.md) | 231 | `result-track:a6843bc189af5b7d926b6f2c94b5f189ddf1efa5f26af0bb2eec2fa9c2a738c2` |
| 24 | `lemma` | [isMulFreimanHom_empty](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-empty--72340bd69ba8c53ee8467a71.md) | 235 | `result-track:72340bd69ba8c53ee8467a711d8b8711ee808e7bc1efeee9a4b5c1cf8ca80af9` |
| 25 | `lemma` | [isMulFreimanIso_empty](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-empty--ee15d6d238d9c09818195eff.md) | 240 | `result-track:ee15d6d238d9c09818195eff00d908012070465d8c844ecf3e6a33eb02b66333` |
| 26 | `lemma` | [IsMulFreimanHom.mul](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-mul--c9508353b6c782e00fd4201e.md) | 245 | `result-track:c9508353b6c782e00fd4201e3f170f0291e793952efa350ca131f86f2121245f` |
| 27 | `lemma` | [MonoidHomClass.isMulFreimanHom](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/monoidhomclass-ismulfreimanhom--67dcf6cefbac4d5170d41b62.md) | 252 | `result-track:67dcf6cefbac4d5170d41b623e1e9ce3c2c79407657909de69a60d9d14997091` |
| 28 | `lemma` | [MulEquivClass.isMulFreimanIso](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/mulequivclass-ismulfreimaniso--1585a91dbc4f6a004fa5c18c.md) | 257 | `result-track:1585a91dbc4f6a004fa5c18cc02ddba1ac3964ca9dfbc602a4bdac5b8fbf8f2b` |
| 29 | `lemma` | [IsMulFreimanHom.subtypeVal](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-subtypeval--5771eccbc887ea587b52a9eb.md) | 264 | `result-track:5771eccbc887ea587b52a9ebeefb270e9b6e8be5769f4e6f7405ffdacc199f36` |
| 30 | `lemma` | [IsMulFreimanHom.mono](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-mono--e46e17ffeba729a3c5a62762.md) | 274 | `result-track:e46e17ffeba729a3c5a62762146be8f536208281176b97925030abfb3fd79d0e` |
| 31 | `lemma` | [IsMulFreimanIso.mono](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-mono--61fcd79327759fddce25ad00.md) | 306 | `result-track:61fcd79327759fddce25ad004f39f3f47a92f7f48848d51601521ef955f7df85` |
| 32 | `lemma` | [IsMulFreimanHom.inv](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-inv--975a7db519681206e00767a4.md) | 338 | `result-track:975a7db519681206e00767a4d6c043b22bf69cdbbf5427d5b185330510c8478c` |
| 33 | `lemma` | [IsMulFreimanHom.div](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-div--e4d59ccd59fa0dd00ac2f76c.md) | 343 | `result-track:e4d59ccd59fa0dd00ac2f76c5a41c6465104df702b044b652382b893533c59cd` |
| 34 | `lemma` | [IsMulFreimanHom.prodMap](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimanhom-prodmap--0f2ea9a00a1d7001919aa8b3.md) | 358 | `result-track:0f2ea9a00a1d7001919aa8b375f7685d021b3684616d75ad9316152507834e5b` |
| 35 | `lemma` | [IsMulFreimanIso.prodMap](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/ismulfreimaniso-prodmap--1e6bce4cd2ee8483ed572604.md) | 377 | `result-track:1e6bce4cd2ee8483ed572604037b11f499e9e3a7107e7f13661fe9a9d99ec806` |
| 36 | `lemma` | [aux](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/aux--a99aea6421ed5b662279d383.md) | 400 | `result-track:a99aea6421ed5b662279d3835f43ea756354eef7c3e4111ea34c19d03f107c40` |
| 37 | `lemma` | [isAddFreimanIso_Iic](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/isaddfreimaniso-iic--e2873720ceeffa327301c5e4.md) | 407 | `result-track:e2873720ceeffa327301c5e4ec73860e91b49ade7b308da2dd1206b606a198d1` |
| 38 | `lemma` | [isAddFreimanIso_Iio](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/declarations/isaddfreimaniso-iio--f606936f02f1985f20eb3fcd.md) | 427 | `result-track:f606936f02f1985f20eb3fcd82e8b1993dee0ecc2903e258e88bc305ff367e98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
