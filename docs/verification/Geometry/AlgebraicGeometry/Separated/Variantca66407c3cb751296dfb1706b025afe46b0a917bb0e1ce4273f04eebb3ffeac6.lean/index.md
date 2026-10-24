# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Separated.Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf5841503a1eaaec126a1fa517de0ced41de27df",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf5841503a1eaaec126a1fa517de0ced41de27df`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSeparated](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isseparated--dd222dfb11294bbc106b17ad.md) | 52 | `declaration-track:dd222dfb11294bbc106b17ad7d9a3e49a5a574eeea1ab566bb95242bc374cd59` |
| 2 | `theorem` | [isSeparated_eq_diagonal_isClosedImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isseparated-eq-diagonal-isclosedimmersion--c17b8697dec0463efbb23451.md) | 60 | `result-track:c17b8697dec0463efbb234514eb7231f8c919f9b353f8aae9f74d6f523fd2030` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--a3ea085eec853bed9a4fcb94.md) | 66 | `declaration-track:a3ea085eec853bed9a4fcb949a1af06a99fe3d2100548c157f9367d9c58e8227` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--5a34f12b03c82d469a186fa5.md) | 69 | `declaration-track:5a34f12b03c82d469a186fa5604c071185bbf173990ff98e7b96c9c785a2cf29` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--e9c050888afc1ce995ff1b55.md) | 73 | `declaration-track:e9c050888afc1ce995ff1b55549d8e16db769f704d3586973af7e421d1e6e8ce` |
| 6 | `instance` | [stableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/stableundercomposition--670aa3292dc45bddf5c88535.md) | 76 | `declaration-track:670aa3292dc45bddf5c8853592ce7e5ba1470050979dcdfe60b801dfc86eefcb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--eb4452ac6219a1bb6c29b586.md) | 80 | `declaration-track:eb4452ac6219a1bb6c29b58608ebc3b020c93180f5379ba760470388255409d3` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--32ce3175ddff99ae7a4678a9.md) | 83 | `declaration-track:32ce3175ddff99ae7a4678a9bed95b44f72e3907936b143cfb737651f521a364` |
| 9 | `instance` | [isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isstableunderbasechange--d30feda5ac528391f9e549de.md) | 87 | `declaration-track:d30feda5ac528391f9e549ded5f985997c27a23908a8a7c30eee5bfd90aa7633` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--221dcb214ccad5ca6092dc51.md) | 92 | `declaration-track:221dcb214ccad5ca6092dc519b89a9638f4c8e85597ca9c0683ad897c90f018c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--2311a3716db7388867055480.md) | 97 | `declaration-track:2311a3716db7388867055480e48423badd0b2859b12b82bda3a561e281433af8` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--5688c901c2d67ce18485f994.md) | 102 | `declaration-track:5688c901c2d67ce18485f994c6030d749847620f710d8a22268244235d7c4786` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--55e5eacaf0ae77f477f9562a.md) | 106 | `declaration-track:55e5eacaf0ae77f477f9562a8d99e9b07a1a48130db6bfaf83dc1eaecd675c69` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--80e1cae490e3b8bb51f3218a.md) | 109 | `declaration-track:80e1cae490e3b8bb51f3218aeab5f804b93e418cc029f48331a1833bacab7c47` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--c5a00dec3cd785dde7a90d77.md) | 113 | `declaration-track:c5a00dec3cd785dde7a90d772da9f311ddfc79e82d1441fdf2044870b2e4608b` |
| 16 | `lemma` | [of_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/of-isaffinehom--ac281cc63c9f13cbf5a4f322.md) | 124 | `result-track:ac281cc63c9f13cbf5a4f3220933e3bc6b3a4e5027554ad4b653842e2acfc106` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--6bcaaa082d0b5688d1e58a47.md) | 135 | `declaration-track:6bcaaa082d0b5688d1e58a47363ec3e786ea8a4ee5786d99ab9664c35ec5f3a3` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--37c731e7111a078676563317.md) | 143 | `declaration-track:37c731e7111a07867656331752228f4cb2e3b2546634142ab1e8470d047ffb31` |
| 19 | `lemma` | [Scheme.Pullback.diagonalCoverDiagonalRange_eq_top_of_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/scheme-pullback-diagonalcoverdiagonalrange-eq-top-of-injective--8e8f74c42fc7b59049372936.md) | 161 | `result-track:8e8f74c42fc7b59049372936f6502a141b559f8b522e7d87001da70996ecc74a` |
| 20 | `lemma` | [Scheme.Pullback.range_diagonal_subset_diagonalCoverDiagonalRange](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/scheme-pullback-range-diagonal-subset-diagonalcoverdiagonalrange--777ccf42e0491b60f46c6213.md) | 189 | `result-track:777ccf42e0491b60f46c6213260699d78e88b0e27553659761f5af4bc862b173` |
| 21 | `lemma` | [isClosedImmersion_diagonal_restrict_diagonalCoverDiagonalRange](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isclosedimmersion-diagonal-restrict-diagonalcoverdiagonalrange--dab70b0459c1a42e9be61239.md) | 213 | `result-track:dab70b0459c1a42e9be612393ef316d334d76ded2284ebf8465ed17fd2cbdf93` |
| 22 | `lemma` | [isSeparated_of_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isseparated-of-injective--469dea90387ea6e6733acbe0.md) | 232 | `result-track:469dea90387ea6e6733acbe0031a8b6d3e23c79b1904db74b373bbe4aa4e8547` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--0568ffe730601813b73c07eb.md) | 243 | `declaration-track:0568ffe730601813b73c07eb34b497a708b3975f6ef4f01aff5c330b520a4316` |
| 24 | `lemma` | [IsClosedImmersion.of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isclosedimmersion-of-comp--8687a738d5456df240235ee1.md) | 247 | `result-track:8687a738d5456df240235ee11e3d8febd6660878515b170169caa89014fb9d7c` |
| 25 | `lemma` | [IsClosedImmersion.comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isclosedimmersion-comp-iff--e8e43d9d757839b46000441e.md) | 251 | `result-track:e8e43d9d757839b46000441e9364af97c3b0ce84ae0a7c8d584983cd9eed8e64` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--92a72a0f292059e4a7d3c3dd.md) | 255 | `declaration-track:92a72a0f292059e4a7d3c3dd5e37fe673e05259bb3dd45321653b864b1ef649c` |
| 27 | `lemma` | [IsSeparated.of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isseparated-of-comp--89790b911b071ca1a4ead209.md) | 261 | `result-track:89790b911b071ca1a4ead2090bcda68f54fac617870f67bab54a0a798eecd15f` |
| 28 | `lemma` | [IsSeparated.comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isseparated-comp-iff--b51f127892bb5f8cf16fdb0a.md) | 267 | `result-track:b51f127892bb5f8cf16fdb0a2d1f0918cdaf455f125b33f6bc8da1bb54bce7a1` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--f35cc9a9d963896d32c5d5f7.md) | 270 | `declaration-track:f35cc9a9d963896d32c5d5f78aa2427d97c8674cb863eba54a264b5972df410f` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--cdaebffa4924cc554790aefe.md) | 273 | `declaration-track:cdaebffa4924cc554790aefeb61107e01b065a6bd0d35397a46b91567ff8fe0a` |
| 31 | `lemma` | [IsAffineHom.of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isaffinehom-of-comp--c272f7492920993d0481b2f8.md) | 277 | `result-track:c272f7492920993d0481b2f83ce56c01c8a4ef3790ac812147fac7d6474178d0` |
| 32 | `lemma` | [IsAffineHom.comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isaffinehom-comp-iff--783e0b87845902ee51072fd5.md) | 281 | `result-track:783e0b87845902ee51072fd50720fc90728636abf0f995d86116c026b41bb47b` |
| 33 | `instance` | [isClosedImmersion_equalizer_ι_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isclosedimmersion-equalizer-left--be8dff50072dd4ee18f8f110.md) | 285 | `declaration-track:be8dff50072dd4ee18f8f1109a3c20fdc347bd7cd22bfff026077e8539146235` |
| 34 | `lemma` | [ext_of_isDominant_of_isSeparated](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/ext-of-isdominant-of-isseparated--39e29140dfc78184564905e8.md) | 298 | `result-track:39e29140dfc78184564905e86da915358f816f1b42fd63a8d4c7b2fce209f19d` |
| 35 | `lemma` | [ext_of_fromSpecResidueField_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/ext-of-fromspecresiduefield-eq--aeae52ca0eed06753b27e0da.md) | 318 | `result-track:aeae52ca0eed06753b27e0da53b285af5fd9406950129fdbb62a8300e423f09c` |
| 36 | `lemma` | [ext_of_isDominant_of_isSeparated'](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/ext-of-isdominant-of-isseparated--190c129aca111b60d6bebec7.md) | 332 | `result-track:190c129aca111b60d6bebec731ce10b6c84522f8d7a7cbc9acbb3624f965ea41` |
| 37 | `class` | [IsSeparated](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isseparated--eff5aa0a8ba6bf9d1174b026.md) | 341 | `declaration-track:eff5aa0a8ba6bf9d1174b026709e7ac514b54bb3be4676820f89ef35be60a216` |
| 38 | `lemma` | [isSeparated_iff_isClosedImmersion_prod_lift](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isseparated-iff-isclosedimmersion-prod-lift--27256bc6bf6f02940d55f1b3.md) | 346 | `result-track:27256bc6bf6f02940d55f1b3c1012cfc44428e92a0a4c23eb7748566c513bc5d` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--db2c6d5b2b6767cb1430ff16.md) | 353 | `declaration-track:db2c6d5b2b6767cb1430ff16c475989a6f9f35472add7badca20edaf0e168646` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--ca8598fd3d4f8dfafd62ede0.md) | 356 | `declaration-track:ca8598fd3d4f8dfafd62ede006ac45f84efbfb915c95a66ae274e5b47643e0b7` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--920e5ebeeffc34a469988e53.md) | 358 | `declaration-track:920e5ebeeffc34a469988e532e13727699215c3fc7a82b8d5f6acd1cb911807c` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--3569eb8469925677e829a176.md) | 361 | `declaration-track:3569eb8469925677e829a176f09e6b7d004ed653aa5b3ad3f951ab6fa1f0eb5a` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/instance--e96a8464d418b244f8acfde5.md) | 366 | `declaration-track:e96a8464d418b244f8acfde568fcbe756ed40b11e2b7228c179bc19dbaa97a85` |
| 44 | `instance` | [IsSeparated.hasAffineProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/isseparated-hasaffineproperty--407d3998bbf14de138501712.md) | 372 | `declaration-track:407d3998bbf14de138501712489a663dbb0d868cad87af634bd77fcade4bacf4` |
| 45 | `lemma` | [ext_of_isDominant](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/declarations/ext-of-isdominant--1690d8b79bb9dcaa5cf0824b.md) | 384 | `result-track:1690d8b79bb9dcaa5cf0824b1e20daf149102c4214abd85e5d985e410f344bea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
