# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.All.Variant62c4b61a4a342b88e527216dd1a91ede9c6283c01d195e8ba43fc171138ffe7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73dfbc0d33f1d282eee3e9e7ba76c43b464b646d",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/All/Variant62c4b61a4a342b88e527216dd1a91ede9c6283c01d195e8ba43fc171138ffe7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/All/Variant62c4b61a4a342b88e527216dd1a91ede9c6283c01d195e8ba43fc171138ffe7c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/All/Variant62c4b61a4a342b88e527216dd1a91ede9c6283c01d195e8ba43fc171138ffe7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73dfbc0d33f1d282eee3e9e7ba76c43b464b646d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/All/Variant62c4b61a4a342b88e527216dd1a91ede9c6283c01d195e8ba43fc171138ffe7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/All/Variant62c4b61a4a342b88e527216dd1a91ede9c6283c01d195e8ba43fc171138ffe7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Core.Objective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Core.Request` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Core.Receipt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Core.Budget` — import line 9; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Exact.BFS` — import line 10; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Exact.Dijkstra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Exact.AStar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Exact.Heuristic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Exploration.RotorRouter` — import line 14; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Exploration.UniversalSequence` — import line 15; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Exploration.DeBruijn` — import line 16; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Exploration.Recaman` — import line 17; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Sampling.InvariantLaw` — import line 18; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Sampling.LowDiscrepancy` — import line 19; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Sampling.TraceApproximation` — import line 20; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Integration.BinaryFrontier` — import line 21; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Integration.OrdinalStratum` — import line 22; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Integration.ObstructionReturn` — import line 23; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Integration.CylinderAccess` — import line 24; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Verification.PathCertificate` — import line 25; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Verification.CoverageCertificate` — import line 26; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Verification.SamplingCertificate` — import line 27; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Verification.Noninterference` — import line 28; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Resolver` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
