# Verification target: GRWTSK.Logic.Inference.FiniteRuleExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3a166e2ff2533cb5d9973d26a61fd54c320872a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Inference/FiniteRuleExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3a166e2ff2533cb5d9973d26a61fd54c320872a`.

Source path: `GRWTSK/Logic/Inference/FiniteRuleExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Inference/FiniteRuleExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Inference.FiniteRuleSystems`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleRoutes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/cycleroutes--ab82c8d9bb12055b51d9cdc9.md) | 21 | `declaration-track:ab82c8d9bb12055b51d9cdc979dc42c14159d6932f0a8338aff73d27d7d53e79` |
| 2 | `def` | [falseCycleProviders](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/falsecycleproviders--6ca483207a8ac9b48ab1c43a.md) | 26 | `declaration-track:6ca483207a8ac9b48ab1c43a7c27cf3bc46f91d5a9dd2622a9c6aff20dd5495d` |
| 3 | `theorem` | [false_cycle_rules_eligible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/false-cycle-rules-eligible--19ccd6e90ee9a2846f32b409.md) | 36 | `result-track:19ccd6e90ee9a2846f32b409ee1db038bf259a933884fe5b4e38af190c4ff808` |
| 4 | `theorem` | [false_cycle_support_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/false-cycle-support-empty--4e467722cdbe7c426afcbbda.md) | 41 | `result-track:4e467722cdbe7c426afcbbdaa041a04e06da905fc55a7f6a05b262ef6fa6c0f8` |
| 5 | `theorem` | [false_cycle_self_closed_but_not_grounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/false-cycle-self-closed-but-not-grounded--dae2d2e6042060296dc4adc7.md) | 48 | `result-track:dae2d2e6042060296dc4adc7b774822500f3eb3a8961b369860aa5c6a3ca7f4f` |
| 6 | `theorem` | [false_cycle_cannot_supply_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/false-cycle-cannot-supply-target--a1209af116c32c82ac76aeb4.md) | 58 | `result-track:a1209af116c32c82ac76aeb477a2cb6caa6536680688edaf7773aae9fcfab588` |
| 7 | `def` | [alternateProviders](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/alternateproviders--62b6b107fea84b829f59711c.md) | 65 | `declaration-track:62b6b107fea84b829f59711ce9e232a122483d134aa4b9e746730bbe39779c2c` |
| 8 | `theorem` | [stale_primary_fresh_alternative](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/stale-primary-fresh-alternative--fe15407787a8e95447df075a.md) | 75 | `result-track:fe15407787a8e95447df075acb14b4e63b9342691b4f6a17a48c2ad7c54bb30a` |
| 9 | `theorem` | [alternate_route_survives_changed_read](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/alternate-route-survives-changed-read--bf215dc4ba6e14334329c3bf.md) | 80 | `result-track:bf215dc4ba6e14334329c3bf950aa960dc7dba555281490be999b977c4e82f1b` |
| 10 | `theorem` | [alternate_route_survives_provider_withdrawal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/alternate-route-survives-provider-withdrawal--c3d945b36062b7358ad220c1.md) | 89 | `result-track:c3d945b36062b7358ad220c198b2fbf0a963d413b8e5b325b2d4e1a26b4d3701` |
| 11 | `theorem` | [whole_claim_withdrawal_blocks_alternatives](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/whole-claim-withdrawal-blocks-alternatives--79d6a49fed4c60390ad10a5e.md) | 99 | `result-track:79d6a49fed4c60390ad10a5ec99848d691ef3a4c5a014aa2a4800b19509e2ce3` |
| 12 | `def` | [groundedCycleRoutes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/groundedcycleroutes--1b13d2c328c5a050499add43.md) | 107 | `declaration-track:1b13d2c328c5a050499add4301a3947d3cb422b73b6d3b3c29885386559cfb26` |
| 13 | `def` | [groundedCycleProviders](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/groundedcycleproviders--2660e56efa81c7f9d030033a.md) | 111 | `declaration-track:2660e56efa81c7f9d030033a89204368e1dd7cccc58a9bde465e16c93d8a468e` |
| 14 | `theorem` | [grounded_cycle_supported_before_change](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/grounded-cycle-supported-before-change--24be8c32e13fdd0cf0975f3a.md) | 120 | `result-track:24be8c32e13fdd0cf0975f3af779428508ff9cad606e1e1c68a6b0463d62577b` |
| 15 | `theorem` | [grounded_cycle_empty_after_ground_loss](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/grounded-cycle-empty-after-ground-loss--9cff0377db9143dce0ff7c8f.md) | 138 | `result-track:9cff0377db9143dce0ff7c8fe72cf350e7613157f428e847fafe816d36652129` |
| 16 | `def` | [sourceDependentAlternates](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/sourcedependentalternates--c4cf96cc1d402a7092ddebe0.md) | 152 | `declaration-track:c4cf96cc1d402a7092ddebe0ea5b2ba02d66573b424bee2e89f1079c7cb8a541` |
| 17 | `theorem` | [source_dependent_alternate_returns_exact_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/source-dependent-alternate-returns-exact-target--3a875d33677fe7db68c208b3.md) | 167 | `result-track:3a875d33677fe7db68c208b328f891654c73461674338bb8f37e3c17ea3836b0` |
| 18 | `def` | [andRoutes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/androutes--30ac1c0f617d9be2dad426df.md) | 189 | `declaration-track:30ac1c0f617d9be2dad426df47290498349d1c0280f8d30f46beeacfd5d0ae4c` |
| 19 | `theorem` | [and_route_not_supported_with_missing_premise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/and-route-not-supported-with-missing-premise--c460ec7ad66beb81b781eba2.md) | 193 | `result-track:c460ec7ad66beb81b781eba21265dd84ed935393a5a2a63a7fdcb191c3992ac8` |
| 20 | `theorem` | [and_route_supported_with_both_premises](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/declarations/and-route-supported-with-both-premises--bda1694111965109d20381fc.md) | 209 | `result-track:bda1694111965109d20381fc7b0723ccbc2b7a7101e8a274f975a1d2d8a29b91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
