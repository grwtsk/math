# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SchroederBernstein.Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cfef0432b9861d169bc953689cecc2fa334e80e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cfef0432b9861d169bc953689cecc2fa334e80e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Piecewise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.FixedPoints` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Zorn` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [schroeder_bernstein](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean/declarations/schroeder-bernstein--ca5c3373c5d202366fc8c117.md) | 43 | `result-track:ca5c3373c5d202366fc8c11752a9803f6b4852aec5274281f154e08926654302` |
| 2 | `theorem` | [antisymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean/declarations/antisymm--c389634affb7b31450281806.md) | 76 | `result-track:c389634affb7b3145028180656dbb1599dd499b8d4474be8765b64f38d8b4957` |
| 3 | `abbrev` | [sets](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean/declarations/sets--4eb7d6ce6ccc1c8ced16a307.md) | 88 | `declaration-track:4eb7d6ce6ccc1c8ced16a307afd6c05069a8e2384f38f3398104469c7bca5359` |
| 4 | `theorem` | [min_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean/declarations/min-injective--ecbad25e45f88e9503895fce.md) | 94 | `result-track:ecbad25e45f88e9503895fce70f6a6263679ac0b23842ee92c733bab593d542f` |
| 5 | `theorem` | [total](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean/declarations/total--c7658936849a6ae68ff008ff.md) | 126 | `result-track:c7658936849a6ae68ff008ffd289968110092ff3b4ea14b4f825ec8b588fdd6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
