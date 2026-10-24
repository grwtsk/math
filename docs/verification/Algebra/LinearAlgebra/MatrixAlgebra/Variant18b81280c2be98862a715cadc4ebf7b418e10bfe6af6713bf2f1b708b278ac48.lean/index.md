# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixAlgebra.Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb4e100c06eb0744a2ea283f28124cf37b384ae2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb4e100c06eb0744a2ea283f28124cf37b384ae2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFunBilinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/tofunbilinear--724477e557454b3d1b65425c.md) | 42 | `declaration-track:724477e557454b3d1b65425cd9db211c3d1c1ef2385eea4ad8d001a2ee6f0eef` |
| 2 | `theorem` | [toFunBilinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/tofunbilinear-apply--0ab2494a868f50d0bc745ee2.md) | 47 | `result-track:0ab2494a868f50d0bc745ee21fa3dd9e2a40df9939ecb1032fdfeff92a82f3dd` |
| 3 | `def` | [toFunLinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/tofunlinear--4fe9481f12ccefa3a96d7f7c.md) | 56 | `declaration-track:4fe9481f12ccefa3a96d7f7cf63df79f4690f7e8f0cb7354e87d1f9507adc4a7` |
| 4 | `def` | [toFunAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/tofunalghom--a3a1d4b4ca54c712ce82bdc8.md) | 64 | `declaration-track:a3a1d4b4ca54c712ce82bdc80f99d85089e5ad36cd20a2cecc9bb9ed049c41aa` |
| 5 | `theorem` | [toFunAlgHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/tofunalghom-apply--ef5c678651bffd1d03826ce1.md) | 81 | `result-track:ef5c678651bffd1d03826ce124efa957e8bb5a22d3a2ae4ef299a92b24e54c5c` |
| 6 | `def` | [invFun](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/invfun--70947842392487041e347b43.md) | 91 | `declaration-track:70947842392487041e347b4361c875d957160d473bc2f1ae08907e2352c9e247` |
| 7 | `theorem` | [invFun_zero](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/invfun-zero--4d0863b54cfe333e41b67144.md) | 96 | `result-track:4d0863b54cfe333e41b67144848b5cba1eb544964bed898c47f922b1588fd615` |
| 8 | `theorem` | [invFun_add](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/invfun-add--d03c828480f3b0729454fe1a.md) | 100 | `result-track:d03c828480f3b0729454fe1acf5678dc98d4b1f54c781b72c07d4c093f332a67` |
| 9 | `theorem` | [invFun_smul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/invfun-smul--9c44f64c5590abee753be4d0.md) | 105 | `result-track:9c44f64c5590abee753be4d0ca7880ee898fd56561bae3200d3d01c9e543bf46` |
| 10 | `theorem` | [invFun_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/invfun-algebramap--1d7d5ab83191914bee127485.md) | 110 | `result-track:1d7d5ab83191914bee1274854f67458fb1363f12fdf53a4d3661934dd3d224e2` |
| 11 | `theorem` | [right_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/right-inv--5c7d77c0665fdcc899f25be5.md) | 118 | `result-track:5c7d77c0665fdcc899f25be5be00ea8d7bb0937c3ec9a13032aa34f0f9e431d7` |
| 12 | `theorem` | [left_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/left-inv--3b0802acdbb91e21be26746c.md) | 129 | `result-track:3b0802acdbb91e21be26746c21f7e8baa3ef0cfb5abdb06e3c19aea026bc08dc` |
| 13 | `def` | [equiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/equiv--64ae5500712942893fa1f9c3.md) | 142 | `declaration-track:64ae5500712942893fa1f9c3c1005b0250119ce09d7200659f5920421fd06a9a` |
| 14 | `def` | [matrixEquivTensor](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/matrixequivtensor--9248edd961b96909e15be708.md) | 155 | `declaration-track:9248edd961b96909e15be70812a9f36c61ce07c5bde2b928c93df11d7cb77bf6` |
| 15 | `theorem` | [matrixEquivTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/matrixequivtensor-apply--5bf5459ffafa86fb9c50445d.md) | 162 | `result-track:5bf5459ffafa86fb9c50445d483ed82cf86cf98b44732f3b6c9cb2e922cca76e` |
| 16 | `theorem` | [matrixEquivTensor_apply_std_basis](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/matrixequivtensor-apply-std-basis--a9ba7d8d73f91dc3f9e7f044.md) | 169 | `result-track:a9ba7d8d73f91dc3f9e7f044e7e127ddfb9ecb99203ffdd81bc5ec4228d16ba9` |
| 17 | `theorem` | [matrixEquivTensor_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/declarations/matrixequivtensor-apply-symm--a96600188c1aa95697700fe2.md) | 176 | `result-track:a96600188c1aa95697700fe2ee38f2eb68cbd1af0ba7b7a25f993f990b6300a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
