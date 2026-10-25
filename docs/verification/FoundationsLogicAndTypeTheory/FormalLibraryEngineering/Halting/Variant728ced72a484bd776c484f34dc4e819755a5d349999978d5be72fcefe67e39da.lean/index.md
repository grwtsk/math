# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Halting.Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a8d1157183a4b269a0e19d59406104ba753f1bc",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a8d1157183a4b269a0e19d59406104ba753f1bc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.Oracle.TuringModel` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HaltingOracleDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da.lean/declarations/haltingoracledescriptor--f9e7139dbca690e3371b17a0.md) | 16 | `declaration-track:f9e7139dbca690e3371b17a0a0dc825c7298fc3a855f4939654d001b763b1395` |
| 2 | `theorem` | [haltingPredicate_marked_oracle_relative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da.lean/declarations/haltingpredicate-marked-oracle-relative--3e49916ef337cd15ba4ebedc.md) | 20 | `result-track:3e49916ef337cd15ba4ebedc7d643ca777897b8bf8ddb4f97d2c2b62c61e5f03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
