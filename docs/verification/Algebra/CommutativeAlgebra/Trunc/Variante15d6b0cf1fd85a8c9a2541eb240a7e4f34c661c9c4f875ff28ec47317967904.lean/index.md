# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Trunc.Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ac607769af612ed88904e115148eb8b88729440",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ac607769af612ed88904e115148eb8b88729440`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Interval` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/truncfun--46b6c82aff39c3bf774f2a74.md) | 76 | `declaration-track:46b6c82aff39c3bf774f2a74b86d942a7530e85122eb4926f9cb1f6e06b35820` |
| 2 | `theorem` | [coeff_truncFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/coeff-truncfun--360e56a8195550fb3e19b9a4.md) | 79 | `result-track:360e56a8195550fb3e19b9a4939466f2256abc01dc674677f259ba53535577b1` |
| 3 | `def` | [trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/trunc--aa37656dd09bc44f04a74c01.md) | 91 | `declaration-track:aa37656dd09bc44f04a74c014c2d000dad842715245121d98abca2fa4514913d` |
| 4 | `theorem` | [coeff_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/coeff-trunc--54ba04c8cca0ff984c45551d.md) | 103 | `result-track:54ba04c8cca0ff984c45551d2d0a45b2edec9b957a7bcaf30abebe745da8966a` |
| 5 | `theorem` | [trunc_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/trunc-one--0f8a8eeacbf825a0e64a8b17.md) | 108 | `result-track:0f8a8eeacbf825a0e64a8b17d04494230c319273a81c07d8e2242886badfa81d` |
| 6 | `theorem` | [trunc_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/trunc-c--e32a175655d24a5667ff84d3.md) | 126 | `result-track:e32a175655d24a5667ff84d367e55f24416b344fc8b4ede82d61a9055f5fe7a8` |
| 7 | `theorem` | [trunc_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/trunc-c-mul--487cbe070a5913e855d9dcd3.md) | 134 | `result-track:487cbe070a5913e855d9dcd38d342ae6088224fd597e427b7cf055ba4a44fc4d` |
| 8 | `theorem` | [trunc_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/trunc-map--5a1b1d2e259be6c386ef72ec.md) | 139 | `result-track:5a1b1d2e259be6c386ef72ecae5911e3b4ca6d1d2e634478ab47c50ddd1c4771` |
| 9 | `def` | [truncFun'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/truncfun--43f15e79576ac80dfd1b9b4b.md) | 150 | `declaration-track:43f15e79576ac80dfd1b9b4bdb9db729faba2ace1b1003394d8e2867194749e8` |
| 10 | `theorem` | [coeff_truncFun'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/coeff-truncfun--0fb4fe9511e3c7e427dc7a56.md) | 154 | `result-track:0fb4fe9511e3c7e427dc7a568789d3898ef38ca8447036d839429b1161e5becb` |
| 11 | `def` | [trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/trunc--e7ad802d3062af9253109fbd.md) | 166 | `declaration-track:e7ad802d3062af9253109fbd4ac39eea66675f36c179d406e0b2c0819509c700` |
| 12 | `theorem` | [coeff_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/coeff-trunc--0548703fda2b889e8c39c4d1.md) | 177 | `result-track:0548703fda2b889e8c39c4d13101b6829d28ccc34cda9a73e3d683e1b92c337f` |
| 13 | `theorem` | [trunc'_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/trunc-one--bd4942ee07c4826d9a70ec90.md) | 183 | `result-track:bd4942ee07c4826d9a70ec902af055300f544161320b6ebb9d27f8a0463ab2c2` |
| 14 | `theorem` | [trunc'_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/trunc-c--bb77c979bdbe1d5b25ae8c92.md) | 195 | `result-track:bb77c979bdbe1d5b25ae8c92ea789454c2b46dd5eaad5253218386c04874d038` |
| 15 | `theorem` | [coeff_mul_eq_coeff_trunc'_mul_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/coeff-mul-eq-coeff-trunc-mul-trunc--55ea2e31e0a355953cfd3b2a.md) | 204 | `result-track:55ea2e31e0a355953cfd3b2aee21f2f9b7362991f330b9c26bcb1f5ecc2e917f` |
| 16 | `theorem` | [trunc'_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/trunc-c-mul--7db1116af42508040afdc533.md) | 219 | `result-track:7db1116af42508040afdc5330f1c3b4f5d52b043fa1854e02531b83d1d1149dd` |
| 17 | `theorem` | [trunc'_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variante15d6b0cf1fd85a8c9a2541eb240a7e4f34c661c9c4f875ff28ec47317967904.lean/declarations/trunc-map--45fa0612b792027357b7588d.md) | 224 | `result-track:45fa0612b792027357b7588df59cb9b28085f6fc1a7bc38d6b4f06106f4b776e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
