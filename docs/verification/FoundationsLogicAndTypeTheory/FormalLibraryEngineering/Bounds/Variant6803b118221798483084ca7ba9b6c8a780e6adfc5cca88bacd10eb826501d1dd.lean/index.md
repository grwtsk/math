# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bounds.Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13925628247ba7c9ac93755701ba0c9b4842a8f5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13925628247ba7c9ac93755701ba0c9b4842a8f5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/macro-rules--86d45c9779a007bbe1dcdc9a.md) | 30 | `declaration-track:86d45c9779a007bbe1dcdc9a4ba731f4b06a104505811fcd04da4657164fb818` |
| 2 | `theorem` | [pi_gt_sqrtTwoAddSeries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/pi-gt-sqrttwoaddseries--757f06530345ffe13c9cdc34.md) | 38 | `result-track:757f06530345ffe13c9cdc340ec3ff1313b1310a316bd76bde91fc1ebe5d2496` |
| 3 | `theorem` | [pi_lt_sqrtTwoAddSeries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/pi-lt-sqrttwoaddseries--95fd7420db699cb227779936.md) | 47 | `result-track:95fd7420db699cb22777993602f19d9e8d74180dc89ff305f825b322d26f96be` |
| 4 | `theorem` | [pi_lower_bound_start](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/pi-lower-bound-start--d9f21f320f2c0f7b206f1b4b.md) | 81 | `result-track:d9f21f320f2c0f7b206f1b4b18f7544e903028031abd03ffecdfd7ded5cf335b` |
| 5 | `theorem` | [sqrtTwoAddSeries_step_up](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/sqrttwoaddseries-step-up--ecb3341e73233d1f243868f2.md) | 89 | `result-track:ecb3341e73233d1f243868f2131dc047078de7970c379860af0d73d04b7e3563` |
| 6 | `def` | [numDen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/numden--058082517d34b440bd5a0485.md) | 108 | `declaration-track:058082517d34b440bd5a048539314d62bc87df9dd9e128ad7a86085c95c48330` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/elab--1d98f2f6a5e9b217eed3d391.md) | 115 | `declaration-track:1d98f2f6a5e9b217eed3d3917cf45da705067a703bbc36e16facdf626b2974f9` |
| 8 | `theorem` | [pi_upper_bound_start](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/pi-upper-bound-start--d509a4ee0ad2ddf483fa3dd2.md) | 132 | `result-track:d509a4ee0ad2ddf483fa3dd2d99467791ff4ee734a540b2588f79ee0431a9a47` |
| 9 | `theorem` | [sqrtTwoAddSeries_step_down](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/sqrttwoaddseries-step-down--fa4ed871131fdf36af3f4afd.md) | 143 | `result-track:fa4ed871131fdf36af3f4afd8af9efda3abbfebd556e2767e357f237f01dc6aa` |
| 10 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/elab--3bea36c2a7af73d33e975367.md) | 161 | `declaration-track:3bea36c2a7af73d33e9753674e5962a6ad6f3f13d5042a6d5892099baa050462` |
| 11 | `theorem` | [pi_gt_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/pi-gt-three--11221ee90a5e4517dc2d69af.md) | 175 | `result-track:11221ee90a5e4517dc2d69af15b7e1a1554b9d406c7b473fcc9b7279f454c402` |
| 12 | `theorem` | [pi_gt_314](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/pi-gt-314--2b6178f8c95d59b11d0e4f4d.md) | 179 | `result-track:2b6178f8c95d59b11d0e4f4d77d03e07d1c3da3eafd258c0028d280ac0e255f0` |
| 13 | `theorem` | [pi_lt_315](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/pi-lt-315--dd13b69f3b710203e5958c91.md) | 183 | `result-track:dd13b69f3b710203e5958c91286810c87e5a764765dab75847690e1bad2e1a69` |
| 14 | `theorem` | [pi_gt_31415](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/pi-gt-31415--0ec9f1ba4b49d47e4d3fe255.md) | 187 | `result-track:0ec9f1ba4b49d47e4d3fe255236622304b73fd470bc14353be79e2e544214189` |
| 15 | `theorem` | [pi_lt_31416](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/pi-lt-31416--20c41c00d743cc3d96731c34.md) | 192 | `result-track:20c41c00d743cc3d96731c349d80f4db8b054c63debca7e7ec46234492f397f7` |
| 16 | `theorem` | [pi_gt_3141592](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/pi-gt-3141592--156a13f1e8434263b82661ea.md) | 198 | `result-track:156a13f1e8434263b82661eac455c74f27a2c68b90c56ccd091bfba0f06c4889` |
| 17 | `theorem` | [pi_lt_3141593](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/declarations/pi-lt-3141593--abd1f8024890884fa8032f49.md) | 204 | `result-track:abd1f8024890884fa8032f496ad9b3e748d434737088272fb3e0bf5ef1ee0c65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
