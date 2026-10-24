# Verification target: GRWTSK.Algebra.LinearAlgebra.Nonsingular.Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f02e5ac5cbb91d9f5b51497e75596bbc829e03a4",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f02e5ac5cbb91d9f5b51497e75596bbc829e03a4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isDetpBalanced_iff_sub_mul_det_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/isdetpbalanced-iff-sub-mul-det-eq-zero--4a3ea31cf2a00a8393bd53c6.md) | 50 | `result-track:4a3ea31cf2a00a8393bd53c60fa2ea871e271438aae24538d45a55316c5b486b` |
| 2 | `lemma` | [nonsingular_iff_det_mem_nonZeroDivisors](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/nonsingular-iff-det-mem-nonzerodivisors--9ac16943cf4f956467dee799.md) | 54 | `result-track:9ac16943cf4f956467dee799e679c2dc6b265754da0bcf076cc913695e78d036` |
| 3 | `lemma` | [nonsingular_iff_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/nonsingular-iff-det-ne-zero--41acbd51acbd823236515f3b.md) | 59 | `result-track:41acbd51acbd823236515f3b29da1053787dc4c2c9dccbc58a7c6758cb13ca1f` |
| 4 | `theorem` | [Nonsingular.of_linearIndependent_col](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/nonsingular-of-linearindependent-col--8cea11cf05ff79e0e542a414.md) | 64 | `result-track:8cea11cf05ff79e0e542a4140684c328a6e2bb6e94a28d0b61689263686f0248` |
| 5 | `theorem` | [Nonsingular.of_linearIndependent_row](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/nonsingular-of-linearindependent-row--0a68b535b0135835490313be.md) | 88 | `result-track:0a68b535b0135835490313bebdc904a420a553fe9abe10dc87fa768a86f90fee` |
| 6 | `theorem` | [Nonsingular.of_leftRegular](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/nonsingular-of-leftregular--5a3c32b7fcfe701b26e838ca.md) | 91 | `result-track:5a3c32b7fcfe701b26e838caa1b81fb7ecef2322ec61209e9d67309baa42f6ed` |
| 7 | `theorem` | [Nonsingular.of_rightRegular](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/nonsingular-of-rightregular--7b5ec969321d2f0f056a97fb.md) | 94 | `result-track:7b5ec969321d2f0f056a97fb377f72904d3816ba7a6405b5d39495403dc4642a` |
| 8 | `theorem` | [Nonsingular.linearIndependent_col](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/nonsingular-linearindependent-col--559a26c30d252184310f1f5b.md) | 101 | `result-track:559a26c30d252184310f1f5b24994e6523ef546e6b526884051311fc4c3f5062` |
| 9 | `theorem` | [Nonsingular.linearIndependent_row](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/nonsingular-linearindependent-row--c5eedc0bd9911cbb0fd39951.md) | 109 | `result-track:c5eedc0bd9911cbb0fd399511b76d73e48e434d2e57843120ca8ecc250b560a3` |
| 10 | `theorem` | [linearIndependent_col_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/linearindependent-col-iff--ac694c2cb800b820f89f4a21.md) | 112 | `result-track:ac694c2cb800b820f89f4a211fe10e4a31d6e807d8ab3582a1b68f89f52f977b` |
| 11 | `theorem` | [linearIndependent_row_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/linearindependent-row-iff--1a7737924923a593e5e0d601.md) | 115 | `result-track:1a7737924923a593e5e0d60144f8c8897d4d3db01047a76c48085fd2fd04490c` |
| 12 | `theorem` | [isLeftRegular_iff_nonsingular](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/isleftregular-iff-nonsingular--60cc13c9e9e732891d878e30.md) | 118 | `result-track:60cc13c9e9e732891d878e30fe3b28e24fe45c0b4d994b22d54d55b45a550cbb` |
| 13 | `theorem` | [isRightRegular_iff_nonsingular](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/isrightregular-iff-nonsingular--ae40327ea323249fbaa0d8c4.md) | 121 | `result-track:ae40327ea323249fbaa0d8c4b0d2a4278c4ccb4475afba9271907cf4d2291d35` |
| 14 | `lemma` | [Nonsingular.mul](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/nonsingular-mul--c7413ee9f38ccd72a37c6204.md) | 124 | `result-track:c7413ee9f38ccd72a37c6204d5a1aada1bf55ec76fa4854cb36b05733a660998` |
| 15 | `lemma` | [nonsingular_mul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/nonsingular-mul-iff--debab24f7127b3b048e2396c.md) | 129 | `result-track:debab24f7127b3b048e2396c6f110bdd3aa9b6e01b52b963d7efba20fed56931` |
| 16 | `lemma` | [Nonsingular.pow](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/nonsingular-pow--7c8afe500c1513627f695b66.md) | 135 | `result-track:7c8afe500c1513627f695b661cfc1e6f922db4906f82cb7f1dd846e4f20032a4` |
| 17 | `theorem` | [isLeftRegular_iff_isRightRegular](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/isleftregular-iff-isrightregular--01078e5fe2f885fd2b0c8478.md) | 140 | `result-track:01078e5fe2f885fd2b0c8478c9200d92b8e96031ab30050129eff3d8c994de39` |
| 18 | `theorem` | [linearIndependent_col_iff_row](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/linearindependent-col-iff-row--d895ff83050648e431dbecbc.md) | 146 | `result-track:d895ff83050648e431dbecbcbe70b8376109b9ca722fc20a96f7032d9b3db5d6` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/declarations/instance--cb03f0f0ff495e5aa14d8df9.md) | 156 | `declaration-track:cb03f0f0ff495e5aa14d8df96df7919eb26253e2ac5ec37334d85c25cd77201a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
