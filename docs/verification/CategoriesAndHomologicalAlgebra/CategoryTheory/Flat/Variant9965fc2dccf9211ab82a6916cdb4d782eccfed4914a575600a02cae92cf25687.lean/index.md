# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Flat.Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b521f581f772a04e2784c49e1adb42d472d18588",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b521f581f772a04e2784c49e1adb42d472d18588`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Connected` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConeCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Bicones` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Comma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Opposites` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RepresentablyFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablyflat--2cc45e1f5b5b923e1c07b848.md) | 64 | `declaration-track:2cc45e1f5b5b923e1c07b8482019136e7114cb967820d56a2fc6bb39a26d4f88` |
| 2 | `class` | [RepresentablyCoflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablycoflat--5e387ef8c5093cac214a0f40.md) | 69 | `declaration-track:5e387ef8c5093cac214a0f4003e7620f63e486ad5ebf4ed7c9ce8e0134a2ad18` |
| 3 | `instance` | [RepresentablyFlat.of_isRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablyflat-of-isrightadjoint--ce6ab21be92b7f4974ec29d5.md) | 76 | `declaration-track:ce6ab21be92b7f4974ec29d5bc6db27d616d7270a7cc8b2e7e5bcc0fbc13ae76` |
| 4 | `instance` | [RepresentablyCoflat.of_isLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablycoflat-of-isleftadjoint--617bbf932332523573433159.md) | 79 | `declaration-track:617bbf93233252357343315942ba1b1b6351a31fef9b598991c229c7412b594b` |
| 5 | `theorem` | [RepresentablyFlat.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablyflat-id--5c379f80c793061cce8e7d7a.md) | 82 | `result-track:5c379f80c793061cce8e7d7a9fb877f270c7ed2be00327726e09e8d4801daac9` |
| 6 | `theorem` | [RepresentablyCoflat.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablycoflat-id--e3e9d114cc3b5ecdd77c6eaf.md) | 84 | `result-track:e3e9d114cc3b5ecdd77c6eaf167d6cbab601893db41a0e0f7e14b483def7e81a` |
| 7 | `instance` | [RepresentablyFlat.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablyflat-comp--6ba15cc21958484871b263c1.md) | 89 | `declaration-track:6ba15cc21958484871b263c1f297869bf6f2fc64b4f0d3e625a431c3afcfa0aa` |
| 8 | `theorem` | [RepresentablyFlat.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablyflat-of-iso--bcab6682bbfa4453a8fdace5.md) | 108 | `result-track:bcab6682bbfa4453a8fdace5e7122aa019dc85c403044987bca446f5b6886cc3` |
| 9 | `theorem` | [RepresentablyCoflat.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablycoflat-of-iso--7d3356ae93c2d4e8be199c55.md) | 112 | `result-track:7d3356ae93c2d4e8be199c55cfe793c4592425a786c5b1c82de7ef7da76d5c9b` |
| 10 | `theorem` | [representablyCoflat_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablycoflat-op-iff--d0e288ee72f7454127fabe53.md) | 118 | `result-track:d0e288ee72f7454127fabe531af8af4904de4ffd1af8969c82e5e8f96634ff9d` |
| 11 | `theorem` | [representablyFlat_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablyflat-op-iff--469f5087cd0a5f5c95aa286a.md) | 127 | `result-track:469f5087cd0a5f5c95aa286afa09f006e3644759c0396e400f9d296e6d53e7aa` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/instance--3423945ab8c9cfa97b9a00b3.md) | 136 | `declaration-track:3423945ab8c9cfa97b9a00b37ae5f3dd54cabc32a12d6e32b1d4111aea3854ad` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/instance--a692244301700add4db3f7f8.md) | 139 | `declaration-track:a692244301700add4db3f7f85aac40b9fb7cd4e624e5bcf3175b9220ee33f179` |
| 14 | `instance` | [RepresentablyCoflat.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/representablycoflat-comp--b8db8ab88cefc2305bde40fa.md) | 142 | `declaration-track:b8db8ab88cefc2305bde40faec86e6ea75854bfb34f457f7cbc3fc9868af6eac` |
| 15 | `lemma` | [final_of_representablyFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/final-of-representablyflat--8838e73b55d8e23e6acb3aa0.md) | 146 | `result-track:8838e73b55d8e23e6acb3aa02a6437591732ed3ec63e1f55edb635970ce25177` |
| 16 | `lemma` | [initial_of_representablyCoflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/initial-of-representablycoflat--b952b2063b91a616e7fbc452.md) | 149 | `result-track:b952b2063b91a616e7fbc452ed5227c7b9bdc295d9feb7a2d4a1d44ffe85f653` |
| 17 | `theorem` | [flat_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/flat-of-preservesfinitelimits--ffe5b2e6c65a53fed2d51bf9.md) | 158 | `result-track:ffe5b2e6c65a53fed2d51bf9d154b0741e49e66f0e79e27d94565895e4cde299` |
| 18 | `theorem` | [coflat_of_preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/coflat-of-preservesfinitecolimits--16f8109434c9ef7672ce5381.md) | 169 | `result-track:16f8109434c9ef7672ce538188688e93f0511878e23db2f5e3f174b9699bb3b7` |
| 19 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/lift--da2325c4f0b9e374f6526861.md) | 185 | `declaration-track:da2325c4f0b9e374f65268618f32228bb574537153bac9a4e74ba50b07b84b59` |
| 20 | `theorem` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/fac--a55f134c21e6af01d897a43d.md) | 195 | `result-track:a55f134c21e6af01d897a43d894831cea26989cfa53fec901532bfd33ae55fc4` |
| 21 | `theorem` | [uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/uniq--49b0d642c590459e9c9fd090.md) | 198 | `result-track:49b0d642c590459e9c9fd0900dc7ee9fd0fe06c228d54b437fa941e376a7f8fc` |
| 22 | `lemma` | [preservesFiniteLimits_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/preservesfinitelimits-of-flat--c4f8346c5ab579f68013879e.md) | 253 | `result-track:c4f8346c5ab579f68013879eb75eea3173f48cef8db087fc38378f185aa2b11b` |
| 23 | `lemma` | [preservesFiniteColimits_of_coflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/preservesfinitecolimits-of-coflat--4eec3f9f873f665834bfe890.md) | 269 | `result-track:4eec3f9f873f665834bfe890cf79a0670fb3185d30a1f65464dc2569f1f7b6c9` |
| 24 | `lemma` | [preservesFiniteLimits_iff_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/preservesfinitelimits-iff-flat--a5f50a577e0dcf370052667a.md) | 277 | `result-track:a5f50a577e0dcf370052667afd3d9e583bf319adb70404763592c23b9b2d2f1a` |
| 25 | `lemma` | [preservesFiniteColimits_iff_coflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/preservesfinitecolimits-iff-coflat--939cd1ecb94f037524bd57ba.md) | 283 | `result-track:939cd1ecb94f037524bd57ba3edb75f640ecd49551a5bcd43e6a3777107e43f0` |
| 26 | `def` | [lanEvaluationIsoColim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/lanevaluationisocolim--090b86b7f79c62d278719b34.md) | 297 | `declaration-track:090b86b7f79c62d278719b34717cc68332d6197ac63e7748ff4deac492549761` |
| 27 | `instance` | [lan_preservesFiniteLimits_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/lan-preservesfinitelimits-of-flat--b729d4141711c9eefcbff1a1.md) | 324 | `declaration-track:b729d4141711c9eefcbff1a1cdbdd7f13597139f9eb57da399f157b60a785619` |
| 28 | `instance` | [lan_flat_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/lan-flat-of-flat--ea197a7dafc2f99c7eec916a.md) | 334 | `declaration-track:ea197a7dafc2f99c7eec916ae852d92188e8e8f3b723f47aa7a05c3e7c098964` |
| 29 | `instance` | [lan_preservesFiniteLimits_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/lan-preservesfinitelimits-of-preservesfinitelimits--22fae5437976c6d988ca94ab.md) | 340 | `declaration-track:22fae5437976c6d988ca94ab1b14cecb5b064adb683a5125266c3055caf571bd` |
| 30 | `theorem` | [flat_iff_lan_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/flat-iff-lan-flat--696f3da5945f0146c65cc7c4.md) | 345 | `result-track:696f3da5945f0146c65cc7c43edbdeeb791b48ef40497ced7e7b0729373f9542` |
| 31 | `lemma` | [preservesFiniteLimits_iff_lan_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean/declarations/preservesfinitelimits-iff-lan-preservesfinitelimits--6d8bd2b2036ad0e292928b0d.md) | 357 | `result-track:6d8bd2b2036ad0e292928b0d285ad24b5513eaa2ed8160d9335d853d4e203af3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
