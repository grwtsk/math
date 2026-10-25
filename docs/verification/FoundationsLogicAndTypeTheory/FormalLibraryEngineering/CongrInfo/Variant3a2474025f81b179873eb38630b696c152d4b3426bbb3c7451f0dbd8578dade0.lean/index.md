# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrInfo.Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48a1a630d5dd5224bdb2a7603f6dba790f0c9d57",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48a1a630d5dd5224bdb2a7603f6dba790f0c9d57`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.FunInfo` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isFixedPrefix?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean/declarations/isfixedprefix--f97ca9d1c98955158681e7d1.md) | 13 | `declaration-track:f97ca9d1c98955158681e7d1e79b5fd7eacda661b4c2d083ed1914732ab99cf9` |
| 2 | `def` | [mkCongrInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean/declarations/mkcongrinfo--705b2d779fd6769afa2a2740.md) | 34 | `declaration-track:705b2d779fd6769afa2a2740290b58298cabb42062c59c87c1383d20754408ec` |
| 3 | `def` | [getCongrInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean/declarations/getcongrinfo--168246ad53624a46747b9bba.md) | 53 | `declaration-track:168246ad53624a46747b9bbaef1a47f649a327b1c2ecef3bcaa059d07ae1cf01` |
| 4 | `def` | [CongrInfo.toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean/declarations/congrinfo-tomessagedata--9adbe231b65f923a169797ff.md) | 60 | `declaration-track:9adbe231b65f923a169797ff15ce444510040f37f2d5987ef7c201a8c4fdde64` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean/declarations/instance--2b6ca9f1aca0ff071e2055c3.md) | 66 | `declaration-track:2b6ca9f1aca0ff071e2055c348da2397b549140fbe8a7e3a4f918275ded4bc82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
