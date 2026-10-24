# Verification target: GRWTSK.Topology.Discrete.Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ffd0c404f1b353072a2899fb215df6f5fc9cdd4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean/index.md) · [Full source](../../../../mathematics/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ffd0c404f1b353072a2899fb215df6f5fc9cdd4`.

Source path: `GRWTSK/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean/declarations/instance--5de62d8b5ed72fb0b401994b.md) | 32 | `declaration-track:5de62d8b5ed72fb0b401994b01564a64f1a4529a37c9c76d095664f5d54e0a31` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean/declarations/instance--1af8b05dba909246bc2ad2df.md) | 36 | `declaration-track:1af8b05dba909246bc2ad2df7e4e5cc3563894e10afa1a49e79f3951382f7c0c` |
| 3 | `theorem` | [LinearOrder.bot_topologicalSpace_eq_preorderTopology](../../../../mathematics/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean/declarations/linearorder-bot-topologicalspace-eq-preordertopology--92e2f542537145ee2028e12a.md) | 44 | `result-track:92e2f542537145ee2028e12a6e8a386989cf57611fcafeca98ca7a72c354d574` |
| 4 | `theorem` | [discreteTopology_iff_orderTopology_of_pred_succ](../../../../mathematics/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean/declarations/discretetopology-iff-ordertopology-of-pred-succ--1cc8c07710aa03b58b6741a3.md) | 54 | `result-track:1cc8c07710aa03b58b6741a3ce9d153cf2c564351364729754caf32cc4c151ed` |
| 5 | `instance` | [OrderTopology.of_discreteTopology](../../../../mathematics/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean/declarations/ordertopology-of-discretetopology--fdbf908b895cfc83aec14fcd.md) | 59 | `declaration-track:fdbf908b895cfc83aec14fcd19ba151a40fafedae631d85755072a115668c712` |
| 6 | `instance` | [OrderTopology.of_linearLocallyFinite](../../../../mathematics/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean/declarations/ordertopology-of-linearlocallyfinite--2bba839e1432b248a897f9cc.md) | 63 | `declaration-track:2bba839e1432b248a897f9cc3438d908f6fdb9ad051ac56a70e3adb3c9d552f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
