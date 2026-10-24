# Verification target: GRWTSK.Algebra.DirichletPolynomialProduct.Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aea7fc0e04060013a0d9ff811928a0c297ddaf5e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean/index.md) · [Full source](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aea7fc0e04060013a0d9ff811928a0c297ddaf5e`.

Source path: `GRWTSK/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.DirichletSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.DirichletConvolution` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletPolynomialComplex](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean/declarations/dirichletpolynomialcomplex--9d6fb51c3e88a72c2ff6980e.md) | 28 | `declaration-track:9d6fb51c3e88a72c2ff6980eed1e67eb8ba5b75ae388baa859d25d7488e2a851` |
| 2 | `theorem` | [dirichletPolynomialComplex_zero_coeff](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean/declarations/dirichletpolynomialcomplex-zero-coeff--ff47c65fcae65c627d92c3d1.md) | 35 | `result-track:ff47c65fcae65c627d92c3d1ed60756706b9420189df3d27c7d55efa6d08b1f6` |
| 3 | `theorem` | [dirichletPolynomialComplex_add](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean/declarations/dirichletpolynomialcomplex-add--e6c8fa84becec373e219ec78.md) | 41 | `result-track:e6c8fa84becec373e219ec786d347e737cedda4ff2dc50821f2d6364eab53ee5` |
| 4 | `def` | [boundedDirichletConv](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean/declarations/boundeddirichletconv--27127efd2415e2c1bcfe48d6.md) | 50 | `declaration-track:27127efd2415e2c1bcfe48d6a1da56b5ca2530e1257456896904f1fe8962df13` |
| 5 | `theorem` | [finite_dirichlet_cauchy_product_unweighted](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean/declarations/finite-dirichlet-cauchy-product-unweighted--83891bbcd7156fdba3259ee8.md) | 58 | `result-track:83891bbcd7156fdba3259ee8d3de73105faa9a0dd28b704238075ef7d2a80f35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
