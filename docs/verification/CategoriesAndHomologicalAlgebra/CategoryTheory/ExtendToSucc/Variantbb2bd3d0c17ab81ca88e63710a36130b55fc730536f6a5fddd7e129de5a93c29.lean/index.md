# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtendToSucc.Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9edf5f1742d2be4459fa95cca61b7be3dc49da7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9edf5f1742d2be4459fa95cca61b7be3dc49da7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.Iteration.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/obj--1e1cc97e10ba0c06daf2b962.md) | 47 | `declaration-track:1e1cc97e10ba0c06daf2b9629a804dfe932eb5ab5618557e6dce3c81176f6cdb` |
| 2 | `lemma` | [obj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/obj-eq--28e19e82c15f752f332d7bef.md) | 50 | `result-track:28e19e82c15f752f332d7befcc1fc4814eb89a33d148646a146f3fa3bc53d877` |
| 3 | `def` | [objIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/objiso--3c1c93d3d3b912c00e006029.md) | 54 | `declaration-track:3c1c93d3d3b912c00e006029117caf31aa7a793a59a6a491dcfbf8702382807b` |
| 4 | `lemma` | [obj_succ_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/obj-succ-eq--17b7cb9a89cdf9a5b349b3d3.md) | 59 | `result-track:17b7cb9a89cdf9a5b349b3d3d0812362cc24280b5b9f7999f56597c7ae584782` |
| 5 | `def` | [objSuccIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/objsucciso--a1031ec256ee197202b85879.md) | 63 | `declaration-track:a1031ec256ee197202b85879817668cb41a47d84599818ba2685c13e94d6cdd8` |
| 6 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/map--8c2be8f7349083c13a7c1e9a.md) | 70 | `declaration-track:8c2be8f7349083c13a7c1e9a75e72b31c87d8881553992d81e6a7ddf57fb4b5c` |
| 7 | `lemma` | [map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/map-eq--6328cbab2a46ee137fde2c68.md) | 86 | `result-track:6328cbab2a46ee137fde2c68c225ee70c51b0f0bba0f65a45ae2930a144ddda8` |
| 8 | `lemma` | [map_self_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/map-self-succ--9e10bf0f6f906e516fddad0b.md) | 92 | `result-track:9e10bf0f6f906e516fddad0b02ee8faa156c392965a60b1c2adbb5c9e8659312` |
| 9 | `lemma` | [map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/map-id--e60d19f1961b308880d7904f.md) | 100 | `result-track:e60d19f1961b308880d7904f71fc6305d1708096d375d69bd35a9e9fd9a5b81b` |
| 10 | `lemma` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/map-comp--daad6b79807f7f7169904d4f.md) | 109 | `result-track:daad6b79807f7f7169904d4fd1bed804e7b9c19ea8568eef6987fddb6226082c` |
| 11 | `def` | [extendToSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/extendtosucc--b5e5e852ea5df2f84f8f1bdd.md) | 131 | `declaration-track:b5e5e852ea5df2f84f8f1bdde77d9855155ee26e7850c63679568467bbbbe11d` |
| 12 | `lemma` | [extendToSucc_obj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/extendtosucc-obj-eq--7eb91115316241bccf0e881a.md) | 137 | `result-track:7eb91115316241bccf0e881ace9b435ca86f7d6f163422e291cb4383635ba7bf` |
| 13 | `def` | [extendToSuccObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/extendtosuccobjiso--bfd2f5bcb953d1edfe468826.md) | 142 | `declaration-track:bfd2f5bcb953d1edfe468826676bca831ade995bb7a2db31dea6aeed7078cd9f` |
| 14 | `lemma` | [extendToSucc_obj_succ_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/extendtosucc-obj-succ-eq--3fbb5dfa4246c2cbac9a3be0.md) | 146 | `result-track:3fbb5dfa4246c2cbac9a3be03c79a676a9e3b24255794f3dd8011db5279fd2ae` |
| 15 | `def` | [extendToSuccObjSuccIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/extendtosuccobjsucciso--fe8ebb32867e9c6f7bc85e64.md) | 151 | `declaration-track:fe8ebb32867e9c6f7bc85e6489a18c27af2dedaee9890d341db4f9613ee44437` |
| 16 | `lemma` | [extendToSuccObjIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/extendtosuccobjiso-hom-naturality--fbd8f3b330a1e7f857207204.md) | 156 | `result-track:fbd8f3b330a1e7f8572072042665ce0744487b80bd38f661d45205244384beda` |
| 17 | `def` | [extendToSuccRestrictionLEIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/extendtosuccrestrictionleiso--e6843617fac93ec0d267aedc.md) | 166 | `declaration-track:e6843617fac93ec0d267aedcf6a218d75caa29e6b3e86d74c5abb734b2f0b33d` |
| 18 | `lemma` | [extendToSucc_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/extendtosucc-map--53eab1c567e1abeeaf57c5f6.md) | 172 | `result-track:53eab1c567e1abeeaf57c5f6cfaae0c0364429f3e688fd2871ff407e0dc5761e` |
| 19 | `lemma` | [extendToSucc_map_le_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/extendtosucc-map-le-succ--52a2f85a87cdb820d2ace3ee.md) | 179 | `result-track:52a2f85a87cdb820d2ace3ee0ed0c707682d8c83d3ecd699cdc0adeb32345a78` |
| 20 | `lemma` | [arrowMap_extendToSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/arrowmap-extendtosucc--6957322ee8faaad1cfbd9802.md) | 185 | `result-track:6957322ee8faaad1cfbd9802ce12f51fcb062a02c2d9ff56fdabda26b094e150` |
| 21 | `lemma` | [arrowSucc_extendToSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variantbb2bd3d0c17ab81ca88e63710a36130b55fc730536f6a5fddd7e129de5a93c29.lean/declarations/arrowsucc-extendtosucc--4151c7493e281094de686eca.md) | 191 | `result-track:4151c7493e281094de686eca60905ffefef0b7d6093ce2fd3f60a07a953c12b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
