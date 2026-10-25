# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grid.Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5d0195522868e79d85820904df9f10e4082b375",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5d0195522868e79d85820904df9f10e4082b375`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GridShape](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a.lean/declarations/gridshape--3d8f026b1ba1717a927b3854.md) | 19 | `declaration-track:3d8f026b1ba1717a927b385435d38fd9bf82b518bb7eb047448c0b854b25e077` |
| 2 | `abbrev` | [Cell](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a.lean/declarations/cell--df83c46ed9907b1f78f63879.md) | 24 | `declaration-track:df83c46ed9907b1f78f63879f96f37d66c31702e1b8f6101cc61a9472891d42e` |
| 3 | `def` | [EdgeAdjacent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a.lean/declarations/edgeadjacent--0ee1bfcc2bf168cb26bb3be4.md) | 26 | `declaration-track:0ee1bfcc2bf168cb26bb3be4d82ca6558d8936b743500d9d397391d40a0c86a3` |
| 4 | `theorem` | [edgeAdjacent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a.lean/declarations/edgeadjacent-symm--39d158b9ee598dbc0901ce69.md) | 32 | `result-track:39d158b9ee598dbc0901ce69e1ef5e24d13ecb5ef7ddc38cb44e2ca69fa770d8` |
| 5 | `theorem` | [edgeAdjacent_irrefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a.lean/declarations/edgeadjacent-irrefl--cb8be522d4e2cd3df88202f2.md) | 43 | `result-track:cb8be522d4e2cd3df88202f2628cbf9bbea8cd084d394f14ca3209b117cc20d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
