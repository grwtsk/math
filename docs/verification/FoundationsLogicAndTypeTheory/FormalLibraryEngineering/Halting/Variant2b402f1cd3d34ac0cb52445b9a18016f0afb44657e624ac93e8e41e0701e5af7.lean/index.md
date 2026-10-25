# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Halting.Variant2b402f1cd3d34ac0cb52445b9a18016f0afb44657e624ac93e8e41e0701e5af7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdb9f355f1a6d272108455a318aa93e7edcc470a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant2b402f1cd3d34ac0cb52445b9a18016f0afb44657e624ac93e8e41e0701e5af7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant2b402f1cd3d34ac0cb52445b9a18016f0afb44657e624ac93e8e41e0701e5af7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant2b402f1cd3d34ac0cb52445b9a18016f0afb44657e624ac93e8e41e0701e5af7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdb9f355f1a6d272108455a318aa93e7edcc470a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant2b402f1cd3d34ac0cb52445b9a18016f0afb44657e624ac93e8e41e0701e5af7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant2b402f1cd3d34ac0cb52445b9a18016f0afb44657e624ac93e8e41e0701e5af7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.Oracle.TuringModel` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HaltingOracleDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant2b402f1cd3d34ac0cb52445b9a18016f0afb44657e624ac93e8e41e0701e5af7.lean/declarations/haltingoracledescriptor--9130d8559a273c0e17d64aae.md) | 24 | `declaration-track:9130d8559a273c0e17d64aae0ae7a8e2296de260ad7e8a86830b7c62272d53c4` |
| 2 | `theorem` | [haltingPredicate_marked_oracle_relative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Halting/Variant2b402f1cd3d34ac0cb52445b9a18016f0afb44657e624ac93e8e41e0701e5af7.lean/declarations/haltingpredicate-marked-oracle-relative--02241858fd34627caa6a136b.md) | 28 | `result-track:02241858fd34627caa6a136bc2bd5d1c6586b3c03673509a81bb41ff1606d6d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
