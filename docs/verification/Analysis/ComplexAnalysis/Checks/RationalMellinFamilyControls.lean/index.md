# Verification target: GRWTSK.Analysis.Complex.Checks.RationalMellinFamilyControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87b2a97cde696cee323aecf4b737ecc595e181bf",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/Checks/RationalMellinFamilyControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87b2a97cde696cee323aecf4b737ecc595e181bf`.

Source path: `GRWTSK/Analysis/Complex/Checks/RationalMellinFamilyControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/Checks/RationalMellinFamilyControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalMellinFamily`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinFamily.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitQuadrature](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/unitquadrature--eee4a893fa6e2370c572f0b4.md) | 22 | `declaration-track:eee4a893fa6e2370c572f0b46be46cd7f8adf625f2d5d54a17a3d32dd742e850` |
| 2 | `def` | [unitFamily](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/unitfamily--eba9f80508d9756fa6185752.md) | 25 | `declaration-track:eba9f80508d9756fa6185752bbd209b45afe4e47be1aca5089c4334129a3b407` |
| 3 | `def` | [unitEvaluations](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/unitevaluations--5591fcf16bfcc1d0d15891ee.md) | 26 | `declaration-track:5591fcf16bfcc1d0d15891ee86b5adebb320156cc979aba1d212a3f92cc5ed6e` |
| 4 | `def` | [unitTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/unittrace--fb08abf63bb10f95a2dce25c.md) | 27 | `declaration-track:fb08abf63bb10f95a2dce25c6d56a70672ce1457ddf6e029060326e74033ab4b` |
| 5 | `theorem` | [weighted_unit_checked](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/weighted-unit-checked--c8d02090b4e881bb867eb406.md) | 29 | `result-track:c8d02090b4e881bb867eb4060a352fadacd2009dcd4028e8d4a8b2a4cf55213f` |
| 6 | `theorem` | [weighted_unit_output](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/weighted-unit-output--0c22a2e2516edaa799f91bd5.md) | 31 | `result-track:0c22a2e2516edaa799f91bd5a79287068e20b7c606214ca645abc1871748110f` |
| 7 | `theorem` | [weighted_unit_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/weighted-unit-analytic--14116cc5ae4d1fbb007cfe9a.md) | 34 | `result-track:14116cc5ae4d1fbb007cfe9adbb3eac9277cd74fcc411ba3c5ae6998390823bd` |
| 8 | `theorem` | [equal_centers_distinct_keys](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/equal-centers-distinct-keys--f565a701ff75a045fa678e0d.md) | 40 | `result-track:f565a701ff75a045fa678e0da454780fe44c3cf36f4e7aad76889fea8d4570a0` |
| 9 | `theorem` | [duplicate_keys_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/duplicate-keys-rejected--cd384f53b74044b265a4833a.md) | 44 | `result-track:cd384f53b74044b265a4833ac4e193aa5d1bb6df8036ed66fc7f8f9436b803f4` |
| 10 | `theorem` | [zero_weight_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/zero-weight-rejected--4aa2a823bcc4181e76a62452.md) | 49 | `result-track:4aa2a823bcc4181e76a6245298d4bd37a0d6805ba4cd80b0d3bcadac182fc497` |
| 11 | `theorem` | [wrong_key_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/wrong-key-rejected--f7af815b272863f1972232e7.md) | 53 | `result-track:f7af815b272863f1972232e7bc6474c4bb6216810fe0162e452e3c8784468f85` |
| 12 | `theorem` | [reordered_evaluations_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/reordered-evaluations-rejected--c41657b08e6a9bea92237857.md) | 57 | `result-track:c41657b08e6a9bea92237857933f444450a280710899a32be6ff3baf30b019c9` |
| 13 | `theorem` | [changed_multiplicity_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/changed-multiplicity-rejected--086795d762a1dd3b26c57318.md) | 60 | `result-track:086795d762a1dd3b26c5731816d63455d7e06e8a0727da9effeff270831b4d7c` |
| 14 | `theorem` | [missing_extra_evaluations_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/missing-extra-evaluations-rejected--a10949b4579840f66c546fc3.md) | 63 | `result-track:a10949b4579840f66c546fc33c2c4630cb6c7eec0e4714f26e8694ff4c1eb890` |
| 15 | `theorem` | [wrong_external_inputs_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/wrong-external-inputs-rejected--951b88beaf7851c985ba8239.md) | 67 | `result-track:951b88beaf7851c985ba823968e98293aa96c7db1258ddfe70bf389a7c888121` |
| 16 | `theorem` | [false_intermediate_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/false-intermediate-rejected--2b56306caf32dd8e5289d122.md) | 73 | `result-track:2b56306caf32dd8e5289d122fbfe794478647adb7f25d705dd639517b93e7277` |
| 17 | `theorem` | [negative_radius_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/negative-radius-rejected--d347f14d7247b88325e0c26d.md) | 76 | `result-track:d347f14d7247b88325e0c26de3505ed8c63c6cfb231d9420eb44c379afcc286f` |
| 18 | `def` | [roundedTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/roundedtrace--41a56f91d9490c37a5a21c9d.md) | 79 | `declaration-track:41a56f91d9490c37a5a21c9d090f5618532d4c5ba2b49152e767873571b8776d` |
| 19 | `theorem` | [rounded_family_controls](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/rounded-family-controls--aae8fe9bbc17854a64dc26a0.md) | 82 | `result-track:aae8fe9bbc17854a64dc26a0909be08d09e1411f84befd6f7f8a6fe0947b69de` |
| 20 | `theorem` | [empty_family_controls](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/empty-family-controls--93b6dfeb3a7d19abcb3fc660.md) | 87 | `result-track:93b6dfeb3a7d19abcb3fc6605d212158ae0baadac48ebd786ed57a2a9567e206` |
| 21 | `def` | [nonconstantQuadrature](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/nonconstantquadrature--469b8a7de9d88bca54cb26d9.md) | 92 | `declaration-track:469b8a7de9d88bca54cb26d9d2bb286d9574855c8260b513fc974afe3485488e` |
| 22 | `def` | [nonconstantFamily](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/nonconstantfamily--011408874c6dc068d325ab84.md) | 96 | `declaration-track:011408874c6dc068d325ab84a65c7672226787a6e97f6ee9d14e4d92b92200bc` |
| 23 | `def` | [nonconstantTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/nonconstanttrace--f0afb234c30b3027c794b90e.md) | 97 | `declaration-track:f0afb234c30b3027c794b90ea79803ebf0261804b5e2163b8e889c554789e7dc` |
| 24 | `theorem` | [nonconstant_budget_controls](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/nonconstant-budget-controls--a47f94c96881ddfe041c2969.md) | 101 | `result-track:a47f94c96881ddfe041c2969c4de272386d7c9757add63dae0049e7407c472bd` |
| 25 | `theorem` | [nonconstant_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinFamilyControls.lean/declarations/nonconstant-analytic--84a2050edd7470913495dfb4.md) | 106 | `result-track:84a2050edd7470913495dfb42367d09e7cf18f1b09a2fc4a5943aad4b4050307` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
