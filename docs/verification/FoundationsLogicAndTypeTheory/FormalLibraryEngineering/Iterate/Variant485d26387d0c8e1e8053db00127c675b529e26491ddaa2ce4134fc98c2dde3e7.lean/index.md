# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterate.Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfd33aafa4b53d2dc9ce3457f38f348ae975669c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfd33aafa4b53d2dc9ce3457f38f348ae975669c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.PropLemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Hints` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hIterateFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean/declarations/hiteratefrom--158b14c3f9de42c0cebd47fb.md) | 29 | `declaration-track:158b14c3f9de42c0cebd47fb33c0645f4acd2207c491c928661e882507fa2b87` |
| 2 | `def` | [hIterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean/declarations/hiterate--77f9572806083155e5f14af1.md) | 53 | `declaration-track:77f9572806083155e5f14af1180619ad1ee82e0d54ed861454a1f197069296c1` |
| 3 | `theorem` | [hIterateFrom_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean/declarations/hiteratefrom-elim--739be9bd40ce2b56fc7826d9.md) | 57 | `result-track:739be9bd40ce2b56fc7826d93ae0d2fc5cffa5944de0e2cce23c2ba4a8adf041` |
| 4 | `theorem` | [hIterate_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean/declarations/hiterate-elim--21db2de9dd1d2af950a4b59e.md) | 85 | `result-track:21db2de9dd1d2af950a4b59ec65e6249583f4a052b3f2c85ff1303e8f3f95f18` |
| 5 | `theorem` | [hIterate_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean/declarations/hiterate-eq--43c7e21f9cb7a952397480f8.md) | 98 | `result-track:43c7e21f9cb7a952397480f80f409ebf3ad3e6d287d058d037805d77a7053a40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
