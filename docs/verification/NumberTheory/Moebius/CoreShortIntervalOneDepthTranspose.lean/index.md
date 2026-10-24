# Verification target: GRWTSK.NumberTheory.Moebius.CoreShortIntervalOneDepthTranspose

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e3c92b3f18c2b5f7c293fd6e85945b675c2dcbb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e3c92b3f18c2b5f7c293fd6e85945b675c2dcbb`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreShortIntervalDepthTranspose`](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_succ_range_filter_eq_Ico](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean/declarations/sum-succ-range-filter-eq-ico--761ca2f4a9ccbf8bebb286ec.md) | 19 | `result-track:761ca2f4a9ccbf8bebb286ec7fd6477cd93e8752b58b279c64ee7738d8ec918d` |
| 2 | `theorem` | [incompatibleTerminal_eq_lengthSelectorSum](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean/declarations/incompatibleterminal-eq-lengthselectorsum--9178d4c70f98c34991ff086c.md) | 47 | `result-track:9178d4c70f98c34991ff086c60d81e5befe2d2a43247094a1d8aa15a32198e71` |
| 3 | `theorem` | [incompatibleLongInterior_eq_lengthSelectorSum](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean/declarations/incompatiblelonginterior-eq-lengthselectorsum--693f51d159b469dd20fc8a6a.md) | 82 | `result-track:693f51d159b469dd20fc8a6ac3d48625a0f5f47269145fe7c9ac4b43d738b9ae` |
| 4 | `theorem` | [coreLongDepthIncompatibleDyadicL1_eq_lengthwise](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean/declarations/corelongdepthincompatibledyadicl1-eq-lengthwise--df1bb6600e091f549ef573ce.md) | 150 | `result-track:df1bb6600e091f549ef573ce1c91a1aaf789d2f06902ec44fa058d1dad437bc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
