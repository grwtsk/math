# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectUsed.Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ddd35b32ad78e5961a50e5c96c1d7482ee47ac0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ddd35b32ad78e5961a50e5c96c1d7482ee47ac0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Architect.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544.lean/declarations/context--dd605ffd3108ea0fd1207302.md) | 15 | `declaration-track:dd605ffd3108ea0fd12073025c6982b4ee7041c35931d6cb735af50d81bac6d4` |
| 2 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544.lean/declarations/state--a5891e1b57eb78b68db28140.md) | 19 | `declaration-track:a5891e1b57eb78b68db28140c40c993029f3bba0ed29a8ec207a7c3e7be7341e` |
| 3 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544.lean/declarations/m--cec2c1e626d29904b59f9216.md) | 23 | `declaration-track:cec2c1e626d29904b59f921660ba7a6dade9d7a854fd34665621e546e83f2359` |
| 4 | `def` | [collect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544.lean/declarations/collect--3457ca7b3621bf1a0ea08079.md) | 25 | `declaration-track:3457ca7b3621bf1a0ea080796e12b36a8e1d0346970cd891f50560efd9928006` |
| 5 | `def` | [collectUsed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544.lean/declarations/collectused--bdfe2cbe0f3005bb53523675.md) | 54 | `declaration-track:bdfe2cbe0f3005bb53523675b10eee639d9a91918b7c6781f12aab850355556d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
