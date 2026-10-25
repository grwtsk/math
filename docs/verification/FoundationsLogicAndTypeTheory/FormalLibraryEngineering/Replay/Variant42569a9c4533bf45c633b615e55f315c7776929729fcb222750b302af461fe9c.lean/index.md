# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replay.Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7604a980ecf75d8ce5f1092094766932dc9d9505",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7604a980ecf75d8ce5f1092094766932dc9d9505`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Resolver` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c.lean/declarations/replay--e2174e9311b56e8d324b39e1.md) | 15 | `declaration-track:e2174e9311b56e8d324b39e12f6adc094580a77da4455e5ca974b556db410740` |
| 2 | `structure` | [ReplayReceipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c.lean/declarations/replayreceipt--d9c338580aa1a1d615dcc6a9.md) | 20 | `declaration-track:d9c338580aa1a1d615dcc6a96dc8a257aab26b5bc33cbc7d11445abb37655b8a` |
| 3 | `theorem` | [deterministic_replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c.lean/declarations/deterministic-replay--37613b7d16414b8c53080db1.md) | 33 | `result-track:37613b7d16414b8c53080db1a001c417c568f8811f040cc37953cdd130325bdd` |
| 4 | `theorem` | [ReplayReceipt.results_equal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c.lean/declarations/replayreceipt-results-equal--44ba5168db081051362bffd9.md) | 38 | `result-track:44ba5168db081051362bffd94f4e05b21f19a04c356d6ea88d7c4bac4bb9040a` |
| 5 | `theorem` | [ReplayReceipt.snapshot_digest_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c.lean/declarations/replayreceipt-snapshot-digest-exact--0f7b0482b55bb3935fab62ac.md) | 44 | `result-track:0f7b0482b55bb3935fab62ac85a5a35ed0aa52027c88650a6b7bb439ed6afe7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
