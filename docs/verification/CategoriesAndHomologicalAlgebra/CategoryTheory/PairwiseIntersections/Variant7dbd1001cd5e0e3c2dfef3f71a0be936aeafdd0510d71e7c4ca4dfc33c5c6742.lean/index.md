# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PairwiseIntersections.Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d63d45e14597b62f4cd0321c105724a3aedd6213",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d63d45e14597b62f4cd0321c105724a3aedd6213`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.SheafCondition.OpensLeCover` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Pairwise` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.BinaryProducts` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/issheafpairwiseintersections--76da7c9044d77213752e4571.md) | 68 | `declaration-track:76da7c9044d77213752e4571a4ff334908d329f4a0d3ad2f774b76397bf6b611` |
| 2 | `def` | [IsSheafPreservesLimitPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/issheafpreserveslimitpairwiseintersections--3807b622ea724520d5f3d16d.md) | 81 | `declaration-track:3807b622ea724520d5f3d16d834c7b708c0928e1bf4e3e52fc9a9f2fac631d5b` |
| 3 | `def` | [pairwiseToOpensLeCoverObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/pairwisetoopenslecoverobj--362b736b61377266c4b6bec4.md) | 98 | `declaration-track:362b736b61377266c4b6bec42886612811a390f428b67c7076f3ae90a1713eba` |
| 4 | `def` | [pairwiseToOpensLeCoverMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/pairwisetoopenslecovermap--efc48a8c5ba115183b57606e.md) | 109 | `declaration-track:efc48a8c5ba115183b57606e7c1399c77ab66a7f5df29518f7e7baa2fea5a738` |
| 5 | `def` | [pairwiseToOpensLeCover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/pairwisetoopenslecover--efcd3945712d8614c32744c0.md) | 122 | `declaration-track:efcd3945712d8614c32744c077c1ac79fb3ff8d60db9be8ee8a9b1a92db72d11` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/instance--633274471c8677fb3cc3c3e9.md) | 128 | `declaration-track:633274471c8677fb3cc3c3e951d0cecca5f6e3140204ed1333fcf0fd05c2ae4e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/instance--8b57eb62a53e22a40aeea399.md) | 136 | `declaration-track:8b57eb62a53e22a40aeea399cdace23a84ed5f5ce1a429e1ca8fb342adc495c5` |
| 8 | `def` | [pairwiseDiagramIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/pairwisediagramiso--3c04a6fb4d562c14be98133e.md) | 228 | `declaration-track:3c04a6fb4d562c14be98133e288c92c7d59094153483eb49a7bc78ac63c1cbdc` |
| 9 | `def` | [pairwiseCoconeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/pairwisecoconeiso--e0a5ccefb6bd4926a8d3871c.md) | 240 | `declaration-track:e0a5ccefb6bd4926a8d3871ca546913f4a8934f51ec5e7050fb6149aab860ef8` |
| 10 | `theorem` | [isSheafOpensLeCover_iff_isSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/issheafopenslecover-iff-issheafpairwiseintersections--ebcb703f2c45560b16cb72a4.md) | 259 | `result-track:ebcb703f2c45560b16cb72a49cb1d6fde1e34a82c6ac7ab22268780b1d09df47` |
| 11 | `theorem` | [isSheaf_iff_isSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/issheaf-iff-issheafpairwiseintersections--5e658f7df4399d8c9ece49c0.md) | 288 | `result-track:5e658f7df4399d8c9ece49c050622e4f070fb8afa4abcd0261c0b2aa3c3ab843` |
| 12 | `theorem` | [isSheaf_iff_isSheafPreservesLimitPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/issheaf-iff-issheafpreserveslimitpairwiseintersections--d101f2941fa9a85787190307.md) | 298 | `result-track:d101f2941fa9a857871903073292bfbac206936dcc2979f8a57877a69153a833` |
| 13 | `def` | [interUnionPullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/interunionpullbackcone--2bea5dfd8985fc2482fc1611.md) | 320 | `declaration-track:2bea5dfd8985fc2482fc1611d0c2c32499b46def3bac5491fa5898304f28155c` |
| 14 | `theorem` | [interUnionPullbackCone_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/interunionpullbackcone-pt--2219a827bf53745f83e36372.md) | 330 | `result-track:2219a827bf53745f83e3637299bcabe9079e842bfea23cb575caa8a60522b8d4` |
| 15 | `theorem` | [interUnionPullbackCone_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/interunionpullbackcone-fst--c6edcb9f60d75e767db971e2.md) | 336 | `result-track:c6edcb9f60d75e767db971e25a962af00a38aa59066dda372abdc2b6793a01c7` |
| 16 | `theorem` | [interUnionPullbackCone_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/interunionpullbackcone-snd--5a3642eefedf990f6f9ad536.md) | 343 | `result-track:5a3642eefedf990f6f9ad536aadbab6e649d8a6bde9bdf7f3848bd43da197a69` |
| 17 | `def` | [interUnionPullbackConeLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/interunionpullbackconelift--8019d3270f042f9fb247c9d1.md) | 356 | `declaration-track:8019d3270f042f9fb247c9d18dad0c3fce1407842b01ec1d3dc6e87546dd5beb` |
| 18 | `theorem` | [interUnionPullbackConeLift_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/interunionpullbackconelift-left--0f60f80138bbf1e4a727fda9.md) | 391 | `result-track:0f60f80138bbf1e4a727fda920fc4106c77b79c716e701b4b07a165d0c5b2ef3` |
| 19 | `theorem` | [interUnionPullbackConeLift_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/interunionpullbackconelift-right--c318f2ec8c8c2fc7765ffe59.md) | 401 | `result-track:c318f2ec8c8c2fc7765ffe593ff416a333829ccb5ceb7d29cfbec908d24ba8ab` |
| 20 | `def` | [isLimitPullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/islimitpullbackcone--229694250f778892a0b06711.md) | 412 | `declaration-track:229694250f778892a0b067110bccc4da8043f785ee0c05660077270589c142bb` |
| 21 | `def` | [isProductOfDisjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/isproductofdisjoint--d57057dc18747871ca17e3a6.md) | 453 | `declaration-track:d57057dc18747871ca17e3a6a299464a17294974be94038f332ecadd70488788` |
| 22 | `def` | [objSupIsoProdEqLocus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/objsupisoprodeqlocus--4b3b3f6bac1489db5462530e.md) | 462 | `declaration-track:4b3b3f6bac1489db5462530e6e2e95d4a9f798fbcbb81826e36752ba4db04625` |
| 23 | `theorem` | [objSupIsoProdEqLocus_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/objsupisoprodeqlocus-hom-fst--3913ebfb2d7e4f82f757c4cf.md) | 474 | `result-track:3913ebfb2d7e4f82f757c4cff82031f2bcc8ecbe0fa8f7fa301b8a828f08c66a` |
| 24 | `theorem` | [objSupIsoProdEqLocus_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/objsupisoprodeqlocus-hom-snd--fd853a6374fdb545173f3384.md) | 483 | `result-track:fd853a6374fdb545173f3384e394cce2561d014aea64b8e6bc5eef22a3e1afc4` |
| 25 | `theorem` | [objSupIsoProdEqLocus_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/objsupisoprodeqlocus-inv-fst--4d3e8d26ac5acf6459018a7d.md) | 492 | `result-track:4d3e8d26ac5acf6459018a7d50793a823909ba93dbbc294fcd9afb3208e89e75` |
| 26 | `theorem` | [objSupIsoProdEqLocus_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/declarations/objsupisoprodeqlocus-inv-snd--41516aacea74b57bb31bd4fe.md) | 501 | `result-track:41516aacea74b57bb31bd4fe015a7691e239cf58034bfc30420c588771f7d490` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
