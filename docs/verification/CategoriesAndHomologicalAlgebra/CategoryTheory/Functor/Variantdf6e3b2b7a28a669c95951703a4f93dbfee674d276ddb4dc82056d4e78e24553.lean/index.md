# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72a7dcbb4019c0cebe55d7f39308ad02735b86f5",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72a7dcbb4019c0cebe55d7f39308ad02735b86f5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Triangulated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ComposableArrows` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.CommShift` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapTriangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/maptriangle--c115940ba28671c1ffc2b3f6.md) | 45 | `declaration-track:c115940ba28671c1ffc2b3f66f9d40ebc7c0e454e9bc20fcbc4888aa1055d1e7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/instance--4b1adf915a030800f4df26bc.md) | 59 | `declaration-track:4b1adf915a030800f4df26bc2974bd37ffd9962bb8740ec5ecb989b3e37c89c7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/instance--c873f454df03773e4c89a047.md) | 66 | `declaration-track:c873f454df03773e4c89a047548daf46c936fb62d10000aeb1d53612ef875fb3` |
| 4 | `def` | [mapTriangleCommShiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/maptrianglecommshiftiso--a01c2fd45a131dcf2375d137.md) | 85 | `declaration-track:a01c2fd45a131dcf2375d1377a5999e443fc01c13bbfd067bcca17cd5d81d52f` |
| 5 | `theorem` | [mapTriangleCommShiftIso_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/maptrianglecommshiftiso-add--811178f33e086e26b7ce2d12.md) | 104 | `result-track:811178f33e086e26b7ce2d1228aed56823593496b47e52cf1f3f0b1b55cba5a0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/instance--e8842a06b4ab3ddc420c6841.md) | 112 | `declaration-track:e8842a06b4ab3ddc420c68418057e55d6795d5fe4964defad25da0a3d29f7541` |
| 7 | `def` | [mapTriangleRotateIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/maptrianglerotateiso--10cac7547197c6fe0d269b63.md) | 119 | `declaration-track:10cac7547197c6fe0d269b63a94cc0ae5a59a8c99b9296141cf7b78b541e21a0` |
| 8 | `def` | [mapTriangleInvRotateIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/maptriangleinvrotateiso--685f0b647d78845d273a514d.md) | 129 | `declaration-track:685f0b647d78845d273a514ddbef33e433320db7b3dc5949f2b84ef7cc33082f` |
| 9 | `def` | [mapTriangleIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/maptriangleidiso--ad96341b0e692ea2d473a8dc.md) | 140 | `declaration-track:ad96341b0e692ea2d473a8dce6ab8f8ed3f65c46323eef12c129d73c3147d68d` |
| 10 | `def` | [mapTriangleCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/maptrianglecompiso--26c636ad6ed247e58739e92f.md) | 145 | `declaration-track:26c636ad6ed247e58739e92f2fab325232d4820d93d81a2e4a2e36854e6a8dba` |
| 11 | `def` | [mapTriangleIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/maptriangleiso--d6695fcd190eb7516cbd1da9.md) | 152 | `declaration-track:d6695fcd190eb7516cbd1da9477bbc0a68a88f7db443cab9fab7bb0d33164fc7` |
| 12 | `class` | [IsTriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/istriangulated--bf95985ba681618b80843e0c.md) | 170 | `declaration-track:bf95985ba681618b80843e0cb054ebed3ba761d0f24f52c3aa2e8262386116fd` |
| 13 | `lemma` | [map_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/map-distinguished--ec1aa87c700c5fd5b10a686a.md) | 173 | `result-track:ec1aa87c700c5fd5b10a686adea60185332384396c6a33912612cbc2a88e9a12` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/instance--bfc8362192b67b763aae9a77.md) | 181 | `declaration-track:bfc8362192b67b763aae9a779c7a5428ab13a404d2c26358a5a499290ab46f4b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/instance--526d85cbba1bebefa902ef96.md) | 192 | `declaration-track:526d85cbba1bebefa902ef96d1cd8c0190047ac39ce4f9b835237c0312712ce5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/instance--64f1048d3e13fdf153b878a0.md) | 218 | `declaration-track:64f1048d3e13fdf153b878a0263f088dc6d5d08498f61b608ad325ffbaadcd64` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/instance--d3e1980bf77a8fb8bd60e9b8.md) | 221 | `declaration-track:d3e1980bf77a8fb8bd60e9b869339f5fb353a30cbab4d3d4edb775066c9175d8` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/instance--c62845cf0f1ad6ff2694ed48.md) | 225 | `declaration-track:c62845cf0f1ad6ff2694ed484ace4abfddf737f4c753f007870012e954f9da00` |
| 19 | `lemma` | [isTriangulated_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/istriangulated-of-iso--c006f92552d7403d133a3c46.md) | 232 | `result-track:c006f92552d7403d133a3c4690e087e74c97f6a26b0325d37859fa37104d4e57` |
| 20 | `lemma` | [isTriangulated_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/istriangulated-iff-of-iso--58e8848acc5a9b7889bba6f3.md) | 237 | `result-track:58e8848acc5a9b7889bba6f3715d998e725cd583468df8f9837127a6aea07834` |
| 21 | `lemma` | [mem_mapTriangle_essImage_of_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/mem-maptriangle-essimage-of-distinguished--f6aa23e83e19a950e4d3993a.md) | 246 | `result-track:f6aa23e83e19a950e4d3993aaff5902a0ec887b328fd89e159730e469c123869` |
| 22 | `lemma` | [isTriangulated_of_precomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/istriangulated-of-precomp--a24cf06e6ca82d88fffd2610.md) | 256 | `result-track:a24cf06e6ca82d88fffd261007323420bb702c74d7a1edb79ea539d11bd7bc41` |
| 23 | `lemma` | [isTriangulated_of_precomp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/istriangulated-of-precomp-iso--aecadd71bf5b27a7da6165a0.md) | 265 | `result-track:aecadd71bf5b27a7da6165a0231ada1406db7fa03df9f099e27ea3ff83219f83` |
| 24 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/map--b0b6dc25cae5e5336b5cb3b9.md) | 292 | `declaration-track:b0b6dc25cae5e5336b5cb3b964c05ce3a268679c9a20c99d17bfd64721989f3a` |
| 25 | `lemma` | [isTriangulated_of_essSurj_mapComposableArrows_two](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/declarations/istriangulated-of-esssurj-mapcomposablearrows-two--02f91e194c707d2fcab6876a.md) | 311 | `result-track:02f91e194c707d2fcab6876a159ec2a4d8ffe31c683c908c997bd4485ade7aae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
