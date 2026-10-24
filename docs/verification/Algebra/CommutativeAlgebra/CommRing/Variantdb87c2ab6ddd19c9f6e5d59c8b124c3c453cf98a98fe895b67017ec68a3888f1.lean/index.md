# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CommRing.Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5c839c1edd463c79dbb0de7217ba5fea31ceff2",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5c839c1edd463c79dbb0de7217ba5fea31ceff2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Variables` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommRingMvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/instcommringmvpolynomial--9c3b746b80d05777edf92f09.md) | 61 | `declaration-track:9c3b746b80d05777edf92f09cc83fe0942a91670315e2b1c2fa457e963c1a8b5` |
| 2 | `theorem` | [C_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/c-sub--46703d701f05939af776f231.md) | 67 | `result-track:46703d701f05939af776f231f6fa84760682de705474589514df5645bdefa534` |
| 3 | `theorem` | [C_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/c-neg--a58383945d5156fa7da11c2a.md) | 71 | `result-track:a58383945d5156fa7da11c2a5cb5d24573364ea21d78347adb73e885802c386b` |
| 4 | `theorem` | [coeff_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/coeff-neg--ede8ff9dd9a06f061ab710f9.md) | 75 | `result-track:ede8ff9dd9a06f061ab710f98733b32e0683a4fc2cd9b993bd863c5d26dcd9fb` |
| 5 | `theorem` | [coeff_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/coeff-sub--cc5d9558ab7f2783889f53f7.md) | 79 | `result-track:cc5d9558ab7f2783889f53f752499fd204d842df835c5108d12694f82f4c5443` |
| 6 | `theorem` | [support_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/support-neg--57bcdee978352d75ce6516bd.md) | 83 | `result-track:57bcdee978352d75ce6516bd15118ea65f95afb86eb967aeab5e891507ee0e60` |
| 7 | `theorem` | [support_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/support-sub--c05872dafc0d84f8fb06761d.md) | 86 | `result-track:c05872dafc0d84f8fb06761ded227980fa305a01eaa7e3647b3bc55e8115958b` |
| 8 | `theorem` | [degrees_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/degrees-neg--490c700666217ed227b5593b.md) | 95 | `result-track:490c700666217ed227b5593ba7eb4b76140868aa79602cb500bdf8b6f599cfd6` |
| 9 | `theorem` | [degrees_sub_le](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/degrees-sub-le--51cef08f6e7754599089408e.md) | 98 | `result-track:51cef08f6e7754599089408e99072e476a87aa8a9e51b9babf0955c9873b178b` |
| 10 | `theorem` | [degreeOf_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/degreeof-neg--81c998bc6c109d9d8b519204.md) | 109 | `result-track:81c998bc6c109d9d8b519204f2d5c9d18ce8b56133e2f61208aa9ebc01c34fda` |
| 11 | `theorem` | [degreeOf_sub_le](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/degreeof-sub-le--00e640fd2f1bda51effa5a73.md) | 112 | `result-track:00e640fd2f1bda51effa5a73e5585d49c2bdddea2f1a967be4131d95348c03f6` |
| 12 | `theorem` | [vars_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/vars-neg--0bb3ad4ce4d60ab667eb2ece.md) | 121 | `result-track:0bb3ad4ce4d60ab667eb2ece8f9198e8b1cf176257da50c1a121be063d74be79` |
| 13 | `theorem` | [vars_sub_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/vars-sub-subset--d2d65966d9650c513f9008fd.md) | 123 | `result-track:d2d65966d9650c513f9008fdedf06ce486bc7c1f04d1f9f80934e42faa4c5d33` |
| 14 | `theorem` | [vars_sub_of_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/vars-sub-of-disjoint--37b5ca3c3846358a73bbdb6f.md) | 127 | `result-track:37b5ca3c3846358a73bbdb6f412704091297281505a1b6c29c437a74ad0b30dd` |
| 15 | `theorem` | [eval₂_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/eval-sub--1f65674b0e7bfc5abad9b28e.md) | 140 | `result-track:1f65674b0e7bfc5abad9b28ef7f059fb269449834a54be44418fa8734db187a5` |
| 16 | `theorem` | [eval_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/eval-sub--63dd722a218e88bac5fdc494.md) | 143 | `result-track:63dd722a218e88bac5fdc494b1234bc3e84be450b0ba7a96888318fe9886ded1` |
| 17 | `theorem` | [eval₂_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/eval-neg--b426fd0167c48e5889dfa25b.md) | 147 | `result-track:b426fd0167c48e5889dfa25b0a61ac0cd4ad296cffd89689721b6df5e5190eb5` |
| 18 | `theorem` | [eval_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/eval-neg--16fd418d4b769a67df50306e.md) | 150 | `result-track:16fd418d4b769a67df50306ea9ef2a33216f6ee743117b5ad774955ff92edf58` |
| 19 | `theorem` | [hom_C](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/hom-c--c4e821e85df00b541e8407d9.md) | 153 | `result-track:c4e821e85df00b541e8407d9c030e8bceebb9c5506a33e6c9e94d5238f3fc024` |
| 20 | `theorem` | [eval₂Hom_X](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/eval-hom-x--7347a7e3c87049b4e62abc62.md) | 159 | `result-track:7347a7e3c87049b4e62abc62f666892a490acd4146a790cadefbd39d31f291c5` |
| 21 | `def` | [homEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/homequiv--8cbfd99cfbc3c5e524381b7d.md) | 174 | `declaration-track:8cbfd99cfbc3c5e524381b7d321200cf68615e171486a0fc9982690d2c944089` |
| 22 | `theorem` | [degreeOf_sub_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/degreeof-sub-lt--ea1665e8564398d3a55a67c1.md) | 184 | `result-track:ea1665e8564398d3a55a67c1b0672c90e2332ed9bbd07249c1d0175baf351f18` |
| 23 | `theorem` | [totalDegree_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/totaldegree-neg--882ba2bfb3f4ac26d9d1de3c.md) | 203 | `result-track:882ba2bfb3f4ac26d9d1de3ca7b774c441b1d1a854d272f088c8b78d43a8cedf` |
| 24 | `theorem` | [totalDegree_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/totaldegree-sub--533d274da9576c7f0b71f66d.md) | 206 | `result-track:533d274da9576c7f0b71f66dfbe27884cad9f3805d2b8642c801f6eaf44dfb93` |
| 25 | `theorem` | [totalDegree_sub_C_le](../../../../../mathematics/Algebra/CommutativeAlgebra/CommRing/Variantdb87c2ab6ddd19c9f6e5d59c8b124c3c453cf98a98fe895b67017ec68a3888f1.lean/declarations/totaldegree-sub-c-le--45d0be8102ec8bc14396e15b.md) | 213 | `result-track:45d0be8102ec8bc14396e15b8c6348d3e0548f810b6e52f5ca96ed988555fa74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
