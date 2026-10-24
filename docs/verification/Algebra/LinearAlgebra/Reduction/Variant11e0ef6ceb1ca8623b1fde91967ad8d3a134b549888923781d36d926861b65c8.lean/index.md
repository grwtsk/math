# Verification target: GRWTSK.Algebra.LinearAlgebra.Reduction.Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b47a69433373d0c9e6143e63ec1cd2e0bfbe0a8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b47a69433373d0c9e6143e63ec1cd2e0bfbe0a8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.ZMod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduce](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean/declarations/reduce--0bc1ac5534394013c6e070a7.md) | 16 | `declaration-track:0bc1ac5534394013c6e070a7c6593ee5fff6536458c262feee4fdfe175e30e7e` |
| 2 | `def` | [mutateResidue](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean/declarations/mutateresidue--08c868b4f62f0f90346892b5.md) | 20 | `declaration-track:08c868b4f62f0f90346892b535b8fad3985f69165aabbdc59df94c05368790cc` |
| 3 | `theorem` | [reduce_mutate](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean/declarations/reduce-mutate--b140412bdd61558a140f8c21.md) | 25 | `result-track:b140412bdd61558a140f8c215b653510d620c97ed1650d0abd69f7d64ceea643` |
| 4 | `def` | [playResidue](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean/declarations/playresidue--14678e154f402c4877090c23.md) | 32 | `declaration-track:14678e154f402c4877090c23c5e57db4045582fabef3dccfa3df97b71f042fde` |
| 5 | `theorem` | [reduce_play](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean/declarations/reduce-play--69708d6c4fdd600b6de7a61a.md) | 38 | `result-track:69708d6c4fdd600b6de7a61aa8aa20ef015049b79a604e9871cde971da5f6225` |
| 6 | `theorem` | [reduced_mutation_determinant](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean/declarations/reduced-mutation-determinant--6b63093c8c1cd0c0bd7d16c5.md) | 48 | `result-track:6b63093c8c1cd0c0bd7d16c5452bf96bd17ad2ffa224fc9c947f3f8c64d04a2a` |
| 7 | `theorem` | [reduced_mutation_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean/declarations/reduced-mutation-isunit--23450326f7bd3108f7827649.md) | 56 | `result-track:23450326f7bd3108f782764934397af2c76f358e22c7a6b9fa306139ca051b8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
