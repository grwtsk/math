# Verification target: GRWTSK.Logic.Certificates.ModelExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a21284989acc75ddf65586f57bb37a73ac0406a9",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Certificates/ModelExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a21284989acc75ddf65586f57bb37a73ac0406a9`.

Source path: `GRWTSK/Logic/Certificates/ModelExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Certificates/ModelExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.ProofCoverage`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.PartialMapComposition`](../../../../../mathematics/Analysis/ErrorBounds/PartialMapComposition.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.DiscreteEnergyBalance`](../../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Analysis.Complex.VerticalReflection`](../../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrence88e893dfbad19da3c2403f73.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteZeroCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/finitezerocap--336e9100fc8fb12eb650aa41.md) | 28 | `declaration-track:336e9100fc8fb12eb650aa419ed47db997343bb56e1ca8437167a2a41fa6cea0` |
| 2 | `theorem` | [finite_check_does_not_supply_coverage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/finite-check-does-not-supply-coverage--f6c5565c3e30743c8a397e9f.md) | 32 | `result-track:f6c5565c3e30743c8a397e9f6396239518f95babee8aff6298fba497e1027aa9` |
| 3 | `def` | [completeBoolCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/completeboolcap--aa36ff74f2c4c9c72d3a3048.md) | 40 | `declaration-track:aa36ff74f2c4c9c72d3a3048582d7d0575bd3d068aa30d4dd9828c5aed1bf058` |
| 4 | `theorem` | [complete_finite_cap_promotes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/complete-finite-cap-promotes--71ab837fd7ea391a5811ab78.md) | 44 | `result-track:71ab837fd7ea391a5811ab78505313be585811598f80ff2d9cbd13669392e789` |
| 5 | `def` | [openFalseCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/openfalsecap--2cae22741cf36bd86ce6b454.md) | 50 | `declaration-track:2cae22741cf36bd86ce6b454c5c810ecad3c36fdff7f6a801e5651e3363d31b0` |
| 6 | `theorem` | [conditional_cap_keeps_missing_premise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/conditional-cap-keeps-missing-premise--a1d18fe5bc3c920e83bc203a.md) | 56 | `result-track:a1d18fe5bc3c920e83bc203a90233cd42ef314f7b2d3e7df759f37e52b852bc7` |
| 7 | `theorem` | [conditional_false_cap_is_not_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/conditional-false-cap-is-not-terminal--871c3c6746f251d835a5a086.md) | 61 | `result-track:871c3c6746f251d835a5a08661c8e308503bcdfecfcdb2435e0a6116904a17e1` |
| 8 | `theorem` | [theorem_does_not_grant_rights](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/theorem-does-not-grant-rights--149b8e9cf70584cccc2c5c97.md) | 65 | `result-track:149b8e9cf70584cccc2c5c976da89945f19b02ebc779900b6699f0ffac1d1784` |
| 9 | `def` | [fixturePolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/fixturepolicy--e9246e1a28de6694bde8ad4c.md) | 70 | `declaration-track:e9246e1a28de6694bde8ad4c27674f690b5283d3094a77b45abd3ba62c7ff5d7` |
| 10 | `def` | [fixtureState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/fixturestate--45eb8f81f2ec9918f7146c91.md) | 77 | `declaration-track:45eb8f81f2ec9918f7146c914c86162c4f7bab2de8b96b4c81ff2c3ed4a52972` |
| 11 | `def` | [fixtureReceipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/fixturereceipt--29f8ad74479d42e6494f2412.md) | 79 | `declaration-track:29f8ad74479d42e6494f24128b9a00cd3b04445dc2384fe3a5caabfaa74ffb3c` |
| 12 | `def` | [fixtureProposal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/fixtureproposal--349aff5612af3eeb837a6ccb.md) | 82 | `declaration-track:349aff5612af3eeb837a6ccbd752b0d6c2b91b7f93d9e59cdea2c2784906d55d` |
| 13 | `theorem` | [fixture_guard](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/fixture-guard--862261aef727b6c558db7ccc.md) | 89 | `result-track:862261aef727b6c558db7ccc546ebb1cebf85ef86547edbd7572661c24375d92` |
| 14 | `theorem` | [positive_transition_preserves_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/positive-transition-preserves-safe--b3c8879cb570cee0baa3b25d.md) | 93 | `result-track:b3c8879cb570cee0baa3b25df20969aed59220fe8a563097eacaa9ac7a9f2fbb` |
| 15 | `theorem` | [new_unresolved_obligation_remains](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/new-unresolved-obligation-remains--71736215d01d54f03a619489.md) | 98 | `result-track:71736215d01d54f03a619489c8c62f0e74c707c238044ee7e929918f476e7763` |
| 16 | `theorem` | [false_obligation_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/false-obligation-rejected--09149a1564daaed64498d008.md) | 105 | `result-track:09149a1564daaed64498d008a1023a32a6657e14a6e55ca8c80f3f50dabc25fc` |
| 17 | `theorem` | [forbidden_effect_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/forbidden-effect-rejected--704a29ca693d0fb1208db900.md) | 113 | `result-track:704a29ca693d0fb1208db900a524652306c97cb7fd5c1f1c4d4add35fee48ed4` |
| 18 | `def` | [pairEndpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/pairendpoint--06a65e81ac081b773cb1e94f.md) | 120 | `declaration-track:06a65e81ac081b773cb1e94f7cf35eed5d292e016f06c032428119e5c5311325` |
| 19 | `def` | [firstEndpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/firstendpoint--d2531e5a8b827664da755bdc.md) | 126 | `declaration-track:d2531e5a8b827664da755bdc690984d121e32b5c5613934087868d24506f1a47` |
| 20 | `def` | [firstCoordinateReduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/firstcoordinatereduction--c02557dedd591e7d28b8a240.md) | 133 | `declaration-track:c02557dedd591e7d28b8a240af15b0fb356bc1632131baaad63dc37b5c506c12` |
| 21 | `theorem` | [retained_coordinate_loses_information](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/retained-coordinate-loses-information--cc38022496cec06cbe52b746.md) | 141 | `result-track:cc38022496cec06cbe52b7469c3056cfb25daa6bccdd862519f4827812a5edbe` |
| 22 | `theorem` | [complete_packet_preserves_information](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/complete-packet-preserves-information--18e8bf94e5aaab962f9bf7e4.md) | 145 | `result-track:18e8bf94e5aaab962f9bf7e4859b66c9d39c970367e027e2e91c48b49981a595` |
| 23 | `def` | [identityFrame](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/identityframe--8e959c8e886aa540cd933053.md) | 149 | `declaration-track:8e959c8e886aa540cd933053bd58e7472c5005815d7c9af4f3ef7dc955b7e2c4` |
| 24 | `theorem` | [exact_frame_composition_preserves_observe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/exact-frame-composition-preserves-observe--1ff397a90642585deeea76ba.md) | 153 | `result-track:1ff397a90642585deeea76ba1c11c1e4edd926f8276dca4e044db7157f84cd2a` |
| 25 | `def` | [coefficientDot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/coefficientdot--7dbb913cfa9a65ae4523f948.md) | 161 | `declaration-track:7dbb913cfa9a65ae4523f9486e12a9e01cb5977e0369d09a440cd70f4e8e0172` |
| 26 | `def` | [nativeGram](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/nativegram--e60c9a37568dfc4f20373981.md) | 163 | `declaration-track:e60c9a37568dfc4f20373981b3087d6c02f66dcf057d75058a843a198ddbe205` |
| 27 | `def` | [signedPairing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/signedpairing--f0e98c5afb708ce94b6d3670.md) | 166 | `declaration-track:f0e98c5afb708ce94b6d3670c2de35bd5899eb67cc366c040596ae5b114ab37e` |
| 28 | `theorem` | [native_gram_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/native-gram-nonnegative--33d2039f865b4dbce8c3ab64.md) | 168 | `result-track:33d2039f865b4dbce8c3ab645db24ecaeca35d6145772c949bd4dda1ee86556c` |
| 29 | `theorem` | [coefficient_orthogonality_keeps_mixed_terms](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/coefficient-orthogonality-keeps-mixed-terms--e3b34ae00c18c17f4815fdae.md) | 172 | `result-track:e3b34ae00c18c17f4815fdae6c93b7452fb665646f5d84f148f026d7d1a9a3a1` |
| 30 | `theorem` | [positive_gram_does_not_make_signed_form_positive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/positive-gram-does-not-make-signed-form-positive--2fd1ba18ff2a6268a60e0647.md) | 177 | `result-track:2fd1ba18ff2a6268a60e064798e0de0cfd4a1e3a68c5a4566283f19320e5ec4c` |
| 31 | `def` | [twoByTwoDet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/twobytwodet--a83a2c21356b522489c4c811.md) | 182 | `declaration-track:a83a2c21356b522489c4c8115fdab82a5ca0fa6ec94fa0575dfcba22305d1ab9` |
| 32 | `def` | [twoByTwoMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/twobytwomap--0e16711102b2d0e1bd576ce2.md) | 184 | `declaration-track:0e16711102b2d0e1bd576ce2b7e78ec4b7a88f22941ba91c4278898651b7f568` |
| 33 | `theorem` | [determinant_one_does_not_force_identity](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/declarations/determinant-one-does-not-force-identity--5faff9109e9cb486cc559069.md) | 187 | `result-track:5faff9109e9cb486cc559069d4996ece3f07e41f6f353fb9bc83e5813dbcf7ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
