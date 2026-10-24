# Verification target: GRWTSK.Algebra.UniversalAlgebra.FreimanHom.Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4afea7c40adf7c8ec81ca06be2363b041f29dc78",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4afea7c40adf7c8ec81ca06be2363b041f29dc78`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Multiset` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddFreimanHom](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/isaddfreimanhom--fa9b9f7becb74f4830e70cac.md) | 76 | `declaration-track:fa9b9f7becb74f4830e70cac22c10098b323d84d9fedfbbda773ee9d23edda46` |
| 2 | `structure` | [IsMulFreimanHom](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom--b0b072ef4e91dbf42ca9436d.md) | 87 | `declaration-track:b0b072ef4e91dbf42ca9436d24258d144d7d5b65673bf6f1727b584fa16d2717` |
| 3 | `structure` | [IsAddFreimanIso](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/isaddfreimaniso--6b748aaa2c2a82bae7a976c8.md) | 96 | `declaration-track:6b748aaa2c2a82bae7a976c85ecc61ff7e0b36c9a20794461a7f0a630fbd3b04` |
| 4 | `structure` | [IsMulFreimanIso](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso--660c82d53c71dc26a12d5ddf.md) | 107 | `declaration-track:660c82d53c71dc26a12d5ddf72ec5fbdcbcec9ef37b809ee85a7c8d793630098` |
| 5 | `lemma` | [IsMulFreimanIso.isMulFreimanHom](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-ismulfreimanhom--f3a125a8f66f25e587486e6e.md) | 115 | `result-track:f3a125a8f66f25e587486e6e47988faa4e0f14e601f40f66347c9afe54391748` |
| 6 | `lemma` | [IsMulFreimanHom.congr](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-congr--b62ea28a4ae772cdde5fda58.md) | 119 | `result-track:b62ea28a4ae772cdde5fda58b78e6cb627bde675a46799bf1eb6db4d05b55a0e` |
| 7 | `lemma` | [IsMulFreimanIso.congr](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-congr--f3538a65fe7a19439fdd86fc.md) | 126 | `result-track:f3538a65fe7a19439fdd86fcf4ba481fc5115abf5d27873208611969d07f9254` |
| 8 | `lemma` | [IsMulFreimanHom.mul_eq_mul](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-mul-eq-mul--b81ee7119803e146bb7e1388.md) | 134 | `result-track:b81ee7119803e146bb7e138800c66efbaa8a68157f42a85dbcd47d07cde608e2` |
| 9 | `lemma` | [IsMulFreimanIso.mul_eq_mul](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-mul-eq-mul--89fb05b7c707c5b59dd2c0a2.md) | 141 | `result-track:89fb05b7c707c5b59dd2c0a2bf615050c33e5d97b83beefec6911462177b1d2a` |
| 10 | `lemma` | [isMulFreimanHom_two](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-two--2ccb7103a7af3df90a3370f3.md) | 149 | `result-track:2ccb7103a7af3df90a3370f34b6b86152532a28be45de35ec5bd89416e65044f` |
| 11 | `lemma` | [isMulFreimanIso_two](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-two--8fb99de1537fda04a08ef205.md) | 157 | `result-track:8fb99de1537fda04a08ef205e066a02d519f6fff481c9dcf52f7500a8a663528` |
| 12 | `lemma` | [isMulFreimanHom_id](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-id--9d4dc851c3f233d5a259c5b2.md) | 163 | `result-track:9d4dc851c3f233d5a259c5b2bc241a7275dc52bbfa9fdcd5a424a05dd464b1a4` |
| 13 | `lemma` | [isMulFreimanIso_id](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-id--f83ece7f8f85635c0cde33c2.md) | 167 | `result-track:f83ece7f8f85635c0cde33c236e21cf4929609191b1a4e8fccf3ca777ceade73` |
| 14 | `lemma` | [IsMulFreimanHom.comp](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-comp--0120acd1d9e0f43cad80d650.md) | 171 | `result-track:0120acd1d9e0f43cad80d650d3d547820cec4d8a1d70beb8f2502358e72b5c9b` |
| 15 | `lemma` | [IsMulFreimanIso.comp](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-comp--d46b0e04b7710ef2b88f14e3.md) | 181 | `result-track:d46b0e04b7710ef2b88f14e3187bbd79012e7cd8fafeff719f7eff2a84bab31d` |
| 16 | `lemma` | [IsMulFreimanHom.subset](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-subset--325b556f7487223e94dd6254.md) | 191 | `result-track:325b556f7487223e94dd6254f411e35a00a92f169ddfb2cd6a4943b0b746c5bb` |
| 17 | `lemma` | [IsMulFreimanHom.superset](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-superset--a605714e5ab0ef44ef70ddd4.md) | 196 | `result-track:a605714e5ab0ef44ef70ddd4616a98e33a5118e346b75c86514a5536b231e27d` |
| 18 | `lemma` | [IsMulFreimanIso.subset](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-subset--c6c7293e81fd38e986a0f066.md) | 199 | `result-track:c6c7293e81fd38e986a0f066f2b92824418034663116db54f0ce0895f24ca501` |
| 19 | `lemma` | [isMulFreimanHom_const](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-const--b19d319c29e18d1cc49f6687.md) | 206 | `result-track:b19d319c29e18d1cc49f6687f29c440e8939e261e3ce832aec2e49fdfa1e7e83` |
| 20 | `lemma` | [isMulFreimanHom_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-zero-iff--67de58170af17ff4cbe4220c.md) | 211 | `result-track:67de58170af17ff4cbe4220c7008f56ec9368a7ac60c85b15d47fe0cd5c34d06` |
| 21 | `lemma` | [isMulFreimanIso_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-zero-iff--83f123f091f3211160970ff2.md) | 215 | `result-track:83f123f091f3211160970ff26c6106e328a3c9da747708ea86b528609db66028` |
| 22 | `lemma` | [isMulFreimanHom_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-one-iff--de6ac638626acfdc92f363f4.md) | 219 | `result-track:de6ac638626acfdc92f363f4e1bba84a2e5e7b29bb9e74940357ca74b6422d18` |
| 23 | `lemma` | [isMulFreimanIso_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-one-iff--b03ab9292ba1d1fd3a991533.md) | 223 | `result-track:b03ab9292ba1d1fd3a991533df4ee5da1614a90db1e93b155c43747dabc63f6b` |
| 24 | `lemma` | [isMulFreimanHom_empty](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-empty--a11148e5dbc2a4d0ea52e4d9.md) | 227 | `result-track:a11148e5dbc2a4d0ea52e4d94cbc6fdb364e0b6ae2429c338964b8599d4e123a` |
| 25 | `lemma` | [isMulFreimanIso_empty](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-empty--88798d8a35c426ef05323342.md) | 232 | `result-track:88798d8a35c426ef053233427ddbb84900d93dfd611749c4a49d85d09b88ee30` |
| 26 | `lemma` | [IsMulFreimanHom.mul](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-mul--4627050c21682927b36e178c.md) | 237 | `result-track:4627050c21682927b36e178c2875c5fb311816399ee9f8820b00c3aafc429adc` |
| 27 | `lemma` | [MonoidHomClass.isMulFreimanHom](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/monoidhomclass-ismulfreimanhom--80a0198d0a2f43ecc1ea012c.md) | 244 | `result-track:80a0198d0a2f43ecc1ea012ca8ebc5311329cac59bc58107234c6c418ab71071` |
| 28 | `lemma` | [MulEquivClass.isMulFreimanIso](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/mulequivclass-ismulfreimaniso--78a2f785897849088e4f56bc.md) | 249 | `result-track:78a2f785897849088e4f56bcf263a6803add85e08be2b8a92aa4a87044b73961` |
| 29 | `lemma` | [IsMulFreimanHom.subtypeVal](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-subtypeval--91bd81185a0ebd0a33f057f7.md) | 256 | `result-track:91bd81185a0ebd0a33f057f72224f2f172f20db0a1138a384c91359fe0c75074` |
| 30 | `lemma` | [IsMulFreimanHom.mono](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-mono--f813a2ca99e45bc0b60a5881.md) | 266 | `result-track:f813a2ca99e45bc0b60a5881901bb0c1b829399bf061429a34868c4ab4ee82a8` |
| 31 | `lemma` | [IsMulFreimanIso.mono](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-mono--544aa262c948536b733ca3ea.md) | 298 | `result-track:544aa262c948536b733ca3ea4f9ef8223a83843df519886865e199ba0d8267e1` |
| 32 | `lemma` | [IsMulFreimanHom.inv](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-inv--11dc7742c8b83680dcb71535.md) | 330 | `result-track:11dc7742c8b83680dcb715351be87bb03ed7ff9c1535d76790e22356baa802d5` |
| 33 | `lemma` | [IsMulFreimanHom.div](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-div--1032132860fdb9f68d8a877d.md) | 335 | `result-track:1032132860fdb9f68d8a877d4735712cd18b8bd3d5d9a6e98bd0d3e7fcc7e76e` |
| 34 | `lemma` | [IsMulFreimanHom.prodMap](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimanhom-prodmap--678883aeebe4b1406136bbeb.md) | 350 | `result-track:678883aeebe4b1406136bbeb0970b7bd4011f58119efc1c19140e9a452ea73cf` |
| 35 | `lemma` | [IsMulFreimanIso.prodMap](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/ismulfreimaniso-prodmap--f1701f03d6d9eab6e1de74ba.md) | 369 | `result-track:f1701f03d6d9eab6e1de74baea4517f5388bdffa18895387114cad852cfe9a1d` |
| 36 | `lemma` | [aux](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/aux--5411cb7d12a6816ed018829c.md) | 392 | `result-track:5411cb7d12a6816ed018829c7b13cd90f7705bf5ae19e2829f84e85ef95170ed` |
| 37 | `lemma` | [isAddFreimanIso_Iic](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/isaddfreimaniso-iic--c7dc98466c19898a2114f2b1.md) | 399 | `result-track:c7dc98466c19898a2114f2b16a5fe382b7d34a83dfa7c4bc0bc24dce9d26cb24` |
| 38 | `lemma` | [isAddFreimanIso_Iio](../../../../../mathematics/Algebra/UniversalAlgebra/FreimanHom/Variantf4fca3fec5c5765fe88c9822bdff5a0fe533c68d1df0955c675596f949707250.lean/declarations/isaddfreimaniso-iio--00941fa1528153f399674029.md) | 419 | `result-track:00941fa1528153f3996740290b38f8a0c488d1d4ba2c4ab8603528dd04614e3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
