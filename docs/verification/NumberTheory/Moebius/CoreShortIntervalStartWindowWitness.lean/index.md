# Verification target: GRWTSK.NumberTheory.Moebius.CoreShortIntervalStartWindowWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97de242eef4831e4f3b4d35ced118231d7ceee15",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97de242eef4831e4f3b4d35ced118231d7ceee15`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensCoreLongShortIntervalL1`](../../../../mathematics/NumberTheory/Moebius/MertensCoreLongShortIntervalL1.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonicStartWindowLower](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/declarations/harmonicstartwindowlower--ccbdbd4a73af9d0d67eeeb7e.md) | 19 | `declaration-track:ccbdbd4a73af9d0d67eeeb7e8a0db9bec5bdf12c27256cd3c81f4f3064113463` |
| 2 | `def` | [harmonicStartWindowUpper](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/declarations/harmonicstartwindowupper--d29b3418c1056c0cffa7f756.md) | 23 | `declaration-track:d29b3418c1056c0cffa7f75687cc47f18b4d4c83f3761b4601c08866b7c4841c` |
| 3 | `def` | [harmonicShortIntervalStart](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/declarations/harmonicshortintervalstart--1a2c46b6d4191acd47447550.md) | 27 | `declaration-track:1a2c46b6d4191acd474475503f87f5982aed4d08e0a3ad4ca8999e08baf5dea0` |
| 4 | `theorem` | [harmonicShortIntervalStart_mem_window](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/declarations/harmonicshortintervalstart-mem-window--cdda820ed270499fe78f3665.md) | 31 | `result-track:cdda820ed270499fe78f36657181e67e6efacd5391c2edb8d9450a286effc209` |
| 5 | `theorem` | [harmonicStartWindow_eq_image_range](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/declarations/harmonicstartwindow-eq-image-range--9972b0940f34c6a0a4c52388.md) | 43 | `result-track:9972b0940f34c6a0a4c52388e290b83e9ee9f86d79a56d470f76a3005c1ee7a3` |
| 6 | `theorem` | [harmonicStartWindow_card](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/declarations/harmonicstartwindow-card--fe2f0a3f1071a3786348b9bf.md) | 64 | `result-track:fe2f0a3f1071a3786348b9bf4874cef3abfa557a2ddeb2a0e05cadd001f9aa26` |
| 7 | `theorem` | [harmonicStartWindowUpper_eq_left_add_one_of_depth_lt_left](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/declarations/harmonicstartwindowupper-eq-left-add-one-of-depth-lt-left--9aca10e1fc8412caadf2783f.md) | 73 | `result-track:9aca10e1fc8412caadf2783f09b99dd68eb3f0e100063fea2d99264c7afc805c` |
| 8 | `theorem` | [harmonicStartWindowLower_eq_two_of_left_le_depth](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/declarations/harmonicstartwindowlower-eq-two-of-left-le-depth--a36994947250e590d40c150a.md) | 83 | `result-track:a36994947250e590d40c150a1a9bcf7401eccfbc344ee96a70da9eb39f8f73d0` |
| 9 | `structure` | [MacroscopicStartWindowShortIntervalScope](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/declarations/macroscopicstartwindowshortintervalscope--765da753edaccbf0c16872c6.md) | 92 | `declaration-track:765da753edaccbf0c16872c6b85494bdcf400a1e850b1105cb0a875471a6fc5d` |
| 10 | `structure` | [MacroscopicStartWindowToCoreL1Adapter](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/declarations/macroscopicstartwindowtocorel1adapter--90b5b36e1b2d98d9c0e33b2e.md) | 100 | `declaration-track:90b5b36e1b2d98d9c0e33b2ee2162d5f71d2ccb1823d672a6bd93d84aa0e8434` |
| 11 | `theorem` | [riemannHypothesis_of_macroscopicStartWindowAdapter](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/declarations/riemannhypothesis-of-macroscopicstartwindowadapter--e69a302400cb4009791bf1b4.md) | 115 | `result-track:e69a302400cb4009791bf1b422a22f8c0602d0ea4ef0af2117ede955c039e4d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
