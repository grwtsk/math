# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenSquareWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2be6701926c77b8cbe805fea8214740b695361c2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2be6701926c77b8cbe805fea8214740b695361c2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.CheckedIntegerPower`](../../../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenJetCandidate`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenJetCandidate.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/center--53484886b4319da84461f78f.md) | 22 | `declaration-track:53484886b4319da84461f78f3717ed1c7e5b614cfe0c43d84621235905b262b2` |
| 2 | `def` | [resolution](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/resolution--1b20c9f4cc91c4cec98ecebf.md) | 24 | `declaration-track:1b20c9f4cc91c4cec98ecebf321bc709516d0873a9f4bfd95ba8fc7d58d0c209` |
| 3 | `theorem` | [center_value](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/center-value--cbcf7859aab990af2b653cc2.md) | 27 | `result-track:cbcf7859aab990af2b653cc267d8e37b3a4d60b998e1ec757a12d971ff50c34f` |
| 4 | `theorem` | [resolution_value](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/resolution-value--e666ff3a08fa980e00906760.md) | 29 | `result-track:e666ff3a08fa980e0090676026a98836752114c9e14be5bb5ba1eac5d7fa3249` |
| 5 | `def` | [state0](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/state0--5bd16f343ca179e302c323e6.md) | 31 | `declaration-track:5bd16f343ca179e302c323e69d59baae22804b39081b35210351f016ba40ff82` |
| 6 | `def` | [state1](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/state1--55223e9b974c90cd630e7eac.md) | 33 | `declaration-track:55223e9b974c90cd630e7eaca1f678d8663bb1fc943d5848c9c1d1087fde4fd4` |
| 7 | `def` | [state2](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/state2--738bb92e8289b07cbe0502e3.md) | 35 | `declaration-track:738bb92e8289b07cbe0502e350c2dc5b695d991f4dda48129aec42b1d6c8513d` |
| 8 | `def` | [state3](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/state3--a4124a0169a3b84ee5652cd0.md) | 37 | `declaration-track:a4124a0169a3b84ee5652cd0732ffa2fbcfad543cf2d225cf77358aa1b977b4f` |
| 9 | `def` | [state4](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/state4--7696fbe55d27ddcefcaef876.md) | 39 | `declaration-track:7696fbe55d27ddcefcaef876f42e911b776aa75921c6ce48aaa918865aaceb3d` |
| 10 | `def` | [state5](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/state5--4cb4dcbdf9a2c77984713578.md) | 41 | `declaration-track:4cb4dcbdf9a2c77984713578dfe3d7e6f54a839cb5f04a0d4f86c53b55574304` |
| 11 | `def` | [state6](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/state6--63fcc3a1e8c2ad2f531db63c.md) | 43 | `declaration-track:63fcc3a1e8c2ad2f531db63c4bad7a0701db4297d63817a95762dd0026b7be42` |
| 12 | `def` | [state7](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/state7--2cf6db77cb78bd875be18313.md) | 45 | `declaration-track:2cf6db77cb78bd875be18313b64995c308957487f43c9b4910aa6f633cc6f6b9` |
| 13 | `theorem` | [transition0](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/transition0--c680a6fc173b0b985acdb152.md) | 47 | `result-track:c680a6fc173b0b985acdb152a1261b0944b19c084ed1652f5003627eed27038a` |
| 14 | `theorem` | [transition1](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/transition1--3c088bea7bf7297e0f3222ff.md) | 53 | `result-track:3c088bea7bf7297e0f3222ff47f3333e22b9dad843229e80f57f3173c3d9eb30` |
| 15 | `theorem` | [transition2](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/transition2--a1e1b061e70d4e01359d7b6f.md) | 59 | `result-track:a1e1b061e70d4e01359d7b6f047049cac284ed1a2465889947bd511407a5b55a` |
| 16 | `theorem` | [transition3](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/transition3--949f8d4d3d73cc3bce1ed8ec.md) | 65 | `result-track:949f8d4d3d73cc3bce1ed8ec2b5251a1060e3821363e899ce2da1e98af8f974c` |
| 17 | `theorem` | [transition4](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/transition4--55c5456d0815d7335a0ba193.md) | 71 | `result-track:55c5456d0815d7335a0ba1931855ed2e3649aee3d7d11c677de2d9e383467354` |
| 18 | `theorem` | [transition5](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/transition5--37eb5ac3fa9b46530cfca4bf.md) | 77 | `result-track:37eb5ac3fa9b46530cfca4bf2bf532c55a12458c10ba5ee9e319c7aee68bb964` |
| 19 | `theorem` | [transition6](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/transition6--f39e89f7968294d5f61f7937.md) | 83 | `result-track:f39e89f7968294d5f61f7937b7475f90f08ff32b933a96b933b2d58b224229a1` |
| 20 | `def` | [rows](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/rows--75dc6b32c657d1dba29ccdd4.md) | 89 | `declaration-track:75dc6b32c657d1dba29ccdd4dfe118ff02e4e3ccf981a7cb63ccb6826a4e110e` |
| 21 | `theorem` | [tail_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/tail-checked--50ac00c0241601e0e89e1379.md) | 92 | `result-track:50ac00c0241601e0e89e1379fa882f27bb9da64944eff0dd870be59541940437` |
| 22 | `def` | [SeedBinding](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/seedbinding--412cdd5c1a402e3c324b81cc.md) | 97 | `declaration-track:412cdd5c1a402e3c324b81cc4c32c9c0adea8a457a106b08af4450d883442b79` |
| 23 | `def` | [SourceReady](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/sourceready--699b3ddaa07cda52c699f210.md) | 99 | `declaration-track:699b3ddaa07cda52c699f210c2587055d56d5e681eda3f8d950864370f9d1270` |
| 24 | `def` | [result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/result--0287cc1f48b52eaaa2b746c1.md) | 101 | `declaration-track:0287cc1f48b52eaaa2b746c1d24fb615e7341e3d5aa1183f06c57ae4ea756f0c` |
| 25 | `theorem` | [leaf_of_sourceReady](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/leaf-of-sourceready--c58d7a2bd3dfce73ce4e886b.md) | 105 | `result-track:c58d7a2bd3dfce73ce4e886b56cb97f9b0470e0727f02436c925f8aee0352c89` |
| 26 | `theorem` | [power_enclosure_of_sourceReady](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/declarations/power-enclosure-of-sourceready--62b8668a7fbbb66f4997d0b6.md) | 112 | `result-track:62b8668a7fbbb66f4997d0b6a24f7a5b05ff0cc3c7f8403be3e6275ce29f123c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
