# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorExtension.Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60bf91b98dccf80cd9960c8887048ecc1da5f403",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60bf91b98dccf80cd9960c8887048ecc1da5f403`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Karoubi` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natTrans_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/nattrans-eq--6769326be71a05b3e6d98971.md) | 41 | `result-track:6769326be71a05b3e6d98971e9b7e3d357192ca637a2a8d598219a9dba2bc0b3` |
| 2 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/obj--b3311c89b6a4ec50bcf3a409.md) | 53 | `declaration-track:b3311c89b6a4ec50bcf3a4094e5da7270bd7ac6db80764dabb28587a7fbd649f` |
| 3 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/map--3ecbfb84b6ebfaefd775983a.md) | 62 | `declaration-track:3ecbfb84b6ebfaefd775983acb55fb39491a3ec434937df15bbc402e2f56ca60` |
| 4 | `def` | [functorExtension₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/functorextension--316b217fd76ecf44dbca6e77.md) | 88 | `declaration-track:316b217fd76ecf44dbca6e775dc027784e8e2e5c3fcfd7462a0d989a283d1cad` |
| 5 | `def` | [functorExtension₁CompWhiskeringLeftToKaroubiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/functorextension-compwhiskeringlefttokaroubiiso--7898679efd03e5b3659162af.md) | 107 | `declaration-track:7898679efd03e5b3659162af70b4c3035562e8f3b513cc43a8f71c34e5739d15` |
| 6 | `def` | [KaroubiUniversal₁.counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/karoubiuniversal-counitiso--16e36c8512e8ce4fae6f66b2.md) | 118 | `declaration-track:16e36c8512e8ce4fae6f66b279f7a57e745591a5cba44b8bbebea858b986feba` |
| 7 | `def` | [karoubiUniversal₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/karoubiuniversal--daf46b5a548abe70582345ca.md) | 158 | `declaration-track:daf46b5a548abe70582345cad27a7cb90de72b923e13d1654deff6b72980e6a5` |
| 8 | `def` | [functorExtension₁Comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/functorextension-comp--0372d26d62cf4973a2e3c5ec.md) | 170 | `declaration-track:0372d26d62cf4973a2e3c5ece2b03d9dbd5de757e350c2eb3a4c59fb5b1ee71a` |
| 9 | `def` | [functorExtension₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/functorextension--0eaec016bc4af3fbd277a784.md) | 177 | `declaration-track:0eaec016bc4af3fbd277a784a0047a6f77e06d089af1225598f1a529aecf5511` |
| 10 | `def` | [functorExtension₂CompWhiskeringLeftToKaroubiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/functorextension-compwhiskeringlefttokaroubiiso--14024634f5921c8e60acb705.md) | 183 | `declaration-track:14024634f5921c8e60acb705984fd1b5a0e5c1f2c5a0333f43cac923c195b899` |
| 11 | `def` | [karoubiUniversal₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/karoubiuniversal--bc851dc0c46df5c66ff1d4e2.md) | 201 | `declaration-track:bc851dc0c46df5c66ff1d4e2ca122a91ff31f893498cca73800244d0bbb605e5` |
| 12 | `theorem` | [karoubiUniversal₂_functor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/karoubiuniversal-functor-eq--57ab88d2a3ff091ea3e80b7e.md) | 204 | `result-track:57ab88d2a3ff091ea3e80b7ef4bd9ecc5871bd16340e361fe16621f26c3eff07` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/instance--5c57a524c724a26f88522b73.md) | 207 | `declaration-track:5c57a524c724a26f88522b73eaaf733f78b0aa7ceb4a37042c833aff8813f78f` |
| 14 | `def` | [functorExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/functorextension--e8128c04681aac5fa096d82e.md) | 214 | `declaration-track:e8128c04681aac5fa096d82ea390614c7eee70737f6c20d320c6618982c93e98` |
| 15 | `def` | [karoubiUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/karoubiuniversal--231689ab0a85bc2f548ba52b.md) | 220 | `declaration-track:231689ab0a85bc2f548ba52b9e54ca4e69f11088ecfa51adef903ba47f7ad00a` |
| 16 | `theorem` | [karoubiUniversal_functor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/karoubiuniversal-functor-eq--f8725b6b3baf364ed856ee92.md) | 223 | `result-track:f8725b6b3baf364ed856ee920e5feaaf86c3f5f9cd104d3bb3f44f2810bc60e3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/instance--652ed50bf534bdf09807f727.md) | 226 | `declaration-track:652ed50bf534bdf09807f727714b7fd71b7224eaa6d8328a944b2d8d31221c6f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/instance--e1412ab5a858968db15e8be3.md) | 230 | `declaration-track:e1412ab5a858968db15e8be3b76805b9ea04af18ff7862946960cde034e2037a` |
| 19 | `theorem` | [whiskeringLeft_obj_preimage_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/declarations/whiskeringleft-obj-preimage-app--4495ac45cf29bde2a31196f2.md) | 242 | `result-track:4495ac45cf29bde2a31196f2a4f5360505883bb2aacb9e681ae46624cca40788` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
