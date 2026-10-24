# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Zip.Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9df0f622a85043e87a4f13c8fccded8bb2820093",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9df0f622a85043e87a4f13c8fccded8bb2820093`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b.lean/declarations/zipwith--5604e99d16a7feb0479217ff.md) | 21 | `declaration-track:5604e99d16a7feb0479217ff6a04897e48aed7ae5e2945bce8d5867d4a8291b2` |
| 2 | `theorem` | [zipWith_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b.lean/declarations/zipwith-tolist--a087f93aabd3da42b24f7052.md) | 24 | `result-track:a087f93aabd3da42b24f70524638fb06bbb488c2b1152a17d5e35b493f31e7f1` |
| 3 | `theorem` | [zipWith_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b.lean/declarations/zipwith-get--6ef583420b09c0ffd6ab2e83.md) | 29 | `result-track:6ef583420b09c0ffd6ab2e83e2bd0f61af1dd803caa2a56e7fbc1eaf51a2839b` |
| 4 | `theorem` | [zipWith_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b.lean/declarations/zipwith-tail--2e2594ecc5947c67495153d6.md) | 35 | `result-track:2e2594ecc5947c67495153d608063375bee16c2fb7c88943c1b11204205ffe02` |
| 5 | `theorem` | [prod_mul_prod_eq_prod_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b.lean/declarations/prod-mul-prod-eq-prod-zipwith--5d03f8d18628edf7cb2c03bc.md) | 41 | `result-track:5d03f8d18628edf7cb2c03bc860dde477b0af40e477ca05bea50d493038c8ecf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
