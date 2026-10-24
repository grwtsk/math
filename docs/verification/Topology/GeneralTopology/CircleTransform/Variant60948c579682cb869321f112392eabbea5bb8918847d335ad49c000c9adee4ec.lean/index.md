# Verification target: GRWTSK.Topology.GeneralTopology.CircleTransform.Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b70c377581ddcb0693b0865aae7ebda61ffba381",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b70c377581ddcb0693b0865aae7ebda61ffba381`.

Source path: `GRWTSK/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/circletransform--9aacd3619c0f46cf640114be.md) | 48 | `declaration-track:9aacd3619c0f46cf640114be2e1e6885f1dc822903ba2b1f496f2cb5fb20d822` |
| 2 | `def` | [circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/circletransformderiv--f22b3a75e0cbb12cf7e24908.md) | 52 | `declaration-track:f22b3a75e0cbb12cf7e24908d31701e9dc5407e3f804d2eeb356327ca9f040b9` |
| 3 | `theorem` | [circleTransformDeriv_periodic](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/circletransformderiv-periodic--dedb96ad21977a51d0fe2c5b.md) | 55 | `result-track:dedb96ad21977a51d0fe2c5bd659325becb4ede849d3d6801f3d94515024b647` |
| 4 | `theorem` | [circleTransformDeriv_eq](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/circletransformderiv-eq--f199c0cc202faa20440d19f4.md) | 59 | `result-track:f199c0cc202faa20440d19f4908b12a8c105c69514cce85eba2735a8310b25b4` |
| 5 | `theorem` | [integral_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/integral-circletransform--7c84cb2012587824d566cfe9.md) | 68 | `result-track:7c84cb2012587824d566cfe9df007f40d47453cf1996b17df5d0d231df922bf0` |
| 6 | `theorem` | [continuous_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/continuous-circletransform--f64b135a85be9bd7ff70affc.md) | 74 | `result-track:f64b135a85be9bd7ff70affc68eddd30ed1e729c1c457c7241e386d349470f90` |
| 7 | `theorem` | [continuous_circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/continuous-circletransformderiv--e23481ae48dfd71712e58c11.md) | 84 | `result-track:e23481ae48dfd71712e58c11aee8b150e89dc34237a824a070e44bef413d0c00` |
| 8 | `def` | [circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/circletransformboundingfunction--eb88779ca7720e9526432cab.md) | 91 | `declaration-track:eb88779ca7720e9526432cab855d9eeb0938ec779fdda59669e35dfa386e657c` |
| 9 | `theorem` | [continuousOn_prod_circle_transform_function](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/continuouson-prod-circle-transform-function--7a929113503818920423c3df.md) | 94 | `result-track:7a929113503818920423c3dffc879f4cb93f95e8ddd8204a95c3b571b73a2380` |
| 10 | `theorem` | [continuousOn_norm_circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/continuouson-norm-circletransformboundingfunction--7e9684e641a92b877e1f7214.md) | 104 | `result-track:7e9684e641a92b877e1f7214fd3954fbafa64d844cfe6b60c3daf9b355021944` |
| 11 | `theorem` | [norm_circleTransformBoundingFunction_le](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/norm-circletransformboundingfunction-le--5f47a2e25403491e5484d03b.md) | 114 | `result-track:5f47a2e25403491e5484d03b1c72e0a04f0d9ef6873cd898742a4b15cc27e228` |
| 12 | `theorem` | [circleTransformDeriv_bound](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/declarations/circletransformderiv-bound--ea6d6cf46c1973e02cd05175.md) | 126 | `result-track:ea6d6cf46c1973e02cd051759a08ed796ad11900625a49f09f6f7c38256ffc77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
