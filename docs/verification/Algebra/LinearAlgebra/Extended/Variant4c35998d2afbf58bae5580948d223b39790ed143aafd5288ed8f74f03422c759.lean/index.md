# Verification target: GRWTSK.Algebra.LinearAlgebra.Extended.Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "123bb0fef887f6023431c0b0933e2776ce790281",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `123bb0fef887f6023431c0b0933e2776ce790281`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FractionalIdeal.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extended](../../../../../mathematics/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean/declarations/extended--2da509e36a6c3acdfa66d1cc.md) | 51 | `declaration-track:2da509e36a6c3acdfa66d1cc41a713a3b824479f389153c6a828970219f7674c` |
| 2 | `lemma` | [mem_extended_iff](../../../../../mathematics/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean/declarations/mem-extended-iff--c292db5a4748ec2e9f44ea57.md) | 66 | `result-track:c292db5a4748ec2e9f44ea57fc0b237c39a0e0e5df5fe3cb11eb30ff0760c8d2` |
| 3 | `lemma` | [coe_extended_eq_span](../../../../../mathematics/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean/declarations/coe-extended-eq-span--3ea660bf5c6d9d67ac6fd2d9.md) | 70 | `result-track:3ea660bf5c6d9d67ac6fd2d94b9f1c665c32630d872a067c926b68bb5604c1d1` |
| 4 | `theorem` | [extended_zero](../../../../../mathematics/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean/declarations/extended-zero--027f379b274ecce5259fefa0.md) | 74 | `result-track:027f379b274ecce5259fefa0214e4f19b011ae31385607c6ac9ba8679806ad51` |
| 5 | `theorem` | [extended_one](../../../../../mathematics/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean/declarations/extended-one--54feb492018fc60466996f15.md) | 79 | `result-track:54feb492018fc60466996f1523205858b5732839b614780384d40898301aba2a` |
| 6 | `theorem` | [extended_add](../../../../../mathematics/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean/declarations/extended-add--0df59663e3efb1b8c1931ca4.md) | 88 | `result-track:0df59663e3efb1b8c1931ca442093ab02768954dfd3229e4c65a82f3bed316ee` |
| 7 | `theorem` | [extended_mul](../../../../../mathematics/Algebra/LinearAlgebra/Extended/Variant4c35998d2afbf58bae5580948d223b39790ed143aafd5288ed8f74f03422c759.lean/declarations/extended-mul--0decfcd9d518852348e36d9e.md) | 102 | `result-track:0decfcd9d518852348e36d9e6605b1ba81909411df53230a3893dfb5fd635a74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
