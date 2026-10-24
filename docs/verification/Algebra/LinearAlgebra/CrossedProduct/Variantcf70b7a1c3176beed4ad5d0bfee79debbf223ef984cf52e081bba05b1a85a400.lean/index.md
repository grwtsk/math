# Verification target: GRWTSK.Algebra.LinearAlgebra.CrossedProduct.Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "989d4cc372f55082926aef5333d17df44d7c15cc",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `989d4cc372f55082926aef5333d17df44d7c15cc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.GroupAction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ConjTranspose` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MatrixFiber](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/matrixfiber--db2a01a761e9e9eb42af2881.md) | 17 | `declaration-track:db2a01a761e9e9eb42af288180b30e6a36e25ec25265ae27f9eb4842066fa515` |
| 2 | `def` | [normalizedMatrixTrace](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/normalizedmatrixtrace--d1a3dd772976e917e549fa35.md) | 20 | `declaration-track:d1a3dd772976e917e549fa356137da1c3d1638b2a420075a9ad7cff5a5833d8a` |
| 3 | `structure` | [UnitaryMatrixFiberRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/unitarymatrixfiberrepresentation--5486e96ca4abbfd99f2c2223.md) | 25 | `declaration-track:5486e96ca4abbfd99f2c22235e0fce36ea81b71cf48a90719e91a2488becf4b8` |
| 4 | `structure` | [MatrixFiberCrossedProductElement](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/matrixfibercrossedproductelement--39777c870611e4f4afd41948.md) | 47 | `declaration-track:39777c870611e4f4afd419485d5bb4ce1bd396deb90c2cfca3d987f98ab445f5` |
| 5 | `structure` | [CrossedProductElement](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/crossedproductelement--203cbfe150460c9dfdbed7e1.md) | 55 | `declaration-track:203cbfe150460c9dfdbed7e1a18918054fd5a34df0fa556dde5076f8764fc524` |
| 6 | `def` | [CrossedProductElement.zero](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/crossedproductelement-zero--d293cdfa05a3fd2a2cddbdb4.md) | 62 | `declaration-track:d293cdfa05a3fd2a2cddbdb43825b1c66d063b33ddcf124817d97351327cd1bd` |
| 7 | `def` | [CrossedProductElement.add](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/crossedproductelement-add--996d2390bf8992b60ca9480d.md) | 70 | `declaration-track:996d2390bf8992b60ca9480de15c0d1bb3b51464dbe58819d0ed7c5270662903` |
| 8 | `def` | [CrossedProductElement.scale](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/crossedproductelement-scale--a5c0365afa7b064d96058c7f.md) | 83 | `declaration-track:a5c0365afa7b064d96058c7f2843047b7efee6fc22898fc0db6cf55a38939772` |
| 9 | `structure` | [CrossedProductRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/crossedproductrepresentation--ffeaf4626ff74605caa3cdb9.md) | 94 | `declaration-track:ffeaf4626ff74605caa3cdb9853f3666f1d008f5cc7b8db61ba6b1929a2a1cd1` |
| 10 | `def` | [matrixFiberAction](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/matrixfiberaction--bd7e6c852f3d26ee34820fe8.md) | 100 | `declaration-track:bd7e6c852f3d26ee34820fe806fed0a4cbb428eb9c064f24945e9fa375737b9a` |
| 11 | `theorem` | [normalizedMatrixTrace_matrixFiberAction](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/normalizedmatrixtrace-matrixfiberaction--034a4835945be622cfbfc520.md) | 117 | `result-track:034a4835945be622cfbfc520e226b6a643821f0199087e0d6809c9acb01f1873` |
| 12 | `def` | [CrossedProductRepresentation.apply](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/crossedproductrepresentation-apply--e5b1598e4a3152fd1d0d6a7c.md) | 139 | `declaration-track:e5b1598e4a3152fd1d0d6a7c086f474dc5446c5500a210bfc865fda291001a44` |
| 13 | `structure` | [CrossedProductOperatorProfile](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/declarations/crossedproductoperatorprofile--31d27c4556b107133f44ceb7.md) | 152 | `declaration-track:31d27c4556b107133f44ceb712da5223c56ebc391f5974a8463c43904e1509b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
