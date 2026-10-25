# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardAttr.Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2223676bf279e9ed3e8c87933d439630d934211",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2223676bf279e9ed3e8c87933d439630d934211`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ForwardExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean/declarations/forwardext--5ba02d4185ad437e76b003e4.md) | 18 | `declaration-track:5ba02d4185ad437e76b003e4c5d1e8dc2e21ed03461044d6d81925d652ec3881` |
| 2 | `def` | [mkForwardExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean/declarations/mkforwardext--baaa0c7fbf8077a8be8cf370.md) | 22 | `declaration-track:baaa0c7fbf8077a8be8cf3703a4c64b0ba20b9a6b33b4623ccbf3cbac6944c02` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean/declarations/initialize--4f9187fab4a6928557c7b7fe.md) | 27 | `declaration-track:4f9187fab4a6928557c7b7fe73a8ebd804762c2595a6fdd2eb2810d4835343c2` |
| 4 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean/declarations/initialize--2ff9e5b0dae9d35d92cb73e4.md) | 39 | `declaration-track:2ff9e5b0dae9d35d92cb73e48eda3f7a5c5abb17a5170a2de6ae222241377362` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
