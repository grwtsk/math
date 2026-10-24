# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitSignedResidueEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a83f71e76bcfa1d31635f3a046e15211f8cd8b2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a83f71e76bcfa1d31635f3a046e15211f8cd8b2`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitZModDFTParseval`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityEvenHalfShiftSignedResidueEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/parityevenhalfshiftsignedresidueenergy--c176568a8350b8b151c3d40c.md) | 20 | `declaration-track:c176568a8350b8b151c3d40c6d573016f97b9afd1910400ff74c495968c47ca4` |
| 2 | `def` | [parityOddHalfShiftSignedResidueEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/parityoddhalfshiftsignedresidueenergy--0ecaf8cafc3dc3e3d5236e62.md) | 25 | `declaration-track:0ecaf8cafc3dc3e3d5236e6250f2c642394e961ee1d055b4361b6b12e4dba8aa` |
| 3 | `theorem` | [evenHalfShiftFullFrequencyEnergy_eq_residue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/evenhalfshiftfullfrequencyenergy-eq-residue--53ad26f895d38bdd34679b92.md) | 30 | `result-track:53ad26f895d38bdd34679b92d67adb02d5e0064e7559fc8921e57221953eee58` |
| 4 | `theorem` | [oddHalfShiftFullFrequencyEnergy_eq_residue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/oddhalfshiftfullfrequencyenergy-eq-residue--30cc103287e0c920521a06f7.md) | 46 | `result-track:30cc103287e0c920521a06f7d88d505b36efe7d75030a2465b1dee50f5983624` |
| 5 | `def` | [twoNonunitRegularShiftParityResidueL2Majorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/twononunitregularshiftparityresiduel2majorant--64b61473d5473f8fb704305a.md) | 62 | `declaration-track:64b61473d5473f8fb704305af15b0885825b2ef0db65e192a244a45cce45b4b2` |
| 6 | `theorem` | [sqrt_squareModulus_mul_energy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/sqrt-squaremodulus-mul-energy--82c8410630366d968cad9261.md) | 69 | `result-track:82c8410630366d968cad9261320f39328a6c77b27ae910b6c66dad192386f788` |
| 7 | `theorem` | [fullFrequencyL2Majorant_eq_d_mul_residueL2](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/fullfrequencyl2majorant-eq-d-mul-residuel2--5935a4df56bb445f618e090a.md) | 78 | `result-track:5935a4df56bb445f618e090a35466de79a22d179b30fa533282336eca4c79c38` |
| 8 | `def` | [twoNonunitRegularShiftParityResidueL2EndpointMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/twononunitregularshiftparityresiduel2endpointmajorant--1c57b80c218310de88d9b032.md) | 103 | `declaration-track:1c57b80c218310de88d9b0327cb87624dc053186bd6e119e3bbc999a4f4820bc` |
| 9 | `theorem` | [fullFrequencyL2EndpointMajorant_eq_residueL2](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/fullfrequencyl2endpointmajorant-eq-residuel2--28ec930d393236b3d0229228.md) | 113 | `result-track:28ec930d393236b3d0229228e9a623f09c5ac93ef945a7ab215f0ad3a9600fcf` |
| 10 | `def` | [DyadicNaturalScaleRegularShiftParityResidueL2Budget](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/dyadicnaturalscaleregularshiftparityresiduel2budget--e82cd07bce2bddd47b4ed230.md) | 132 | `declaration-track:e82cd07bce2bddd47b4ed230878de0092c1dc7121d9989a5eacef31aceb843cb` |
| 11 | `theorem` | [regularFullFrequencyL2Budget_iff_residueL2](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/regularfullfrequencyl2budget-iff-residuel2--ba9a2af67de92fcfa9ff618d.md) | 140 | `result-track:ba9a2af67de92fcfa9ff618d69906e468ed464b405a615491a51fd1389d50cfb` |
| 12 | `structure` | [ToRegularShiftParityResidueL2BudgetAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/toregularshiftparityresiduel2budgetadapter--577fd63416f4b629025a9810.md) | 157 | `declaration-track:577fd63416f4b629025a9810d73c59e0d50369fba532341eb3659d0a57d2801a` |
| 13 | `theorem` | [naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularResidueL2](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/naturalscalecongruencel1-of-two-pointwisemertens-twounit-regularresiduel--f05718e154d841472c70d259.md) | 162 | `result-track:f05718e154d841472c70d259fea715c34ca7c74d6befcf603689f74ccc7a4bb6` |
| 14 | `structure` | [RegularSignedResidueEnergySourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/regularsignedresidueenergysourcedata--4127eecd82ff62ab59abacaa.md) | 173 | `declaration-track:4127eecd82ff62ab59abacaa46b81ed6ad114a0401394d55aa0a178c22b0b509` |
| 15 | `def` | [RegularSignedResidueEnergySource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/regularsignedresidueenergysource--03e1dcdb50dbb17344a8e1e2.md) | 182 | `declaration-track:03e1dcdb50dbb17344a8e1e297b298b3aabf19ac2d08ac75b518d74df81d333c` |
| 16 | `abbrev` | [RegularSignedResidueEnergyAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/declarations/regularsignedresidueenergyadapter--f1f3697fd1db2244b8206b3b.md) | 192 | `declaration-track:f1f3697fd1db2244b8206b3b301d66e098feb16a9b427070fd19c24bf4abf43a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
