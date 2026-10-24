# Verification target: GRWTSK.Topology.GeneralTopology.Closure.Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6184697888d5d3b1da6ce600cac3f19dd4302c4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6184697888d5d3b1da6ce600cac3f19dd4302c4`.

Source path: `GRWTSK/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Pointed` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean/declarations/closure--c2ee48df2f3acef65f10331e.md) | 24 | `declaration-track:c2ee48df2f3acef65f10331ebcf0aaf011217304c19f650867619e2c57ad6b75` |
| 2 | `theorem` | [coe_closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean/declarations/coe-closure--f6966e83d87b0b359397f94c.md) | 31 | `result-track:f6966e83d87b0b359397f94c04ea5aa84fcdf77c759bf727a8374508211249a8` |
| 3 | `theorem` | [mem_closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean/declarations/mem-closure--a50d9422d8867fe361f90d9f.md) | 35 | `result-track:a50d9422d8867fe361f90d9f82f6c9796ecbc83dff4046708a85fd0c3ebd5604` |
| 4 | `theorem` | [closure_eq](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean/declarations/closure-eq--565f0e1b82fe249b206454ad.md) | 40 | `result-track:565f0e1b82fe249b206454ad11c5e2b72cc2446541c3f641fed1beae45cd0dbe` |
| 5 | `lemma` | [toConvexCone_closure_pointed](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean/declarations/toconvexcone-closure-pointed--f4ad744ed4fe15fd7875b38a.md) | 53 | `result-track:f4ad744ed4fe15fd7875b38affd2d4669a535d14384376984b005ae63a837a22` |
| 6 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean/declarations/closure--e8c999ab2c240583b672303e.md) | 58 | `declaration-track:e8c999ab2c240583b672303eac63fb330e8427f80431c995a94db1892a398fe2` |
| 7 | `theorem` | [coe_closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean/declarations/coe-closure--5250b203ebb2510aa1c52c72.md) | 62 | `result-track:5250b203ebb2510aa1c52c72808276dd9edba92e330ef015d10e2779a5222100` |
| 8 | `theorem` | [mem_closure](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean/declarations/mem-closure--fcc4be34660e1c40647a2b1f.md) | 66 | `result-track:fcc4be34660e1c40647a2b1f60d0d15f9719f5cf04267aad4a2a85ff596e96c5` |
| 9 | `theorem` | [closure_eq](../../../../../mathematics/Topology/GeneralTopology/Closure/Variant88dfc12ce94a7ac8e361984d5157bd01cb4fb79a92e1154bab3d53bbb4e2d8be.lean/declarations/closure-eq--332647299c355614bdbcfd3c.md) | 71 | `result-track:332647299c355614bdbcfd3c5d92cfaed76550a852447d0c5aede0f0a17732a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
