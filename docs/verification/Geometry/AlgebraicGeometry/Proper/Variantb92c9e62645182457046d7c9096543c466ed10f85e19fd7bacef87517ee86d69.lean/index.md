# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Proper.Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b54ff9171c00515c43985dd7cfe733e5a63033d0",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b54ff9171c00515c43985dd7cfe733e5a63033d0`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean.json)

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
| 1 | `class` | [IsProper](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/isproper--24795c4bf1710f7953a0d4c2.md) | 42 | `declaration-track:24795c4bf1710f7953a0d4c28b69ed6254c099b22dbf2b7d8b2c935472163aa0` |
| 2 | `lemma` | [isProper_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/isproper-eq--41137f032149d1b19e5aab37.md) | 44 | `result-track:41137f032149d1b19e5aab376c0ee65649537d1159d303e5f195f457cd61485e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--a36343b800c9670769e22aeb.md) | 53 | `declaration-track:a36343b800c9670769e22aebada796701e511310b6749d17f12534ece8c63c37` |
| 4 | `instance` | [stableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/stableundercomposition--541b0c93e3a3ff7d7c9d15f9.md) | 58 | `declaration-track:541b0c93e3a3ff7d7c9d15f9046f7f06f80e202c18d532dc92b633a41bd1a3b6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--67933e9e5999f0e848e76887.md) | 63 | `declaration-track:67933e9e5999f0e848e76887ad5466a60c959ce1e5e51bc3441606318de5c83f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--143debeb0ed2870aa58a724e.md) | 67 | `declaration-track:143debeb0ed2870aa58a724eb3e9eb235c4c016f090bdf1a38676adc7f8bfd96` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--144d695d2837bb38962252e5.md) | 69 | `declaration-track:144d695d2837bb38962252e55b5a0a496aee42f6ea17e75f2d1a666dc51c4a26` |
| 8 | `instance` | [isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/isstableunderbasechange--9f19682872d51ae5cff36c37.md) | 72 | `declaration-track:9f19682872d51ae5cff36c376b6b3e6e78babdc7ec3e677916e54d164dd58fe8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--b6fc07e917d76bafca085271.md) | 77 | `declaration-track:b6fc07e917d76bafca0852716b69c0d938e65a2686940a6bfab8b6a7c0c6f492` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--435011fcc7c8b1e1340fe868.md) | 81 | `declaration-track:435011fcc7c8b1e1340fe868b0d0b8d4fbfbec3eaff90cad747be57f39fa0fc6` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--d6ca1b6ed775728a6456da12.md) | 83 | `declaration-track:d6ca1b6ed775728a6456da12d6c90163ca4e18b1edf4956c20a5b44cb7025049` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--925f12200e2e696803d8fca9.md) | 85 | `declaration-track:925f12200e2e696803d8fca9ad3a5caefd8342201f7cbd104f3ec902cc43ce6e` |
| 13 | `lemma` | [IsFinite.eq_isProper_inf_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/isfinite-eq-isproper-inf-isaffinehom--4c54da47f88165ec4c610885.md) | 90 | `result-track:4c54da47f88165ec4c610885219769c4689e7cddaef7b20edc9c9006d7c256e1` |
| 14 | `lemma` | [IsFinite.iff_isProper_and_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/isfinite-iff-isproper-and-isaffinehom--4d0c89c52386441b4ebba864.md) | 98 | `result-track:4d0c89c52386441b4ebba864d197c3cba5b9108f19c05678c49cd592f12f3c07` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--7e4c55f84ba0d19778caa64c.md) | 103 | `declaration-track:7e4c55f84ba0d19778caa64c6de7a5dcc9c77eb9711af15aa9acce2cbd5146d0` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--13eb9fad5675988d17f598b4.md) | 106 | `declaration-track:13eb9fad5675988d17f598b4cc110dc6fe2005ae354ec992f9e0ece7871eeafe` |
| 17 | `lemma` | [UniversallyClosed.of_comp_of_isSeparated](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/universallyclosed-of-comp-of-isseparated--c7bb045a7fd2660a00ae702b.md) | 111 | `result-track:c7bb045a7fd2660a00ae702b460c88a5de713e49de4a03b71f505d41a91e7f01` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--657eb484f415cd655a40dbb5.md) | 115 | `declaration-track:657eb484f415cd655a40dbb5e97638594147a254a545f4af48fe617801b38c2e` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/instance--5ba2b712598e9760cc36854a.md) | 119 | `declaration-track:5ba2b712598e9760cc36854a44d60974d660e08d2ca89d758d46f7e70381c03e` |
| 20 | `lemma` | [IsProper.of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/isproper-of-comp--d700af582f257533561c9c8e.md) | 124 | `result-track:d700af582f257533561c9c8ef407fdd6146883a1904167cb400a3eafac74a3aa` |
| 21 | `lemma` | [IsProper.comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/isproper-comp-iff--8135b7177afcf8a74bc5ec17.md) | 127 | `result-track:8135b7177afcf8a74bc5ec171e3964d638b4ec5cd8608f6184001c16f79d68dd` |
| 22 | `theorem` | [isIntegral_appTop_of_universallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/isintegral-apptop-of-universallyclosed--8b470412f3488ad61d2f2c8c.md) | 138 | `result-track:8b470412f3488ad61d2f2c8c27da8698c0bc971a85b5fb0bb717e246690c8cd3` |
| 23 | `theorem` | [isField_of_universallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/isfield-of-universallyclosed--b156b4e5134aacda51f841e6.md) | 150 | `result-track:b156b4e5134aacda51f841e68e7ec8498f8bbd6c1a41066a86c179ff1792003e` |
| 24 | `theorem` | [finite_appTop_of_universallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/declarations/finite-apptop-of-universallyclosed--3d5b84ffd2d024478a25cde0.md) | 161 | `result-track:3d5b84ffd2d024478a25cde090c14c52d1567327764143ce89c56c9bd4012890` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
