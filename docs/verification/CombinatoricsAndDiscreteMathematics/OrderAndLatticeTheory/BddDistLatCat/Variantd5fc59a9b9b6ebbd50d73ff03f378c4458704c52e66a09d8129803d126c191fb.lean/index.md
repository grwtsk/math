# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddDistLatCat.Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a7f0cbb91878a625f541a28828a6092824e54df",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a7f0cbb91878a625f541a28828a6092824e54df`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.BddLatCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.DistLatCat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BddDistLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/bdddistlatcat--159cd7eead9e3e8dd1222571.md) | 35 | `declaration-track:159cd7eead9e3e8dd122257163a6c022f52876b9d282984ac1fd10f39edbe3d8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/instance--c60e2cbd4ab9479946d80f9b.md) | 42 | `declaration-track:c60e2cbd4ab9479946d80f9b16a29f788e202582abbd98b65782b6eb14869b7b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/instance--6d610f06601f4af3e9629409.md) | 45 | `declaration-track:6d610f06601f4af3e962940936d69b045c9c1b95afd06c429b78cf8fec468c7e` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/of--78adc3c73e15814d117b8ad0.md) | 51 | `declaration-track:78adc3c73e15814d117b8ad0178e3262e3b6e6a8eea6680e6bb787b8d199bee5` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/coe-of--d31e81b22d3d95c45fed110a.md) | 58 | `result-track:d31e81b22d3d95c45fed110a8e8ff63b5391f1a6f4bcb389e2b85715861b2a1c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/instance--17d999db1753cf3fbefcd55c.md) | 62 | `declaration-track:17d999db1753cf3fbefcd55c5225237ee82e756457bcb5e77edbd18e8ec9c137` |
| 7 | `def` | [toBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/tobddlat--943d8517537ae353a3cdf736.md) | 66 | `declaration-track:943d8517537ae353a3cdf736ad73a80e835519d4e75f49e8c3ec3e1b4d408e00` |
| 8 | `theorem` | [coe_toBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/coe-tobddlat--d562a667408554145f868104.md) | 71 | `result-track:d562a667408554145f868104ee6d7ff7a17f8662928e65179196b12b22414216` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/instance--877fd7191f84e0d605dac90a.md) | 75 | `declaration-track:877fd7191f84e0d605dac90ac7d90e524e832b6e99afafa0f43998996f0fb64f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/instance--4ce06731ab6a20fb6e8fab1b.md) | 78 | `declaration-track:4ce06731ab6a20fb6e8fab1ba5989e7ec92526b6a8ead1fdc9c0b0919034570b` |
| 11 | `instance` | [hasForgetToDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/hasforgettodistlat--d2a05416ba36a6bb2bf42e77.md) | 81 | `declaration-track:d2a05416ba36a6bb2bf42e7768bb647d52942277235ae6cbcabb58cf803c6e51` |
| 12 | `instance` | [hasForgetToBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/hasforgettobddlat--b355547a399f25d0483e18ce.md) | 89 | `declaration-track:b355547a399f25d0483e18cead855d16c2afc06f27f482c668c1fe1a2f48644b` |
| 13 | `theorem` | [forget_bddLat_latCat_eq_forget_distLatCat_latCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/forget-bddlat-latcat-eq-forget-distlatcat-latcat--766cc332a822b22757b8cf2f.md) | 93 | `result-track:766cc332a822b22757b8cf2fc0f534b09a5871a8dc28aed6b4e72833a27fc9c6` |
| 14 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/iso-mk--58af6ae590819cbde3f67d03.md) | 102 | `declaration-track:58af6ae590819cbde3f67d038af1fee705a7507bd62995b70ac23b50f096f736` |
| 15 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/dual--dc796741a38aa9410073ee53.md) | 111 | `declaration-track:dc796741a38aa9410073ee534badb7bb6f97a569bfb4321549bfd975113a8852` |
| 16 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/dualequiv--88060e16581775857f2b8a33.md) | 118 | `declaration-track:88060e16581775857f2b8a33fe73002a6497e3e1ae9db8e03a16d78a65f9f3ce` |
| 17 | `theorem` | [bddDistLatCat_dual_comp_forget_to_distLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLatCat/Variantd5fc59a9b9b6ebbd50d73ff03f378c4458704c52e66a09d8129803d126c191fb.lean/declarations/bdddistlatcat-dual-comp-forget-to-distlatcat--3cfc0ae75b14e344b40a36dd.md) | 127 | `result-track:3cfc0ae75b14e344b40a36dd12c629aa8eb31b3ab55ae2e82d9261e5aa7fef70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
