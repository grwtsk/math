# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.ModelExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b6bd5c9c8942728545687a2038fc622431fc2c7",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b6bd5c9c8942728545687a2038fc622431fc2c7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.ProofCoverage`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.PartialMapComposition`](../../../../../mathematics/Analysis/ErrorBounds/PartialMapComposition.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.DiscreteEnergyBalance`](../../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Analysis.ComplexAnalysis.VerticalReflection`](../../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteZeroCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/finitezerocap--9b1aa0671784de5e6913ae77.md) | 28 | `declaration-track:9b1aa0671784de5e6913ae77a9f07a63f54f2d6ee9ae5f42128dcaf2b83d4c54` |
| 2 | `theorem` | [finite_check_does_not_supply_coverage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/finite-check-does-not-supply-coverage--90fa40248d32af2d88a12c85.md) | 32 | `result-track:90fa40248d32af2d88a12c858908662c92eb2fa2562de3c87b72b654b544e2a1` |
| 3 | `def` | [completeBoolCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/completeboolcap--6733d534b915ba45bf6d08eb.md) | 40 | `declaration-track:6733d534b915ba45bf6d08ebec91af3b1e1881a9d499a9f7808566e726cbd304` |
| 4 | `theorem` | [complete_finite_cap_promotes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/complete-finite-cap-promotes--ffa5020b17de0b3abeda2ced.md) | 44 | `result-track:ffa5020b17de0b3abeda2cede4019720aa0443357010177319d5f5a6752783de` |
| 5 | `def` | [openFalseCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/openfalsecap--256d7b448bd79560af1c362e.md) | 50 | `declaration-track:256d7b448bd79560af1c362e899b2685afe398478b12245f214b87ead47f8a01` |
| 6 | `theorem` | [conditional_cap_keeps_missing_premise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/conditional-cap-keeps-missing-premise--9d327477deff19d39edab83b.md) | 56 | `result-track:9d327477deff19d39edab83b934c9ea747d6a90b0b1a392f661270a4fe4cd91a` |
| 7 | `theorem` | [conditional_false_cap_is_not_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/conditional-false-cap-is-not-terminal--f0f36cda5da688b366221986.md) | 61 | `result-track:f0f36cda5da688b366221986ef5b532603df42d1a5417347c801aa9c8bc8f41b` |
| 8 | `theorem` | [theorem_does_not_grant_rights](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/theorem-does-not-grant-rights--72ee65cd827ab109ede4a0c5.md) | 65 | `result-track:72ee65cd827ab109ede4a0c5e80b4cb7157f4c2f7442e0409ec563ce0b30cc83` |
| 9 | `def` | [fixturePolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/fixturepolicy--1121642c3dad0f529e1fa353.md) | 70 | `declaration-track:1121642c3dad0f529e1fa3535d724706c525a989384c5eed7645f9f7b256cb6f` |
| 10 | `def` | [fixtureState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/fixturestate--0ff8c50cb0e9b1b8b3c7738f.md) | 77 | `declaration-track:0ff8c50cb0e9b1b8b3c7738f1957dfd758352c62049ce0ef6f980e2e97c585c7` |
| 11 | `def` | [fixtureReceipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/fixturereceipt--d8e26c779503d3ae2b5b0897.md) | 79 | `declaration-track:d8e26c779503d3ae2b5b0897bac59893fb1b3a48fea038d9207caa8c9a3ed45e` |
| 12 | `def` | [fixtureProposal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/fixtureproposal--9978a5152a84855a86d95ae1.md) | 82 | `declaration-track:9978a5152a84855a86d95ae1b0645e307883bea7816346c1327aa9c2f765facb` |
| 13 | `theorem` | [fixture_guard](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/fixture-guard--59b522a9759cb5c9913b83ce.md) | 89 | `result-track:59b522a9759cb5c9913b83ce8e9ed3232c1404b1c388441900abcd1cd593ac7b` |
| 14 | `theorem` | [positive_transition_preserves_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/positive-transition-preserves-safe--27577b65a9c3750f8c212ef0.md) | 93 | `result-track:27577b65a9c3750f8c212ef089d97e7c0f6b41f8b58b984f5391bac4c8d7384b` |
| 15 | `theorem` | [new_unresolved_obligation_remains](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/new-unresolved-obligation-remains--674f649e47a2690a8546bb5b.md) | 98 | `result-track:674f649e47a2690a8546bb5bfc86e87af3970a125f3df94df8d80b59825317ff` |
| 16 | `theorem` | [false_obligation_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/false-obligation-rejected--c25fa4e4103452788b3a8417.md) | 105 | `result-track:c25fa4e4103452788b3a84175b048b85335f527c31b27c8a59d32b71fa82617f` |
| 17 | `theorem` | [forbidden_effect_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/forbidden-effect-rejected--56256ad14a2ea40de504caa7.md) | 113 | `result-track:56256ad14a2ea40de504caa7a46631ef9a93535ab72aa8954910e199be371746` |
| 18 | `def` | [pairEndpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/pairendpoint--dfd056da3fe413433a894c62.md) | 120 | `declaration-track:dfd056da3fe413433a894c62e8339a443a927ab2fe3cd61875ed1aa7c6be23f2` |
| 19 | `def` | [firstEndpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/firstendpoint--e966b8e499791a10edf3b26b.md) | 126 | `declaration-track:e966b8e499791a10edf3b26b184de2c7f07a18d11f9402581882b6cdd79d22d8` |
| 20 | `def` | [firstCoordinateReduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/firstcoordinatereduction--07b8eeb76c3621c0ababa37e.md) | 133 | `declaration-track:07b8eeb76c3621c0ababa37e1a774ddaefa7c5e987973dfacbfb17d2f07f3ee6` |
| 21 | `theorem` | [retained_coordinate_loses_information](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/retained-coordinate-loses-information--5c1c8df690bc304d81501fbb.md) | 141 | `result-track:5c1c8df690bc304d81501fbbe2726166c0ee0332d194dab508532599cca6c6b2` |
| 22 | `theorem` | [complete_packet_preserves_information](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/complete-packet-preserves-information--1802437f73f8b097c74f753e.md) | 145 | `result-track:1802437f73f8b097c74f753eddcb8abafbd7767fa716fa74eee848e3325c89fe` |
| 23 | `def` | [identityFrame](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/identityframe--92a63e1cc1d19e575dec8c21.md) | 149 | `declaration-track:92a63e1cc1d19e575dec8c2125a5879c75837e20c311c14e97f6b06d9536494c` |
| 24 | `theorem` | [exact_frame_composition_preserves_observe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/exact-frame-composition-preserves-observe--26316166cb62992402d3709b.md) | 153 | `result-track:26316166cb62992402d3709b3083db400cfced195cc39905e17c2e423c6b68b3` |
| 25 | `def` | [coefficientDot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/coefficientdot--14fb5dead79265264eaf5642.md) | 161 | `declaration-track:14fb5dead79265264eaf564238bbdf7d1c977d0b39a7c0f0a223534c8518d8bb` |
| 26 | `def` | [nativeGram](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/nativegram--59c36d6a1c3de740058d7892.md) | 163 | `declaration-track:59c36d6a1c3de740058d7892f7aa7010adfac54cdf7e612292e5e3f50b776e4d` |
| 27 | `def` | [signedPairing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/signedpairing--09799de05c64b5f81c3bc8f3.md) | 166 | `declaration-track:09799de05c64b5f81c3bc8f3e0ef3eb437b4f5c3388be238d919e9f8bbe2283c` |
| 28 | `theorem` | [native_gram_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/native-gram-nonnegative--960c30055362b12efa850cd9.md) | 168 | `result-track:960c30055362b12efa850cd93bd21bcbd383c24325990da1f6429b3d8c2d9e02` |
| 29 | `theorem` | [coefficient_orthogonality_keeps_mixed_terms](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/coefficient-orthogonality-keeps-mixed-terms--134ae482a73ca7d0953083a2.md) | 172 | `result-track:134ae482a73ca7d0953083a225a60cf60233d37d95daafb8b50125f953f71f01` |
| 30 | `theorem` | [positive_gram_does_not_make_signed_form_positive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/positive-gram-does-not-make-signed-form-positive--3626dbdfd604f32c7f108531.md) | 177 | `result-track:3626dbdfd604f32c7f108531a4c14afda20d30abb1f492261967486b646e54d1` |
| 31 | `def` | [twoByTwoDet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/twobytwodet--8ffe453ae029022ba67a5a9d.md) | 182 | `declaration-track:8ffe453ae029022ba67a5a9d037421736787d6fa2c15323df093017e75398f71` |
| 32 | `def` | [twoByTwoMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/twobytwomap--f9e741179519d6298dfa2dd9.md) | 184 | `declaration-track:f9e741179519d6298dfa2dd97b35031017979a3001c2e9018c2d9da2a353abed` |
| 33 | `theorem` | [determinant_one_does_not_force_identity](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence542e855a118862a818b66e64.lean/declarations/determinant-one-does-not-force-identity--e94030689d38797116f6bf20.md) | 187 | `result-track:e94030689d38797116f6bf20b77a97cfa118bf633136dfe64b298c5eac65019f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
