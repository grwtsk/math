# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitEqualizer.Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8356e773e8712885ca5087ffdccc766e305ad53",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8356e773e8712885ca5087ffdccc766e305ad53`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSplitEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/issplitequalizer--569fb4be1d69584668b8bb54.md) | 61 | `declaration-track:569fb4be1d69584668b8bb54d167a30fdd8d7a34c0c45c0925084c79b0a7123c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/instance--e4a901e56a51635deeb5b692.md) | 75 | `declaration-track:e4a901e56a51635deeb5b6928a9396fc50589cb3023a820638c9529c397aaec4` |
| 3 | `def` | [IsSplitEqualizer.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/issplitequalizer-map--5bca904c9bf1f3bec9e14a86.md) | 88 | `declaration-track:5bca904c9bf1f3bec9e14a868c87658199832a77f77a1529702d4334295d110f` |
| 4 | `def` | [IsSplitEqualizer.asFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/issplitequalizer-asfork--e7eabeb9fabbdbc696eb3706.md) | 103 | `declaration-track:e7eabeb9fabbdbc696eb370696195cb898326f3aaafebc2f1b011f046821b108` |
| 5 | `theorem` | [IsSplitEqualizer.asFork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/issplitequalizer-asfork--6d6ed145aa6459b9226052f4.md) | 107 | `result-track:6d6ed145aa6459b9226052f423d4000c06a0bdfdfdda6548c9e7d3346e47d9f3` |
| 6 | `def` | [IsSplitEqualizer.isEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/issplitequalizer-isequalizer--7034b94084325cadefc1b7cc.md) | 114 | `declaration-track:7034b94084325cadefc1b7ccc0320287e18146fcf7ab42cfca9dcb93753b0c78` |
| 7 | `class` | [HasSplitEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/hassplitequalizer--68516ac8127497464f197bfd.md) | 128 | `declaration-track:68516ac8127497464f197bfd94cb832df07133acb0d2526a22576359330add8d` |
| 8 | `abbrev` | [Functor.IsCosplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/functor-iscosplitpair--37d11b75939e7da1e05bfc79.md) | 136 | `declaration-track:37d11b75939e7da1e05bfc792c7af36413b2785359076fffa1f7bbf9d053c5a4` |
| 9 | `def` | [HasSplitEqualizer.equalizerOfSplit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/hassplitequalizer-equalizerofsplit--f9b8f2bc9157b8e5b6d878ae.md) | 140 | `declaration-track:f9b8f2bc9157b8e5b6d878ae614f621bb7e216a6052fb90fdc5a375595aadbd0` |
| 10 | `def` | [HasSplitEqualizer.equalizerι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/hassplitequalizer-equalizer--b057b853bf677720ea663872.md) | 144 | `declaration-track:b057b853bf677720ea6638727db90b1b976e4f1ae192948fc25fc09251fd18ba` |
| 11 | `def` | [HasSplitEqualizer.isSplitEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/hassplitequalizer-issplitequalizer--0fe037fc7d933737e913b045.md) | 149 | `declaration-track:0fe037fc7d933737e913b0450fb946dcca24acb62a5e67287ddaf7863b1fe4f3` |
| 12 | `instance` | [map_is_cosplit_pair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/map-is-cosplit-pair--483e7b3a8d31e73046f19f72.md) | 154 | `declaration-track:483e7b3a8d31e73046f19f72a9286cc6ee38698a6fa59416bdf29496afeecab0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/declarations/instance--b6493c1dede15add74cf71d0.md) | 161 | `declaration-track:b6493c1dede15add74cf71d00a1f4cf7f805cece24cf4a06af5ffdc72348d05a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
