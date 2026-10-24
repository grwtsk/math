# Verification target: GRWTSK.NumberTheory.GaussSum.Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7d3bddc79562c1967683537b75f5fe003a62c75",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7d3bddc79562c1967683537b75f5fe003a62c75`.

Source path: `GRWTSK/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.GaussSum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadraticChar_two](../../../../mathematics/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/declarations/quadraticchar-two--f636966b99c6eb27e73658d6.md) | 35 | `result-track:f636966b99c6eb27e73658d6a7dc4b958838fdfe2d84cb452ac5e8796fcad53d` |
| 2 | `theorem` | [FiniteField.isSquare_two_iff](../../../../mathematics/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/declarations/finitefield-issquare-two-iff--6a5a7e4d7d2656057fc900b3.md) | 42 | `result-track:6a5a7e4d7d2656057fc900b3da4fc73edba1520047ba5f0d3d6ede374ed7a4b1` |
| 3 | `theorem` | [quadraticChar_neg_two](../../../../mathematics/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/declarations/quadraticchar-neg-two--334671b97a91cb37846fc5d3.md) | 65 | `result-track:334671b97a91cb37846fc5d34ce0d31eb2a412dcaf07ff820d0599c18b7ada65` |
| 4 | `theorem` | [FiniteField.isSquare_neg_two_iff](../../../../mathematics/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/declarations/finitefield-issquare-neg-two-iff--6659e736de085876053d45a8.md) | 72 | `result-track:6659e736de085876053d45a803075af4a69d5602af33289592c996527cb44a6f` |
| 5 | `theorem` | [quadraticChar_card_card](../../../../mathematics/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/declarations/quadraticchar-card-card--916a66facdbddca85c8e9623.md) | 97 | `result-track:916a66facdbddca85c8e9623c4280d4e9b4add7f9121a88492ea3bd6a2b992e5` |
| 6 | `theorem` | [quadraticChar_odd_prime](../../../../mathematics/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/declarations/quadraticchar-odd-prime--1b367baa67eb08e1416359e3.md) | 119 | `result-track:1b367baa67eb08e1416359e36bd27204b6db1d0ffc9644ceeb9ff53e8f945fd8` |
| 7 | `theorem` | [FiniteField.isSquare_odd_prime_iff](../../../../mathematics/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/declarations/finitefield-issquare-odd-prime-iff--2ae91b3e8ff04add34c99019.md) | 130 | `result-track:2ae91b3e8ff04add34c990193d9fb67decadb92123d177530867543aa2bb7a8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
