# Verification target: GRWTSK.Algebra.LinearAlgebra.GramSchmidtOrtho.Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f8c1cedb41e36f33d25c075f1658548d4e585d8",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f8c1cedb41e36f33d25c075f1658548d4e585d8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt--24b045e7f4dd3d7cfc1353ef.md) | 49 | `declaration-track:24b045e7f4dd3d7cfc1353efa0e1b40670831e2843de5cc6fcdc34a4c5e4eeaa` |
| 2 | `theorem` | [gramSchmidt_def](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-def--eec2aee6576761ad76a9d462.md) | 55 | `result-track:eec2aee6576761ad76a9d46216703c0305fe831a1a7da7fde691d9316773b131` |
| 3 | `theorem` | [gramSchmidt_def'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-def--c85188d97414d38a4b1bad7f.md) | 59 | `result-track:c85188d97414d38a4b1bad7fac6673d75c5c4dbe11c56202066bcbca7f55860e` |
| 4 | `theorem` | [gramSchmidt_def''](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-def--e4eeba95a6098f02df4b957c.md) | 63 | `result-track:e4eeba95a6098f02df4b957c9d31d2af3c0f825d7780ad866801d3c9fec79c33` |
| 5 | `theorem` | [gramSchmidt_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-zero--755a3eb744ff4e17bf04787c.md) | 70 | `result-track:755a3eb744ff4e17bf04787c3666c8f9d04e5e8ef15493f4f27dde885ba263da` |
| 6 | `theorem` | [gramSchmidt_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-orthogonal--4566698b46d3f475038d0f94.md) | 76 | `result-track:4566698b46d3f475038d0f94fb77072eb6afa6e57fe9a35d7630e648971891a9` |
| 7 | `theorem` | [gramSchmidt_pairwise_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-pairwise-orthogonal--a71eae9f87a2f6997d17b4a0.md) | 104 | `result-track:a71eae9f87a2f6997d17b4a05642b83056a947a84ef128a35635475e06e3de77` |
| 8 | `theorem` | [gramSchmidt_inv_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-inv-triangular--3ba260e1c839d97f6afe5a88.md) | 108 | `result-track:3ba260e1c839d97f6afe5a883d5c0ad3fab5fb51367ce3796c108dae91165597` |
| 9 | `theorem` | [mem_span_gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/mem-span-gramschmidt--1ae524dad3c9cf503dfd0ae1.md) | 123 | `result-track:1ae524dad3c9cf503dfd0ae18e47424575af3044210985097e05c8fd670c2e85` |
| 10 | `theorem` | [gramSchmidt_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-mem-span--8280f4cefc9d3e6280cd6eca.md) | 131 | `result-track:8280f4cefc9d3e6280cd6ecad2b7a6af048180f961b3201a128de72565cc4a81` |
| 11 | `theorem` | [span_gramSchmidt_Iic](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/span-gramschmidt-iic--43b5e3d9b1d159d3c5863bdf.md) | 143 | `result-track:43b5e3d9b1d159d3c5863bdfd4d78e2226f09468587a864a7d076d0ca214976d` |
| 12 | `theorem` | [span_gramSchmidt_Iio](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/span-gramschmidt-iio--ee0364ce1f4d4a79d70cad98.md) | 148 | `result-track:ee0364ce1f4d4a79d70cad986daef1966d75fd77407a103b6bd76b8777401b0b` |
| 13 | `theorem` | [span_gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/span-gramschmidt--db87fb9227d0bb3044b210e4.md) | 156 | `result-track:db87fb9227d0bb3044b210e429b65632671cbeb48ac9e9844484982e53f5f5b5` |
| 14 | `theorem` | [gramSchmidt_of_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-of-orthogonal--0a90b6dc538a175260e3317d.md) | 162 | `result-track:0a90b6dc538a175260e3317dce3a3827e0982699ae1d17e9797af5f24080b3e9` |
| 15 | `theorem` | [gramSchmidt_ne_zero_coe](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-ne-zero-coe--7779c4270d4ca1f20f6cad71.md) | 184 | `result-track:7779c4270d4ca1f20f6cad718ac6176bf00705f7b3925ad124afcc06a3c5f45a` |
| 16 | `theorem` | [gramSchmidt_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-ne-zero--c9b0202fb2621186c9d8ce0f.md) | 204 | `result-track:c9b0202fb2621186c9d8ce0f5ad5145ab1a6a9151d6c83d688bbadae08dbfe82` |
| 17 | `theorem` | [gramSchmidt_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-triangular--9b6a51adf662443ab1846c4a.md) | 209 | `result-track:9b6a51adf662443ab1846c4a1c27b39515857bc6af00d368c7ee2e86d7273605` |
| 18 | `theorem` | [gramSchmidt_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-linearindependent--cc9fa614cb77bb9620382468.md) | 219 | `result-track:cc9fa614cb77bb9620382468369936180d014b56ca25f3cc598ca45b5acdbffc` |
| 19 | `def` | [gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtbasis--22af97c45451cb6d7bdb084b.md) | 225 | `declaration-track:22af97c45451cb6d7bdb084b5fa42beee8540b51301bfba79e20c918461c1792` |
| 20 | `theorem` | [coe_gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/coe-gramschmidtbasis--acb47e0e26ad013bbef6a9f6.md) | 229 | `result-track:acb47e0e26ad013bbef6a9f66229ab71c356686614a230980d458cf5f68b903b` |
| 21 | `def` | [gramSchmidtNormed](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtnormed--e487e7f81c923e744aed1bb0.md) | 235 | `declaration-track:e487e7f81c923e744aed1bb05d964d42d30128e86d85948adc7046f9799f3937` |
| 22 | `theorem` | [gramSchmidtNormed_unit_length_coe](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtnormed-unit-length-coe--d6837d2c3a47a923c235cdf1.md) | 238 | `result-track:d6837d2c3a47a923c235cdf1163fc789f15ecc69ccd8a1da15dfbfc561f0c8a8` |
| 23 | `theorem` | [gramSchmidtNormed_unit_length](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtnormed-unit-length--8a2a11e107dcbb402bbac1bc.md) | 243 | `result-track:8a2a11e107dcbb402bbac1bcadc46e6d0053c458cc064757b8df2923591b4b18` |
| 24 | `theorem` | [gramSchmidtNormed_unit_length'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtnormed-unit-length--e72617d481663d24579b2b7d.md) | 247 | `result-track:e72617d481663d24579b2b7db01ee40f222806d5c1b21f83e2240d61c5d5d6ad` |
| 25 | `theorem` | [gramSchmidt_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-orthonormal--7f5d61afb094e0006d9e4fe2.md) | 256 | `result-track:7f5d61afb094e0006d9e4fe269d69e7d7720262e9816fd47c47d46fec9b2b985` |
| 26 | `theorem` | [gramSchmidt_orthonormal'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidt-orthonormal--f1814833a24d33027cc7ed95.md) | 270 | `result-track:f1814833a24d33027cc7ed95d8345fcb02deabff3385c1e5e0cd49f95d9589bc` |
| 27 | `theorem` | [span_gramSchmidtNormed](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/span-gramschmidtnormed--62b9248d9028c2bbe42090f2.md) | 277 | `result-track:62b9248d9028c2bbe42090f21066b28ea5c4ea79c9d723fb282c40ca9713262b` |
| 28 | `theorem` | [span_gramSchmidtNormed_range](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/span-gramschmidtnormed-range--7250cbee409d7836b76134ab.md) | 289 | `result-track:7250cbee409d7836b76134ab79802f1c3934c92bbbd2d1ada2720f3a97d37bc6` |
| 29 | `def` | [gramSchmidtOrthonormalBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtorthonormalbasis--23f9f8dc0934d95ef950ebb6.md) | 301 | `declaration-track:23f9f8dc0934d95ef950ebb6ed209d8fc84930baba8d34aa4eb043bad5a52bb0` |
| 30 | `theorem` | [gramSchmidtOrthonormalBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtorthonormalbasis-apply--3dacf57b39fd09eca2d063c3.md) | 305 | `result-track:3dacf57b39fd09eca2d063c38230b8f38e29256e90b39c2a4553f3a8be7ec997` |
| 31 | `theorem` | [gramSchmidtOrthonormalBasis_apply_of_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtorthonormalbasis-apply-of-orthogonal--d1200e593c134deb47b63dcb.md) | 310 | `result-track:d1200e593c134deb47b63dcbbc6abac143af73d2fb21f88d85353462ad072c48` |
| 32 | `theorem` | [inner_gramSchmidtOrthonormalBasis_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/inner-gramschmidtorthonormalbasis-eq-zero--a8549ca5ed060faa198adf7a.md) | 318 | `result-track:a8549ca5ed060faa198adf7a9ed680a35b2013854a7a992d3c82b6a2db531cca` |
| 33 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtorthonormalbasis-inv-triangular--b60d7c293dea5145c86cff91.md) | 335 | `result-track:b60d7c293dea5145c86cff91ec64e3e909d03b19df27ad737a54a8fe6e03648d` |
| 34 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtorthonormalbasis-inv-triangular--dfe15394721cebd3fd379d7c.md) | 342 | `result-track:dfe15394721cebd3fd379d7cebe7de14cbe2bd803a9887eb9e352a9eab145b0e` |
| 35 | `theorem` | [gramSchmidtOrthonormalBasis_inv_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtorthonormalbasis-inv-blocktriangular--c30aa864cd56db9f4839d638.md) | 349 | `result-track:c30aa864cd56db9f4839d63820c6503d9d7819e6cea07bba4ca361ac7154a7d8` |
| 36 | `theorem` | [gramSchmidtOrthonormalBasis_det](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean/declarations/gramschmidtorthonormalbasis-det--9733d969680ad9d47e60a9b7.md) | 353 | `result-track:9733d969680ad9d47e60a9b78133775a7521a56e095fdf65b13fae5ffab5f742` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
