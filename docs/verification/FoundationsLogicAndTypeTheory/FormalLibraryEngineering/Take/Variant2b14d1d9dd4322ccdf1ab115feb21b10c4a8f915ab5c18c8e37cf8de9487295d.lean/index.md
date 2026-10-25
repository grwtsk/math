# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Take.Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07193030325beb13af233a5188e3feb73840bcd5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07193030325beb13af233a5188e3feb73840bcd5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Take.isPlausibleStep_take_yield](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d.lean/declarations/take-isplausiblestep-take-yield--c55de2e882d20aa2e1317ede.md) | 22 | `result-track:c55de2e882d20aa2e1317eded1eb96f20b336c6fab7ac94c8d7c8a0699b58e15` |
| 2 | `theorem` | [Take.isPlausibleStep_take_skip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d.lean/declarations/take-isplausiblestep-take-skip--99eb8eba0e2c87e91228bac7.md) | 27 | `result-track:99eb8eba0e2c87e91228bac7026491323ae445344220e8d2e016f208e533c75d` |
| 3 | `theorem` | [IterM.step_take](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d.lean/declarations/iterm-step-take--10ff366cc5edb59d596c7a4c.md) | 34 | `result-track:10ff366cc5edb59d596c7a4c3b49eb229c10840ced1ba0bd64396f9542f1c348` |
| 4 | `theorem` | [IterM.toList_take_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d.lean/declarations/iterm-tolist-take-zero--ac543d1d17e0e1ff4cffc9f9.md) | 51 | `result-track:ac543d1d17e0e1ff4cffc9f935552871373280feb28590811052b3fd96a477c6` |
| 5 | `theorem` | [IterM.step_toTake](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d.lean/declarations/iterm-step-totake--74e663d46e2d4fcd93f980d3.md) | 58 | `result-track:74e663d46e2d4fcd93f980d3709e90be913a42efe5c4f2213b7227c49612e18a` |
| 6 | `theorem` | [IterM.toList_toTake](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d.lean/declarations/iterm-tolist-totake--71710e30fa4083b40078616c.md) | 71 | `result-track:71710e30fa4083b40078616cfc54e54b1cc34119785e47885b2de8d2ee72ab4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
