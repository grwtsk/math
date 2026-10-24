# Verification target: GRWTSK.NumberTheory.Farey.ProjectiveKoopmanEigenvalue

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b061bd5a98174dbb31896e31f16d224321ac01bf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b061bd5a98174dbb31896e31f16d224321ac01bf`.

Source path: `GRWTSK/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction`](../../../../mathematics/NumberTheory/Farey/ReturnAngularProjectiveObstruction.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Logic.InformationLoss.FactorizationFiber`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiber.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eigenvalue_sq_one_of_gauge_two_step](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/eigenvalue-sq-one-of-gauge-two-step--b3e07daabe1ac2c0193a7d63.md) | 45 | `result-track:b3e07daabe1ac2c0193a7d63e2b1b9a35983c5cb67d322e27b5a6223d2111932` |
| 2 | `theorem` | [selected_return_two_step_antipodal](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/selected-return-two-step-antipodal--130899f6c568f8971525711f.md) | 68 | `result-track:130899f6c568f8971525711f14b5278b35ce2af6fb7f42d23e264413e7df85a1` |
| 3 | `theorem` | [farey_projective_eigenvalue_sq_one](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/farey-projective-eigenvalue-sq-one--cddab936d656680e30823580.md) | 85 | `result-track:cddab936d656680e3082358010014ac8e586725a069ed29b7336188cc110ab36` |
| 4 | `theorem` | [no_projective_quarter_turn_eigenfunction](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/no-projective-quarter-turn-eigenfunction--d4c3e59bf91da165a7406e91.md) | 98 | `result-track:d4c3e59bf91da165a7406e91926509000085c7cf8aeb43b211e9f2b0c2792057` |
| 5 | `def` | [projectiveParityReadout](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/projectiveparityreadout--8aa2996a9c273b56db014157.md) | 113 | `declaration-track:8aa2996a9c273b56db01415794362b7b3e9bf918a2e28edcffcc1cc08b1bf4dd` |
| 6 | `theorem` | [projectiveParityReadout_sign_invariant](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/projectiveparityreadout-sign-invariant--971a04856b69e02fffd26886.md) | 116 | `result-track:971a04856b69e02fffd268862bcd07e8e8673f36aab75334087af68754a89ddf` |
| 7 | `theorem` | [projectiveParityReadout_on_orbit](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/projectiveparityreadout-on-orbit--4e745f35df6181db19bcd798.md) | 123 | `result-track:4e745f35df6181db19bcd798645848b6dfd9e9abb1416abf6fa43c65dafee530` |
| 8 | `theorem` | [projectiveParityReadout_selected_eigen](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/projectiveparityreadout-selected-eigen--198b351faadc4dd72f51e9c5.md) | 132 | `result-track:198b351faadc4dd72f51e9c5469acfdf16e0267de19f3c85d6a962e1e8369eb2` |
| 9 | `def` | [parityProfile](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/parityprofile--a746bfb9a305b4618ce92c65.md) | 145 | `declaration-track:a746bfb9a305b4618ce92c6570f6cbe3c3fe5b5a656bbdbf0017ffb908052b0e` |
| 10 | `theorem` | [parityProfile_zero_eq_two](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/parityprofile-zero-eq-two--c825f63f98ccefe0078bf44a.md) | 148 | `result-track:c825f63f98ccefe0078bf44ab173b810e3ba3dbb0c98236eb749b63b9a896d2b` |
| 11 | `theorem` | [orbitPhase_not_factorsThrough_parity](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/orbitphase-not-factorsthrough-parity--faf4e41d54110e4f7f5d25a7.md) | 154 | `result-track:faf4e41d54110e4f7f5d25a756bfc720de69dc9ac2c31a5dcbbb62d54737b1fe` |
| 12 | `def` | [parityPhase](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/parityphase--731243eb4d96042313ff39dc.md) | 162 | `declaration-track:731243eb4d96042313ff39dc9d8c18961ec1cf8f3ae048e0ef19dd8677d4e041` |
| 13 | `theorem` | [squared_orbitPhase_factorsThrough_parity](../../../../mathematics/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/declarations/squared-orbitphase-factorsthrough-parity--bf5037d7b903d785e2ba3766.md) | 164 | `result-track:bf5037d7b903d785e2ba3766ed31eb0908ec65931797ec1df36a9940b3d8d27a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
