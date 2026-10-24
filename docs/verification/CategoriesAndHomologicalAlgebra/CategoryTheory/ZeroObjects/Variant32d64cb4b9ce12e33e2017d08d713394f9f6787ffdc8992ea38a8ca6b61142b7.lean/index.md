# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ZeroObjects.Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9e831e516ae57e0b88f1acc63aca5f8eb66d47e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9e831e516ae57e0b88f1acc63aca5f8eb66d47e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binaryFanZeroLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/binaryfanzeroleft--9b12558a16b9777a98005894.md) | 30 | `declaration-track:9b12558a16b9777a9800589481857198d74bcc607d0e8377dfa2b81e327ff59c` |
| 2 | `def` | [binaryFanZeroLeftIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/binaryfanzeroleftislimit--e98129fa9cd52ba8a18fcb3c.md) | 34 | `declaration-track:e98129fa9cd52ba8a18fcb3ce8898a52905ae3b2e050d59e68e7d25c9a22f244` |
| 3 | `instance` | [hasBinaryProduct_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/hasbinaryproduct-zero-left--d18b8724c57e9ef64bd81601.md) | 38 | `declaration-track:d18b8724c57e9ef64bd81601cd8da8b5bea51d86d7aba8aa519e626a00866b75` |
| 4 | `def` | [zeroProdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/zeroprodiso--8ad305d427966c5105b2e0ad.md) | 42 | `declaration-track:8ad305d427966c5105b2e0adf3db35ac512938dbe8b46d57b01714ee2370d3f2` |
| 5 | `theorem` | [zeroProdIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/zeroprodiso-hom--78919e2323ac8edd72ed105e.md) | 46 | `result-track:78919e2323ac8edd72ed105e2f32a33d59a747720e6413746b94e26adfe3f8de` |
| 6 | `theorem` | [zeroProdIso_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/zeroprodiso-inv-snd--425062c4729aca2f58f42a68.md) | 50 | `result-track:425062c4729aca2f58f42a68cdbac124783bd528c1b8b236009c136a62d66312` |
| 7 | `def` | [binaryFanZeroRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/binaryfanzeroright--1b8380b810137a35a3d181a1.md) | 55 | `declaration-track:1b8380b810137a35a3d181a15af1f7bf2472e6ff0d6887e1ffbe43c1594abd35` |
| 8 | `def` | [binaryFanZeroRightIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/binaryfanzerorightislimit--b30fd1209319780efaf1919f.md) | 59 | `declaration-track:b30fd1209319780efaf1919ffa9e6e384ac32e5be1f1468eb06395c3d150edbb` |
| 9 | `instance` | [hasBinaryProduct_zero_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/hasbinaryproduct-zero-right--1aa3ef69e7125691aa722a52.md) | 63 | `declaration-track:1aa3ef69e7125691aa722a521e96a0b18b5592daf3477db7ec5046814cca2efd` |
| 10 | `def` | [prodZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/prodzeroiso--ed4a17220dd6fd61f0344d5c.md) | 67 | `declaration-track:ed4a17220dd6fd61f0344d5c5c96582253cdb94041f7d6e78bd7f211d3b56b3c` |
| 11 | `theorem` | [prodZeroIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/prodzeroiso-hom--c2f530b0ad65ae1e258470f1.md) | 71 | `result-track:c2f530b0ad65ae1e258470f1c801914c3c283465de1b4c709337e70511293863` |
| 12 | `theorem` | [prodZeroIso_iso_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/prodzeroiso-iso-inv-snd--6b030bb17df1f174337df8a7.md) | 75 | `result-track:6b030bb17df1f174337df8a7c41479a17412cb0cbaeb28c7e83b8b9c38f83b81` |
| 13 | `def` | [binaryCofanZeroLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/binarycofanzeroleft--d4e276781d4a93146642142e.md) | 80 | `declaration-track:d4e276781d4a93146642142ef121870468179512b046a5749d7ca655f0a42d39` |
| 14 | `def` | [binaryCofanZeroLeftIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/binarycofanzeroleftiscolimit--6a74dbc5a75e49504af6e01d.md) | 84 | `declaration-track:6a74dbc5a75e49504af6e01dcd6b8c4817947fbd5d432e0fcfbcc7c8567497de` |
| 15 | `instance` | [hasBinaryCoproduct_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/hasbinarycoproduct-zero-left--a26d843f9bd8b43127831549.md) | 88 | `declaration-track:a26d843f9bd8b43127831549a91abe8d01675eee2e7b23cf02b3183301022a54` |
| 16 | `def` | [zeroCoprodIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/zerocoprodiso--5ce10a6865d3302b12e35a08.md) | 92 | `declaration-track:5ce10a6865d3302b12e35a086bb175511d1ad771c878f2407933f082861fc5e6` |
| 17 | `theorem` | [inr_zeroCoprodIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/inr-zerocoprodiso-hom--87e071d0607b88ace0124810.md) | 96 | `result-track:87e071d0607b88ace01248105a4c292d64aeba0793acbfaac86cf36f6a3d7b06` |
| 18 | `theorem` | [zeroCoprodIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/zerocoprodiso-inv--6df39fccc48e43dadb84b15a.md) | 101 | `result-track:6df39fccc48e43dadb84b15ae3b794b13aee57c90d87959705c3cb46b37f93d6` |
| 19 | `def` | [binaryCofanZeroRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/binarycofanzeroright--d9925e39e49a84522453e7ca.md) | 105 | `declaration-track:d9925e39e49a84522453e7cae4f2a9d5ac5110ea9ae808f09acf11655f112769` |
| 20 | `def` | [binaryCofanZeroRightIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/binarycofanzerorightiscolimit--b004379e335d1eaef9ec0285.md) | 109 | `declaration-track:b004379e335d1eaef9ec0285b4cbffb8f8d3e400adf79d307c873ac8aa229ed0` |
| 21 | `instance` | [hasBinaryCoproduct_zero_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/hasbinarycoproduct-zero-right--a79ce2ae68357ecb8257e13e.md) | 113 | `declaration-track:a79ce2ae68357ecb8257e13eff903664daa04a946f8fd391c21256ba099106e3` |
| 22 | `def` | [coprodZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/coprodzeroiso--f7dbfae99ac965009111149d.md) | 117 | `declaration-track:f7dbfae99ac965009111149d14f033be838d3676ce69d0ea76485843045bc29d` |
| 23 | `theorem` | [inr_coprodZeroIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/inr-coprodzeroiso-hom--8123649020c7f1e55f39d9bf.md) | 121 | `result-track:8123649020c7f1e55f39d9bfbdb34edb2d46bae3cb273efa401f3b250881db49` |
| 24 | `theorem` | [coprodZeroIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/coprodzeroiso-inv--3ebf151ff434caae0f5cebc0.md) | 126 | `result-track:3ebf151ff434caae0f5cebc0419a4e9fa3557cd45e4428562d3a0c1a6e42bb38` |
| 25 | `instance` | [hasPullback_over_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/haspullback-over-zero--18b24820088a8866792ac33d.md) | 129 | `declaration-track:18b24820088a8866792ac33d94d3f0b6b3e966eb509d7ad1a737537bde7e0b3e` |
| 26 | `def` | [pullbackZeroZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/pullbackzerozeroiso--3cbbcc8e0c8e5bc3eb7ce702.md) | 135 | `declaration-track:3cbbcc8e0c8e5bc3eb7ce7022b9e4909ce5207dea9af5327bf90305002762a43` |
| 27 | `theorem` | [pullbackZeroZeroIso_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/pullbackzerozeroiso-inv-fst--4fc1406987e0eb284055d13f.md) | 141 | `result-track:4fc1406987e0eb284055d13fd531eec2a882cd69d93a6a31e9973257113b41f4` |
| 28 | `theorem` | [pullbackZeroZeroIso_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/pullbackzerozeroiso-inv-snd--4efffc10c7f93819d2395edc.md) | 147 | `result-track:4efffc10c7f93819d2395edcda87bf1c5fbc52d9716cb35679209a30f47407ba` |
| 29 | `theorem` | [pullbackZeroZeroIso_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/pullbackzerozeroiso-hom-fst--57643a00cb8d0109c94feff7.md) | 153 | `result-track:57643a00cb8d0109c94feff7bf38d90f2d1ee6e39d0c27e5e4c575ca75ff776a` |
| 30 | `theorem` | [pullbackZeroZeroIso_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/pullbackzerozeroiso-hom-snd--f4b79fb7541a1d886facd9de.md) | 157 | `result-track:f4b79fb7541a1d886facd9decc27eb25b05c98d6651b16e8137718d8b5b039a6` |
| 31 | `instance` | [hasPushout_over_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/haspushout-over-zero--b87fae826ce8c9610c0ce67c.md) | 160 | `declaration-track:b87fae826ce8c9610c0ce67c84a25d55a2e5876cc6087fe1b9893417debd1e76` |
| 32 | `def` | [pushoutZeroZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/pushoutzerozeroiso--4167ef974ade5e4996871b2b.md) | 166 | `declaration-track:4167ef974ade5e4996871b2b90f91fee0d0bc2b41b002caf6cff77b7a177b7f8` |
| 33 | `theorem` | [inl_pushoutZeroZeroIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/inl-pushoutzerozeroiso-hom--387af37f41efa42113ad6131.md) | 172 | `result-track:387af37f41efa42113ad6131c78f5b29321fa371389ada560326ac35a112dae0` |
| 34 | `theorem` | [inr_pushoutZeroZeroIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/inr-pushoutzerozeroiso-hom--a3e99b46d63138b4f6f38b12.md) | 178 | `result-track:a3e99b46d63138b4f6f38b1210edd0a750896b6e25212e8e4f8383136c84d5ff` |
| 35 | `theorem` | [inl_pushoutZeroZeroIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/inl-pushoutzerozeroiso-inv--17a07625e663b28d7c84b892.md) | 184 | `result-track:17a07625e663b28d7c84b8925b2a7c4047b138ebd794a96edc2ab4d5ca004fb1` |
| 36 | `theorem` | [inr_pushoutZeroZeroIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant32d64cb4b9ce12e33e2017d08d713394f9f6787ffdc8992ea38a8ca6b61142b7.lean/declarations/inr-pushoutzerozeroiso-inv--e1939480d2baa55330394238.md) | 188 | `result-track:e1939480d2baa55330394238edeec80d2d9160d650f0b0250533a1116c4caf50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
