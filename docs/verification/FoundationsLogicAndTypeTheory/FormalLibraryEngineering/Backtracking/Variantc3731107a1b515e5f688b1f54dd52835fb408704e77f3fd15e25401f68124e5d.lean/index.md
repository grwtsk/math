# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Backtracking.Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b49da43a198fcf7ab958d031d8eb0c4c8eaec420",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b49da43a198fcf7ab958d031d8eb0c4c8eaec420`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Util` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Except.emoji](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean/declarations/except-emoji--69cc48559b679ccfca8488b9.md) | 50 | `declaration-track:69cc48559b679ccfca8488b927ff47c4047e1fa3acef49e70246e0e0680856ee` |
| 2 | `def` | [List.tryAllM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean/declarations/list-tryallm--ab648e2a168ce5bee90bcf47.md) | 56 | `declaration-track:ab648e2a168ce5bee90bcf472fa1f10fcff4d8c62b40fbe89491661307a6316a` |
| 3 | `def` | [firstContinuation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean/declarations/firstcontinuation--86c47b3094b7a8f3ad559712.md) | 68 | `declaration-track:86c47b3094b7a8f3ad559712db40f09c6398796a9e3aa1c66893125bfffd5cb7` |
| 4 | `structure` | [BacktrackConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean/declarations/backtrackconfig--1a1a7f7852552376b5e1b060.md) | 84 | `declaration-track:1a1a7f7852552376b5e1b06062aab5dd68a9adb9c1cf6e949551d8dd69364a2f` |
| 5 | `def` | [ppMVarIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean/declarations/ppmvarids--35b6b852264d38204b29e259.md) | 108 | `declaration-track:35b6b852264d38204b29e25920aefd915a4e68c75e93c18cfc7001bd35e67ea3` |
| 6 | `def` | [backtrack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean/declarations/backtrack--8db5829642440e4571b082d5.md) | 121 | `declaration-track:8db5829642440e4571b082d5fbc5f4cfa4684b777e1567924fd1da8e6378b157` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
