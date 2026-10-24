# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UniqueGluing.Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e83aa53504d92a9a19edee4fa2edde64b8a2a6e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e83aa53504d92a9a19edee4fa2edde64b8a2a6e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Forget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Types` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Sheaf` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/iscompatible--518385463a8d0dcf675ed832.md) | 61 | `declaration-track:518385463a8d0dcf675ed832ee9cee9251f028aee024c7e3fdc85d15003345f1` |
| 2 | `def` | [IsGluing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/isgluing--df159785232122e00e38e9ca.md) | 69 | `declaration-track:df159785232122e00e38e9cab1ef4ee3dd6e719d67f4e5fc2c643e0e1c6f9a64` |
| 3 | `def` | [IsSheafUniqueGluing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/issheafuniquegluing--4d769e5fe9c7524efe2580b8.md) | 82 | `declaration-track:4d769e5fe9c7524efe2580b8ace186cdb8ad5f5175c425da0f76aeb803ec6014` |
| 4 | `def` | [piOpensIsoSectionsFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/piopensisosectionsfamily--bc5561fc68165e5fa52a493d.md) | 96 | `declaration-track:bc5561fc68165e5fa52a493d82d6260cb37eab69f1acc202033f553e65d124a1` |
| 5 | `theorem` | [piOpensIsoSectionsFamily_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/piopensisosectionsfamily-apply--366ec1af57a5578b0fd4b8a3.md) | 102 | `result-track:366ec1af57a5578b0fd4b8a39ff3cf12c03c22291400d39c65413a1f77874fc1` |
| 6 | `theorem` | [compatible_iff_leftRes_eq_rightRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/compatible-iff-leftres-eq-rightres--da1ed50f54fc85437ca96a85.md) | 109 | `result-track:da1ed50f54fc85437ca96a85b792f4ead23a18233e4226acd5cff1bc4588fc30` |
| 7 | `theorem` | [isGluing_iff_eq_res](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/isgluing-iff-eq-res--62f18d12baa3533c8b92e921.md) | 133 | `result-track:62f18d12baa3533c8b92e9211c0ee0e2e605691f153c8667d2ed39ce4ca2e6e7` |
| 8 | `theorem` | [isSheaf_of_isSheafUniqueGluing_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/issheaf-of-issheafuniquegluing-types--ad5e3bbd7d91a3354fa2b0ca.md) | 151 | `result-track:ad5e3bbd7d91a3354fa2b0ca803d583dfde1ab91e86a35e2b8d6930e7e5ece94` |
| 9 | `theorem` | [isSheafUniqueGluing_of_isSheaf_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/issheafuniquegluing-of-issheaf-types--2f66cf672b44779f0d8b9897.md) | 180 | `result-track:2f66cf672b44779f0d8b9897fbc5c5594f12bc7656dc10f017fc038d463e5fcb` |
| 10 | `theorem` | [isSheaf_iff_isSheafUniqueGluing_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/issheaf-iff-issheafuniquegluing-types--d66c955196c527846479595b.md) | 203 | `result-track:d66c955196c527846479595bf41aecdaa2334b8cc135338d2cfc75fe3eb70801` |
| 11 | `theorem` | [isSheaf_iff_isSheafUniqueGluing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/issheaf-iff-issheafuniquegluing--9492ce7f37acda02dd248cee.md) | 222 | `result-track:9492ce7f37acda02dd248ceec364537e2c65b67317c57541406aa975af12a415` |
| 12 | `theorem` | [existsUnique_gluing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/existsunique-gluing--efe224bfe3321aea54eb25c7.md) | 250 | `result-track:efe224bfe3321aea54eb25c7816283b8d42f5707fd088b79d37f963f5bea26c3` |
| 13 | `theorem` | [existsUnique_gluing'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/existsunique-gluing--13eaad53895ba40bb3eedb91.md) | 259 | `result-track:13eaad53895ba40bb3eedb91b8de415c56e1bdf11a7e702fcb3610d51b4ae1b1` |
| 14 | `theorem` | [eq_of_locally_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/eq-of-locally-eq--1d573e62bfa7b97e1400f8ef.md) | 277 | `result-track:1d573e62bfa7b97e1400f8ef680d3ec29fef99147d29b829ce743e200149d272` |
| 15 | `theorem` | [eq_of_locally_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/eq-of-locally-eq--2994af12c5ee5f29c0fbe085.md) | 299 | `result-track:2994af12c5ee5f29c0fbe085dbb41cdd4af17e35df08815b15f76ea7ab413bde` |
| 16 | `theorem` | [eq_of_locally_eq₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/declarations/eq-of-locally-eq--7bf31bfe3c22018504373f7b.md) | 313 | `result-track:7bf31bfe3c22018504373f7b773b023392b53ac3ed6700f6791f114808d75cd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
