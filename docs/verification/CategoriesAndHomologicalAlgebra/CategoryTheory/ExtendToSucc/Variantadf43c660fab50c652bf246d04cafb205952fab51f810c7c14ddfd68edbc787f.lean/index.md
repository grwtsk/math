# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtendToSucc.Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "730a42b41c6792d3493613d857a37c52ad6f5a3f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `730a42b41c6792d3493613d857a37c52ad6f5a3f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.Iteration.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/obj--6d46b2eec30d7b8089f58905.md) | 39 | `declaration-track:6d46b2eec30d7b8089f58905ba2da4126fc6b2c45f9bf9c4d7e73b78b86d7eea` |
| 2 | `lemma` | [obj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/obj-eq--d1bf54c9b69d04b01d2dd8de.md) | 42 | `result-track:d1bf54c9b69d04b01d2dd8deb7395b21363d957b780b285f397f75f360e762e0` |
| 3 | `def` | [objIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/objiso--e8ba888b4832f9ab2442ecf1.md) | 46 | `declaration-track:e8ba888b4832f9ab2442ecf130c0680d5bf96a8d42d14d9dfffea51425456285` |
| 4 | `lemma` | [obj_succ_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/obj-succ-eq--8252fca216ae7752d97e77aa.md) | 51 | `result-track:8252fca216ae7752d97e77aa1ff2c542167d6195cbc456c4d96dc1f74f4e0a20` |
| 5 | `def` | [objSuccIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/objsucciso--3ff538d7b521b56ad052684d.md) | 55 | `declaration-track:3ff538d7b521b56ad052684d418b8bdb4fcf2effef82d8cf45d74dce12aab8ad` |
| 6 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/map--0cefdc671b10a735df8b59fc.md) | 62 | `declaration-track:0cefdc671b10a735df8b59fcbcdbea81448a32ed45d8b2d4305a14295f7b5ac5` |
| 7 | `lemma` | [map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/map-eq--3bf569ab232e20a5eb53ae15.md) | 78 | `result-track:3bf569ab232e20a5eb53ae15033cda9ce3e5bfce743f2ffeda70a7067f7acd91` |
| 8 | `lemma` | [map_self_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/map-self-succ--16a71be381ef1fe62f034395.md) | 84 | `result-track:16a71be381ef1fe62f0343953aa7a1c311a6f16ecd7e3879832b138d36f9a346` |
| 9 | `lemma` | [map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/map-id--f16dbd9af0afb06e4ed881f4.md) | 92 | `result-track:f16dbd9af0afb06e4ed881f4ada71d08159230c6ad1f0de0bd779c45bf869864` |
| 10 | `lemma` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/map-comp--aa8e717d26dcff3c98a331b2.md) | 101 | `result-track:aa8e717d26dcff3c98a331b2cd8bbd9d9313b3629c29b67f767e56e0133cc674` |
| 11 | `def` | [extendToSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/extendtosucc--6ed433dc491258e7e144e869.md) | 123 | `declaration-track:6ed433dc491258e7e144e8697c5cadbbd401dbb5d64d03a8778b7855d9e4ea98` |
| 12 | `lemma` | [extendToSucc_obj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/extendtosucc-obj-eq--ee2579653973d66b6e1a5ee1.md) | 129 | `result-track:ee2579653973d66b6e1a5ee18aba51caa39dfe3ed61a63458a2e49db44ede4cd` |
| 13 | `def` | [extendToSuccObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/extendtosuccobjiso--2d4428fd84c7fa1fc18209e3.md) | 134 | `declaration-track:2d4428fd84c7fa1fc18209e3c03fab75634ded513c858ee286e0ab99d48c116e` |
| 14 | `lemma` | [extendToSucc_obj_succ_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/extendtosucc-obj-succ-eq--e2ce6d0ce64ce9d128ff4281.md) | 138 | `result-track:e2ce6d0ce64ce9d128ff428170308dc055c9fe310cc41152cd8d4c42e4006ade` |
| 15 | `def` | [extendToSuccObjSuccIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/extendtosuccobjsucciso--523095c0a365395cfba53509.md) | 143 | `declaration-track:523095c0a365395cfba5350931318285f409e8540996fdd47c945d04b2b65128` |
| 16 | `lemma` | [extendToSuccObjIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/extendtosuccobjiso-hom-naturality--67079d43e0be142825ba0eeb.md) | 148 | `result-track:67079d43e0be142825ba0eeb3bd8e0f74de3b41490f189f473bba2ec4008dfb6` |
| 17 | `def` | [extendToSuccRestrictionLEIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/extendtosuccrestrictionleiso--5e48d184c835f7b246a1216d.md) | 158 | `declaration-track:5e48d184c835f7b246a1216d57384a1d2f6a5c5776a2c5255462d4c75e99b537` |
| 18 | `lemma` | [extendToSucc_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/extendtosucc-map--5eeabd8bc462c1a4aff0b138.md) | 164 | `result-track:5eeabd8bc462c1a4aff0b13823a11bd7c45045e94cd9f837ec1ed7e7cfcc90c5` |
| 19 | `lemma` | [extendToSucc_map_le_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/extendtosucc-map-le-succ--3372ba2666c5c5725d96fbb5.md) | 171 | `result-track:3372ba2666c5c5725d96fbb524627b739016797a9ff781151eda8665c923e38a` |
| 20 | `lemma` | [arrowMap_extendToSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/arrowmap-extendtosucc--619f468731d551c3caaa08ef.md) | 177 | `result-track:619f468731d551c3caaa08eff5e1f0aaee9e84b36ae98772aa9b6d7d91b4326f` |
| 21 | `lemma` | [arrowSucc_extendToSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantadf43c660fab50c652bf246d04cafb205952fab51f810c7c14ddfd68edbc787f.lean/declarations/arrowsucc-extendtosucc--6b83cd99ac0422b1177770be.md) | 183 | `result-track:6b83cd99ac0422b1177770beafff500a41c427cf9d6058ff3df09912113797c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
