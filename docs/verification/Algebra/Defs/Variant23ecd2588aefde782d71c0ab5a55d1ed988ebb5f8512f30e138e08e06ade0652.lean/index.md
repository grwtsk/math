# Verification target: GRWTSK.Algebra.Defs.Variant23ecd2588aefde782d71c0ab5a55d1ed988ebb5f8512f30e138e08e06ade0652

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40f9959a874ff35e78c798e2ac3df439cd6a9bc4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant23ecd2588aefde782d71c0ab5a55d1ed988ebb5f8512f30e138e08e06ade0652.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant23ecd2588aefde782d71c0ab5a55d1ed988ebb5f8512f30e138e08e06ade0652.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant23ecd2588aefde782d71c0ab5a55d1ed988ebb5f8512f30e138e08e06ade0652.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40f9959a874ff35e78c798e2ac3df439cd6a9bc4`.

Source path: `GRWTSK/Algebra/Defs/Variant23ecd2588aefde782d71c0ab5a55d1ed988ebb5f8512f30e138e08e06ade0652.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant23ecd2588aefde782d71c0ab5a55d1ed988ebb5f8512f30e138e08e06ade0652.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.SumsOfSquares` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSemireal](../../../../mathematics/Algebra/Defs/Variant23ecd2588aefde782d71c0ab5a55d1ed988ebb5f8512f30e138e08e06ade0652.lean/declarations/issemireal--9ada4bc507d1df19b419e474.md) | 35 | `declaration-track:9ada4bc507d1df19b419e4743316e069c8ee9394a921a02aa8b6cb835ddbe881` |
| 2 | `theorem` | [IsSemireal.not_isSumSq_neg_one](../../../../mathematics/Algebra/Defs/Variant23ecd2588aefde782d71c0ab5a55d1ed988ebb5f8512f30e138e08e06ade0652.lean/declarations/issemireal-not-issumsq-neg-one--1bd9daf955688c22a4579164.md) | 39 | `result-track:1bd9daf955688c22a4579164901f5986723a3838c6f18d8c8055991de12700dc` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant23ecd2588aefde782d71c0ab5a55d1ed988ebb5f8512f30e138e08e06ade0652.lean/declarations/instance--68f70b74f3cdcc81ad1923b0.md) | 46 | `declaration-track:68f70b74f3cdcc81ad1923b00380ab42ccf867660e35170afa43addb7c517ce1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
