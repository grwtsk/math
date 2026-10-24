# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToDFinsupp.Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f595fa9068c2a1bb2c68c806a123b446a6c90a10",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f595fa9068c2a1bb2c68c806a123b446a6c90a10`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMul` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finsupp.toDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/finsupp-todfinsupp--8dabdeab1b4dd0976d56d667.md) | 77 | `declaration-track:8dabdeab1b4dd0976d56d667f2cc527cc473d7e207f1b0bd8067f60781c383d2` |
| 2 | `theorem` | [Finsupp.toDFinsupp_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/finsupp-todfinsupp-coe--bf571d13e2491dce0ddfa582.md) | 84 | `result-track:bf571d13e2491dce0ddfa582fec1434522c01892b54c7c1bdb2509c0879ade3b` |
| 3 | `theorem` | [Finsupp.toDFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/finsupp-todfinsupp-single--70eae054d0e6292f93e8f75a.md) | 92 | `result-track:70eae054d0e6292f93e8f75a34c1828af4e68faaf85812236abe1ac7def55881` |
| 4 | `theorem` | [toDFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/todfinsupp-support--113281ced62054464b72c18e.md) | 100 | `result-track:113281ced62054464b72c18e0162c9c11e00bbb48cd85d2b77935f81d82a2264` |
| 5 | `def` | [DFinsupp.toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/dfinsupp-tofinsupp--c704941cb854f93cd9de2bf4.md) | 109 | `declaration-track:c704941cb854f93cd9de2bf488f73bb337abc6dd058c9e7af4e339b46f4ffe0f` |
| 6 | `theorem` | [DFinsupp.toFinsupp_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/dfinsupp-tofinsupp-coe--cdbce4f3aff5e231dd3837d7.md) | 113 | `result-track:cdbce4f3aff5e231dd3837d78c62ee537def3985e8871cb88dd4d27be1cf2998` |
| 7 | `theorem` | [DFinsupp.toFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/dfinsupp-tofinsupp-support--641f374ee95ad2f66be0293c.md) | 117 | `result-track:641f374ee95ad2f66be0293c5ec03ed657373cdfee9d153e7d930866308a9173` |
| 8 | `theorem` | [DFinsupp.toFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/dfinsupp-tofinsupp-single--2fa16c5bf72963a134215e75.md) | 122 | `result-track:2fa16c5bf72963a134215e75895520755931d7a4a08724122e1281f90899e67f` |
| 9 | `theorem` | [Finsupp.toDFinsupp_toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/finsupp-todfinsupp-tofinsupp--6784389ddbb89b8eddf387c0.md) | 128 | `result-track:6784389ddbb89b8eddf387c0bde9fb9b73dec76fca4e4285f86428b4e0dbbc52` |
| 10 | `theorem` | [DFinsupp.toFinsupp_toDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/dfinsupp-tofinsupp-todfinsupp--973e9ada4cf5839379d192cb.md) | 132 | `result-track:973e9ada4cf5839379d192cbe6d25df33c408201f7ffeee24cedb662c95162bd` |
| 11 | `theorem` | [toDFinsupp_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/todfinsupp-zero--fba3f3e38c5545c2dd17b6cb.md) | 147 | `result-track:fba3f3e38c5545c2dd17b6cb592472b95e2506107164c227af7c4a8c7f49286c` |
| 12 | `theorem` | [toDFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/todfinsupp-add--440952e65b032dcba695a49b.md) | 151 | `result-track:440952e65b032dcba695a49b3a78dd466ac5e69025d039b162605b118ae95764` |
| 13 | `theorem` | [toDFinsupp_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/todfinsupp-neg--7f175b93cb8034d9f15cb7d9.md) | 156 | `result-track:7f175b93cb8034d9f15cb7d958a32669c7dd761c8777ef7f2097f1be2b637560` |
| 14 | `theorem` | [toDFinsupp_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/todfinsupp-sub--bff96a9b0a7cedbe7d3b6f3b.md) | 160 | `result-track:bff96a9b0a7cedbe7d3b6f3b44099aa534d12fb0c80077bedd9a3b40fad9747a` |
| 15 | `theorem` | [toDFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/todfinsupp-smul--9376d99c59352dd9a8799cf1.md) | 165 | `result-track:9376d99c59352dd9a8799cf1cca14f3b8901a9d2da8d2e4827988bd4112cb3ee` |
| 16 | `theorem` | [toFinsupp_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/tofinsupp-zero--afc8445e9f9cc2cc9e35e0a1.md) | 176 | `result-track:afc8445e9f9cc2cc9e35e0a1b0fe1498fcd54a99777139a687ac6f4a5b0d7abd` |
| 17 | `theorem` | [toFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/tofinsupp-add--3a01baf2f9f0af1875980c1a.md) | 180 | `result-track:3a01baf2f9f0af1875980c1a94da2dcedd43e510ab747c864806fd70f89b7213` |
| 18 | `theorem` | [toFinsupp_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/tofinsupp-neg--40a38a9258795b10a9210d12.md) | 185 | `result-track:40a38a9258795b10a9210d1241ff9d90d12ee35d8dede4807a2e1592d2c2582f` |
| 19 | `theorem` | [toFinsupp_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/tofinsupp-sub--84fe22588bbc51a0c335b7ed.md) | 190 | `result-track:84fe22588bbc51a0c335b7edb5c8569fa7c6e56f15a64df7ef193b63ceecabe6` |
| 20 | `theorem` | [toFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/tofinsupp-smul--6db4c8d363abfc79e02f8e56.md) | 195 | `result-track:6db4c8d363abfc79e02f8e5661c6de645d536a7f591b19be689b1f429a036613` |
| 21 | `def` | [finsuppEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/finsuppequivdfinsupp--ff371bae4180a12b7603972a.md) | 210 | `declaration-track:ff371bae4180a12b7603972a39026c006ebd349ee164c4a69ef8a7898e61478d` |
| 22 | `def` | [finsuppAddEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/finsuppaddequivdfinsupp--658a45b2951c818517646923.md) | 220 | `declaration-track:658a45b2951c818517646923a09a6cd882a397c217aa726303b2b7dc135fbbea` |
| 23 | `def` | [finsuppLequivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/finsupplequivdfinsupp--736200a9a43a4efe6c9af36f.md) | 231 | `declaration-track:736200a9a43a4efe6c9af36f9d235411aa43b16bcfc3bf512ef0626ec8772161` |
| 24 | `theorem` | [finsuppLequivDFinsupp_apply_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/finsupplequivdfinsupp-apply-apply--a5760c53e9d582187f29f25e.md) | 240 | `result-track:a5760c53e9d582187f29f25efd24b3de9cffa7fc95537df481f3ddbe1736158a` |
| 25 | `theorem` | [finsuppLequivDFinsupp_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/finsupplequivdfinsupp-symm-apply--7591f1fab02293802a09e546.md) | 245 | `result-track:7591f1fab02293802a09e54641cfb999e377569bee567f79a1e110a8ef75f7f1` |
| 26 | `def` | [sigmaFinsuppEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/sigmafinsuppequivdfinsupp--98bee2fcd7eb644205aaac36.md) | 259 | `declaration-track:98bee2fcd7eb644205aaac36f5af794f2c87c3191b8b687b6045abebed641bdc` |
| 27 | `theorem` | [sigmaFinsuppEquivDFinsupp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/sigmafinsuppequivdfinsupp-apply--96b87730ea1fe73f7de3db45.md) | 278 | `result-track:96b87730ea1fe73f7de3db457fc23ee93518522c4a0d5396d2fbcbc6c613ed34` |
| 28 | `theorem` | [sigmaFinsuppEquivDFinsupp_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/sigmafinsuppequivdfinsupp-symm-apply--ccc211ee4de1f3b872f2a0c8.md) | 283 | `result-track:ccc211ee4de1f3b872f2a0c8f5c8b5a7713c6cb9402a947d138f24a94143ef66` |
| 29 | `theorem` | [sigmaFinsuppEquivDFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/sigmafinsuppequivdfinsupp-support--3407a221590bc7646bee4900.md) | 288 | `result-track:3407a221590bc7646bee49005ce7d8a4d6e3b157158ada15feb01bcfae91e845` |
| 30 | `theorem` | [sigmaFinsuppEquivDFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/sigmafinsuppequivdfinsupp-single--514e8144e1525d8e3244d072.md) | 296 | `result-track:514e8144e1525d8e3244d072eca2817cd19ea5223d068d1cb40c23d1cbba47bd` |
| 31 | `theorem` | [sigmaFinsuppEquivDFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/sigmafinsuppequivdfinsupp-add--d0ac94d4361a38efadb67c5b.md) | 312 | `result-track:d0ac94d4361a38efadb67c5b7d51c2ffbc3d6594dcb1d165529ab23d34b2c8f3` |
| 32 | `def` | [sigmaFinsuppAddEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/sigmafinsuppaddequivdfinsupp--38ad49ec3e0a467f813ff995.md) | 320 | `declaration-track:38ad49ec3e0a467f813ff995c6f04807cc37f0f7ad2fbee2d0839ef8c31068d0` |
| 33 | `theorem` | [sigmaFinsuppEquivDFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/sigmafinsuppequivdfinsupp-smul--aef5f133ef5e314d9c8cc4c3.md) | 329 | `result-track:aef5f133ef5e314d9c8cc4c3995ab8093323164c1af26b25eb61d444f48ed7fc` |
| 34 | `def` | [sigmaFinsuppLequivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/declarations/sigmafinsupplequivdfinsupp--3176b89824496c377dbacbc9.md) | 339 | `declaration-track:3176b89824496c377dbacbc990dcc414b1602bb06c19289edf095221ce303fc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
