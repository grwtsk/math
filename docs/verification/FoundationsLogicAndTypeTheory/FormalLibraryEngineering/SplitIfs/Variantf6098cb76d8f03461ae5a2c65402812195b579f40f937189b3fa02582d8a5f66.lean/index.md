# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SplitIfs.Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c54431fbec8350ae3e465d6c1288e141ee8934d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c54431fbec8350ae3e465d6c1288e141ee8934d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Logic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitPosition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/declarations/splitposition--ed4318421e2d2c8529c4ece4.md) | 28 | `declaration-track:ed4318421e2d2c8529c4ece487a073bf9acf3de026057c08189ac275708c8a9f` |
| 2 | `def` | [getSplitCandidates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/declarations/getsplitcandidates--8d2bb513ab439c085ccbce3d.md) | 34 | `declaration-track:8d2bb513ab439c085ccbce3d5831e61da82937fdaf149dc382889a28a16aea18` |
| 3 | `def` | [findIfCondAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/declarations/findifcondat--796fe5f8487469d5dff4294b.md) | 53 | `declaration-track:796fe5f8487469d5dff4294bcd32cce1463951a02b7ba245bab3cb02003d3e18` |
| 4 | `def` | [discharge?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/declarations/discharge--4527a7e66cb6d4d047134c77.md) | 63 | `declaration-track:4527a7e66cb6d4d047134c776345b875c605baf34c8da44107ea3077675a8504` |
| 5 | `def` | [reduceIfsAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/declarations/reduceifsat--4118b68742344b7d463413b8.md) | 73 | `declaration-track:4118b68742344b7d463413b87353c8071c942c71b9059db6fd92573a5455471c` |
| 6 | `def` | [splitIf1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/declarations/splitif1--8f1f0bc4da4385b980993f62.md) | 84 | `declaration-track:8f1f0bc4da4385b980993f62980a2ae147c5220a005250e69cb3a3fb36b9e0ad` |
| 7 | `def` | [getNextName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/declarations/getnextname--9972146dc7706ce1c13236f2.md) | 92 | `declaration-track:9972146dc7706ce1c13236f2f59a03c45eac5886b3dfc425bad21c6269e2d392` |
| 8 | `def` | [valueKnown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/declarations/valueknown--a186273b2ed4d5bd932b27be.md) | 102 | `declaration-track:a186273b2ed4d5bd932b27bee2e2208efa27c4a195f93093a06d5b6423e93f68` |
| 9 | `def` | [splitIfsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/declarations/splitifscore--157be52d81127dc3e9441bea.md) | 111 | `declaration-track:157be52d81127dc3e9441beaeea1f1a54ad02401db33627299b344dcb8b5c307` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/declarations/syntax--397e716c2265715a1dd05717.md) | 139 | `declaration-track:397e716c2265715a1dd05717457772d7fcd26694026d39a4753853fc19cd5dc0` |
| 11 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantf6098cb76d8f03461ae5a2c65402812195b579f40f937189b3fa02582d8a5f66.lean/declarations/elab-rules--8d36b970b5114aa828dc60c2.md) | 141 | `declaration-track:8d36b970b5114aa828dc60c22b2508cb6a7ffe8be086b2a36455d3195d229b05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
