# Verification target: GRWTSK.Topology.GeneralTopology.LimitCorrespondence.Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77019ab0d8d3b065609fe292840546696c6ce5b8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LimitCorrespondence/Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LimitCorrespondence/Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LimitCorrespondence/Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77019ab0d8d3b065609fe292840546696c6ce5b8`.

Source path: `GRWTSK/Topology/GeneralTopology/LimitCorrespondence/Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LimitCorrespondence/Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Arithmetic.SuccessorCorrespondence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Trace.LimitObservable` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticLimitMode](../../../../../mathematics/Topology/GeneralTopology/LimitCorrespondence/Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7.lean/declarations/arithmeticlimitmode--393ec5b66575b69ed9389ae8.md) | 23 | `declaration-track:393ec5b66575b69ed9389ae8d9cb2fd1f9a73870a45b3d8547dcb0b34af85eaa` |
| 2 | `structure` | [TestSpaceCompatibilityCertificate](../../../../../mathematics/Topology/GeneralTopology/LimitCorrespondence/Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7.lean/declarations/testspacecompatibilitycertificate--7c9b56acd7677b5f4288183c.md) | 29 | `declaration-track:7c9b56acd7677b5f4288183cb83526dcbfdd9d70888f5eda637041a62e3f97f5` |
| 3 | `structure` | [NormalizedLimitArithmeticCorrespondence](../../../../../mathematics/Topology/GeneralTopology/LimitCorrespondence/Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7.lean/declarations/normalizedlimitarithmeticcorrespondence--0a59d3afe48534741f66a07b.md) | 55 | `declaration-track:0a59d3afe48534741f66a07b5ae8cd29c50b93745ed7f62669fcd0b299234997` |
| 4 | `abbrev` | [LimitArithmeticCorrespondence](../../../../../mathematics/Topology/GeneralTopology/LimitCorrespondence/Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7.lean/declarations/limitarithmeticcorrespondence--32e7b29391ae8c01da07fe5b.md) | 128 | `declaration-track:32e7b29391ae8c01da07fe5b6070ec91eeca14af72301b0a413846d7ad351ca4` |
| 5 | `theorem` | [normalized_limit_arithmetic_trace_correspondence](../../../../../mathematics/Topology/GeneralTopology/LimitCorrespondence/Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7.lean/declarations/normalized-limit-arithmetic-trace-correspondence--0447451ade7594ba9122e767.md) | 131 | `result-track:0447451ade7594ba9122e767e4ee84f932321d14cafa2fff1c0b0ca9e52e8eeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
