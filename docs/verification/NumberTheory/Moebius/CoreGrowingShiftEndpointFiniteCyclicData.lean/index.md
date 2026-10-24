# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointFiniteCyclicData

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d418057b7e5175eeb3cea355ec1317bac2020fef",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d418057b7e5175eeb3cea355ec1317bac2020fef`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.CharacterSums.FiniteCyclicDistance`](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/index.md) — import line 16; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreGrowingShiftEndpointFiniteCyclicModulus](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicmodulus--6d1b65e9adf1f23990c497bc.md) | 28 | `declaration-track:6d1b65e9adf1f23990c497bc0516cab20b58428166bc700fc8804906fe1fe9d8` |
| 2 | `instance` | [coreGrowingShiftEndpointFiniteCyclicModulus_neZero](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicmodulus-nezero--e46fbdf35a5b5daaac09f4e4.md) | 31 | `declaration-track:e46fbdf35a5b5daaac09f4e441bfd54ba4479029f6a7ae906f22f898db2785e6` |
| 3 | `abbrev` | [CoreGrowingShiftEndpointFiniteCyclicIndex](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicindex--c1a805f2f20d0cfaf0538418.md) | 36 | `declaration-track:c1a805f2f20d0cfaf0538418dca63d9658e592309dc7d68fb78acf831b99780d` |
| 4 | `def` | [coreGrowingShiftEndpointFiniteCyclicNegativePhase](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicnegativephase--ba767f95bfe41d21a4da1dae.md) | 41 | `declaration-track:ba767f95bfe41d21a4da1dae6a430788cd3cdec572a0d8f22f4a27e5826f4d82` |
| 5 | `def` | [coreGrowingShiftEndpointFiniteCyclicMultiplier](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicmultiplier--a44c3623c05a0e88e6d4e9cd.md) | 49 | `declaration-track:a44c3623c05a0e88e6d4e9cd8f8e86d67ef57f21792be794f1c8959d04551d61` |
| 6 | `def` | [coreGrowingShiftEndpointFiniteCyclicDistance](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicdistance--2955ec13cda71c6a1eb76006.md) | 55 | `declaration-track:2955ec13cda71c6a1eb760067c99f4eec65c20e00123eddbb9a3faffba953038` |
| 7 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_generic](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicmultiplier-eq-generic--8eedff23cd77862c6b57dca0.md) | 61 | `result-track:8eedff23cd77862c6b57dca0927d0165549ac5e5c7a46e2ab9630a54e4bcf79f` |
| 8 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicDistance_eq_generic](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicdistance-eq-generic--7be6210152d439053e26b4c3.md) | 69 | `result-track:7be6210152d439053e26b4c3569a959a7a4c4b0b9d78927723bc8075175c73d6` |
| 9 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicModulus_pos](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicmodulus-pos--c9d0fd8394d8e4543a972421.md) | 77 | `result-track:c9d0fd8394d8e4543a972421445a6b753a48f27fe9b4560fe2ee37aa6b80b354` |
| 10 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicDistance_eq_zero_iff](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicdistance-eq-zero-iff--1445337ed4f114917892eb24.md) | 84 | `result-track:1445337ed4f114917892eb24ac05691aa78ffa7870ecbd9edb80d317b1ffc432` |
| 11 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_zero_iff](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicmultiplier-eq-zero-iff--973b7ae8913cbb8e0035a967.md) | 92 | `result-track:973b7ae8913cbb8e0035a9673b9a57dedff7f6382bb0504be83dffec0142d350` |
| 12 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicMultiplier_norm_lowerBound](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicmultiplier-norm-lowerbound--79d10b631ebba662ca0bed81.md) | 100 | `result-track:79d10b631ebba662ca0bed8188036cca6ab38e3a7c450a4024f7ed58b701073b` |
| 13 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicmultiplier-inv-norm-le-distance--90ce7cca55ba2190f8c13ce0.md) | 113 | `result-track:90ce7cca55ba2190f8c13ce04b1e692df6c64f5f93f15b1138148a42cdc3ef94` |
| 14 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_cutoff](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/declarations/coregrowingshiftendpointfinitecyclicmultiplier-inv-norm-le-cutoff--65cb1dd80e40166f76b58b59.md) | 126 | `result-track:65cb1dd80e40166f76b58b5966098eefc0d8467f64fb361d61f9356fd5e9897e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
