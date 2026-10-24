# Verification target: GRWTSK.Algebra.Sum.Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d55bda393d43c9a32017eb7f30bc31c3145d09a9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d55bda393d43c9a32017eb7f30bc31c3145d09a9`.

Source path: `GRWTSK/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_le_sum_Ioc](../../../../mathematics/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean/declarations/sum-le-sum-ioc--1ff1d5a97487291d2213df5b.md) | 23 | `result-track:1ff1d5a97487291d2213df5bc3543c9babb9c6926c78c78261f8b49a12c8b9fe` |
| 2 | `lemma` | [sum_le_sum_range](../../../../mathematics/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean/declarations/sum-le-sum-range--8d35ae9fb187fa1d22d8d959.md) | 43 | `result-track:8d35ae9fb187fa1d22d8d9598424c1f76731c6e026af389c49488e72d8399c9d` |
| 3 | `lemma` | [sum_Ico_le_sum](../../../../mathematics/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean/declarations/sum-ico-le-sum--c555b6463c7c749136e8399e.md) | 54 | `result-track:c555b6463c7c749136e8399e530179a626408e5d1fb25cd060707785bbc69d36` |
| 4 | `lemma` | [sum_range_le_sum](../../../../mathematics/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean/declarations/sum-range-le-sum--5267c3f16d0302b1b7fe55d5.md) | 72 | `result-track:5267c3f16d0302b1b7fe55d5d416cb120c349ae8606436f8bc0073099c218dda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
