# Verification target: GRWTSK.Algebra.LinearAlgebra.GaloisFieldRegular.Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b78c597d5b641f25b60c29c02322f9481bd4bfdb",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b78c597d5b641f25b60c29c02322f9481bd4bfdb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GaloisField` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gf2MatMul](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/gf2matmul--981d5a10bbc5a846097d37ac.md) | 51 | `declaration-track:981d5a10bbc5a846097d37accc88be5ab85837656c65822d456da29aeeaeaa2e` |
| 2 | `def` | [gf2IdentityMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/gf2identitymatrix--4a397830d884f0ab30f1b7c3.md) | 56 | `declaration-track:4a397830d884f0ab30f1b7c3eedc4a9116341418b452d90c372c9940304af88e` |
| 3 | `theorem` | [boolMatrixGF2Equiv_identity](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/boolmatrixgf2equiv-identity--5d15453cabddbd7199b8072c.md) | 60 | `result-track:5d15453cabddbd7199b8072c2c8669c29f79cc1666f00427c9ae0a8c82ee89c5` |
| 4 | `theorem` | [gf2MatMul_identity_left](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/gf2matmul-identity-left--c14553317382de561f68bc86.md) | 68 | `result-track:c14553317382de561f68bc861aab3b3f961570c322aa59267cab67e10101ed98` |
| 5 | `theorem` | [gf2MatMul_identity_right](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/gf2matmul-identity-right--e9f79a3ac4e86df4bc04b2ca.md) | 75 | `result-track:e9f79a3ac4e86df4bc04b2ca8c3d16da510854c11956041394c1e9007c708372` |
| 6 | `theorem` | [gf2MatMul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/gf2matmul-assoc--eed58322291f9fce92826c1c.md) | 81 | `result-track:eed58322291f9fce92826c1c2448a7e64e5f9199bf4126906773b5ba00a94283` |
| 7 | `theorem` | [gf2MatMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/gf2matmul-apply--264f7227ddd90ebd4a167510.md) | 91 | `result-track:264f7227ddd90ebd4a167510bc9793d0a45ecbf6885d45daa4de2930c70ad22e` |
| 8 | `def` | [leftMulLinear](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/leftmullinear--e518714a20cc143b30e5d509.md) | 110 | `declaration-track:e518714a20cc143b30e5d50988e9d5073d7777822730b3c09d2b9b3bb0c3f6cd` |
| 9 | `theorem` | [leftMulLinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/leftmullinear-apply--96eec9f8752b980d00ff80a5.md) | 114 | `result-track:96eec9f8752b980d00ff80a5d5238b65423d42cd3e92974c5c7c27c8bee41a0a` |
| 10 | `def` | [regularMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularmatrix--38b1021e5ec1ffee31209749.md) | 119 | `declaration-track:38b1021e5ec1ffee3120974951d68d29715c9209fcde7761f443b0c3a07e3c2d` |
| 11 | `theorem` | [regularMatrix_zero](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularmatrix-zero--89b36eb98e08aa5fea95648a.md) | 126 | `result-track:89b36eb98e08aa5fea95648a20298335a2dccbcf4cb35fe76231eb89eb468180` |
| 12 | `theorem` | [regularMatrix_one](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularmatrix-one--f2425a41d2a429e5573904c5.md) | 132 | `result-track:f2425a41d2a429e5573904c5c27b1b45d5d8fde5ac455416214050cdcaca91cb` |
| 13 | `theorem` | [regularMatrix_add](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularmatrix-add--c43d6656e588a7e44c585af5.md) | 137 | `result-track:c43d6656e588a7e44c585af5b9d782ee3ac03f0d205e7304a0fd6338f23a5242` |
| 14 | `theorem` | [regularMatrix_mul](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularmatrix-mul--d3c9030cbb96d1babf2444a9.md) | 151 | `result-track:d3c9030cbb96d1babf2444a9db9c6a6a97a59466c56395f80846e24a6fdd7790` |
| 15 | `def` | [regularRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularrepresentation--4e2e9a67efefb56de7a338ff.md) | 161 | `declaration-track:4e2e9a67efefb56de7a338ffdb965275a19a9de0851d31e3180202f74d2edda9` |
| 16 | `theorem` | [regularRepresentation_apply](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularrepresentation-apply--0caef185f5ea706c90af2a58.md) | 167 | `result-track:0caef185f5ea706c90af2a58d2bb15cf41bce027741cd649aec7ad22c424949a` |
| 17 | `theorem` | [regularMatrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularmatrix-injective--1ad37a493db8be0ce99085ba.md) | 178 | `result-track:1ad37a493db8be0ce99085ba946ceb5984142225a86601c6a3cf9bdd022932d0` |
| 18 | `def` | [regularBinMat](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularbinmat--a9cfe8f465a669c9bc91664c.md) | 192 | `declaration-track:a9cfe8f465a669c9bc91664c28336cfde37dcd8e88cab49520b4168f1707f499` |
| 19 | `theorem` | [regularBinMat_add](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularbinmat-add--25bb4ddc3f9794bb1413a78e.md) | 199 | `result-track:25bb4ddc3f9794bb1413a78ee4ec64eed96d3cafc7cbe90e5c6ce5e97dee8ab3` |
| 20 | `theorem` | [regularBinMat_mul](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularbinmat-mul--76569610780d2f8e6fbc43eb.md) | 209 | `result-track:76569610780d2f8e6fbc43ebea57ad37d41fed97f5a2789c12d76e0a8d2c71f0` |
| 21 | `theorem` | [regularBinMat_one](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularbinmat-one--8874b6b17525995cdc631b57.md) | 218 | `result-track:8874b6b17525995cdc631b5735adac4e8b984718968e056356c57321c59b56e7` |
| 22 | `theorem` | [regularBinMat_injective](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularbinmat-injective--182d086899feda602067be05.md) | 225 | `result-track:182d086899feda602067be053e65125954eb572f1692256be4aed6d59db01d45` |
| 23 | `theorem` | [regularBinMat_inverse](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/declarations/regularbinmat-inverse--2fb485c1633d67c4fa9c2044.md) | 233 | `result-track:2fb485c1633d67c4fa9c204402b2addc22bbbb442038145428a90da0775c73ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
