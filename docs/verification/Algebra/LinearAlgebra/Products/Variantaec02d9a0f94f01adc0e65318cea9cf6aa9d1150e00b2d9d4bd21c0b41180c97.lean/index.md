# Verification target: GRWTSK.Algebra.LinearAlgebra.Products.Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d0b0349a186d3532d297f1a991de6366445231d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d0b0349a186d3532d297f1a991de6366445231d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [productCone](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/declarations/productcone--aaeee13364f3891c5c4714ad.md) | 30 | `declaration-track:aaeee13364f3891c5c4714add0b3f5dc8d99388ba4d9100681e83a3895d22a24` |
| 2 | `def` | [productConeIsLimit](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/declarations/productconeislimit--854e80cc30cf25e21f078d9a.md) | 35 | `declaration-track:854e80cc30cf25e21f078d9ae29207bb201174e56f2c4d37512998cdebd34f0c` |
| 3 | `def` | [piIsoPi](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/declarations/piisopi--51a986138e901af1144e508e.md) | 49 | `declaration-track:51a986138e901af1144e508e14e567eb6b987e5a8fb1f708f5b8e5b6b114a597` |
| 4 | `theorem` | [piIsoPi_inv_kernel_ι](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/declarations/piisopi-inv-kernel--6ff1239f73b4ac85d0f4fae3.md) | 54 | `result-track:6ff1239f73b4ac85d0f4fae3b80d6bb14658a971d6d67a0dc6ad95a70fd46778` |
| 5 | `theorem` | [piIsoPi_hom_ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/declarations/piisopi-hom-ker-subtype--f69b12a825479a919b478934.md) | 59 | `result-track:f69b12a825479a919b4789341d5651e2904b0a506e763f9e1eecbeb59d9e98b2` |
| 6 | `def` | [coproductCocone](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/declarations/coproductcocone--4b0e6087a0d1a118389400b0.md) | 72 | `declaration-track:4b0e6087a0d1a118389400b0c88ee103f0cfe5e3cc6df94885bd397637c654d2` |
| 7 | `def` | [coproductCoconeIsColimit](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/declarations/coproductcoconeiscolimit--3f7164e9bfc66cfc272d0ef2.md) | 76 | `declaration-track:3f7164e9bfc66cfc272d0ef28bd876ed24d06bb87d91e9fb1f61372ab90de451` |
| 8 | `def` | [coprodIsoDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/declarations/coprodisodirectsum--87e17cd40936d781700833e0.md) | 97 | `declaration-track:87e17cd40936d781700833e0cc6ff2f39f4614932d07dfdfb30b274a1fe6f313` |
| 9 | `theorem` | [ι_coprodIsoDirectSum_hom](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/declarations/coprodisodirectsum-hom--d5d91c0714a42aeccaf4c975.md) | 101 | `result-track:d5d91c0714a42aeccaf4c9753bb0c337a8bb64d89ab8e88860921acd29bc4bb6` |
| 10 | `theorem` | [lof_coprodIsoDirectSum_inv](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/declarations/lof-coprodisodirectsum-inv--7d0935b1f2b69b40b56d8156.md) | 106 | `result-track:7d0935b1f2b69b40b56d81560b4240ddad468034b8dfa5660fd8d29a4fbb39aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
