# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d860baf8ccc6eeee94762c32c8386f1fe3e230b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d860baf8ccc6eeee94762c32c8386f1fe3e230b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Eisenstein.Criterion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.ScaleRoots` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsWeaklyEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/isweaklyeisensteinat--90186d31012d0dde081b79b0.md) | 51 | `declaration-track:90186d31012d0dde081b79b00da4bd6d96cbc2af2ca916bef4d7e9744d123e20` |
| 2 | `structure` | [IsEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/iseisensteinat--f20dac39e4853867f338cb77.md) | 58 | `declaration-track:f20dac39e4853867f338cb77d3153df4d14ca5600dd491fad63c72320033a7d8` |
| 3 | `theorem` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/map--d7a798bd8a10fb23f94cb4a6.md) | 69 | `result-track:d7a798bd8a10fb23f94cb4a6f43e0f692bd00afbd55d1b7ca1e0a33e4a2b71f6` |
| 4 | `theorem` | [exists_mem_adjoin_mul_eq_pow_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/exists-mem-adjoin-mul-eq-pow-natdegree--99d80512e735b74699213c2d.md) | 86 | `result-track:99d80512e735b74699213c2d89d9b3a2845a27984ac247f2cff278604b4677f1` |
| 5 | `theorem` | [exists_mem_adjoin_mul_eq_pow_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/exists-mem-adjoin-mul-eq-pow-natdegree-le--a7d526e3cc02032ca10fcf1c.md) | 113 | `result-track:a7d526e3cc02032ca10fcf1cf708526a98d9e0aae8ff484da2cc5b69979e1a7d` |
| 6 | `theorem` | [pow_natDegree_le_of_root_of_monic_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/pow-natdegree-le-of-root-of-monic-mem--0ab2d1b97841276dad04439c.md) | 129 | `result-track:0ab2d1b97841276dad04439cef3f9eb6a3d7f7ec6cfb7510a4dfda45f9664a38` |
| 7 | `theorem` | [pow_natDegree_le_of_aeval_zero_of_monic_mem_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/pow-natdegree-le-of-aeval-zero-of-monic-mem-map--e21398370efe1c0ab6cc3c9d.md) | 142 | `result-track:e21398370efe1c0ab6cc3c9d9c0ae1c2abd859065760b5cb5900d60852320da5` |
| 8 | `theorem` | [scaleRoots.isWeaklyEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/scaleroots-isweaklyeisensteinat--2d900a53a3ce54e101ae170d.md) | 161 | `result-track:2d900a53a3ce54e101ae170ddc21cf454c15e2fa07e29a5161bd08dad4dd9b93` |
| 9 | `theorem` | [dvd_pow_natDegree_of_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/dvd-pow-natdegree-of-eval-eq-zero--c9d21efe904638f474c1bddd.md) | 168 | `result-track:c9d21efe904638f474c1bddd34bfa0440517892447ac11c566c3608c63b1f93f` |
| 10 | `theorem` | [dvd_pow_natDegree_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/dvd-pow-natdegree-of-aeval-eq-zero--1b47b6e85870de43240e6525.md) | 180 | `result-track:1b47b6e85870de43240e652534053ff8d5a2a34bfad460e5286908d5ca38f01f` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsWeaklyEisensteinAt.Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.Polynomial.Monic.leadingCoeff_notMem](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/root-grwtsk-algebra-commutativealgebra-isweaklyeisensteinat-variantc07aa--289d0a7414e8f3c90057caaf.md) | 196 | `result-track:289d0a7414e8f3c90057caaf5080980bbe5e8976a1ed7774484f128eca157a56` |
| 12 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsWeaklyEisensteinAt.Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.Polynomial.Monic.isEisensteinAt_of_mem_of_notMem](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/root-grwtsk-algebra-commutativealgebra-isweaklyeisensteinat-variantc07aa--b4e16222596d0399654d72d6.md) | 202 | `result-track:b4e16222596d0399654d72d6240f980a25d768324bde940d259eeabdf3a1da09` |
| 13 | `theorem` | [isWeaklyEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/isweaklyeisensteinat--f49951720e58bcba758663dd.md) | 213 | `result-track:f49951720e58bcba758663dd994182cadcacf18303c9e335e6f2774f25f2b559` |
| 14 | `theorem` | [coeff_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/coeff-mem--81ed0c4abcfb5c0ef8a010c5.md) | 216 | `result-track:81ed0c4abcfb5c0ef8a010c55529f1f66470d486643ee5874763194f12b9d953` |
| 15 | `theorem` | [irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/declarations/irreducible--eceb000bbce3e0c35461ed7e.md) | 230 | `result-track:eceb000bbce3e0c35461ed7ee352e25a2ab8fa1bf787f999ec9968fbd2f5e9ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
