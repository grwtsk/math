# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FreeAbelianGroupFinsupp.Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "578aab823e486601438bc713fdf5d3ab67fd8099",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `578aab823e486601438bc713fdf5d3ab67fd8099`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.TypeTags` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeAbelianGroup` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.IsFreeGroup` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeAbelianGroup.toFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/freeabeliangroup-tofinsupp--41e42e521071b138d081433f.md) | 37 | `declaration-track:41e42e521071b138d081433f76ae0b178fe4c8b72a75db8077522eb5f337b781` |
| 2 | `def` | [Finsupp.toFreeAbelianGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/finsupp-tofreeabeliangroup--2279316a2626b5438dbbdad3.md) | 42 | `declaration-track:2279316a2626b5438dbbdad3157689d823bff0458e8ed4a595ff7f7c7ee6b541` |
| 3 | `theorem` | [Finsupp.toFreeAbelianGroup_comp_singleAddHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/finsupp-tofreeabeliangroup-comp-singleaddhom--643741125ef0bf4dc99b5c98.md) | 49 | `result-track:643741125ef0bf4dc99b5c98a7e38a15a70939d8e9ca9275f106526e8a564f9c` |
| 4 | `theorem` | [FreeAbelianGroup.toFinsupp_comp_toFreeAbelianGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/freeabeliangroup-tofinsupp-comp-tofreeabeliangroup--27ded57174819d3eca237dff.md) | 58 | `result-track:27ded57174819d3eca237dff2b57dca8f8776a1c76d63648dd9c28bada7e25e9` |
| 5 | `theorem` | [Finsupp.toFreeAbelianGroup_comp_toFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/finsupp-tofreeabeliangroup-comp-tofinsupp--2ebf75f2cfbc27ff5ecf0e84.md) | 67 | `result-track:2ebf75f2cfbc27ff5ecf0e84955d48ff3576c54f7d43767442ad04cb0f353bb6` |
| 6 | `theorem` | [Finsupp.toFreeAbelianGroup_toFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/finsupp-tofreeabeliangroup-tofinsupp--0028e4a4dd92c0330d683e91.md) | 76 | `result-track:0028e4a4dd92c0330d683e91f9a9c91c566534146f7bc906d08f56945bed69f4` |
| 7 | `theorem` | [toFinsupp_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/tofinsupp-of--7d6475da9e795a72965eebbc.md) | 86 | `result-track:7d6475da9e795a72965eebbc164343819f8c891b533f0ec2680672665cee1423` |
| 8 | `theorem` | [toFinsupp_toFreeAbelianGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/tofinsupp-tofreeabeliangroup--bdd16a944e2e9d32ad0e167e.md) | 91 | `result-track:bdd16a944e2e9d32ad0e167e992c59bed8a25ef2e8639b94f8fc99d56c93f8c9` |
| 9 | `def` | [equivFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/equivfinsupp--816dc1705b57f90a6a932d8d.md) | 100 | `declaration-track:816dc1705b57f90a6a932d8d09e6c65faa036eb696dfc28c7fdbfc47c32e32eb` |
| 10 | `def` | [basis](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/basis--fd41e2c00894e20f7ae1f92a.md) | 109 | `declaration-track:fd41e2c00894e20f7ae1f92a3902f3f9ff5a3a934d2ac37ff95fb8463aeeb89f` |
| 11 | `def` | [Equiv.ofFreeAbelianGroupLinearEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/equiv-offreeabeliangrouplinearequiv--44b57a8c2a76673c71b24f0a.md) | 114 | `declaration-track:44b57a8c2a76673c71b24f0ae789569f809d6858387ec7952e4cb8be8478754a` |
| 12 | `def` | [Equiv.ofFreeAbelianGroupEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/equiv-offreeabeliangroupequiv--0b59d8a387d39999795ffd8b.md) | 121 | `declaration-track:0b59d8a387d39999795ffd8b11305344b14c607d593c7f6934d62457db80d33a` |
| 13 | `def` | [Equiv.ofFreeGroupEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/equiv-offreegroupequiv--7779d70300a4b5eb32e12234.md) | 127 | `declaration-track:7779d70300a4b5eb32e12234e39143c0d1b6afec8d8e342d7b7c52fc4879a18c` |
| 14 | `def` | [Equiv.ofIsFreeGroupEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/equiv-ofisfreegroupequiv--40e8590d71d253e4000650b2.md) | 134 | `declaration-track:40e8590d71d253e4000650b2b1a7175445cd86d36065bfacaa60bd8f37688125` |
| 15 | `def` | [coeff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/coeff--3e2251d4c95d3a008526e2ad.md) | 143 | `declaration-track:3e2251d4c95d3a008526e2ad03429fa1155ce03ab9c47a3cd2d412b6d3776d13` |
| 16 | `def` | [support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/support--1ec8afd6e09502099b055eb7.md) | 149 | `declaration-track:1ec8afd6e09502099b055eb74e7af8476d43b3f910123b0359c73329dd2db4ac` |
| 17 | `theorem` | [mem_support_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/mem-support-iff--8c1ae5bd72836574962e21d2.md) | 153 | `result-track:8c1ae5bd72836574962e21d271f74878e6622894e9922bd0f299b68e9b0a1435` |
| 18 | `theorem` | [not_mem_support_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/not-mem-support-iff--fd1363abfb5a4c74af65b42e.md) | 158 | `result-track:fd1363abfb5a4c74af65b42ec1000dde6a63f4a3c9004c2884db943afc5f3c8d` |
| 19 | `theorem` | [support_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/support-zero--4196e60b78f662019dedafce.md) | 164 | `result-track:4196e60b78f662019dedafce51fb973d8367de2d9bdba0a672e779e16d3006a1` |
| 20 | `theorem` | [support_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/support-of--52ae44ed49660cd1a6262de4.md) | 169 | `result-track:52ae44ed49660cd1a6262de4c9d50254b0750125cd92bbfbbfd05bb90fccbaec` |
| 21 | `theorem` | [support_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/support-neg--5b65998df121713f49876346.md) | 174 | `result-track:5b65998df121713f49876346b3d385e88e5619b89086be5fe736f2efb7cb90d7` |
| 22 | `theorem` | [support_zsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/support-zsmul--89ca964f699cc0a10ecc71f3.md) | 179 | `result-track:89ca964f699cc0a10ecc71f376089e7318bf7367e93b68220f8752224533e4c9` |
| 23 | `theorem` | [support_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/support-nsmul--115b23091174eb2529cebf32.md) | 187 | `result-track:115b23091174eb2529cebf328fc39689b0866b8125729a062d261926ec628e37` |
| 24 | `theorem` | [support_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/declarations/support-add--315f35c40de370a37d17e0f3.md) | 195 | `result-track:315f35c40de370a37d17e0f35e3be1c20da71a7b313a6ee126f313532da76efc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
