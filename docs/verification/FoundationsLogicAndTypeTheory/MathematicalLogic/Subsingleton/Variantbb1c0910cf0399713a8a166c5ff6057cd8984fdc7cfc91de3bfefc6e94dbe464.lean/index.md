# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Subsingleton.Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9ce1b79207490766aef9a84bc7c368ed4a1a3be",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9ce1b79207490766aef9a84bc7c368ed4a1a3be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.CountablyGenerated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ultrafilter.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton--16d124013d941ce7c31e4157.md) | 31 | `declaration-track:16d124013d941ce7c31e41570f9957edd823f53eb1a061a20e8d3f6edb7371eb` |
| 2 | `theorem` | [HasBasis.subsingleton_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/hasbasis-subsingleton-iff--280386e4cf9f3c266f0a8834.md) | 33 | `result-track:280386e4cf9f3c266f0a88346a90f55ca3a3edce206823f47444c3f2768c75e3` |
| 3 | `theorem` | [Subsingleton.anti](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton-anti--84075568cc491cc8f861317e.md) | 37 | `result-track:84075568cc491cc8f861317eceaa663a1324a3fb81fa98cf09d6f039e1046818` |
| 4 | `theorem` | [Subsingleton.of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton-of-subsingleton--c6545aa8a9fad380e3a3bc9f.md) | 41 | `result-track:c6545aa8a9fad380e3a3bc9f5decccda4d45e6c17b25d8982f5a36889b3b5bbf` |
| 5 | `theorem` | [Subsingleton.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton-map--6221ceeae75c444676658ebf.md) | 44 | `result-track:6221ceeae75c444676658ebffe3c9308356c1fedde8728da325c351fddf8fcee` |
| 6 | `theorem` | [Subsingleton.prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton-prod--cb3b1c272b135f69873c7034.md) | 47 | `result-track:cb3b1c272b135f69873c70343f26ccb8bdc2e15fb881ba11321ed446e333bda7` |
| 7 | `theorem` | [subsingleton_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton-pure--3a0bc6d0a66a6d292f026585.md) | 52 | `result-track:3a0bc6d0a66a6d292f0265858f31e6563880a171c8dc0f258b27e8ae089336d7` |
| 8 | `theorem` | [subsingleton_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton-bot--a1c8c9e6d54511469b818e0e.md) | 56 | `result-track:a1c8c9e6d54511469b818e0ec2243c0896a5f6485132b93d40e0d235279a1595` |
| 9 | `theorem` | [Subsingleton.exists_eq_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton-exists-eq-pure--713e37a9e6d35a28794496a3.md) | 60 | `result-track:713e37a9e6d35a28794496a3a98f8600966ca3005f6c4f6635d6082fe83ba65c` |
| 10 | `theorem` | [subsingleton_iff_bot_or_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton-iff-bot-or-pure--9304b048c9a327acac3cf1d8.md) | 67 | `result-track:9304b048c9a327acac3cf1d8142ffb0a089e7ab422b43e48d6b11d5a728459b5` |
| 11 | `theorem` | [subsingleton_iff_exists_le_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton-iff-exists-le-pure--e5a7dce93cc1fd3f5ea82c75.md) | 74 | `result-track:e5a7dce93cc1fd3f5ea82c7554056ca1e4f25fa3713e847b9f56f8efb1e1084a` |
| 12 | `theorem` | [subsingleton_iff_exists_singleton_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton-iff-exists-singleton-mem--edab1926f225d7ada4853373.md) | 79 | `result-track:edab1926f225d7ada48533736114f4da5fe81fc97405c0838b8aca19827c1d12` |
| 13 | `lemma` | [Subsingleton.isCountablyGenerated](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/declarations/subsingleton-iscountablygenerated--231e56936de1f362da70cf9b.md) | 85 | `result-track:231e56936de1f362da70cf9bca0f38829ea0565f78e52b4af5165f6670b2155f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
