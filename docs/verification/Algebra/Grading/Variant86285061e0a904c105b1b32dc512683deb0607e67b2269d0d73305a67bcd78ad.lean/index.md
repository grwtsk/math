# Verification target: GRWTSK.Algebra.Grading.Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce985acf86dc7e6d58af2b9910826b0f630d318b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/index.md) · [Full source](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce985acf86dc7e6d58af2b9910826b0f630d318b`.

Source path: `GRWTSK/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean.json)

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
| 1 | `abbrev` | [gradeBy](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/gradeby--94d55dc99d990de1fe73c321.md) | 50 | `declaration-track:94d55dc99d990de1fe73c321548e23db2558be872fa893dd29deaf082a0e3e49` |
| 2 | `abbrev` | [grade](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/grade--3840b423a8df38ffe01a65ab.md) | 58 | `declaration-track:3840b423a8df38ffe01a65abbbdf9a984c5dd0bed793ec2f0674013ccf3c257a` |
| 3 | `theorem` | [gradeBy_id](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/gradeby-id--d5441c430494e91ba3e8a747.md) | 61 | `result-track:d5441c430494e91ba3e8a74797cfbcd6019bfef710524e5c3b92634de73c33a9` |
| 4 | `theorem` | [mem_gradeBy_iff](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/mem-gradeby-iff--dbc3a4dc41607d20109598d8.md) | 63 | `result-track:dbc3a4dc41607d20109598d842106a0ad3f2a2838e75503c45f39f45eb369c34` |
| 5 | `theorem` | [mem_grade_iff](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/mem-grade-iff--fec20b440c7d762212bc2419.md) | 66 | `result-track:fec20b440c7d762212bc241921fa0b99a8e7c438ec3a10d51db99edbd2881daa` |
| 6 | `theorem` | [mem_grade_iff'](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/mem-grade-iff--6614f5d122bfc11508833d7d.md) | 70 | `result-track:6614f5d122bfc11508833d7dbdb84a9b441099f09099757d17876b28c4e777c5` |
| 7 | `theorem` | [grade_eq_lsingle_range](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/grade-eq-lsingle-range--dc045aed245cacbca5053d34.md) | 74 | `result-track:dc045aed245cacbca5053d34add944718dfce1c3b8cbfac5f6ac191b058242a7` |
| 8 | `theorem` | [single_mem_gradeBy](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/single-mem-gradeby--1b0e4afa817ad31d460c3348.md) | 77 | `result-track:1b0e4afa817ad31d460c3348f64e0ab41cf63737f8c55c825ca973950054dbcf` |
| 9 | `theorem` | [single_mem_grade](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/single-mem-grade--c5132a7489362c5e9199428e.md) | 82 | `result-track:c5132a7489362c5e9199428eaf1f383d47dbe238adad5bcccdcdc8170dc1a901` |
| 10 | `instance` | [gradeBy.gradedMonoid](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/gradeby-gradedmonoid--47005a11fd20d418045220c2.md) | 90 | `declaration-track:47005a11fd20d418045220c22348f99dd539be1d4fc362cc81ee9a77cc750439` |
| 11 | `instance` | [grade.gradedMonoid](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/grade-gradedmonoid--7f5d90a635e037d2761ed2c4.md) | 102 | `declaration-track:7f5d90a635e037d2761ed2c492df5e8b922fa04da4614c4007f7d5dc731e3ed8` |
| 12 | `def` | [decomposeAux](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/decomposeaux--34b84fc0158ea0372b556fbb.md) | 111 | `declaration-track:34b84fc0158ea0372b556fbbd5a469b6a1692b8c2dd032664e542343a30c2d4d` |
| 13 | `theorem` | [decomposeAux_single](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/decomposeaux-single--79a776c34e279a23b9f601e6.md) | 120 | `result-track:79a776c34e279a23b9f601e63d567c5ca1616171c11109cedfa3dc9e29f9332d` |
| 14 | `theorem` | [decomposeAux_coe](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/decomposeaux-coe--6916c518d107c55b17e30edf.md) | 131 | `result-track:6916c518d107c55b17e30edf61913a1f8f463e85ab0d56ff4af98b5c1f23d418` |
| 15 | `instance` | [gradeBy.gradedAlgebra](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/gradeby-gradedalgebra--c9b6035ee87c7fd1c7e2c482.md) | 157 | `declaration-track:c9b6035ee87c7fd1c7e2c482adc40e844d319f2ac76f6c3216da3591a80448f3` |
| 16 | `theorem` | [decomposeAux_eq_decompose](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/decomposeaux-eq-decompose--3f88c6721e513627a07c011d.md) | 161 | `result-track:3f88c6721e513627a07c011d78f0973e968ae99503f2011cc77beefd42154d87` |
| 17 | `theorem` | [GradesBy.decompose_single](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/gradesby-decompose-single--12980c509c882d9dc0f0379e.md) | 166 | `result-track:12980c509c882d9dc0f0379e27156ebeeb5b361272c0557464082d74ad87a54b` |
| 18 | `instance` | [grade.gradedAlgebra](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/grade-gradedalgebra--de790053784effc682ada42f.md) | 171 | `declaration-track:de790053784effc682ada42f133568cabf6c7383d627eeb0e0a8d93ed7eacb64` |
| 19 | `theorem` | [grade.decompose_single](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/grade-decompose-single--172da3c821278b2057611964.md) | 174 | `result-track:172da3c821278b20576119641b7890d9a17e0c2fb60306c46aafc1cf5fdef126` |
| 20 | `theorem` | [gradeBy.isInternal](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/gradeby-isinternal--52b6f6d9e86a5ddfd9af9a4c.md) | 180 | `result-track:52b6f6d9e86a5ddfd9af9a4cd27c32315f9acd6880778079c12e0a51602890fd` |
| 21 | `theorem` | [grade.isInternal](../../../../mathematics/Algebra/Grading/Variant86285061e0a904c105b1b32dc512683deb0607e67b2269d0d73305a67bcd78ad.lean/declarations/grade-isinternal--d0fae74d87780b82f7ad8a1b.md) | 184 | `result-track:d0fae74d87780b82f7ad8a1b9a9b92dfd937c04727e9097f0055c80ef38a54be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
