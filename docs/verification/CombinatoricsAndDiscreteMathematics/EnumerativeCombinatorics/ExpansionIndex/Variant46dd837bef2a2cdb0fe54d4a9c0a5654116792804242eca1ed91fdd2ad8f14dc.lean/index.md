# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ExpansionIndex.Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32b8f2acd6ae689aa141b9d626eec3ececa23aab",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32b8f2acd6ae689aa141b9d626eec3ececa23aab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Catalan.Tree` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Direction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc.lean/declarations/direction--781508360d182cdf8e0e718c.md) | 27 | `declaration-track:781508360d182cdf8e0e718c077ba356ccc3052a9304fe20db24fded1c621fc6` |
| 2 | `abbrev` | [Address](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc.lean/declarations/address--253b3e29d9d51c06ec142f66.md) | 32 | `declaration-track:253b3e29d9d51c06ec142f66958200a9467fd02bf4ec07fd0b0c6a74d91820a9` |
| 3 | `def` | [HasAddress](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc.lean/declarations/hasaddress--9a085a93b925d01591f91bfb.md) | 36 | `declaration-track:9a085a93b925d01591f91bfbc375599f633e3a92469a858fe1569f98a68f5646` |
| 4 | `def` | [expandAt?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc.lean/declarations/expandat--90b81e1174459309616bf193.md) | 43 | `declaration-track:90b81e1174459309616bf193d7399c569c604705c864bb38721088964c54f163` |
| 5 | `theorem` | [expandAt?_internal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc.lean/declarations/expandat-internal--473ba8a00d1de91c69391400.md) | 56 | `result-track:473ba8a00d1de91c6939140037d471885065fcf14fa8b94dfa3867ec6e399847` |
| 6 | `theorem` | [expandAt?_leaves](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant46dd837bef2a2cdb0fe54d4a9c0a5654116792804242eca1ed91fdd2ad8f14dc.lean/declarations/expandat-leaves--550339549f907be7e9b4aee5.md) | 99 | `result-track:550339549f907be7e9b4aee57e88e33479515d62cf4d616d99a9f1df0ce254da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
