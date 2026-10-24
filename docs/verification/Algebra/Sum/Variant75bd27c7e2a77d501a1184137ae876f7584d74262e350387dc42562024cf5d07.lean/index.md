# Verification target: GRWTSK.Algebra.Sum.Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "749d72e13fca6d1be6405bcbaf922ec1874e9b2c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean/index.md) · [Full source](../../../../mathematics/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `749d72e13fca6d1be6405bcbaf922ec1874e9b2c`.

Source path: `GRWTSK/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_le_sum_Ioc](../../../../mathematics/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean/declarations/sum-le-sum-ioc--14670b881c2f78aaae905d61.md) | 31 | `result-track:14670b881c2f78aaae905d61f99d4bfb82ba254442cc39729d518121e27e1423` |
| 2 | `lemma` | [sum_le_sum_range](../../../../mathematics/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean/declarations/sum-le-sum-range--cc1201df264fce2a0910efbe.md) | 51 | `result-track:cc1201df264fce2a0910efbee970776c6bd27a41355c37756326b5b0c3e07548` |
| 3 | `lemma` | [sum_Ico_le_sum](../../../../mathematics/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean/declarations/sum-ico-le-sum--245105b0aa6227058d9fa53a.md) | 62 | `result-track:245105b0aa6227058d9fa53a313bc1228707c60a864b296aa7e3d76a2641b6a4` |
| 4 | `lemma` | [sum_range_le_sum](../../../../mathematics/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean/declarations/sum-range-le-sum--a5db160c499eba6c0ce838f2.md) | 80 | `result-track:a5db160c499eba6c0ce838f2ecd16d896333104a105f9cea702a48055fdffb82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
