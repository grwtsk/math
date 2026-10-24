# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Inequalities.Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "029cefe4bebafd9dcfcdb9d7cfde49d1a7b62b97",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `029cefe4bebafd9dcfcdb9d7cfde49d1a7b62b97`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.WalshFourier.Analysis` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [KKLBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean/declarations/kklbound--650067d1c466a987a139b919.md) | 13 | `declaration-track:650067d1c466a987a139b91960a0b11cea784b19894b59982d113d607c60b941` |
| 2 | `def` | [KKLHolds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean/declarations/kklholds--fee3d84563829c123ab7fbd5.md) | 20 | `declaration-track:fee3d84563829c123ab7fbd5757b9f3b69ba941dc2eac614223f32490891f9e2` |
| 3 | `structure` | [KKLCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean/declarations/kklcertificate--3dafb4a74b45121e38ed0a72.md) | 26 | `declaration-track:3dafb4a74b45121e38ed0a72d159d6f7e27775bc24aefe8949bdddbdfdaa66cd` |
| 4 | `theorem` | [kkl_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean/declarations/kkl-bound--7e3c345d254508d8dd8ca76d.md) | 30 | `result-track:7e3c345d254508d8dd8ca76d0c5acca1bdc57751e91daa8db117a87a8ae14a26` |
| 5 | `structure` | [BonamiBecknerBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean/declarations/bonamibecknerbound--ba8b22cee8ad3d9b25527c57.md) | 43 | `declaration-track:ba8b22cee8ad3d9b25527c5775ec10fec59fa6d6551d873623a249f07d0ee159` |
| 6 | `def` | [BonamiBecknerHolds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean/declarations/bonamibecknerholds--48c70d0ddb0e8acf7324fabd.md) | 53 | `declaration-track:48c70d0ddb0e8acf7324fabde0cb79a2b56f4cd2084ccb2e5947929946e6c7f5` |
| 7 | `structure` | [BonamiBecknerCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean/declarations/bonamibecknercertificate--0f75d2df720e33ce9f887f02.md) | 60 | `declaration-track:0f75d2df720e33ce9f887f027b39b5c479b410b2fc41c487156995a1398aff92` |
| 8 | `theorem` | [bonami_beckner_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2.lean/declarations/bonami-beckner-bound--8d0d3a977e39e7d160a2233d.md) | 65 | `result-track:8d0d3a977e39e7d160a2233d510b4b789d494119753007df4557b4cb19f2dc05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
