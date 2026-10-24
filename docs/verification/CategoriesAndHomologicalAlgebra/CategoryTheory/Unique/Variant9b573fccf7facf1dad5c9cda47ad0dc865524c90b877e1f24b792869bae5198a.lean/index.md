# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unique.Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "197b40c52f2c4cba291352a9cc07fa9a4ba91832",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `197b40c52f2c4cba291352a9cc07fa9a4ba91832`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftAdjointUniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/leftadjointuniq--42cb157303b63801b50eda1b.md) | 40 | `declaration-track:42cb157303b63801b50eda1b2a288c12fa7cd5f48128ccb079506c7c90d7527a` |
| 2 | `theorem` | [homEquiv_leftAdjointUniq_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/homequiv-leftadjointuniq-hom-app--a85962e7f295277fe17ce240.md) | 43 | `result-track:a85962e7f295277fe17ce2403f5ab47b6ba5c79ee0305499e83b8213fda7e8ad` |
| 3 | `theorem` | [unit_leftAdjointUniq_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/unit-leftadjointuniq-hom--cdf9ca06869eb2cd1af2388f.md) | 48 | `result-track:cdf9ca06869eb2cd1af2388fbb58f839e91de1e394e05697bf775200e46623f6` |
| 4 | `theorem` | [unit_leftAdjointUniq_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/unit-leftadjointuniq-hom-app--fcaac716733233bc2814f2bf.md) | 55 | `result-track:fcaac716733233bc2814f2bf0e101ec6d0b55e72d14d509e955edf930b4dce0c` |
| 5 | `theorem` | [leftAdjointUniq_hom_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/leftadjointuniq-hom-counit--71206357e69a19b677013397.md) | 61 | `result-track:71206357e69a19b677013397e724fed742e8181bb805c52cbd14a0c334e66887` |
| 6 | `theorem` | [leftAdjointUniq_hom_app_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/leftadjointuniq-hom-app-counit--c86ea7a3123cfe475d101bc0.md) | 72 | `result-track:c86ea7a3123cfe475d101bc020e4298806308e82205eca8c49f76c0f11d07e29` |
| 7 | `theorem` | [leftAdjointUniq_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/leftadjointuniq-inv-app--9cebf7a59753cd889d7670a8.md) | 78 | `result-track:9cebf7a59753cd889d7670a84aff2de5ef4904a82ba0ad279150456d88ba783c` |
| 8 | `theorem` | [leftAdjointUniq_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/leftadjointuniq-trans--47b0553277c7643b59bd7cba.md) | 83 | `result-track:47b0553277c7643b59bd7cba96050c4df7e17b7b75ad25dee9023614770275a1` |
| 9 | `theorem` | [leftAdjointUniq_trans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/leftadjointuniq-trans-app--d53f2bc51ff1026441130a12.md) | 90 | `result-track:d53f2bc51ff1026441130a1251aa154ba42e81b6f0e96ab7ba80752e6ba9de14` |
| 10 | `theorem` | [leftAdjointUniq_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/leftadjointuniq-refl--ee8698f5c9ff3034323f3ddd.md) | 98 | `result-track:ee8698f5c9ff3034323f3dddfcaf8c23fd30153b4696f381a248c1655ac1897b` |
| 11 | `def` | [rightAdjointUniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/rightadjointuniq--f91be17bb2df387890cd8b18.md) | 103 | `declaration-track:f91be17bb2df387890cd8b181017d7743eaa10be5740255192433915734cb79f` |
| 12 | `theorem` | [homEquiv_symm_rightAdjointUniq_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/homequiv-symm-rightadjointuniq-hom-app--d0872e2242c6954da8dd42e0.md) | 106 | `result-track:d0872e2242c6954da8dd42e03273d0148c36bac3b295f119a061d79cd6a2995e` |
| 13 | `theorem` | [unit_rightAdjointUniq_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/unit-rightadjointuniq-hom-app--8e8bc809bbd547e81e059cea.md) | 112 | `result-track:8e8bc809bbd547e81e059cea7629aeec802190ec89b9921d618eb9299a3ee1a2` |
| 14 | `theorem` | [unit_rightAdjointUniq_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/unit-rightadjointuniq-hom--ac0205a647f9090adda3d2e7.md) | 121 | `result-track:ac0205a647f9090adda3d2e7690fd44c74b5b16ea40fe50f7d29eae4f3945ff3` |
| 15 | `theorem` | [rightAdjointUniq_hom_app_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/rightadjointuniq-hom-app-counit--58b7f5f14cb68f441727918e.md) | 127 | `result-track:58b7f5f14cb68f441727918eebec9064ad984fac49b4271e67be44845decf5f4` |
| 16 | `theorem` | [rightAdjointUniq_hom_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/rightadjointuniq-hom-counit--a284c7e10caeaacbe72b5b81.md) | 133 | `result-track:a284c7e10caeaacbe72b5b81fe8faa97832fb62d1fd43a2e8d08e790d643e57c` |
| 17 | `theorem` | [rightAdjointUniq_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/rightadjointuniq-inv-app--565accb60272d67ca0f9b7c1.md) | 138 | `result-track:565accb60272d67ca0f9b7c148105420868fb14895a10727e83a98580094aa21` |
| 18 | `theorem` | [rightAdjointUniq_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/rightadjointuniq-trans--b4af8e9f3a3192af815d1e8f.md) | 143 | `result-track:b4af8e9f3a3192af815d1e8f77932be257b2dcf3ef7df5a0cf5dd21682c4152f` |
| 19 | `theorem` | [rightAdjointUniq_trans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/rightadjointuniq-trans-app--cc32d782260761ac79be26a0.md) | 150 | `result-track:cc32d782260761ac79be26a000a78aca61501702736bcbcdc48b233eabcc7c3d` |
| 20 | `theorem` | [rightAdjointUniq_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant9b573fccf7facf1dad5c9cda47ad0dc865524c90b877e1f24b792869bae5198a.lean/declarations/rightadjointuniq-refl--44051e039cfcec4213b4320d.md) | 159 | `result-track:44051e039cfcec4213b4320d09b6088ab2d6c3c74a2580d432f9ba397f88890f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
