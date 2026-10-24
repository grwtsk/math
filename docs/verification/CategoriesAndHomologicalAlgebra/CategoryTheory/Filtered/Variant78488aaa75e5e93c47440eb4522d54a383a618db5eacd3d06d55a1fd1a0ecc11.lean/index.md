# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb1a1ebe34cdb18857edac7a3126ac497d6dad7b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb1a1ebe34cdb18857edac7a3126ac497d6dad7b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftToFinsetObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/lifttofinsetobj--8143eeafb62ea1ce51bb6b04.md) | 40 | `declaration-track:8143eeafb62ea1ce51bb6b04b8d83a4ca84c4df60cdb32304971639a09bde9e0` |
| 2 | `def` | [liftToFinsetColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/lifttofinsetcolimitcocone--dc9595841a3f2b90a6719092.md) | 49 | `declaration-track:dc9595841a3f2b90a67190922471bbf6809e632dd07a200e1e0579fe810f2fd7` |
| 3 | `def` | [liftToFinset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/lifttofinset--f88a51f56050009ebe63dbfe.md) | 77 | `declaration-track:f88a51f56050009ebe63dbfeacc08f2882c7487ce38b6813231efb01569ceb15` |
| 4 | `def` | [finiteSubcoproductsCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/finitesubcoproductscocone--6023d161ac4eb30d9617c4cd.md) | 84 | `declaration-track:6023d161ac4eb30d9617c4cdae703f19184d491e74a0959fb6f9b433d05d086a` |
| 5 | `def` | [isColimitFiniteSubproductsCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/iscolimitfinitesubproductscocone--da8d2e874759fc786a54c23a.md) | 90 | `declaration-track:da8d2e874759fc786a54c23ae795bc6e1de57ba839a19e4b123ca037bec4b694` |
| 6 | `theorem` | [hasCoproducts_of_finite_and_filtered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/hascoproducts-of-finite-and-filtered--b6ae69f8a0020d018f6c95ce.md) | 109 | `result-track:b6ae69f8a0020d018f6c95ce28b3779146bea19a752f0488b44d80b6e79ed431` |
| 7 | `theorem` | [has_colimits_of_finite_and_filtered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/has-colimits-of-finite-and-filtered--619caf3845d104cb6296c058.md) | 113 | `result-track:619caf3845d104cb6296c05830c839820565cc787236e824d972dd8a995b4ec8` |
| 8 | `theorem` | [hasProducts_of_finite_and_cofiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/hasproducts-of-finite-and-cofiltered--d6d73997ddda9c7616d649b0.md) | 118 | `result-track:d6d73997ddda9c7616d649b0116af4955879099b1a9fbd02ef8ef93b188050c2` |
| 9 | `theorem` | [has_limits_of_finite_and_cofiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/has-limits-of-finite-and-cofiltered--7684f6e0973afc5f5e5f2586.md) | 123 | `result-track:7684f6e0973afc5f5e5f2586ea2441bebc72ce2f420f7e913b5c4f6fcfba4d7f` |
| 10 | `theorem` | [liftToFinsetColimIso_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/lifttofinsetcolimiso-aux--81feb5c88fec7fa4b22384d0.md) | 137 | `result-track:81feb5c88fec7fa4b22384d03a6761c50bcb23f9aa34a210cc3c968085b585e9` |
| 11 | `def` | [liftToFinsetColimIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/lifttofinsetcolimiso--05e57677f00c58fecc312a3e.md) | 145 | `declaration-track:05e57677f00c58fecc312a3ef18b1d5818961969fac8fd16e5bfb30c5b78601e` |
| 12 | `def` | [liftToFinsetEvaluationIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/lifttofinsetevaluationiso--4a54412da37b20991537aeea.md) | 161 | `declaration-track:4a54412da37b20991537aeeabbc3d6966866151f2490432d439fa0a9ec46e087` |
| 13 | `def` | [liftToFinsetObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/lifttofinsetobj--85c4a95be161c33e2256a614.md) | 176 | `declaration-track:85c4a95be161c33e2256a6140cc661584c0c93156c4dc4c2626c3f8c11ec8d86` |
| 14 | `def` | [liftToFinsetLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/lifttofinsetlimitcone--174d17be5bb4b395b9cb737f.md) | 186 | `declaration-track:174d17be5bb4b395b9cb737f5af5828937c02e2ecf23222c2d85040e6934ef8d` |
| 15 | `def` | [finiteSubproductsCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/finitesubproductscone--af581f5f3acfdfc832db933e.md) | 211 | `declaration-track:af581f5f3acfdfc832db933e56bd7bcf425aeb636b5887b88154bb953bf50281` |
| 16 | `def` | [isLimitFiniteSubproductsCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/islimitfinitesubproductscone--363446bfb29bff3cf1e2e942.md) | 217 | `declaration-track:363446bfb29bff3cf1e2e942b7bc8533f8e39be943d6d64d2e5c772463323e0b` |
| 17 | `def` | [liftToFinset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/lifttofinset--46758e706393a7558350ec75.md) | 237 | `declaration-track:46758e706393a7558350ec75e1c260ad35481903597570f0842f2f284bb2b58a` |
| 18 | `def` | [liftToFinsetLimIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/lifttofinsetlimiso--dc23d810653981c60eca1618.md) | 243 | `declaration-track:dc23d810653981c60eca16181c0ceb14d66b96c75d0bb6319332f5f29c22546a` |
| 19 | `def` | [liftToFinsetEvaluationIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/declarations/lifttofinsetevaluationiso--527021c4ac40064877a233ed.md) | 254 | `declaration-track:527021c4ac40064877a233ed9208237655dee339cfa63440e05fdd0dcd5549c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
