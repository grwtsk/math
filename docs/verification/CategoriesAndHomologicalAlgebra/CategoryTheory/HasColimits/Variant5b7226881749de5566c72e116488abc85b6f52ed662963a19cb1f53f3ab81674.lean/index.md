# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasColimits.Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "914371331cf3bb85c507374ad3bc475c0152e7d6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `914371331cf3bb85c507374ad3bc475c0152e7d6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PresheafedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Limits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_id_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/map-id-c-app--4b47b3baab497487cabdc72a.md) | 58 | `result-track:4b47b3baab497487cabdc72a2658ac5fce5713aaf518a06f69128fff6fbc886b` |
| 2 | `theorem` | [map_comp_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/map-comp-c-app--8651abeeac9964f6ea9e7b7a.md) | 69 | `result-track:8651abeeac9964f6ea9e7b7ac7ebba167bd28488f9bb827fc7d558d81f0220a6` |
| 3 | `def` | [componentwiseDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/componentwisediagram--e82f4192785b7e8745251535.md) | 88 | `declaration-track:e82f4192785b7e8745251535fd009732c03881d7a59ac8f9c456a8be7e2808bb` |
| 4 | `def` | [pushforwardDiagramToColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/pushforwarddiagramtocolimit--2728067611860ac0d451fc6f.md) | 119 | `declaration-track:2728067611860ac0d451fc6fb4f0fbf27fafa35eff8c1c84a3eab15e0dbca35b` |
| 5 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/colimit--fa5361ca18c132adeeae07e7.md) | 181 | `declaration-track:fa5361ca18c132adeeae07e70783e886d4eaf7e90e1179bbb5d96e120932622c` |
| 6 | `theorem` | [colimit_carrier](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/colimit-carrier--949824986c647a47583c3d42.md) | 188 | `result-track:949824986c647a47583c3d42be4c33a9d58c8e08fbbc434428a3116aebf4d834` |
| 7 | `theorem` | [colimit_presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/colimit-presheaf--3e0bc3faccda48c5ca530057.md) | 195 | `result-track:3e0bc3faccda48c5ca530057d40f95cfa6169ebc3731326c6eaf6f2f601a9613` |
| 8 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/colimitcocone--1576025af076614612b1a7f1.md) | 204 | `declaration-track:1576025af076614612b1a7f17e40c3e89b828450de6c27bd06161f6ff7aaee97` |
| 9 | `def` | [descCApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/desccapp--2a8360a591ef2ba66dcc0bb4.md) | 234 | `declaration-track:2a8360a591ef2ba66dcc0bb4082b95520ae76b6276469eebaf109865facc6461` |
| 10 | `theorem` | [desc_c_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/desc-c-naturality--115e64c39e9a56decd58f9c7.md) | 265 | `result-track:115e64c39e9a56decd58f9c761a7a5c08af0780c7e6094e92aa9bc7bdb010376` |
| 11 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/desc--89ddae7e27415325a314bf09.md) | 291 | `declaration-track:89ddae7e27415325a314bf0932af17d6231fa6540c3c1c03d0c0444714d6b462` |
| 12 | `theorem` | [desc_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/desc-fac--623ab75413fa522cce6a7423.md) | 299 | `result-track:623ab75413fa522cce6a74237bcf0aef82cc98d6dc960e2314d7c4befb483fd7` |
| 13 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/colimitcoconeiscolimit--52b01d0ca3240ad94db2d45b.md) | 319 | `declaration-track:52b01d0ca3240ad94db2d45badf2623b019cb7fec3254633145897878d02efe2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/instance--e347ae6fcf9dccf722cf0a2f.md) | 349 | `declaration-track:e347ae6fcf9dccf722cf0a2f8d732e5a2665e22137e411f18bfe3d6983e1666f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/instance--9cb4eede7b537db6aed4e3e6.md) | 352 | `declaration-track:9cb4eede7b537db6aed4e3e6d6dca8d018ea8e387a9d2948cd5e576581d525bf` |
| 16 | `instance` | [instHasColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/insthascolimits--55b63f04f3421fd8919ce366.md) | 362 | `declaration-track:55b63f04f3421fd8919ce36627f5a4f520073d1c55adde79ba430d402b6ad8c0` |
| 17 | `instance` | [forgetPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/forgetpreservescolimits--caed233a1cef85db75c8a4c1.md) | 368 | `declaration-track:caed233a1cef85db75c8a4c13731d2d65387902989e03df2ab99b123fdfa7434` |
| 18 | `def` | [colimitPresheafObjIsoComponentwiseLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/colimitpresheafobjisocomponentwiselimit--ff9424ac68282a27971fc1da.md) | 383 | `declaration-track:ff9424ac68282a27971fc1daa24a8178d2cee82dcfe67ce4f15d69520b87c1ca` |
| 19 | `theorem` | [colimitPresheafObjIsoComponentwiseLimit_inv_ι_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/colimitpresheafobjisocomponentwiselimit-inv-app--4f4640dba8531a7408ee145f.md) | 412 | `result-track:4f4640dba8531a7408ee145fae82092858fad30d16f15c01639183a92e8c1a1b` |
| 20 | `theorem` | [colimitPresheafObjIsoComponentwiseLimit_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/declarations/colimitpresheafobjisocomponentwiselimit-hom--36181216d385e7cda1fc0a30.md) | 436 | `result-track:36181216d385e7cda1fc0a3098e81dc63b2e4eaaecb2f73d6dd9989205caa533` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
