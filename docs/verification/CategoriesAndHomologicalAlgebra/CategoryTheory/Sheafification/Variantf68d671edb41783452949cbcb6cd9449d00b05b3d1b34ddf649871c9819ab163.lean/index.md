# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheafification.Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29212fef07be0c914b61233a4462fe144f01163e",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29212fef07be0c914b61233a4462fe144f01163e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Unique` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasWeakSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/hasweaksheafify--a5743018ded3d7e0d02f4792.md) | 33 | `declaration-track:a5743018ded3d7e0d02f4792869ac9fd0b4bf5d75875f457ced9042d567dd08a` |
| 2 | `class` | [HasSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/hassheafify--8feeb892960d0c53145406c3.md) | 42 | `declaration-track:8feeb892960d0c53145406c3fef2f906e786cf8295f7207c3412c46176e31bc5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/instance--59254a8ed2792887ef5b51e2.md) | 46 | `declaration-track:59254a8ed2792887ef5b51e2b70f6ffba6636ab7a9c794f2bb7630e375e234c2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/instance--e51efab12f955ff12ccb0cda.md) | 50 | `declaration-track:e51efab12f955ff12ccb0cdae2869812e4911e842959ebb478aa1ed27e6c272b` |
| 5 | `theorem` | [HasSheafify.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/hassheafify-mk--2e4273422d9cc6ce1f7860e7.md) | 53 | `result-track:2e4273422d9cc6ce1f7860e7f83d02b26d0217614806d6be9a6a7b05c37f1eb3` |
| 6 | `def` | [presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/presheaftosheaf--a1292ea6a7897bc79401a5a8.md) | 62 | `declaration-track:a1292ea6a7897bc79401a5a8259efe684f6ab004d2cd4aaf40b6331582573396` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/instance--e6850af7e44ab914488a07e1.md) | 65 | `declaration-track:e6850af7e44ab914488a07e1c7e9487b26fd1b172077ce77956d5ad250125a8f` |
| 8 | `def` | [sheafificationAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafificationadjunction--1e470133af0f49eba12e3ac3.md) | 69 | `declaration-track:1e470133af0f49eba12e3ac35f2a10edc963b395ae23893c642be0a3d8900e37` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/instance--1d9b4a58cc9e24bf972c1ded.md) | 72 | `declaration-track:1d9b4a58cc9e24bf972c1dedaf2e738c50e967e94a06bb0a73adffb98bde9512` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/instance--3c667e7b166ac158b7554ddb.md) | 75 | `declaration-track:3c667e7b166ac158b7554ddb1aa74118c7f496da2a2417b25f23f1ffc5476441` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/instance--2b050d35cbe62f54118d97b5.md) | 79 | `declaration-track:2b050d35cbe62f54118d97b5722fd724f2eeed6ae0c8b5a49de16e0b28e344c7` |
| 12 | `abbrev` | [sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafify--5194b090fcd6d6b68ae7d9a4.md) | 87 | `declaration-track:5194b090fcd6d6b68ae7d9a450766b878c524d9901498f39f176adcb37eb6f47` |
| 13 | `abbrev` | [toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/tosheafify--f4d5099cf7098bc9d26dc47e.md) | 91 | `declaration-track:f4d5099cf7098bc9d26dc47e5bfd3d6e0208ee35354594bd0fa4c9a69c41cd61` |
| 14 | `theorem` | [sheafificationAdjunction_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafificationadjunction-unit-app--f65c5c69f3b158d2b995dc80.md) | 95 | `result-track:f65c5c69f3b158d2b995dc804a4d328baeb5a1d110beaa8f3342d31515aabd8a` |
| 15 | `abbrev` | [sheafifyMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafifymap--5e39fd550c3a1668849414a5.md) | 99 | `declaration-track:5e39fd550c3a1668849414a50644cd9c356a73e71d2da68ceb3e070c00c4efaf` |
| 16 | `theorem` | [sheafifyMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafifymap-id--49a6dd000de92927c4874b55.md) | 103 | `result-track:49a6dd000de92927c4874b552c946281dd4f94d804aa0d32779f773d71a446e1` |
| 17 | `theorem` | [sheafifyMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafifymap-comp--6a153109e48127b7d981bb3c.md) | 107 | `result-track:6a153109e48127b7d981bb3cf2fdd4f69ea230e727cc18f12879dcd23c53568c` |
| 18 | `theorem` | [toSheafify_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/tosheafify-naturality--66474222effdd0092cd6e652.md) | 112 | `result-track:66474222effdd0092cd6e6526ee6f8cbbe8d013e1bcae0c708d22f96a08473c3` |
| 19 | `abbrev` | [sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafification--1014a5e680ee49d3cf90bbfc.md) | 119 | `declaration-track:1014a5e680ee49d3cf90bbfcd13abd0be27a819d3290fadeb7482956f500a4a7` |
| 20 | `theorem` | [sheafification_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafification-obj--acbfe173dab40e3fcca1560e.md) | 122 | `result-track:acbfe173dab40e3fcca1560e2994d2fbd0a46e629bb93a0eb1102ab4b729776d` |
| 21 | `theorem` | [sheafification_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafification-map--9b899bcfd46bc528783c4c49.md) | 125 | `result-track:9b899bcfd46bc528783c4c4942b2cf0bf0742d87c89d999d6b7b144513591c45` |
| 22 | `abbrev` | [toSheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/tosheafification--dcb6fab5c82b0e457bc22255.md) | 130 | `declaration-track:dcb6fab5c82b0e457bc22255a142d8162d59ce46ca7f5d69d704b1f9fc4ee646` |
| 23 | `theorem` | [toSheafification_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/tosheafification-app--8115c050e953606acc69616d.md) | 133 | `result-track:8115c050e953606acc69616d82dd7c66399d0019b4d00b33d573513b13eedb7c` |
| 24 | `theorem` | [isIso_toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/isiso-tosheafify--23ef1f0d917b49a053ef4ac5.md) | 138 | `result-track:23ef1f0d917b49a053ef4ac518041526a4f5d547b6b51319bc3bdda723488638` |
| 25 | `def` | [isoSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/isosheafify--39b14a40e9f9c552ae90dd32.md) | 149 | `declaration-track:39b14a40e9f9c552ae90dd32a2a51319bfce71538b5b40b72652c367198a9947` |
| 26 | `theorem` | [isoSheafify_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/isosheafify-hom--49aeb8a6a8a879b2ee045cb5.md) | 154 | `result-track:49aeb8a6a8a879b2ee045cb51893381e906e8ac05863c807ce4753a26ff7866b` |
| 27 | `def` | [sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafifylift--9af6b84c6064374e7472f489.md) | 159 | `declaration-track:9af6b84c6064374e7472f489a071a068cbf2082324e1971f30c5406dacc6e821` |
| 28 | `theorem` | [sheafificationAdjunction_counit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafificationadjunction-counit-app-val--830ec453cdbdcdf160e1b534.md) | 164 | `result-track:830ec453cdbdcdf160e1b534607f2ac68671938500d37680f6df0b56867a58b5` |
| 29 | `theorem` | [toSheafify_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/tosheafify-sheafifylift--14f356d536fbebe1daa936a9.md) | 171 | `result-track:14f356d536fbebe1daa936a91aebfbcf40e770e0aa1cedb11bb6b58e3104dfcd` |
| 30 | `theorem` | [sheafifyLift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafifylift-unique--561e625fd1e3bf9808091579.md) | 181 | `result-track:561e625fd1e3bf9808091579ea7e548377c62db5877113269d4c41b432b3b5aa` |
| 31 | `theorem` | [isoSheafify_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/isosheafify-inv--c51ba88f23d93e3c771f7192.md) | 192 | `result-track:c51ba88f23d93e3c771f7192bd38dc79840c7c7bcaf12c95ceea1a467b9a5f9e` |
| 32 | `theorem` | [sheafify_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafify-hom-ext--3fb9eb6b0c2d9f55259d9453.md) | 197 | `result-track:3fb9eb6b0c2d9f55259d9453b14fb8b615200d36de101997959a2285e6d578f7` |
| 33 | `theorem` | [sheafifyMap_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafifymap-sheafifylift--078c538129c54b8e3d5985f9.md) | 203 | `result-track:078c538129c54b8e3d5985f99744985f8787c064a543a9a07010053081d593e5` |
| 34 | `def` | [sheafificationIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafificationiso--8d8b971a3e0c3c0171acae8b.md) | 213 | `declaration-track:8d8b971a3e0c3c0171acae8b3fe5095e0a1092dea9a9aff7a8b7ca0b00fb3281` |
| 35 | `instance` | [isIso_sheafificationAdjunction_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/isiso-sheafificationadjunction-counit--3decd0a0904da1ddfacd68a8.md) | 223 | `declaration-track:3decd0a0904da1ddfacd68a87b3750feab455521091651db838022172801aed6` |
| 36 | `instance` | [sheafification_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafification-reflective--90e08a5fb52fc4a88e75e814.md) | 227 | `declaration-track:90e08a5fb52fc4a88e75e81475f6112a1b49cd1fdda5d48a2b1bad8c5c415c44` |
| 37 | `def` | [sheafificationNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf68d671edb41783452949cbcb6cd9449d00b05b3d1b34ddf649871c9819ab163.lean/declarations/sheafificationnatiso--1282739e52e688b4f2848d81.md) | 234 | `declaration-track:1282739e52e688b4f2848d811cd61983bb7d94c04e55570cf8543ef5455bc4fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
