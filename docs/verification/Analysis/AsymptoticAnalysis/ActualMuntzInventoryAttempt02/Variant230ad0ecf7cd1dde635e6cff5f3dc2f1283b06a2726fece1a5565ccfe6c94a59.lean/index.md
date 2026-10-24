# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualMuntzInventoryAttempt02.Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b748c391fba2711e8f8a70ccb0c021ee840efb0f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b748c391fba2711e8f8a70ccb0c021ee840efb0f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualGoodKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/positivesamples--21ab994c74391e8badcbd43b.md) | 15 | `declaration-track:21ab994c74391e8badcbd43bc7369fcb563f4775819bc727c17f2bf021153aa6` |
| 2 | `def` | [actualMuntz](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/actualmuntz--7bc1232678b8509e77a3b380.md) | 19 | `declaration-track:7bc1232678b8509e77a3b380df690f787c0bdb64fa5fb222fb6404ec2cc28799` |
| 3 | `def` | [upperInventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/upperinventory--e5f445bf900581df3c5ce927.md) | 23 | `declaration-track:e5f445bf900581df3c5ce9270e898d9bc18eb00f43a7300b4a64233b89280f40` |
| 4 | `theorem` | [actualLogSource_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/actuallogsource-zero-nonpos--d924f95c15470133a47cc298.md) | 25 | `result-track:d924f95c15470133a47cc2981007f92c59c0f2842480c9253ce28ad3db58b469` |
| 5 | `theorem` | [actualLogSource_zero_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/actuallogsource-zero-at-zero--5758f2f0b1d6f9a0c4f2bad9.md) | 29 | `result-track:5758f2f0b1d6f9a0c4f2bad9f53475d67b7e93472f2b9b17e1cb53e6f328a8ee` |
| 6 | `theorem` | [sample_zero_above_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/sample-zero-above-inventory--4c89f0f24065e87c69a01b07.md) | 32 | `result-track:4c89f0f24065e87c69a01b070149c0e64f31705aedc121fd6b796e066ed35c86` |
| 7 | `theorem` | [allSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/allsamples-summable--9bf83ef58869c5f1400e450f.md) | 38 | `result-track:9bf83ef58869c5f1400e450f330fd2ac03f22c7a70d9e0b51d2a079b8825e695` |
| 8 | `theorem` | [positiveSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/positivesamples-summable--c94e7838d1be0df9a57361b4.md) | 45 | `result-track:c94e7838d1be0df9a57361b42ec4d3ddbafc2060acbb6fc1a8d878164d7c3dfe` |
| 9 | `theorem` | [positiveSamples_eq_allSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/positivesamples-eq-allsamples--7c6e2eb4b79590ef65d2737d.md) | 49 | `result-track:7c6e2eb4b79590ef65d2737d8ce0d0c7cd9e0b44ca4f73857cbd9d99e4ff8963` |
| 10 | `theorem` | [allSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/allsamples-eq-closed-inventory--31fdf2c656acd5cdc20b0f7b.md) | 54 | `result-track:31fdf2c656acd5cdc20b0f7b2d0c37432999e2459041069c2d3e545d7480c091` |
| 11 | `theorem` | [positiveSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/positivesamples-eq-closed-inventory--d4e35643adbd469117c632db.md) | 62 | `result-track:d4e35643adbd469117c632db69464e3083868ce30b8c693b1e2a4717d745904a` |
| 12 | `theorem` | [actualMuntz_eq_positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/actualmuntz-eq-positivesamples--836f93551b212f23584abfe3.md) | 71 | `result-track:836f93551b212f23584abfe3048bc6ea9bf7efa19b2b9dbddb90afdffb090dc8` |
| 13 | `theorem` | [actualMuntz_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/actualmuntz-eq-closed-inventory--e076ecc8a13170ed129664c6.md) | 75 | `result-track:e076ecc8a13170ed129664c6b11d2a4cd57e5b32488713220d986431a7c8a161` |
| 14 | `theorem` | [touching_sample_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/touching-sample-zero--1779cdb0d4b55f8d3416c68c.md) | 80 | `result-track:1779cdb0d4b55f8d3416c68c536ed5a1afa8306e349e5c8a5cc45a0b34f3128a` |
| 15 | `theorem` | [positiveSamples_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/positivesamples-zero-nonpos--e085b9073b1a6dcfdd87ce36.md) | 85 | `result-track:e085b9073b1a6dcfdd87ce363f1a0f40c36969f1e2029a45440810ae70db6f36` |
| 16 | `theorem` | [positiveSamples_zero_above](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/positivesamples-zero-above--e13882ace03a370266db5bb2.md) | 92 | `result-track:e13882ace03a370266db5bb2fd8a04008e9dd0383e439bdd8807ef2f7fb33bf2` |
| 17 | `theorem` | [actualMuntz_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/actualmuntz-zero-outside--229a20e560a488a8ef857178.md) | 104 | `result-track:229a20e560a488a8ef857178777192732247c2abb9cca435b412dd43a2ec5f34` |
| 18 | `theorem` | [positiveSamples_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/positivesamples-measurable--65339fe6dcc4ac5c9163a398.md) | 111 | `result-track:65339fe6dcc4ac5c9163a3985a5b288c13c44b8a89dad0b332e1a3aee3c8367d` |
| 19 | `theorem` | [actualMuntz_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant230ad0ecf7cd1dde635e6cff5f3dc2f1283b06a2726fece1a5565ccfe6c94a59.lean/declarations/actualmuntz-measurable--b782929def691ed2590efce1.md) | 115 | `result-track:b782929def691ed2590efce185afb777d58befc382475fa29bf4077efe4c3f9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
