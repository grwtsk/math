# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c85d90d2356618bdac4bf82a55d26e05805b9e5e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c85d90d2356618bdac4bf82a55d26e05805b9e5e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Verification` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Preprocessing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Oracle.SimplexAlgorithm` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinarithConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/linarithconfig--a04f696420b871537b2e98ba.md) | 150 | `declaration-track:a04f696420b871537b2e98ba8905ab27e9f5ee5f879cf7f7b95a6290f626ff7c` |
| 2 | `def` | [LinarithConfig.updateReducibility](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/linarithconfig-updatereducibility--dba9bfdc1127b87143b58b2b.md) | 178 | `declaration-track:dba9bfdc1127b87143b58b2bdd358895287a669b492de75b4982d0b48583475f` |
| 3 | `def` | [getContrLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/getcontrlemma--709c1beb1fd124004f2ba86e.md) | 195 | `declaration-track:709c1beb1fd124004f2ba86eaad7843e4be6e55930031421f85765a6b96dc67c` |
| 4 | `def` | [applyContrLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/applycontrlemma--e6b264107024266fc291d889.md) | 210 | `declaration-track:e6b264107024266fc291d8893f167202a491586a9595784590b1ff3b68632f02` |
| 5 | `abbrev` | [ExprMultiMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/exprmultimap--078634e1228d12c2bb4c689b.md) | 220 | `declaration-track:078634e1228d12c2bb4c689b0e3471af9edf470fa1fbd33bc1f8e105d8306522` |
| 6 | `def` | [ExprMultiMap.find](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/exprmultimap-find--d83020be259a44c5ef40bcf7.md) | 224 | `declaration-track:d83020be259a44c5ef40bcf7d2c0ad5b786a59b16da183fa2ef7947a9839688e` |
| 7 | `def` | [ExprMultiMap.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/exprmultimap-insert--531ea9aaee54ba5551187d22.md) | 233 | `declaration-track:531ea9aaee54ba5551187d22c51e7e55cdbe6dbc09c3680bf30a7272b8cf8673` |
| 8 | `def` | [partitionByType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/partitionbytype--f7fb8735eaaa890afcf9689a.md) | 245 | `declaration-track:f7fb8735eaaa890afcf9689a8d0c31e47eec19e2a868fe88d33db8b127a47618` |
| 9 | `def` | [findLinarithContradiction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/findlinarithcontradiction--b69b212b60c16ddd7dcb6d9b.md) | 253 | `declaration-track:b69b212b60c16ddd7dcb6d9bbaf0be26f282b0c29ed0fdc495a303b414f70777` |
| 10 | `def` | [runLinarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/runlinarith--d9c14a9c44527b9b698ee35b.md) | 272 | `declaration-track:d9c14a9c44527b9b698ee35b31b56a7e5a3c1d68618501b25cd96815b2be3db8` |
| 11 | `def` | [linarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/linarith--4dabebf0380382144c3fc2d2.md) | 323 | `declaration-track:4dabebf0380382144c3fc2d28aa0942b2fcb08e526caa92a5a02ab0a4e1ec3f2` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/syntax--55fd3290a1276ffd5490d858.md) | 369 | `declaration-track:55fd3290a1276ffd5490d8582e66b4a8d9983ab1ddee3013f1e217fe0363e1d7` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/syntax--68dae2726af77821aef69329.md) | 429 | `declaration-track:68dae2726af77821aef693295f7d02061906d25828e918271d2bf6e875bb557d` |
| 14 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/macro--096dd4657d4ad11d7dab9ec8.md) | 431 | `declaration-track:096dd4657d4ad11d7dab9ec829c01f620c26f18eaaf4de65f3b7186643398147` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/syntax--e55a3a89e2fc460325cdecf0.md) | 446 | `declaration-track:e55a3a89e2fc460325cdecf0222dea52baa7eb3b7eb74ec8f4f3dfaaa0a9828a` |
| 16 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/macro--b5c3099ce597a2cc09bef73b.md) | 447 | `declaration-track:b5c3099ce597a2cc09bef73bc64e1b674935e647e1a7dc4489454914c93425e4` |
| 17 | `def` | [elabLinarithArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/elablinaritharg--41c815ce0e9c3babe5b8e406.md) | 451 | `declaration-track:41c815ce0e9c3babe5b8e40631d1ecbeec46a09f15ee803bc5b4cf30c6b7ce29` |
| 18 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/elab-rules--8730c1965826ce13e51ca335.md) | 462 | `declaration-track:8730c1965826ce13e51ca335553cb0a31a354dcfcde0af46d5472f9cdb73af61` |
| 19 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/declarations/elab-rules--cb31e44ec252c4ceba14b36f.md) | 477 | `declaration-track:cb31e44ec252c4ceba14b36f974dd5e103d7008611d88b41b75605e34864b7e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
