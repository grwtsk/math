# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Take.Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0142bab74ffa589e8f550f8ec295e6840a1cb7a3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0142bab74ffa589e8f550f8ec295e6840a1cb7a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Take.isPlausibleStep_take_yield](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744.lean/declarations/take-isplausiblestep-take-yield--2a6924e083fc8ddd97a245bf.md) | 30 | `result-track:2a6924e083fc8ddd97a245bfec68985ccfe00b7a440d232ea4b831c00bfc7894` |
| 2 | `theorem` | [Take.isPlausibleStep_take_skip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744.lean/declarations/take-isplausiblestep-take-skip--e4654c66daffb641664ea34f.md) | 35 | `result-track:e4654c66daffb641664ea34f5ebfcaddb27323285d2373f441a2a041051a4888` |
| 3 | `theorem` | [IterM.step_take](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744.lean/declarations/iterm-step-take--14f9c8979379e0a4029fa876.md) | 42 | `result-track:14f9c8979379e0a4029fa87683816da99bc0fa2095720caa5148fcde86c27985` |
| 4 | `theorem` | [IterM.toList_take_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744.lean/declarations/iterm-tolist-take-zero--8578f518ce77423a411f8b01.md) | 59 | `result-track:8578f518ce77423a411f8b010d58efe5496ff5a8004750aceff926092b859681` |
| 5 | `theorem` | [IterM.step_toTake](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744.lean/declarations/iterm-step-totake--81e2f22a4bbd371db6d80a19.md) | 66 | `result-track:81e2f22a4bbd371db6d80a195a1905e3671ad1744dbfbe27362a9828033c97f3` |
| 6 | `theorem` | [IterM.toList_toTake](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744.lean/declarations/iterm-tolist-totake--ef67e0766c9ebea5a400119d.md) | 79 | `result-track:ef67e0766c9ebea5a400119df6c05b961b7d00d6452da8e3822e530ef147298c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
