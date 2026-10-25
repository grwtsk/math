# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c743ecf65986e789b5cfb06ea940217e8514315a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c743ecf65986e789b5cfb06ea940217e8514315a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.FinEnum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [insertNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66.lean/declarations/insertnone--d90857a4f062906a44f27154.md) | 31 | `declaration-track:d90857a4f062906a44f27154f6177a00f13985d59d9009148d03b64ec8525408` |
| 2 | `instance` | [instFinEnumOptionLast](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66.lean/declarations/instfinenumoptionlast--b6cf53c39e8969e2bdbffa12.md) | 37 | `declaration-track:b6cf53c39e8969e2bdbffa12937dc99578595134d8bfcc1c0e40b041dea0cac5` |
| 3 | `def` | [recEmptyOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66.lean/declarations/recemptyoption--c3594bf4dfff08f2ad0389dd.md) | 51 | `declaration-track:c3594bf4dfff08f2ad0389dd4c9ba13a34f74a64f79bf6a0a73d375b76f05d1c` |
| 4 | `theorem` | [recEmptyOption_of_card_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66.lean/declarations/recemptyoption-of-card-eq-zero--cb29f35e80f9dcfcf432982f.md) | 72 | `result-track:cb29f35e80f9dcfcf432982f29fe5f03246fc48e5256d89610bcf3400c9d9391` |
| 5 | `theorem` | [recEmptyOption_of_card_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66.lean/declarations/recemptyoption-of-card-pos--43f75c124d7c4d721f56fa96.md) | 90 | `result-track:43f75c124d7c4d721f56fa963eabcd13707a46aaea78e715e8da3a86d95de13c` |
| 6 | `abbrev` | [recOnEmptyOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66.lean/declarations/reconemptyoption--3067adb11895eb7a330284c9.md) | 113 | `declaration-track:3067adb11895eb7a330284c9508dfd03476bbeb25a5f395afdcd181eb25b3db7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
