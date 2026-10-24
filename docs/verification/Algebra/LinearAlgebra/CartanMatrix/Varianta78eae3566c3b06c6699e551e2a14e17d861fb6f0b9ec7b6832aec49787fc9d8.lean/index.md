# Verification target: GRWTSK.Algebra.LinearAlgebra.CartanMatrix.Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4351b36aeae4cf3a171e6c8b9319d4f9d76aff0c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4351b36aeae4cf3a171e6c8b9319d4f9d76aff0c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.BilinearForm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Base` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.Nondegenerate` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartanMatrixIn](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/declarations/cartanmatrixin--b822f4eb190765ee35c6e60e.md) | 45 | `declaration-track:b822f4eb190765ee35c6e60e12c2959adb00a656343476caf22ead795626b56e` |
| 2 | `lemma` | [cartanMatrixIn_def](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/declarations/cartanmatrixin-def--0b5a80505fd82af86f68327a.md) | 49 | `result-track:0b5a80505fd82af86f68327a0be1b3fd72852955e3ab24412ea50fa705c1d361` |
| 3 | `lemma` | [algebraMap_cartanMatrixIn_apply](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/declarations/algebramap-cartanmatrixin-apply--b7c4a156bc5a033a88c04c99.md) | 54 | `result-track:b7c4a156bc5a033a88c04c996bf5a58cc24d0c604bd7f5ba3e98814afac5db99` |
| 4 | `lemma` | [cartanMatrixIn_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/declarations/cartanmatrixin-apply-same--0985721d6c1c5f33eeaa4747.md) | 59 | `result-track:0985721d6c1c5f33eeaa47479a363470539b9bdf08768f7783663b8b6659a5a6` |
| 5 | `lemma` | [cartanMatrixIn_mul_diagonal_eq](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/declarations/cartanmatrixin-mul-diagonal-eq--228e7f182a31f8b825a265f9.md) | 66 | `result-track:228e7f182a31f8b825a265f9e848470b62a883b12b528e70d8cf488d7d3aa497` |
| 6 | `lemma` | [cartanMatrixIn_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/declarations/cartanmatrixin-nondegenerate--6c88e8fed92fea9096073d7e.md) | 74 | `result-track:6c88e8fed92fea9096073d7eb396c4505b7df669c133ea977893e952905875da` |
| 7 | `abbrev` | [cartanMatrix](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/declarations/cartanmatrix--d394f2b990cd103561320c47.md) | 95 | `declaration-track:d394f2b990cd103561320c4718637fa4286b7d9265d58a71f6a0f5f746b26b38` |
| 8 | `lemma` | [cartanMatrix_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/declarations/cartanmatrix-apply-same--6734d8be887b1ebb0d741e21.md) | 101 | `result-track:6734d8be887b1ebb0d741e21407b787d96f0ee1979ef8cc1601dda18621d4acf` |
| 9 | `lemma` | [cartanMatrix_le_zero_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/declarations/cartanmatrix-le-zero-of-ne--dc94404bf681921b732bd2a9.md) | 105 | `result-track:dc94404bf681921b732bd2a96486e50f6c39b5c46c58d387c9cd342235d948c0` |
| 10 | `lemma` | [cartanMatrix_mem_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/declarations/cartanmatrix-mem-of-ne--ef79851b6f2e2454495abe33.md) | 110 | `result-track:ef79851b6f2e2454495abe33d5947383b1e8e1c3d284477f63184e409b4f9633` |
| 11 | `lemma` | [cartanMatrix_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Varianta78eae3566c3b06c6699e551e2a14e17d861fb6f0b9ec7b6832aec49787fc9d8.lean/declarations/cartanmatrix-nondegenerate--d2e784b8eefd964a027554e8.md) | 125 | `result-track:d2e784b8eefd964a027554e8903f26b3459473d8d12ba9fc3441cfc6b99cbe8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
