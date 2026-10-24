# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresheafedSpace.Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3514ef5438f8828077f2f7ad120dec714c84954c",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3514ef5438f8828077f2f7ad120dec714c84954c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Presheaf` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/presheafedspace--e0f6c3757adeb2735a7bdebb.md) | 48 | `declaration-track:e0f6c3757adeb2735a7bdebb48b3810cb0cf79308a6c3ba16df496213a9f2cf5` |
| 2 | `instance` | [coeCarrier](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/coecarrier--61cb93c070dfea624d4244d7.md) | 56 | `declaration-track:61cb93c070dfea624d4244d76faf41eab01b763353bc8f4b5cd900e833294de6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/instance--e6ec9b48ba01b6995edfcdc1.md) | 60 | `declaration-track:e6ec9b48ba01b6995edfcdc1e7d52113d0a5348be846b943e812af2cef74a549` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/instance--313ba2130a82b968faee3e37.md) | 62 | `declaration-track:313ba2130a82b968faee3e37a77a209420d7291406c6c9055b1fa47e7a468bfb` |
| 5 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/const--5893de37c74aa7411f9f6474.md) | 66 | `declaration-track:5893de37c74aa7411f9f64744949f69b231511db555f982cee91b46ff212e4e7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/instance--84be499915c8191f39e17f87.md) | 70 | `declaration-track:84be499915c8191f39e17f877cc754afade4895b5dd31effbfea459bde3eeb66` |
| 7 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/hom--480e03fd41e2db4ed4d6828e.md) | 76 | `declaration-track:480e03fd41e2db4ed4d6828e9d72b196bd76576d9a925f95313c5de5c8991b13` |
| 8 | `theorem` | [Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/hom-ext--2c622a678dd79af90232bfb1.md) | 81 | `result-track:2c622a678dd79af90232bfb1b255c3ddec9ca610f4af226cc4ba5f98b96aa7b4` |
| 9 | `theorem` | [hext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/hext--ca5d70b34f2e1e1ad6bd2606.md) | 93 | `result-track:ca5d70b34f2e1e1ad6bd260692df25a15f6fe3fd643503fb6d329ab883c0a7ad` |
| 10 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/id--45aff6445faa12bd52af5c43.md) | 100 | `declaration-track:45aff6445faa12bd52af5c4362a6d95bc1eb3bff85fd731aa4fea0ba85a1b6c7` |
| 11 | `instance` | [homInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/hominhabited--297f3ed64bdcc7e75ec69cd9.md) | 104 | `declaration-track:297f3ed64bdcc7e75ec69cd93c638c4ecd0a275c23f335df85fc381fc1788b30` |
| 12 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/comp--acaac1503d142a4b0e9fb00e.md) | 108 | `declaration-track:acaac1503d142a4b0e9fb00e829801bf73de89eb04e7dbade1fa3023874e1a83` |
| 13 | `theorem` | [comp_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/comp-c--f6eef14bf20f033b53b7f02e.md) | 112 | `result-track:f6eef14bf20f033b53b7f02e96a564c744f7980ac901ca3b762721fda840a231` |
| 14 | `instance` | [categoryOfPresheafedSpaces](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/categoryofpresheafedspaces--6f52805ae891b34a0d1e07f9.md) | 124 | `declaration-track:6f52805ae891b34a0d1e07f9da11bcc17cad76d1905f521287fe49ca05e05b91` |
| 15 | `abbrev` | [Hom.toPshHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/hom-topshhom--5712bd503d1dfe365056934b.md) | 132 | `declaration-track:5712bd503d1dfe365056934bb35914ec927649584757babace6dc634ca6a8da0` |
| 16 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/ext--22e9ab8546048cce25695a50.md) | 135 | `result-track:22e9ab8546048cce25695a504b0772e7a65368ebec6dc8d70bc00d2f2781be67` |
| 17 | `theorem` | [id_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/id-base--2ec495b6042022b1709d004d.md) | 146 | `result-track:2ec495b6042022b1709d004d62f18e2379896917a01db3c8f132621073f68020` |
| 18 | `theorem` | [id_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/id-c--2a64a50e073ea867fbdac33d.md) | 149 | `result-track:2a64a50e073ea867fbdac33dade3f6041f8b818993f5952e9b68c18835cadc49` |
| 19 | `theorem` | [id_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/id-c-app--8abd45384ba3f416b4c5554f.md) | 154 | `result-track:8abd45384ba3f416b4c5554fb0f3e1530d0fe7c76e75ca97bbc8f13435ed82b7` |
| 20 | `theorem` | [comp_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/comp-base--af01fe64ee8f40fb258ee7cd.md) | 160 | `result-track:af01fe64ee8f40fb258ee7cd480d496e5b8db5d8b095acdb4dea919b68d2c452` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/instance--d3a883f55107af2264c94940.md) | 164 | `declaration-track:d3a883f55107af2264c949401b60bf1a7b192b64e40d40538ddc48cadab3b4bd` |
| 22 | `theorem` | [comp_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/comp-c-app--3b2f322d5150bdf7b832ac37.md) | 180 | `result-track:3b2f322d5150bdf7b832ac37ae2601711f78a8860dcb761c7252f15ca4fca765` |
| 23 | `theorem` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/congr-app--1bcc6d6cc385377c718b5186.md) | 184 | `result-track:1bcc6d6cc385377c718b518618ac7a99d8a13fa61b4fd27a0d98c3c96572c18e` |
| 24 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/forget--5b09cfa8742cee75e090ac7f.md) | 195 | `declaration-track:5b09cfa8742cee75e090ac7f729b712b311875bd4a1ef3d46b8b0f8fd9f0f47d` |
| 25 | `def` | [isoOfComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/isoofcomponents--311896b5f6518adae665a002.md) | 209 | `declaration-track:311896b5f6518adae665a002f44f1cbb81d4152f2786fc01fe5bdbd566f610ba` |
| 26 | `def` | [sheafIsoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/sheafisoofiso--3584b717d58111908a8e98fa.md) | 228 | `declaration-track:3584b717d58111908a8e98fa3eff018a611b5f101a49e84537baf83f34177a97` |
| 27 | `instance` | [base_isIso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/base-isiso-of-iso--39285981c3350ce75083e636.md) | 249 | `declaration-track:39285981c3350ce75083e63642e538737249f6e8cd3de808cc2c77616d1046be` |
| 28 | `instance` | [c_isIso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/c-isiso-of-iso--88b8b346becdf9b1daa8d43e.md) | 252 | `declaration-track:88b8b346becdf9b1daa8d43e1022a5c048c0dcda65518a51293ed87b2b57256d` |
| 29 | `theorem` | [isIso_of_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/isiso-of-components--b21223a8d847008732e6da7d.md) | 256 | `result-track:b21223a8d847008732e6da7df2276cf725bbc55d1ccba9d3db3985c6e1dd7f89` |
| 30 | `def` | [restrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/restrict--994bb52931396f97b3229025.md) | 266 | `declaration-track:994bb52931396f97b32290256e1dde2257265e62866c88b86ef7b56bebb8d1d7` |
| 31 | `def` | [ofRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/ofrestrict--71b27f9c750e9c285d4e23b9.md) | 274 | `declaration-track:71b27f9c750e9c285d4e23b910a5041268c3c86d76d196bed68c9e677ddfb118` |
| 32 | `instance` | [ofRestrict_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/ofrestrict-mono--c1c69b1fb459390cc3e3849b.md) | 284 | `declaration-track:c1c69b1fb459390cc3e3849b522dd9224b59888c872bd5d420e2183d64287dca` |
| 33 | `theorem` | [restrict_top_presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/restrict-top-presheaf--5f41abbde445667946ccbf41.md) | 312 | `result-track:5f41abbde445667946ccbf41d7390ca1bf44b609a4b75fd8c65fb85417d4fae5` |
| 34 | `theorem` | [ofRestrict_top_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/ofrestrict-top-c--a6efd48054b16d7fbfb943a7.md) | 319 | `result-track:a6efd48054b16d7fbfb943a7dda6d1ddbc5766c89019740e432034d1da17ac4a` |
| 35 | `def` | [toRestrictTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/torestricttop--672674b36fcab41788acdcea.md) | 339 | `declaration-track:672674b36fcab41788acdcea414b9be7f8d7fa0067d46f4f77fceafb3f83a70a` |
| 36 | `def` | [restrictTopIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/restricttopiso--f4ef1e8e390d39a50e623f20.md) | 346 | `declaration-track:f4ef1e8e390d39a50e623f2026f6402fc602d1fd5a73ccd061ac9a5d3743cda9` |
| 37 | `def` | [Γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/anonymous--08ade8864456f3f072e65eed.md) | 367 | `declaration-track:08ade8864456f3f072e65eed36e44af55cb14b89568303b464f8458abb347a7c` |
| 38 | `theorem` | [Γ_obj_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/obj-op--0ce69e88193d1ba087c76993.md) | 371 | `result-track:0ce69e88193d1ba087c76993e3f3e65a303e14dd05a558de47cba63bcb22d9ab` |
| 39 | `theorem` | [Γ_map_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/map-op--18d40fcae31ed7f813b68c0c.md) | 374 | `result-track:18d40fcae31ed7f813b68c0c444c7903f3cb2f8fcf672d3cf8bbec6c5223081e` |
| 40 | `def` | [mapPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/mappresheaf--caa4a89ff046dd033dfbd77b.md) | 393 | `declaration-track:caa4a89ff046dd033dfbd77b1c27797f6d9924da1cd4da25d264d2bba64252e9` |
| 41 | `theorem` | [mapPresheaf_obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/mappresheaf-obj-x--ec14aea0fb4631e6e99bda02.md) | 411 | `result-track:ec14aea0fb4631e6e99bda02cf2ccac463fd306564aa4a2ecf1fb82f004e3605` |
| 42 | `theorem` | [mapPresheaf_obj_presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/mappresheaf-obj-presheaf--b474bef00d8d60b7fc64c04d.md) | 416 | `result-track:b474bef00d8d60b7fc64c04d333f19a58e9c17e688b34409b051e84a6a9e39bd` |
| 43 | `theorem` | [mapPresheaf_map_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/mappresheaf-map-f--21a4f7a07116f021719af0ff.md) | 421 | `result-track:21a4f7a07116f021719af0ff962b67a711d024c0da3dc9b7af1dd8538ea5e5c8` |
| 44 | `theorem` | [mapPresheaf_map_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/mappresheaf-map-c--86589d39096f5abe6e98b851.md) | 426 | `result-track:86589d39096f5abe6e98b85115ee8bc8695aac1cd99a49d1d05eb0a5e16b1550` |
| 45 | `def` | [onPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/declarations/onpresheaf--fcc1b1e1576b387233b48e72.md) | 436 | `declaration-track:fcc1b1e1576b387233b48e7298bde53e0fa6b83a6f8666bda44a7effad91ffe4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
