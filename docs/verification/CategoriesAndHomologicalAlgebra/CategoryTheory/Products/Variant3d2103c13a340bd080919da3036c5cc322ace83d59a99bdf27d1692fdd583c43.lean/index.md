# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a109beb4396736de52b79d7230fad7f19d576ae",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a109beb4396736de52b79d7230fad7f19d576ae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sums.Associator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Associator` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/functorequiv--9a6ae1f23d8e3f3f2e589ed0.md) | 30 | `declaration-track:9a6ae1f23d8e3f3f2e589ed02cc0b8466be6ae93629dd747062fa9e757f6ff91` |
| 2 | `lemma` | [functorEquiv_unit_app_app_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/functorequiv-unit-app-app-inl--1b13b903342b3c9a192dd807.md) | 44 | `result-track:1b13b903342b3c9a192dd8073983a656547692465266a771f9de69eab256b52c` |
| 3 | `lemma` | [functorEquiv_unit_app_app_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/functorequiv-unit-app-app-inr--f785b70d175227d66d780643.md) | 49 | `result-track:f785b70d175227d66d7806438381658c26aab7602ddf1c7f83be986af276a52b` |
| 4 | `lemma` | [functorEquiv_unitIso_inv_app_app_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/functorequiv-unitiso-inv-app-app-inl--65f24d0b245b77cc6a403abb.md) | 54 | `result-track:65f24d0b245b77cc6a403abb3f642ed7640fd12ee5648a36007b5e469fee4882` |
| 5 | `lemma` | [functorEquiv_unitIso_inv_app_app_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/functorequiv-unitiso-inv-app-app-inr--cd6ea86e285490885265929f.md) | 59 | `result-track:cd6ea86e285490885265929f9a6e611434ce0ed732d0ce1cd448db0244b06dd5` |
| 6 | `def` | [functorEquivFunctorCompFstIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/functorequivfunctorcompfstiso--e2fc66e9bb1ebd787e234238.md) | 66 | `declaration-track:e2fc66e9bb1ebd787e234238391aceeabe10eabf428a0b6951819a299ab2c554` |
| 7 | `def` | [functorEquivFunctorCompSndIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/functorequivfunctorcompsndiso--15d9585832c47e4d35bf6fde.md) | 74 | `declaration-track:15d9585832c47e4d35bf6fde48df9d86d1f833c6db7c2d24869dcc50c20dda0b` |
| 8 | `def` | [functorEquivInverseCompWhiskeringLeftInlIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/functorequivinversecompwhiskeringleftinliso--0f5851cd923f5fb395faf880.md) | 82 | `declaration-track:0f5851cd923f5fb395faf8804b61d2ff7cba789476a3f659db36f04d172a448f` |
| 9 | `def` | [functorEquivInverseCompWhiskeringLeftInrIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/functorequivinversecompwhiskeringleftinriso--d98034bd146a81dd0e0788ee.md) | 90 | `declaration-track:d98034bd146a81dd0e0788eec430531478966677ff2ff7dac9956688ae9b322b` |
| 10 | `def` | [natTransOfWhiskerLeftInlInr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/nattransofwhiskerleftinlinr--73ca3b613c415c538beede48.md) | 98 | `declaration-track:73ca3b613c415c538beede480624bbbb724deacc71437b157c67d2f355a57232` |
| 11 | `lemma` | [natTransOfWhiskerLeftInlInr_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/nattransofwhiskerleftinlinr-id--b8f794104d709b4887984755.md) | 106 | `result-track:b8f794104d709b488798475528a3175536b7b767f54c1c6793c4dd4245d7ce74` |
| 12 | `lemma` | [natTransOfWhiskerLeftInlInr_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/nattransofwhiskerleftinlinr-comp--fe12fe62178b441cfa8431d2.md) | 111 | `result-track:fe12fe62178b441cfa8431d21eb9619f13943cf52167557e1e6cf13fa6de9025` |
| 13 | `def` | [natIsoOfWhiskerLeftInlInr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/natisoofwhiskerleftinlinr--7ca3afece88fef4062995832.md) | 121 | `declaration-track:7ca3afece88fef40629958324269b6515af4873684582ac60851d69af1e9ed62` |
| 14 | `lemma` | [natIsoOfWhiskerLeftInlInr_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/natisoofwhiskerleftinlinr-eq--197d7b80ec842a02158aae22.md) | 127 | `result-track:197d7b80ec842a02158aae22d60620dc5b76e19ef16413c511b13334e147d555` |
| 15 | `def` | [equivalenceFunctorEquivFunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/equivalencefunctorequivfunctoriso--996d3413d9145be84e10fc87.md) | 139 | `declaration-track:996d3413d9145be84e10fc874275d0dbf8b4ffdfef32f2bcba49e06a0c53c89b` |
| 16 | `def` | [associativityFunctorEquivNaturalityFunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/declarations/associativityfunctorequivnaturalityfunctoriso--6d17b0c2c4eae58c195b3577.md) | 155 | `declaration-track:6d17b0c2c4eae58c195b357719e3ee18b1fb97d5aafcd2f8ff49e221de45d665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
