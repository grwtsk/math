# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Immersion.Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32bac392ced9f8f130bc8cf5cb4b71fd074a8f59",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32bac392ced9f8f130bc8cf5cb4b71fd074a8f59`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Preimmersion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Separated` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/isimmersion--b80471a97b02d32cef7edf7f.md) | 45 | `declaration-track:b80471a97b02d32cef7edf7fe325b81bbc9c3b34ad1b72195dade325bf4323ae` |
| 2 | `lemma` | [Scheme.Hom.isLocallyClosed_range](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/scheme-hom-islocallyclosed-range--0071887a156a75a20a3524aa.md) | 48 | `result-track:0071887a156a75a20a3524aacd3b752c8078e1b561057a0c6ef31852c51a5cad` |
| 3 | `def` | [Scheme.Hom.coborderRange](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/scheme-hom-coborderrange--8d2ebb00a24962e83ce272d8.md) | 56 | `declaration-track:8d2ebb00a24962e83ce272d81e76fd51395321a647945b7ec5e31ff851639667` |
| 4 | `def` | [Scheme.Hom.liftCoborder](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/scheme-hom-liftcoborder--ecb4b791a45ecb5133d4afc6.md) | 64 | `declaration-track:ecb4b791a45ecb5133d4afc61dad7b02154df4d0d3f5eecbc7348908e42fe5af` |
| 5 | `lemma` | [Scheme.Hom.liftCoborder_ι](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/scheme-hom-liftcoborder--e279bf127a28793283e4267c.md) | 72 | `result-track:e279bf127a28793283e4267c6e1e28e72204084cfad36ce73883078dd0877076` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/instance--470543a73afff9704d62352b.md) | 76 | `declaration-track:470543a73afff9704d62352b1c8da1138bc5b2effa2389c8e6903fc27ea67fc8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/instance--73d53d94ef435feabbdb2e4f.md) | 86 | `declaration-track:73d53d94ef435feabbdb2e4f5a034a182c65fab29a34c96341c8b2fb1196bfd4` |
| 8 | `lemma` | [isImmersion_eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/isimmersion-eq-inf--761cd56c428b2995645afc83.md) | 90 | `result-track:761cd56c428b2995645afc832e22d5167f4c9b59544ef2d1e0e88af973c5a633` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/instance--7db7531201b5fea77aa8129f.md) | 96 | `declaration-track:7db7531201b5fea77aa8129f679a5391f4e8ea69d669d4e1c414219b70d8b6ce` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/instance--d76f4d5639979ee045cdb111.md) | 116 | `declaration-track:d76f4d5639979ee045cdb111999d4ea2861e77928ced1bef5d21b94bd2eb37a2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/instance--0dd2961cdb8e526df20bd201.md) | 119 | `declaration-track:0dd2961cdb8e526df20bd20165cf876743a70f0efd269ce1bee118deb5bdd1c1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/instance--045a47b407ac8b0a125d5538.md) | 122 | `declaration-track:045a47b407ac8b0a125d55384517f59a6ae8eaa5d6e702211985bcef8545f233` |
| 13 | `instance` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/comp--ebd5c467850bca12b835a423.md) | 129 | `declaration-track:ebd5c467850bca12b835a42329122a7d8116647ec550738ef61d04eb2ef5773a` |
| 14 | `lemma` | [isImmersion_iff_exists](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/isimmersion-iff-exists--b1bd67c4f0284c749757ecdd.md) | 138 | `result-track:b1bd67c4f0284c749757ecdd59f37a30dc4461b70db7c519146e84cd9ccfe8a4` |
| 15 | `theorem` | [of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/of-comp--b18956c45a9d00cf69cc2395.md) | 143 | `result-track:b18956c45a9d00cf69cc23959f6cdcdd813edfba6f2308274a02f462207e1809` |
| 16 | `theorem` | [comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/comp-iff--f718d875b3704c91dfa38ad3.md) | 151 | `result-track:f718d875b3704c91dfa38ad31b7e0cdd2d775a5ebaff9feeacfec02639b2cfbc` |
| 17 | `instance` | [isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/isstableunderbasechange--c866cbdf16293c9d0268f3bd.md) | 155 | `declaration-track:c866cbdf16293c9d0268f3bdf7d8b666aeccdf571547adf6998fdedbd815a84d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/instance--2be2b8ab15147e4617c8d879.md) | 172 | `declaration-track:2be2b8ab15147e4617c8d879ec250489ecfbcd2d4b45d9dd6be3db2332632c54` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/instance--72f6f8d95eeaa5db9b95e8c5.md) | 183 | `declaration-track:72f6f8d95eeaa5db9b95e8c559c6c67cb15e30689a720c639e4ed0f4d8626b80` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/declarations/instance--4b60cac713e2064542526016.md) | 188 | `declaration-track:4b60cac713e2064542526016d4afdefc8e9b0e47d8e80c16aa96c8d16432f038` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
