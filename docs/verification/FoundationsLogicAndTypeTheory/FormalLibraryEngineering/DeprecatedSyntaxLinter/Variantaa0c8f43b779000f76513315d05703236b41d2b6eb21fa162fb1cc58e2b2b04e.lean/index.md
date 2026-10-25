# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedSyntaxLinter.Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cd5a6c2eb96a16f94867ced26aaec79b5bafb73",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cd5a6c2eb96a16f94867ced26aaec79b5bafb73`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.style.refine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/declarations/linter-style-refine--86cf33e7eb260d5ea3a42f2f.md) | 43 | `declaration-track:86cf33e7eb260d5ea3a42f2f430181a334f10e4ee5164bc153b58e647f2f3d85` |
| 2 | `register_option` | [linter.style.cases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/declarations/linter-style-cases--05f1920e7c1930c71b691d79.md) | 53 | `declaration-track:05f1920e7c1930c71b691d793b7306542a7949042cf8e167bbb3ef425371cd9b` |
| 3 | `register_option` | [linter.style.admit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/declarations/linter-style-admit--a89c6b96160d4eb1c0dfa6f4.md) | 60 | `declaration-track:a89c6b96160d4eb1c0dfa6f4cad20dda0d4d60f47bdaa7b16f52ca3c49edd6f7` |
| 4 | `register_option` | [linter.style.maxHeartbeats](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/declarations/linter-style-maxheartbeats--d741a3cfe859c890edf0c8ed.md) | 71 | `declaration-track:d741a3cfe859c890edf0c8ed2e5940248ee56a28720b79a32c314c167381f3b3` |
| 5 | `def` | [getSetOptionMaxHeartbeatsComment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/declarations/getsetoptionmaxheartbeatscomment--1874733dcc9bbd877254fb8d.md) | 84 | `declaration-track:1874733dcc9bbd877254fb8da695b5b1f226f652be7d3203d657eeab0f4dfa93` |
| 6 | `def` | [getDeprecatedSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/declarations/getdeprecatedsyntax--afb845b73b66b5ea03efc307.md) | 99 | `declaration-track:afb845b73b66b5ea03efc307b0724ffee10f0fab6f4fe7eca95158f53bd8542d` |
| 7 | `def` | [deprecatedSyntaxLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/declarations/deprecatedsyntaxlinter--92ac86e874f89d36ed630f04.md) | 141 | `declaration-track:92ac86e874f89d36ed630f0486910d38ca4cd19910fe6ab7ba590a991de03be3` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/declarations/initialize--5d084b2f9f6c9c1c3c790598.md) | 164 | `declaration-track:5d084b2f9f6c9c1c3c79059880181823e31bb743f138352a12b3e7df8846f387` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
