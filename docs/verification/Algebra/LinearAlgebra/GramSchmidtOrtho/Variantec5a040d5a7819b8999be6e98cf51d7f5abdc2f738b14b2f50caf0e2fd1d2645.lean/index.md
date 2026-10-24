# Verification target: GRWTSK.Algebra.LinearAlgebra.GramSchmidtOrtho.Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f03bdf8598c16efd66bf9a1cff9cce8ac1824b9a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f03bdf8598c16efd66bf9a1cff9cce8ac1824b9a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Block` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt--ffb6e1dba8d5f0df037efaad.md) | 62 | `declaration-track:ffb6e1dba8d5f0df037efaade5ed740e89dafcfe20a0a3512bc7aa40866a107b` |
| 2 | `theorem` | [gramSchmidt_def](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-def--a598e48fa29d52953f647127.md) | 69 | `result-track:a598e48fa29d52953f647127be498e032dd02f24f3aea4a28a5c423783c9be45` |
| 3 | `theorem` | [gramSchmidt_def'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-def--620e5126afe5d0067faee70d.md) | 74 | `result-track:620e5126afe5d0067faee70db40394f817c0ad8c24198dba1c69e089efa7f317` |
| 4 | `theorem` | [gramSchmidt_def''](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-def--c0a237717ace0c49c13df5c7.md) | 79 | `result-track:c0a237717ace0c49c13df5c797888be27d9f256c60915890d275d38e5c5fb8fe` |
| 5 | `theorem` | [gramSchmidt_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-zero--23259205ea4f75bcf0cc6b15.md) | 87 | `result-track:23259205ea4f75bcf0cc6b1571e001037bf175897435a7f898dfaf5e338feaa8` |
| 6 | `theorem` | [gramSchmidt_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-orthogonal--1a178078dbc0931fa979dbb8.md) | 94 | `result-track:1a178078dbc0931fa979dbb85ae4b92a0bbb815fb2477b8500d09da7a4054a30` |
| 7 | `theorem` | [gramSchmidt_pairwise_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-pairwise-orthogonal--7817f4e5c8dbbd6b22c2224d.md) | 123 | `result-track:7817f4e5c8dbbd6b22c2224deb5f40ed4a18aadb520fa850a5ae6f5cdde51010` |
| 8 | `theorem` | [gramSchmidt_inv_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-inv-triangular--030d58d518574dc4edbb2862.md) | 128 | `result-track:030d58d518574dc4edbb2862c96f6053065148f9b0235638f34dfbbd40edb3ae` |
| 9 | `theorem` | [mem_span_gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/mem-span-gramschmidt--de4f20f1bccf063847c92a4b.md) | 144 | `result-track:de4f20f1bccf063847c92a4b13ba28d919f3e1de248022fdfb28160970266aca` |
| 10 | `theorem` | [gramSchmidt_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-mem-span--f876ccf576055658c053c701.md) | 153 | `result-track:f876ccf576055658c053c70116a921bb06fed136b7c060c334809a622a9da360` |
| 11 | `theorem` | [span_gramSchmidt_Iic](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/span-gramschmidt-iic--6006998d66fc3d04b271ad6a.md) | 167 | `result-track:6006998d66fc3d04b271ad6a3e845458f433e7e1c5c5bcf868fad14524615064` |
| 12 | `theorem` | [span_gramSchmidt_Iio](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/span-gramschmidt-iio--b40ff8af2ce0dcb8c217f59c.md) | 173 | `result-track:b40ff8af2ce0dcb8c217f59c95df72042dab6d13b4d26e5280b87614057aee90` |
| 13 | `theorem` | [span_gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/span-gramschmidt--cf9b729b44f8808fe1f89da3.md) | 182 | `result-track:cf9b729b44f8808fe1f89da36d14436042824453bbbf11b68b3240a0d2696129` |
| 14 | `theorem` | [gramSchmidt_of_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-of-orthogonal--71d0e5cdfec85892cc535b0d.md) | 189 | `result-track:71d0e5cdfec85892cc535b0d2ea03789cffe657049b6682a6fa70027d808cec5` |
| 15 | `theorem` | [gramSchmidt_ne_zero_coe](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-ne-zero-coe--f3f31ad3f28727a720305a0d.md) | 212 | `result-track:f3f31ad3f28727a720305a0d637a62b43e9e8d18a3fddb88b417dd1a2df2caf2` |
| 16 | `theorem` | [gramSchmidt_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-ne-zero--630f884cd52201613d051c84.md) | 237 | `result-track:630f884cd52201613d051c84333462352601464efbbb4fb6ce6f02037f50e41a` |
| 17 | `theorem` | [gramSchmidt_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-triangular--fd6df9a9a23258436cf0ff35.md) | 243 | `result-track:fd6df9a9a23258436cf0ff359348e9d785775255c1d0e72377a454e65662b499` |
| 18 | `theorem` | [gramSchmidt_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-linearindependent--075c37840dbd0da68a6200ee.md) | 254 | `result-track:075c37840dbd0da68a6200ee9712f32c51fa28ccc27e8716f81f1cf9a03b00c6` |
| 19 | `def` | [gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtbasis--0b38afe5b8a3c529aed6f8c1.md) | 261 | `declaration-track:0b38afe5b8a3c529aed6f8c1f43aa68da30eb459d90188342f334c780a0c03e5` |
| 20 | `theorem` | [coe_gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/coe-gramschmidtbasis--fbef701f5823c53757a0e22f.md) | 266 | `result-track:fbef701f5823c53757a0e22f2a59aa545d8613681845ca69cf968582479e61ca` |
| 21 | `def` | [gramSchmidtNormed](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtnormed--6537d41c3b4841f795ec156c.md) | 274 | `declaration-track:6537d41c3b4841f795ec156c470e077d0dea8875871a0684b081cdc5f9740254` |
| 22 | `theorem` | [gramSchmidtNormed_unit_length_coe](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtnormed-unit-length-coe--a4a407b42ab7ed5e9336e6ba.md) | 280 | `result-track:a4a407b42ab7ed5e9336e6bac76cafe6db044152c607fb02776df3f8da57c088` |
| 23 | `theorem` | [gramSchmidtNormed_unit_length](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtnormed-unit-length--a4932a0e02e938cd6ffd3f0c.md) | 286 | `result-track:a4932a0e02e938cd6ffd3f0c7674110cab3c56c72735a60a53c9732a70552f4a` |
| 24 | `theorem` | [gramSchmidtNormed_unit_length'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtnormed-unit-length--d043613f74aaff18ada90cff.md) | 291 | `result-track:d043613f74aaff18ada90cff1c97feb3f9e7af6281a770612ba803305aff5da1` |
| 25 | `theorem` | [gramSchmidt_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-orthonormal--1a56da861ee7f38e3fa04339.md) | 301 | `result-track:1a56da861ee7f38e3fa04339566b4c86205ffbd61d35ccf956559277ffe4e0e5` |
| 26 | `theorem` | [gramSchmidt_orthonormal'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidt-orthonormal--34af8f98a167b2a5fc452971.md) | 316 | `result-track:34af8f98a167b2a5fc4529715d83e4363c84b11fb8be327f73fbcd043589682e` |
| 27 | `theorem` | [span_gramSchmidtNormed](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/span-gramschmidtnormed--ca3a4863781089c47ecfb48a.md) | 324 | `result-track:ca3a4863781089c47ecfb48aa8c92d7f8474918f0a8aaece5fff39000a1899b4` |
| 28 | `theorem` | [span_gramSchmidtNormed_range](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/span-gramschmidtnormed-range--3440ca18c4c284ff5f7cd5e3.md) | 337 | `result-track:3440ca18c4c284ff5f7cd5e3e0862a1a87607180b9a543d7e17a20bd94819f24` |
| 29 | `def` | [gramSchmidtOrthonormalBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtorthonormalbasis--a17d27860bc28d7a0e185b71.md) | 350 | `declaration-track:a17d27860bc28d7a0e185b715e81bcf91de2ff5974915ffde0384fde3d4d3176` |
| 30 | `theorem` | [gramSchmidtOrthonormalBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtorthonormalbasis-apply--57717edfc8b5155829a52bd0.md) | 355 | `result-track:57717edfc8b5155829a52bd025e6c8502f895fa35e4d2f8fa0c219a8fa42611d` |
| 31 | `theorem` | [gramSchmidtOrthonormalBasis_apply_of_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtorthonormalbasis-apply-of-orthogonal--0f942eb8f343e8f8bd9c5771.md) | 361 | `result-track:0f942eb8f343e8f8bd9c577143b4c51e1a84947d5d947b8a53187bc6199231de` |
| 32 | `theorem` | [inner_gramSchmidtOrthonormalBasis_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/inner-gramschmidtorthonormalbasis-eq-zero--685775ea51eb8529f52c03e9.md) | 370 | `result-track:685775ea51eb8529f52c03e9a5f4d81af540f235161f62f9b7773a1d41e3789a` |
| 33 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtorthonormalbasis-inv-triangular--8937e58dd4e9c05c5dc18e2d.md) | 388 | `result-track:8937e58dd4e9c05c5dc18e2d3c50c1cd7ecc13439f002fcf44100e0ace9126da` |
| 34 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtorthonormalbasis-inv-triangular--bff2517f4845d55809e9f1a1.md) | 396 | `result-track:bff2517f4845d55809e9f1a13acf593a5c09310d63bb2e297dd3024dd0ed3f0e` |
| 35 | `theorem` | [gramSchmidtOrthonormalBasis_inv_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtorthonormalbasis-inv-blocktriangular--5e231ac52ce90e9019ab431d.md) | 404 | `result-track:5e231ac52ce90e9019ab431d84913a97bf1dc66cb8e97d5c10c6f487fc785fbc` |
| 36 | `theorem` | [gramSchmidtOrthonormalBasis_det](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/declarations/gramschmidtorthonormalbasis-det--30ffab55fc62c3314d67c404.md) | 411 | `result-track:30ffab55fc62c3314d67c404c747ee4c1fd0168877ced7d22fefccc053e422a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
