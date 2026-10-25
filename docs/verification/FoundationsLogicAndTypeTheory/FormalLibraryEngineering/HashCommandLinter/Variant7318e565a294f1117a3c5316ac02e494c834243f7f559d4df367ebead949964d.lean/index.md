# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HashCommandLinter.Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d72a97d1ee18eb3c200b258c94f31a6095ee14e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d72a97d1ee18eb3c200b258c94f31a6095ee14e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.hashCommand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean/declarations/linter-hashcommand--e0d4fd73eec1620809a1d441.md) | 40 | `declaration-track:e0d4fd73eec1620809a1d4419fec5a3ff8f4d9ca28be9a64d0d52871ff13d673` |
| 2 | `def` | [withSetOptionIn'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean/declarations/withsetoptionin--b74b1dde4597dcc893a57cd8.md) | 53 | `declaration-track:b74b1dde4597dcc893a57cd809d31d5c2e5ab9143cea3b0c15db9fb0e37feea5` |
| 3 | `abbrev` | [allowed_commands](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean/declarations/allowed-commands--6d653111acdd9ad286bfefd9.md) | 65 | `declaration-track:6d653111acdd9ad286bfefd9d9e3d22860add9752a180cd67d86b43277452f54` |
| 4 | `def` | [hashCommandLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean/declarations/hashcommandlinter--1173df7f8a118dac40ef0dbe.md) | 75 | `declaration-track:1173df7f8a118dac40ef0dbef9daa758043536e718e82b46e08967ffd6a85aa7` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean/declarations/initialize--281933f2ff5c79ab1fc0be90.md) | 87 | `declaration-track:281933f2ff5c79ab1fc0be9092ac77ba7e830babf5e0eeef6e31880fd46348e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
