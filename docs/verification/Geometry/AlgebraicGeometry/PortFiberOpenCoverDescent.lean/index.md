# Verification target: GRWTSK.Interfaces.PortFiberOpenCoverDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0933280766f12d213a19cd97739b446ac5762cc6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberOpenCoverDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/index.md) · [Full source](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0933280766f12d213a19cd97739b446ac5762cc6`.

Source path: `GRWTSK/Interfaces/PortFiberOpenCoverDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberOpenCoverDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberEvaluationTopology`](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberEvaluationTopology.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.AnalyticAffineGluing`](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineGluing.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AddedIndex](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/declarations/addedindex--67f9293cf14465475eda2d88.md) | 21 | `declaration-track:67f9293cf14465475eda2d88cbf299c1b320e0d7cfdb4094cdbec470aea21ab6` |
| 2 | `def` | [AddedClaim](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/declarations/addedclaim--f8fb012da02e255363d6142b.md) | 29 | `declaration-track:f8fb012da02e255363d6142ba7c6759772c9a0c7b5881282a79eb878ff03cfc4` |
| 3 | `theorem` | [addedClaim_proof](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/declarations/addedclaim-proof--8a49de21e01855f21647f346.md) | 49 | `result-track:8a49de21e01855f21647f3467950e848cad23a6e0fa46808fc3ccd7086117583` |
| 4 | `def` | [portfolio](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/declarations/portfolio--0ba5fffb2e3cce5286d7aef3.md) | 65 | `declaration-track:0ba5fffb2e3cce5286d7aef3257a399874b600c075295dc3f2923756f3b81de8` |
| 5 | `def` | [architecture](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/declarations/architecture--738e2cbf35863c21a358e20e.md) | 69 | `declaration-track:738e2cbf35863c21a358e20e5ff383f8f624c691434d0adf6b9ed57700e7d684` |
| 6 | `theorem` | [original_branch_unchanged](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/declarations/original-branch-unchanged--b5ca0298189891d874ee8d95.md) | 74 | `result-track:b5ca0298189891d874ee8d95d220f2cb103c0a2906f83f8006e2bbf6cb252252` |
| 7 | `theorem` | [new_branch_proved](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/declarations/new-branch-proved--15a3675f10bfe3e04fb44d67.md) | 83 | `result-track:15a3675f10bfe3e04fb44d67cb06d3f5e0cfe9560a637fb68b13cc9a439cd84a` |
| 8 | `theorem` | [target_unchanged](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/declarations/target-unchanged--bd3b09b15696e0d5d1f548da.md) | 89 | `result-track:bd3b09b15696e0d5d1f548da81b5fcbdefe14d5c48ab7fb598c0578d5231d71e` |
| 9 | `theorem` | [retarget_preserves_new](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/declarations/retarget-preserves-new--f583e0b53ba648d08ce7b4bf.md) | 95 | `result-track:f583e0b53ba648d08ce7b4bfa1d3df91f7648e949e06019a2e0c6d26c92a1099` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
