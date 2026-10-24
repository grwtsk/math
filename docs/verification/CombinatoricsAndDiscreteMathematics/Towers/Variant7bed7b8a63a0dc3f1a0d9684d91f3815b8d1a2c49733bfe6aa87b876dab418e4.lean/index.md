# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Towers.Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fcd1c0d9271a978685afc886c9671ba168cac0d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fcd1c0d9271a978685afc886c9671ba168cac0d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeField](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/declarations/cumulativefield--483c3530a2b6288d65db0071.md) | 26 | `declaration-track:483c3530a2b6288d65db0071b3d9553b3bb98c262ef73d47f390eec5a3a3478d` |
| 2 | `theorem` | [cumulative_field_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/declarations/cumulative-field-mono--1e856cca09da5804d26352d7.md) | 30 | `result-track:1e856cca09da5804d26352d7ec683c7da5098b5e3de357c6d6a4903087047cb9` |
| 3 | `theorem` | [component_le_cumulative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/declarations/component-le-cumulative--ddb125122cfbef05a4a7b1ee.md) | 35 | `result-track:ddb125122cfbef05a4a7b1eeeb87aac611bd581283ccd35f9b0b56f9b4bd2f61` |
| 4 | `def` | [cumulativeInclusion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/declarations/cumulativeinclusion--66ca23825d9f14eb88391991.md) | 40 | `declaration-track:66ca23825d9f14eb88391991a48e02970c9628524745b3cca9bc7dfd829bce58` |
| 5 | `theorem` | [cumulative_inclusion_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/declarations/cumulative-inclusion-comp--68f08a24b695a9402cbd35a6.md) | 45 | `result-track:68f08a24b695a9402cbd35a6cbe3923b0513987cedccda2e35495b8551254b26` |
| 6 | `structure` | [FiniteInverseSystem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/declarations/finiteinversesystem--3f9c8ec9458e4fc184c329b0.md) | 53 | `declaration-track:3f9c8ec9458e4fc184c329b0af3141708b4f3702b0a5a669029d5d87b9735a4b` |
| 7 | `def` | [CompatibleSection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/declarations/compatiblesection--8f143134f388fa51804b72ea.md) | 69 | `declaration-track:8f143134f388fa51804b72eae122ab473415ed59caa5ac402af50ae164e42a58` |
| 8 | `theorem` | [compatible_section_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/declarations/compatible-section-restrict--3ce7e7a52be0cf7b51550832.md) | 73 | `result-track:3ce7e7a52be0cf7b51550832d5d0f05911fc259e7170099029913c33e05efcf8` |
| 9 | `def` | [constantInverseSystem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/declarations/constantinversesystem--72f1e2ef69621db883eeaaf1.md) | 79 | `declaration-track:72f1e2ef69621db883eeaaf146565df45c413f941083094b6838ce028fb7f0b2` |
| 10 | `def` | [sectionFromLast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/declarations/sectionfromlast--ebf8e3d287ba4669153699ae.md) | 88 | `declaration-track:ebf8e3d287ba4669153699aeb399c96e70515fe54e6568ce619f78b5325df037` |
| 11 | `theorem` | [section_from_last_compatible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4.lean/declarations/section-from-last-compatible--4e64bfa9d13a644550964355.md) | 93 | `result-track:4e64bfa9d13a6445509643559f55391b9c9777a07e5fe191ed94ae8443ab53bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
