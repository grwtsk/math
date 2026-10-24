# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommSq.Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1c7810298fc92edddc38204e426f0bf0f9cb399",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1c7810298fc92edddc38204e426f0bf0f9cb399`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CommSq.cokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/declarations/commsq-cokernelcofork--d13604897a0cc741f3f54449.md) | 43 | `declaration-track:d13604897a0cc741f3f54449dcc8013ae8cece61fe3472b15721c0cca2323346` |
| 2 | `def` | [CommSq.shortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/declarations/commsq-shortcomplex--4137a167143264addc9e5df1.md) | 49 | `declaration-track:4137a167143264addc9e5df107f056a605c7ed737118d846030c26df8f6c422c` |
| 3 | `def` | [CommSq.isColimitEquivIsColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/declarations/commsq-iscolimitequiviscolimitcokernelcofork--d8c4df43060cf8a92c089020.md) | 56 | `declaration-track:d8c4df43060cf8a92c089020b64db29e27e1d8a8ec773c2c7b80f3736505f957` |
| 4 | `def` | [IsPushout.isColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/declarations/ispushout-iscolimitcokernelcofork--a02e1ba18a1af8c54b29dc5e.md) | 104 | `declaration-track:a02e1ba18a1af8c54b29dc5eb7c4587e1475e30604c53b77dd584c88e8a549e4` |
| 5 | `lemma` | [IsPushout.epi_shortComplex_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/declarations/ispushout-epi-shortcomplex-g--4bf4f71c4560a104d3c89f1b.md) | 108 | `result-track:4bf4f71c4560a104d3c89f1b03ef8758454810b05d43679df31d0a8b25f61592` |
| 6 | `abbrev` | [CommSq.kernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/declarations/commsq-kernelfork--0cf21efe6d15ebf313bcb001.md) | 121 | `declaration-track:0cf21efe6d15ebf313bcb001a29864f52e32e9c6d7830849b5fbd5a8e0e01d29` |
| 7 | `def` | [CommSq.shortComplex'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/declarations/commsq-shortcomplex--98af14fe787fce12ee195d32.md) | 128 | `declaration-track:98af14fe787fce12ee195d32b8133d134639dadc76f1751ca5cb0fbc308114a4` |
| 8 | `def` | [CommSq.isLimitEquivIsLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/declarations/commsq-islimitequivislimitkernelfork--9ea33bab9cf33f856d4cbd87.md) | 135 | `declaration-track:9ea33bab9cf33f856d4cbd87dc8e220e448e3105354d0f9bc125bc3bb38fff57` |
| 9 | `def` | [IsPullback.isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/declarations/ispullback-islimitkernelfork--2701f0a96a1266c6e1e0930f.md) | 181 | `declaration-track:2701f0a96a1266c6e1e0930f14c4c323518ec3af0e6623bbf7e37f2940035c67` |
| 10 | `lemma` | [IsPullback.mono_shortComplex'_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant93a6b0c1dcba83ec13cfa84811bb7383deb5426e33001d6247cbf5e9f28011a7.lean/declarations/ispullback-mono-shortcomplex-f--975464a1d17b484439f34708.md) | 185 | `result-track:975464a1d17b484439f34708cacf22090f6119681f07f982e6b7fa6b98d824f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
