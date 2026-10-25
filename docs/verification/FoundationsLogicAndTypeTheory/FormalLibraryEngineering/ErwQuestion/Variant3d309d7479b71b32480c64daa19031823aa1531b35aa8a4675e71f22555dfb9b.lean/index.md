# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ErwQuestion.Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1dd4e51e0b55388ddbec32468ec8b3f5e775187",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1dd4e51e0b55388ddbec32468ec8b3f5e775187`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [tactic.erw?.verbose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean/declarations/tactic-erw-verbose--af91a2effc2347e314b14e69.md) | 33 | `declaration-track:af91a2effc2347e314b14e692e46c06114396f4d782f70e5dde4b0e4dfac7a58` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean/declarations/syntax--ae3e72dd648f8633eb305514.md) | 44 | `declaration-track:ae3e72dd648f8633eb305514b64c873d434cb1387810459b0c5cbe374d5aa673` |
| 3 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean/declarations/macro-rules--ae2878e40d2c38d35f81f14e.md) | 46 | `declaration-track:ae2878e40d2c38d35f81f14e65415b5de95efa7cf77fffb29175c94cd41d32ee` |
| 4 | `def` | [logDiffs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean/declarations/logdiffs--bb3f2359bed258c8d8fa0de8.md) | 56 | `declaration-track:bb3f2359bed258c8d8fa0de8db915149604ecc0e75b9a8946821fde2a62413b2` |
| 5 | `def` | [extractRewriteEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean/declarations/extractrewriteeq--f4e10efe33e6e8ea0ae90066.md) | 96 | `declaration-track:f4e10efe33e6e8ea0ae9006654b4e4681411c3adb3271eb64d7ad9ed436fd26d` |
| 6 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean/declarations/elab-rules--2239399d71836882bb716248.md) | 107 | `declaration-track:2239399d71836882bb7162484b910f92a62e071c9b621bb50b297ae53229d414` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
