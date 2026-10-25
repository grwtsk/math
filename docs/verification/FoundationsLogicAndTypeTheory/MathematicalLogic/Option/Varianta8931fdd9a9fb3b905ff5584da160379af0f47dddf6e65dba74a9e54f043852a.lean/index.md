# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39d9a8f957ff0a321b0c70fb93b9b11de7231da2",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39d9a8f957ff0a321b0c70fb93b9b11de7231da2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.EquivFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [optionCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optioncongr--9f3c1b066c8055c4917e7c9b.md) | 35 | `declaration-track:9f3c1b066c8055c4917e7c9b6e7b9965e6b92f063527d8fc834328e02f86f228` |
| 2 | `theorem` | [optionCongr_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optioncongr-refl--11345429d955a14226d28913.md) | 44 | `result-track:11345429d955a14226d28913944a29650e157368d28d5df530a9f62b29eb61f8` |
| 3 | `theorem` | [optionCongr_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optioncongr-symm--1db6824472b5b5e3465c955e.md) | 49 | `result-track:1db6824472b5b5e3465c955eae463a8f504d3f8ac4139bffe042e7c7a2e8ce05` |
| 4 | `theorem` | [optionCongr_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optioncongr-trans--7c3b7a8b9bb3c5554f1f2b4d.md) | 54 | `result-track:7c3b7a8b9bb3c5554f1f2b4df2cae0c52a77307ef07a573d3446c51748891b05` |
| 5 | `theorem` | [optionCongr_eq_equivFunctor_mapEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optioncongr-eq-equivfunctor-mapequiv--00c7f5a660e37e5e200b36c1.md) | 61 | `result-track:00c7f5a660e37e5e200b36c143132310505b3f7f1b267c6055df0825c4c114c5` |
| 6 | `def` | [removeNone_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/removenone-aux--f55a8956e6b2024248c64b57.md) | 75 | `declaration-track:f55a8956e6b2024248c64b57d5fe1d72699ec63439e3cf034a8c415b7d9ee2cf` |
| 7 | `theorem` | [removeNone_aux_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/removenone-aux-some--10110a76a57a55f73ed5ee03.md) | 87 | `result-track:10110a76a57a55f73ed5ee03a41be402bf4d0bcb65b601a2cf0ca84163d17c8d` |
| 8 | `theorem` | [removeNone_aux_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/removenone-aux-none--5589c158e2334d1a5faf80c0.md) | 93 | `result-track:5589c158e2334d1a5faf80c08056337522574872e9725720cd4d5a2d39257b95` |
| 9 | `theorem` | [removeNone_aux_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/removenone-aux-inv--b66c72abfc560151c780cbff.md) | 99 | `result-track:b66c72abfc560151c780cbff354a7e43f97926362cd66f403449b795bf4d26d0` |
| 10 | `def` | [removeNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/removenone--f85aafe68b8c9ff916b40780.md) | 121 | `declaration-track:f85aafe68b8c9ff916b40780a131bc028141355914190c900f112083e6e41f17` |
| 11 | `theorem` | [removeNone_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/removenone-symm--18aa8580791cc04d2a2768b1.md) | 129 | `result-track:18aa8580791cc04d2a2768b1dc36d39a1ef2c4b2ba6931e094c2bf4a13e0e16f` |
| 12 | `theorem` | [removeNone_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/removenone-some--8cc59c210aa4eedfef13697f.md) | 133 | `result-track:8cc59c210aa4eedfef13697f7bd503e9ff3c35f8a37a888d3f232af8a89d6072` |
| 13 | `theorem` | [removeNone_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/removenone-none--c7e45d86448288fd16ee1e30.md) | 138 | `result-track:c7e45d86448288fd16ee1e300da37793f275a83ae1c65275d84c2b7e528c7966` |
| 14 | `theorem` | [option_symm_apply_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/option-symm-apply-none-iff--6354546ebc56ca651155e220.md) | 143 | `result-track:6354546ebc56ca651155e220d20bde3ee35d1375caa6f9bab97075a481a3e4fb` |
| 15 | `theorem` | [some_removeNone_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/some-removenone-iff--8dd7f6e20d8bc3d6a632ebdf.md) | 147 | `result-track:8dd7f6e20d8bc3d6a632ebdfdb558bfd203347cc5a767a608ac205f905c3a10f` |
| 16 | `theorem` | [removeNone_optionCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/removenone-optioncongr--ea6a50719a37455f49978a51.md) | 159 | `result-track:ea6a50719a37455f49978a51ffe07f780c3faef3dfd4849b9f661e39914f9b4a` |
| 17 | `theorem` | [optionCongr_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optioncongr-injective--54a7ebe8f050406d5dc1c686.md) | 165 | `result-track:54a7ebe8f050406d5dc1c686a575deae9d99c46d5e7b7967301c7403c4f97b05` |
| 18 | `def` | [optionSubtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optionsubtype--d70f8a9e40b28df8fc84cf58.md) | 171 | `declaration-track:d70f8a9e40b28df8fc84cf58857d9785b1f76d733b45f38abb77f8b72e5f7b4b` |
| 19 | `theorem` | [optionSubtype_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optionsubtype-apply-apply--1e72c8ee305c0d9df07f75e2.md) | 214 | `result-track:1e72c8ee305c0d9df07f75e2451d0d6c3de95c1b976cfd8cc8b70ee9fc7717b4` |
| 20 | `theorem` | [coe_optionSubtype_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/coe-optionsubtype-apply-apply--b2e81dac1699f101001c9e6b.md) | 222 | `result-track:b2e81dac1699f101001c9e6b553276a8c381d5ca84c7fb458f20ae0e19c31f48` |
| 21 | `theorem` | [optionSubtype_apply_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optionsubtype-apply-symm-apply--a8ec173a7f529e867d896bc9.md) | 229 | `result-track:a8ec173a7f529e867d896bc963654aed063222d1cb4443a96d0261165de1dae8` |
| 22 | `theorem` | [optionSubtype_symm_apply_apply_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optionsubtype-symm-apply-apply-coe--bba70427a71f9f2f13fcf731.md) | 238 | `result-track:bba70427a71f9f2f13fcf7313a62ba1fdd3f99a6c8fc4679bf378190fbba80a5` |
| 23 | `theorem` | [optionSubtype_symm_apply_apply_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optionsubtype-symm-apply-apply-some--3fe8683c68f023d1694bf112.md) | 244 | `result-track:3fe8683c68f023d1694bf1125c35fe3acdbfdba47d3ff60e4e24245e02718a25` |
| 24 | `theorem` | [optionSubtype_symm_apply_apply_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optionsubtype-symm-apply-apply-none--adbe4b9c6217ae416864da5e.md) | 253 | `result-track:adbe4b9c6217ae416864da5ebc7d73b5d9d8e2ee426a1988ad073415390ca09b` |
| 25 | `theorem` | [optionSubtype_symm_apply_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/declarations/optionsubtype-symm-apply-symm-apply--a9106fc6125ee6ccb956cbff.md) | 261 | `result-track:a9106fc6125ee6ccb956cbfff80bfbfe56869488ef31da46dde1c8c7c999651a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
