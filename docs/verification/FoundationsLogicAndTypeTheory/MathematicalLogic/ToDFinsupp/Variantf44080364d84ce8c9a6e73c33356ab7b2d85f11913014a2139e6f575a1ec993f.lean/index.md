# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ToDFinsupp.Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8eeddf626115bc6ceaee25bc6f74cf2a0a5a73ce",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8eeddf626115bc6ceaee25bc6f74cf2a0a5a73ce`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finsupp.toDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/finsupp-todfinsupp--28f765495ac3a12f9978d35e.md) | 71 | `declaration-track:28f765495ac3a12f9978d35e328c3c42728c1b659e6b8ac5d305449b4f7eae04` |
| 2 | `theorem` | [Finsupp.toDFinsupp_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/finsupp-todfinsupp-coe--c5882427ed05d7570606f919.md) | 79 | `result-track:c5882427ed05d7570606f91986a5ea010f4e495db05dc5307539c6b65da4fba2` |
| 3 | `theorem` | [Finsupp.toDFinsupp_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/finsupp-todfinsupp-single--3e37b1219233b5de242d194a.md) | 88 | `result-track:3e37b1219233b5de242d194a7ebf538b08ec099e219812706457756c61e607ff` |
| 4 | `theorem` | [toDFinsupp_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/todfinsupp-support--c466937d7d3c237b18e6e689.md) | 97 | `result-track:c466937d7d3c237b18e6e689dded70d79513755eeaca930e91b786fa8107eb14` |
| 5 | `def` | [DFinsupp.toFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/dfinsupp-tofinsupp--de1300929182341e884a2a5c.md) | 107 | `declaration-track:de1300929182341e884a2a5ce7af92fee07c68718a26fd95a797719419915b22` |
| 6 | `theorem` | [DFinsupp.toFinsupp_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/dfinsupp-tofinsupp-coe--0a94368e2d58ebfd00fe9f4e.md) | 112 | `result-track:0a94368e2d58ebfd00fe9f4e07847e7d4ae007dd968d51a409481afb69e19a98` |
| 7 | `theorem` | [DFinsupp.toFinsupp_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/dfinsupp-tofinsupp-support--c7438fe5e18e0708a01099e2.md) | 117 | `result-track:c7438fe5e18e0708a01099e286f7e91894cc64086e1ccc34c3ff4d6225f133b2` |
| 8 | `theorem` | [DFinsupp.toFinsupp_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/dfinsupp-tofinsupp-single--7ed0dbfa8886bb24132195bd.md) | 123 | `result-track:7ed0dbfa8886bb24132195bd2a5d7fd4e8da5d07d478eba7be6717ed84b31d6a` |
| 9 | `theorem` | [Finsupp.toDFinsupp_toFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/finsupp-todfinsupp-tofinsupp--da45ea282e3e487aafbf4409.md) | 130 | `result-track:da45ea282e3e487aafbf4409c00417f7d023b34c7a76f73cad0cc1bc6cd9d91e` |
| 10 | `theorem` | [DFinsupp.toFinsupp_toDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/dfinsupp-tofinsupp-todfinsupp--74df6f541a5fe0b612d14968.md) | 135 | `result-track:74df6f541a5fe0b612d149684bac1d4c9e1118591d29af0481d78edd3e42fe93` |
| 11 | `theorem` | [toDFinsupp_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/todfinsupp-zero--93e7476927a96e731b21b0e8.md) | 151 | `result-track:93e7476927a96e731b21b0e871c6468b7fb3a7b0c404f8df11afacd7acd5742d` |
| 12 | `theorem` | [toDFinsupp_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/todfinsupp-add--bdcdf634c885306302d908bd.md) | 156 | `result-track:bdcdf634c885306302d908bd44d86f2d9087d72041f00952d1708df7a0b058a3` |
| 13 | `theorem` | [toDFinsupp_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/todfinsupp-neg--f7fb73d2e8123e81a4c34d46.md) | 162 | `result-track:f7fb73d2e8123e81a4c34d467513c89a69503b050f06679f15b821d0e1f2f049` |
| 14 | `theorem` | [toDFinsupp_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/todfinsupp-sub--8bd10c5c9f6110cc6cd17e19.md) | 167 | `result-track:8bd10c5c9f6110cc6cd17e1987855c1ccd11cdf8f166be5a72ec3da97f6d4255` |
| 15 | `theorem` | [toDFinsupp_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/todfinsupp-smul--a873f0d0c3f86076e46f3e8c.md) | 173 | `result-track:a873f0d0c3f86076e46f3e8c997b008c47ed5c1328692b8b61ee92a26f038e00` |
| 16 | `theorem` | [toFinsupp_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/tofinsupp-zero--ee45233146790ff5e0c1a1db.md) | 185 | `result-track:ee45233146790ff5e0c1a1db46b6efeae13a5938360af6d900724d2cf7dfe49f` |
| 17 | `theorem` | [toFinsupp_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/tofinsupp-add--62db9437e8926e9ead31a27a.md) | 190 | `result-track:62db9437e8926e9ead31a27a47ad03538fba1d48509ef4ce1034a23af9309083` |
| 18 | `theorem` | [toFinsupp_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/tofinsupp-neg--8150088938f6cc3737e1d46d.md) | 196 | `result-track:8150088938f6cc3737e1d46dfee4e9b9b37f2da6e86b4bc9b1020ce9cabf74eb` |
| 19 | `theorem` | [toFinsupp_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/tofinsupp-sub--18f91bf1cd77e8cfde10c1b0.md) | 202 | `result-track:18f91bf1cd77e8cfde10c1b08843b9f1355232a89efa5a54732d2ef7b1cc4272` |
| 20 | `theorem` | [toFinsupp_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/tofinsupp-smul--5af5070c1572aed854fb58ad.md) | 208 | `result-track:5af5070c1572aed854fb58ad56dd59c173a15b04b3ae8d4e6e79819001d1fbcc` |
| 21 | `def` | [finsuppEquivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/finsuppequivdfinsupp--6e0de157351b9d0e364e1220.md) | 224 | `declaration-track:6e0de157351b9d0e364e1220056f853c954996ce025ed421452ba4b6701fb049` |
| 22 | `def` | [finsuppAddEquivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/finsuppaddequivdfinsupp--9dd3271ac7c5aa1ee4ca5f78.md) | 235 | `declaration-track:9dd3271ac7c5aa1ee4ca5f78192deed6db8c557fe914aa0514bc2ff5a1a2c5d8` |
| 23 | `def` | [finsuppLequivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/finsupplequivdfinsupp--7dbce64b514241ece5c0afa8.md) | 249 | `declaration-track:7dbce64b514241ece5c0afa892497008167e31d9f2950719b7e34e4ae94546a3` |
| 24 | `theorem` | [finsuppLequivDFinsupp_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/finsupplequivdfinsupp-apply-apply--3b7562f100464aff18409b42.md) | 260 | `result-track:3b7562f100464aff18409b42ae643852518b79ba53dec4d7fe13db03100987f6` |
| 25 | `theorem` | [finsuppLequivDFinsupp_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/finsupplequivdfinsupp-symm-apply--1c2cbad011338bee0c5e5bbf.md) | 266 | `result-track:1c2cbad011338bee0c5e5bbf3577f800af7fa2d8ce5149b887e9444d15a8d04c` |
| 26 | `def` | [sigmaFinsuppEquivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/sigmafinsuppequivdfinsupp--f9ef543609532866fe0ebe89.md) | 282 | `declaration-track:f9ef543609532866fe0ebe89a3935b5a329a38b8e7497857aab18c9a6af36828` |
| 27 | `theorem` | [sigmaFinsuppEquivDFinsupp_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/sigmafinsuppequivdfinsupp-apply--f70e81772a88277d68675e39.md) | 302 | `result-track:f70e81772a88277d68675e39d6f95d5b22385210077f544d442bb04ac086ceda` |
| 28 | `theorem` | [sigmaFinsuppEquivDFinsupp_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/sigmafinsuppequivdfinsupp-symm-apply--bb62abd177f9d574dbe6adb3.md) | 308 | `result-track:bb62abd177f9d574dbe6adb3bc6b8521a61715c645f257f4ee3de722c59deaab` |
| 29 | `theorem` | [sigmaFinsuppEquivDFinsupp_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/sigmafinsuppequivdfinsupp-support--104d118075067563be686331.md) | 314 | `result-track:104d118075067563be686331d38231f4dae033861e8d6fd5cfcef4d0f4357791` |
| 30 | `theorem` | [sigmaFinsuppEquivDFinsupp_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/sigmafinsuppequivdfinsupp-single--3e3209bec4e18c0d4f719d69.md) | 323 | `result-track:3e3209bec4e18c0d4f719d69fbf18fed4f1c205cda8c66b71bf186473076dc76` |
| 31 | `theorem` | [sigmaFinsuppEquivDFinsupp_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/sigmafinsuppequivdfinsupp-add--5c630a80258e53c07c76d64f.md) | 340 | `result-track:5c630a80258e53c07c76d64fe9d85e8188d0f5e46d3cc7adad3afb354e3c450b` |
| 32 | `def` | [sigmaFinsuppAddEquivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/sigmafinsuppaddequivdfinsupp--802e077a127cfb64bccab747.md) | 349 | `declaration-track:802e077a127cfb64bccab747b48426bdfe10dde1e7c286938aa9e0c3ac841dca` |
| 33 | `theorem` | [sigmaFinsuppEquivDFinsupp_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/sigmafinsuppequivdfinsupp-smul--e9b7ad29b54187f765917580.md) | 360 | `result-track:e9b7ad29b54187f76591758085373490c3adc0cd714610bed550818dde2de530` |
| 34 | `def` | [sigmaFinsuppLequivDFinsupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/declarations/sigmafinsupplequivdfinsupp--0ec0fc67acc58816a4f577b6.md) | 372 | `declaration-track:0ec0fc67acc58816a4f577b6369e10b666fa343722291de892f7d07827a71f67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
