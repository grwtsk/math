# Verification target: GRWTSK.Algebra.LinearAlgebra.MvPolynomial.Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d24c1b75d0849b4cdb36995eee15e639acd6bbb",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d24c1b75d0849b4cdb36995eee15e639acd6bbb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.IsNonarchimedean` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Height.iSup_fun_eq_max](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/height-isup-fun-eq-max--9453ad31f19b83d1a67abc9d.md) | 37 | `result-track:9453ad31f19b83d1a67abc9d7a53e6f5b4290716e5dc2047d2f5ba6242e8b2ea` |
| 2 | `lemma` | [apply_sum_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/apply-sum-le--dfd7eae0ab4ff4631e893488.md) | 50 | `result-track:dfd7eae0ab4ff4631e893488485156f9651dc6d043050926008fa5826b6db4c1` |
| 3 | `lemma` | [apply_sum_univ_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/apply-sum-univ-le--2d6510757c428f24c6cbcef1.md) | 65 | `result-track:2d6510757c428f24c6cbcef174dd9ce9307c8b4dff7319305552e5b398390aff` |
| 4 | `lemma` | [AbsoluteValue.iSup_abv_linearMap_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/absolutevalue-isup-abv-linearmap-apply-le--e772aeddf38cd414675551b5.md) | 81 | `result-track:e772aeddf38cd414675551b5c8e09f6477956de966091d648cd03b4c98528c9a` |
| 5 | `lemma` | [IsNonarchimedean.iSup_abv_linearMap_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/isnonarchimedean-isup-abv-linearmap-apply-le--09e85210efd7c473690ee401.md) | 98 | `result-track:09e85210efd7c473690ee40141781b3c643a29a672f901ee90b17cae858ec872` |
| 6 | `theorem` | [mulHeight_linearMap_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheight-linearmap-apply-le--c8f0bdc2b2f866ca25139441.md) | 129 | `result-track:c8f0bdc2b2f866ca25139441b90c57ecc956be3f7fadb3b0f59401c4a05580f5` |
| 7 | `theorem` | [logHeight_linearMap_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/logheight-linearmap-apply-le--909f0c24295ea69f328862d1.md) | 170 | `result-track:909f0c24295ea69f328862d10d0f46c8999e11ff9d82d8a0a3749d550e0e1c67` |
| 8 | `lemma` | [AbsoluteValue.eval_mvPolynomial_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/absolutevalue-eval-mvpolynomial-le--8d26429e48dbd0203c349093.md) | 197 | `result-track:8d26429e48dbd0203c349093cb557c6fd450911282b106718d6cd62d4128da52` |
| 9 | `lemma` | [IsNonarchimedean.eval_mvPolynomial_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/isnonarchimedean-eval-mvpolynomial-le--651e838d65a400051a81ae96.md) | 210 | `result-track:651e838d65a400051a81ae96f7e4139c69173eb435faf91568774d90e25afb7a` |
| 10 | `def` | [mulHeightBound](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheightbound--a3d96129981c8f2e44feb18b.md) | 238 | `declaration-track:a3d96129981c8f2e44feb18b2d11656393f03ce1ccbb0469bd987ead6049133c` |
| 11 | `lemma` | [mulHeightBound_eq](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheightbound-eq--bf0212aa03da2e6d1325272e.md) | 242 | `result-track:bf0212aa03da2e6d1325272e7ae7a271e07d308200290c562c4da66f50d04111` |
| 12 | `lemma` | [max_mulHeightBound_zero_one_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/max-mulheightbound-zero-one-eq-one--79f5038d1e1562966f230f48.md) | 249 | `result-track:79f5038d1e1562966f230f48154aaab24e860b86d456e320f65d4993166a2931` |
| 13 | `lemma` | [hasFiniteMulSupport_iSup_max_iSup_one](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/hasfinitemulsupport-isup-max-isup-one--6665ff32c23e1afa57538653.md) | 266 | `result-track:6665ff32c23e1afa5753865367dfddd171e674f322e958a6bdcee7d1aaadc761` |
| 14 | `lemma` | [mulHeight_constantCoeff_le_mulHeightBound](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheight-constantcoeff-le-mulheightbound--f7dcda4b1db335fbf1b99c86.md) | 276 | `result-track:f7dcda4b1db335fbf1b99c867a6c354c68dee2070112e7e83ec05fb6711a80fa` |
| 15 | `theorem` | [mulHeight_eval_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheight-eval-le--f09b2fe947b48442cbe5ed0a.md) | 306 | `result-track:f09b2fe947b48442cbe5ed0a1c853bffbfc4de966b741ef06d4c528f2888bd62` |
| 16 | `theorem` | [mulHeight_eval_le'](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheight-eval-le--0166c4ca3d184f1c2990d106.md) | 365 | `result-track:0166c4ca3d184f1c2990d106c17375ebad02c61e42b345d17010b19a6e1c6629` |
| 17 | `theorem` | [logHeight_eval_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/logheight-eval-le--b99c39dd5e213cdf8cb5aec2.md) | 376 | `result-track:b99c39dd5e213cdf8cb5aec2575b6d4e211555811a862a0a6be9e618d952e162` |
| 18 | `theorem` | [logHeight_eval_le'](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/logheight-eval-le--a9bec21f96a6f43638b037ec.md) | 391 | `result-track:a9bec21f96a6f43638b037ecd0a4b71f2911b7b2fdbd0b2d77c38a5d845bf850` |
| 19 | `lemma` | [mulHeight_eval_ge_aux](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheight-eval-ge-aux--7d7d829eeef2070252464491.md) | 425 | `result-track:7d7d829eeef207025246449155562c29fc07301214226ab2ae14e8e8d617a62a` |
| 20 | `theorem` | [mulHeight_eval_ge](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheight-eval-ge--7d76c972a0a04c82a346aeb8.md) | 446 | `result-track:7d76c972a0a04c82a346aeb8817b1f3c68f4f009090d790574c6696646ee6d5b` |
| 21 | `theorem` | [mulHeight_eval_ge'](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheight-eval-ge--0914ce86172591539b0c0e79.md) | 479 | `result-track:0914ce86172591539b0c0e79ecc19785cd7c7e9a3db7a2f8eef9be527f38b97c` |
| 22 | `theorem` | [logHeight_eval_ge](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/logheight-eval-ge--924b4450543d1fd79addde9f.md) | 499 | `result-track:924b4450543d1fd79addde9f0853928e4035fe27e05dde292e4b979aa59bb5ef` |
| 23 | `theorem` | [logHeight_eval_ge'](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/logheight-eval-ge--0b09f478f658b1f1dc2dc797.md) | 523 | `result-track:0b09f478f658b1f1dc2dc797c9bc741571a9f3118c7dc101bd577230b82d053f` |
| 24 | `lemma` | [mulHeight_mul_mulHeight](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheight-mul-mulheight--6aae6d8b6d2e7d9dc82f7e34.md) | 549 | `result-track:6aae6d8b6d2e7d9dc82f7e3471f421c5b3081daef5bfd4eadc48a047ab00f015` |
| 25 | `lemma` | [mulHeight_sym2_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheight-sym2-le--d0d4d4d6fab09eea1cd4b48e.md) | 559 | `result-track:d0d4d4d6fab09eea1cd4b48e3a1717c731bf2f324eb8f442bd69a049b2daeef4` |
| 26 | `lemma` | [mulHeight_sym2_ge](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/mulheight-sym2-ge--f9fe6d5526016b3520a7566c.md) | 585 | `result-track:f9fe6d5526016b3520a7566cdea85a06dc7553f3441fb850c85e3f7e324a55a8` |
| 27 | `lemma` | [logHeight_sym2_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/logheight-sym2-le--806e7a296ec04f1ba32c46bb.md) | 602 | `result-track:806e7a296ec04f1ba32c46bb2f4cf874868c30e4ea707f9346f6a97323c1c4af` |
| 28 | `lemma` | [logHeight_sym2_ge](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/logheight-sym2-ge--b3282bc8ef6c8784e1447052.md) | 612 | `result-track:b3282bc8ef6c8784e1447052dca2a2ce4c3541d722368f06465e6a3802c4abce` |
| 29 | `lemma` | [abs_logHeight_sym2_sub_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/declarations/abs-logheight-sym2-sub-le--ba07a1940ac1a67b7797ddc8.md) | 623 | `result-track:ba07a1940ac1a67b7797ddc845ceeedd0d8b94e0b6d57dad9a340b4ca735f946` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
