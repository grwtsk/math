# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32e1ca278b5e3701c267c65bc4b51db53717039c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32e1ca278b5e3701c267c65bc4b51db53717039c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleSystems`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleRoutes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/cycleroutes--8343ffc79a0560e76d38fb46.md) | 21 | `declaration-track:8343ffc79a0560e76d38fb46550fcc48715bd5d07ccba72c123f70e73b8f5ec3` |
| 2 | `def` | [falseCycleProviders](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/falsecycleproviders--4204669474f0812ee60a6712.md) | 26 | `declaration-track:4204669474f0812ee60a6712078198e935cdcbaab7663de5cbc1ea71888f833a` |
| 3 | `theorem` | [false_cycle_rules_eligible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/false-cycle-rules-eligible--bdaa8d036d6780ec0da69d75.md) | 36 | `result-track:bdaa8d036d6780ec0da69d757502b90fcd187ae52e9b9fb50077d2a8bcfff7d7` |
| 4 | `theorem` | [false_cycle_support_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/false-cycle-support-empty--3baaa76f10d6593e57b11f73.md) | 41 | `result-track:3baaa76f10d6593e57b11f73237d75fc3ec0dc6068f20debb57db92c38687280` |
| 5 | `theorem` | [false_cycle_self_closed_but_not_grounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/false-cycle-self-closed-but-not-grounded--219ce525b1d497ceacde185e.md) | 48 | `result-track:219ce525b1d497ceacde185eb20acf71cfc85761381c4377699b66eb815500cf` |
| 6 | `theorem` | [false_cycle_cannot_supply_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/false-cycle-cannot-supply-target--bf0fb36fbeecbd33756a6683.md) | 58 | `result-track:bf0fb36fbeecbd33756a66832a6da57752e928fb9eb6a70ee31b49612f5abf74` |
| 7 | `def` | [alternateProviders](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/alternateproviders--406fe54adcc452c91cf9ff72.md) | 65 | `declaration-track:406fe54adcc452c91cf9ff72637805294cdd738e922a84e55a4debd7a7e45557` |
| 8 | `theorem` | [stale_primary_fresh_alternative](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/stale-primary-fresh-alternative--410568d5b0201b24a81386b9.md) | 75 | `result-track:410568d5b0201b24a81386b93c1ad306acdf82603b27adb66a2a0d4934fe32bc` |
| 9 | `theorem` | [alternate_route_survives_changed_read](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/alternate-route-survives-changed-read--0f2bec117aafb75151275ad1.md) | 80 | `result-track:0f2bec117aafb75151275ad1b26fc32e4fe39e7d4d103879edcecd46b3f3645c` |
| 10 | `theorem` | [alternate_route_survives_provider_withdrawal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/alternate-route-survives-provider-withdrawal--bc0145a856007223555bb87d.md) | 89 | `result-track:bc0145a856007223555bb87d4c7fa81bdd7e016346ccbe20147de1ba649b4165` |
| 11 | `theorem` | [whole_claim_withdrawal_blocks_alternatives](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/whole-claim-withdrawal-blocks-alternatives--67aa70587c1e618ae72913e0.md) | 99 | `result-track:67aa70587c1e618ae72913e0632ba7b8fa878aa34e2a4dc398291004bee143de` |
| 12 | `def` | [groundedCycleRoutes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/groundedcycleroutes--b6c67aff5931ad41522d83b5.md) | 107 | `declaration-track:b6c67aff5931ad41522d83b589a4e663195f5089c660d31db2c131e2d4dde51b` |
| 13 | `def` | [groundedCycleProviders](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/groundedcycleproviders--6045fa5cff8c75bb0f351a2d.md) | 111 | `declaration-track:6045fa5cff8c75bb0f351a2dda4504809d2596b9d74ec819c5e08b2e373e3b87` |
| 14 | `theorem` | [grounded_cycle_supported_before_change](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/grounded-cycle-supported-before-change--550be877fc73fb60994cbc4f.md) | 120 | `result-track:550be877fc73fb60994cbc4f92852609f2b8f6544065fc6065350a0d5deff382` |
| 15 | `theorem` | [grounded_cycle_empty_after_ground_loss](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/grounded-cycle-empty-after-ground-loss--6ffba7c19a6ea4dd37edb8f8.md) | 138 | `result-track:6ffba7c19a6ea4dd37edb8f8998da11ae4ad09e019374686588710d78a7829cc` |
| 16 | `def` | [sourceDependentAlternates](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/sourcedependentalternates--ecb28394cd54d49a525fae8b.md) | 152 | `declaration-track:ecb28394cd54d49a525fae8b1147a381f005faada6434c76ccb4363f3a5bf1bd` |
| 17 | `theorem` | [source_dependent_alternate_returns_exact_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/source-dependent-alternate-returns-exact-target--45e85d463f8d96ab5a65c728.md) | 167 | `result-track:45e85d463f8d96ab5a65c728bb9ba54b1277dd03d717d6c10f8d5fbcf0051ded` |
| 18 | `def` | [andRoutes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/androutes--cf5c227db9851aa00019ab70.md) | 189 | `declaration-track:cf5c227db9851aa00019ab7071e4c9af40848cf4fe8e1b14bbfbd665c69a7d0e` |
| 19 | `theorem` | [and_route_not_supported_with_missing_premise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/and-route-not-supported-with-missing-premise--1eab659e8cf7e8c584ec1490.md) | 193 | `result-track:1eab659e8cf7e8c584ec1490d20957d3c4aae5ed1a364b4d7c2e5d8f7fe150a8` |
| 20 | `theorem` | [and_route_supported_with_both_premises](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/declarations/and-route-supported-with-both-premises--0cc3de6075d506163515c41c.md) | 209 | `result-track:0cc3de6075d506163515c41cc577b5e00fcd87d8c444828bacff9b6d7f6191b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
