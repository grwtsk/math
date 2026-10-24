# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Properties.Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41e1c8984029eda620242bb284655f4e5074b953",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41e1c8984029eda620242bb284655f4e5074b953`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Reduced` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/instance--5c7d4d61eb55f48be34dbfd6.md) | 40 | `declaration-track:5c7d4d61eb55f48be34dbfd65674b43f65f0c570c5b7dffc5782b77ec6dddf74` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/instance--fd7e301f0122778676d3ef00.md) | 45 | `declaration-track:fd7e301f0122778676d3ef001bed466d159f6098ea112284248cfcef38c89aac` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/instance--e219fc007fef91035546b251.md) | 56 | `declaration-track:e219fc007fef91035546b2518a37cca506485b3b7329e9ac4f45a298dfee843c` |
| 4 | `class` | [IsReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/isreduced--25e6ccd5d57eac9ba8375999.md) | 65 | `declaration-track:25e6ccd5d57eac9ba8375999d6ca14118035522fa5ae6122bf18899d37639634` |
| 5 | `theorem` | [isReduced_of_isReduced_stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/isreduced-of-isreduced-stalk--e122c2798c29f7e10de5b17f.md) | 70 | `result-track:e122c2798c29f7e10de5b17faac2ad43de8d48a85cfe7b06397baf5c79d05a04` |
| 6 | `instance` | [isReduced_stalk_of_isReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/isreduced-stalk-of-isreduced--70640595df92fb8693aebfea.md) | 80 | `declaration-track:70640595df92fb8693aebfea82671fd883816221ec73d4e46cd3f1b58a8d9498` |
| 7 | `theorem` | [isReduced_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/isreduced-of-isopenimmersion--48d94acad5abffa382c6d6b5.md) | 92 | `result-track:48d94acad5abffa382c6d6b5a2bc4fc5a9fbe5676875e81a79ed737ea04e736c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/instance--5a369f7de3a25856cb963f91.md) | 102 | `declaration-track:5a369f7de3a25856cb963f91a51789bd54d353702f391d1e23da5a892af10b99` |
| 9 | `theorem` | [affine_isReduced_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/affine-isreduced-iff--ed9ee218ba2a2eb8a3d44def.md) | 110 | `result-track:ed9ee218ba2a2eb8a3d44deffc2940f87837e21712ccb1e412e000058ede6173` |
| 10 | `theorem` | [isReduced_of_isAffine_isReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/isreduced-of-isaffine-isreduced--ab335608b4f71a52ce187f0d.md) | 117 | `result-track:ab335608b4f71a52ce187f0dd9a64b914215d229237b214ea2b14c2b66610e04` |
| 11 | `theorem` | [reduce_to_affine_global](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/reduce-to-affine-global--f7dbeabc58f29838fd5459f7.md) | 128 | `result-track:f7dbeabc58f29838fd5459f76c0e0c8f434248cad37c1e626f14b4e48fbdb42b` |
| 12 | `theorem` | [reduce_to_affine_nbhd](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/reduce-to-affine-nbhd--be70f66c5301841b0360e0c9.md) | 146 | `result-track:be70f66c5301841b0360e0c924839fdae315c48e5c79623c6cc735f32d772338` |
| 13 | `theorem` | [eq_zero_of_basicOpen_eq_bot](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/eq-zero-of-basicopen-eq-bot--b6d6e2c4795196c887bad3dc.md) | 156 | `result-track:b6d6e2c4795196c887bad3dc32822b72034b41a34f6d241bf50ed6c29c157064` |
| 14 | `theorem` | [basicOpen_eq_bot_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/basicopen-eq-bot-iff--78d5ef0d04b7e19b2f400509.md) | 188 | `result-track:78d5ef0d04b7e19b2f400509f0029f1876c92cd4bf1da9df525b7cb165425013` |
| 15 | `class` | [IsIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/isintegral--f750e2aad23ed6225a2fbdd2.md) | 196 | `declaration-track:f750e2aad23ed6225a2fbdd26e5bc902897f6809d97431a9d1f2534511a4c1b1` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/instance--785bca6c66be70b4c807710c.md) | 202 | `declaration-track:785bca6c66be70b4c807710c5256b5d28296aff76032b9e258f37a942e7a2ddf` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/instance--402584b96fce4841d6d47293.md) | 205 | `declaration-track:402584b96fce4841d6d47293a5584c1ee54ca587b156a689aa962478943b4824` |
| 18 | `instance` | [Scheme.component_nontrivial](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/scheme-component-nontrivial--beb829a5d561a6f433b9e549.md) | 216 | `declaration-track:beb829a5d561a6f433b9e549b3c9e39dc6d3fa140a373f7919016138da85702b` |
| 19 | `instance` | [irreducibleSpace_of_isIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/irreduciblespace-of-isintegral--ef0afd47bb727cbbcb3992d4.md) | 220 | `declaration-track:ef0afd47bb727cbbcb3992d49197c0eb263096a39921d46d7aa76d443dbe4d8a` |
| 20 | `theorem` | [isIntegral_of_irreducibleSpace_of_isReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/isintegral-of-irreduciblespace-of-isreduced--bc74ab4c37504f35780008a9.md) | 244 | `result-track:bc74ab4c37504f35780008a93136f550a5705ab3525f02682078e9f8c61eca74` |
| 21 | `theorem` | [isIntegral_iff_irreducibleSpace_and_isReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/isintegral-iff-irreduciblespace-and-isreduced--c4ed49fb4bb9c8f443355357.md) | 263 | `result-track:c4ed49fb4bb9c8f44335535766b85c4f0869ee82b0b2d4af89cdf8c02e1d053e` |
| 22 | `theorem` | [isIntegral_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/isintegral-of-isopenimmersion--0f9fec3ea631cce5205e9a55.md) | 268 | `result-track:0f9fec3ea631cce5205e9a556c0bcb1503d72a8e5c17ec9837a52fcece7b2620` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/instance--45b779feaee0a838b8eeb329.md) | 280 | `declaration-track:45b779feaee0a838b8eeb329c82f99c0d9bc4a2203f5bd23a97af6827cf6ec13` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/instance--c08597c97d67e6aa77eab681.md) | 283 | `declaration-track:c08597c97d67e6aa77eab6811212506a35cfcf81d03de169653912dad1c00481` |
| 25 | `theorem` | [affine_isIntegral_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/affine-isintegral-iff--f4ce438c2e0c352e3749b147.md) | 286 | `result-track:f4ce438c2e0c352e3749b14774d1ee2280bb5e2c7646c333bbdef11c4ed82288` |
| 26 | `theorem` | [isIntegral_of_isAffine_of_isDomain](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/isintegral-of-isaffine-of-isdomain--c802b07612d39f156d3142cc.md) | 291 | `result-track:c802b07612d39f156d3142ccb843bf750fc7ee6fbaac2e7cebdfeefd04e4a9f6` |
| 27 | `theorem` | [map_injective_of_isIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/declarations/map-injective-of-isintegral--c8cd9aa3c14d9550c4455943.md) | 295 | `result-track:c8cd9aa3c14d9550c445594354c5a31c92ba4ef4f4939d39099a6be02dadf077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
