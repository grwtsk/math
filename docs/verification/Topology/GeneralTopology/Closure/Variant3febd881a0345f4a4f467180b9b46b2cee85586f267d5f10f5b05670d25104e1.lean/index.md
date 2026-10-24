# Verification target: GRWTSK.Topology.GeneralTopology.Closure.Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b7032f0b755e34bb2675efec42c448115119f9f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b7032f0b755e34bb2675efec42c448115119f9f`.

Source path: `GRWTSK/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Pointed` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean/declarations/closure--e685ef786563b3594f4a9917.md) | 32 | `declaration-track:e685ef786563b3594f4a9917437996c4764127aff65f67ddfa3598ee9c97c224` |
| 2 | `theorem` | [coe_closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean/declarations/coe-closure--06002366d257116b593f7b86.md) | 39 | `result-track:06002366d257116b593f7b86cedfd61fa17663c9bac470d25034c1e56b81d942` |
| 3 | `theorem` | [mem_closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean/declarations/mem-closure--f484a305c4d0e6ba4b234900.md) | 43 | `result-track:f484a305c4d0e6ba4b234900acba93ffcb7c6afded5ca8127b2f96503e9b4aae` |
| 4 | `theorem` | [closure_eq](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean/declarations/closure-eq--e8f63289eaa26d6128d6dcc6.md) | 48 | `result-track:e8f63289eaa26d6128d6dcc6f3defd9c8ffc51a40fb0b1ebe2bbdba9e04088ce` |
| 5 | `lemma` | [toConvexCone_closure_pointed](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean/declarations/toconvexcone-closure-pointed--29f69c8017d4973261c9d704.md) | 61 | `result-track:29f69c8017d4973261c9d704ce516dc7633e8ea9559902f96962ab614388b475` |
| 6 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean/declarations/closure--760d948f55a9c6b661e7c838.md) | 66 | `declaration-track:760d948f55a9c6b661e7c838bff63494543ae7707615a5d21a999a7ea55b83f1` |
| 7 | `theorem` | [coe_closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean/declarations/coe-closure--cfb324df90be6d5cbbfa096e.md) | 70 | `result-track:cfb324df90be6d5cbbfa096ee9a7255a1f5c7be5d108a6d669d4fad986dac539` |
| 8 | `theorem` | [mem_closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean/declarations/mem-closure--1179682bdde51cc52ee8d2aa.md) | 74 | `result-track:1179682bdde51cc52ee8d2aa4cb930a7b271332b67b6ea8c8f02058d4687bc67` |
| 9 | `theorem` | [closure_eq](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant3febd881a0345f4a4f467180b9b46b2cee85586f267d5f10f5b05670d25104e1.lean/declarations/closure-eq--7e28a60354c1a7a2650d9fe9.md) | 79 | `result-track:7e28a60354c1a7a2650d9fe910638ab1273401a4f789799d9a1e8eef26492df7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
