# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94bea212340b01cdde85464312e04782578303b3",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94bea212340b01cdde85464312e04782578303b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FreeMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/freemonoidalcategory--954a25c6d6240f2577819aaf.md) | 47 | `declaration-track:954a25c6d6240f2577819aaf2f8f2aadd7984cd601fa868bd510c486ab1dd210` |
| 2 | `inductive` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/hom--df1d2c2036f26609185bcb70.md) | 62 | `declaration-track:df1d2c2036f26609185bcb70d62a73f16a9eeec6e5e6a4507a02de9a5fd4ce19` |
| 3 | `inductive` | [HomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/homequiv--7d4a2a779c51dbfe4b16b519.md) | 79 | `declaration-track:7d4a2a779c51dbfe4b16b5194181f4bc07442ecfa1fbd15afc5cf8ad166c8f96` |
| 4 | `def` | [setoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/setoidhom--107a5c845662928ebf8fe8d7.md) | 128 | `declaration-track:107a5c845662928ebf8fe8d748a3255ceb515f0edcba3de021246b313fae0476` |
| 5 | `instance` | [categoryFreeMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/categoryfreemonoidalcategory--b19ba6a93eed6b0cf6b9d0a3.md) | 139 | `declaration-track:b19ba6a93eed6b0cf6b9d0a37c9ff5f5a3aeca22630bd9778daaabeefe6d10b8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/instance--8664a39705aa8be84ff43b2f.md) | 153 | `declaration-track:8664a39705aa8be84ff43b2f47b79c0bfb1eb9d6a0a646e241567fcdd48e665c` |
| 7 | `theorem` | [mk_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/mk-comp--5c4d096ccaf9c3956d0eb36a.md) | 186 | `result-track:5c4d096ccaf9c3956d0eb36a39105febd95645403e49c12d361a279c890b9dcd` |
| 8 | `theorem` | [mk_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/mk-tensor--4ba8d5a75c87b06b52222647.md) | 191 | `result-track:4ba8d5a75c87b06b522226471f9d2abf40ee44c9d6acd37bbe5493a8d4ccf76a` |
| 9 | `theorem` | [mk_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/mk-whiskerleft--2b029bdf75c94b38f08bb797.md) | 196 | `result-track:2b029bdf75c94b38f08bb7978f5f0f90e00838fe043fe05f352f9ec1ae0ed844` |
| 10 | `theorem` | [mk_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/mk-whiskerright--f41005f8dd1fb589dd8bab17.md) | 201 | `result-track:f41005f8dd1fb589dd8bab176a75d462b3bf3dec5d8ad86263b6bbb24c85ecd7` |
| 11 | `theorem` | [mk_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/mk-id--467e59a36e6fab3b8dd3cff2.md) | 206 | `result-track:467e59a36e6fab3b8dd3cff2a1e463eb4cf2253c3ebd454fb83e2aa242b4a7b4` |
| 12 | `theorem` | [mk_α_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/mk-hom--7ae782675db816e4cd0531d7.md) | 210 | `result-track:7ae782675db816e4cd0531d73c6305c462f5cebfde1f4ed7af4620b8a6f33505` |
| 13 | `theorem` | [mk_α_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/mk-inv--41bf9113344b1f8c93f46a77.md) | 214 | `result-track:41bf9113344b1f8c93f46a774d04a9fe5dd92f3915941da88ef12d8e84c805c8` |
| 14 | `theorem` | [mk_ρ_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/mk-hom--58c583132434fe56e04a0c93.md) | 218 | `result-track:58c583132434fe56e04a0c93bd07d48c777c4d26e07211ceed47a8675da6e52a` |
| 15 | `theorem` | [mk_ρ_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/mk-inv--1052a1e067830c9282af26f8.md) | 222 | `result-track:1052a1e067830c9282af26f8e30eaba99b68d6fe3debbdc6e2840ad8d47730cd` |
| 16 | `theorem` | [mk_l_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/mk-l-hom--0f13f2a88534fa089387325f.md) | 226 | `result-track:0f13f2a88534fa089387325f92a67f3f1e4869d4652ee0691c3e85e78a8be454` |
| 17 | `theorem` | [mk_l_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/mk-l-inv--fd0f85827acff043aa76dfe5.md) | 230 | `result-track:fd0f85827acff043aa76dfe57d4b65c7c36147a51654c14fbbb3fc32e9bd0ec4` |
| 18 | `theorem` | [tensor_eq_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/tensor-eq-tensor--2a31cb5cec6f4aba50eff119.md) | 234 | `result-track:2a31cb5cec6f4aba50eff119134dc87e43061abd6ca99b71555b77c9a8f02436` |
| 19 | `theorem` | [unit_eq_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/unit-eq-unit--4b5487bab922623c6f0e5dfe.md) | 238 | `result-track:4b5487bab922623c6f0e5dfe427b94f9409e094552f00285099bd4041c666a01` |
| 20 | `abbrev` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/hommk--8f5b7570ccbfe2b4ceec6f8e.md) | 245 | `declaration-track:8f5b7570ccbfe2b4ceec6f8e16918ff8ecc4e093341707371a1a0f2658505ace` |
| 21 | `theorem` | [Hom.inductionOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/hom-inductionon--a270e31e3955c092bf2e42e2.md) | 247 | `result-track:a270e31e3955c092bf2e42e2542824ef5bd98b8fdb651c23c78d345862593840` |
| 22 | `def` | [projectObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/projectobj--54533785ab8f473c47f41632.md) | 284 | `declaration-track:54533785ab8f473c47f416323c90ee924e9adafcf371f516bbe964a734566df4` |
| 23 | `def` | [projectMapAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/projectmapaux--3f67baeb715c5f25c8fe5796.md) | 297 | `declaration-track:3f67baeb715c5f25c8fe5796eed4da4f718b8abb9e9293ce9bae98d20f519082` |
| 24 | `def` | [projectMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/projectmap--e67aa5c167f555db2a5258a7.md) | 312 | `declaration-track:e67aa5c167f555db2a5258a7020c2931b470410d508488dfe1a5be514fcdacea` |
| 25 | `def` | [project](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/project--2a49afff32ebf9564c6a46ad.md) | 361 | `declaration-track:2a49afff32ebf9564c6a46ad3416f8d0c78f9e64aeba34276e93f73645722aa5` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/declarations/instance--258ce4b048880bcc88fbb3c1.md) | 366 | `declaration-track:258ce4b048880bcc88fbb3c1973855c668ff78a9896b7faf353dcd19e6882a59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
