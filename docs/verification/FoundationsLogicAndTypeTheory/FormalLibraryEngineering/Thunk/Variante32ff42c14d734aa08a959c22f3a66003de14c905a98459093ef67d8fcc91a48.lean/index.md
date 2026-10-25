# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Thunk.Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "700bbf6b3e6db613c27d4dc0d3c852e8a32abeea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `700bbf6b3e6db613c27d4dc0d3c852e8a32abeea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Mathport.Rename` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48.lean/declarations/ext--4f13dc9b10a5d7d059c41cef.md) | 29 | `result-track:4f13dc9b10a5d7d059c41ceff252e5f57df61bc2780fdc1fc3fea9043d3dbd45` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48.lean/declarations/instance--fb7df9f587cd40900eec1765.md) | 35 | `declaration-track:fb7df9f587cd40900eec17654f51ae47fa0b7946ed93afbeb25bf9a4a8e2b308` |
| 3 | `def` | [prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48.lean/declarations/prod--c4284ce2d0ad957222d84a85.md) | 42 | `declaration-track:c4284ce2d0ad957222d84a85b624810667d1da88f38358ca51f477ee61d7fbea` |
| 4 | `theorem` | [prod_get_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48.lean/declarations/prod-get-fst--5cc538fc1934fc4e3153b1c3.md) | 44 | `result-track:5cc538fc1934fc4e3153b1c32b16efa13dc23a897b454b981027c291d0f4eb80` |
| 5 | `theorem` | [prod_get_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48.lean/declarations/prod-get-snd--dba1d095e3c7421228625c98.md) | 45 | `result-track:dba1d095e3c7421228625c983c62fcd4acf906b3bbcb7091cc03b9ed330c5a85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
