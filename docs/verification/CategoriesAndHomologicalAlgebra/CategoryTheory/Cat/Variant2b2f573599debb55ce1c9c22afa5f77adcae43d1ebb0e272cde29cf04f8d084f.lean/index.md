# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cat.Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b12cf09a7d4ad18cc3d97487708130652120b78",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b12cf09a7d4ad18cc3d97487708130652120b78`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/tocat--ad048fb34fcb729bb61708dc.md) | 46 | `declaration-track:ad048fb34fcb729bb61708dcf2c6bff67088e8d8a269d9e32001b0415f977bb2` |
| 2 | `def` | [ofCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/ofcat--be4e6cdd58786e53a2026cad.md) | 53 | `declaration-track:be4e6cdd58786e53a2026cadf73c1086b4bc2d965a84c4ddfdfe358b6d60956a` |
| 3 | `lemma` | [toCat_ofCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/tocat-ofcat--8aab9633d52caa30ad12ed22.md) | 64 | `result-track:8aab9633d52caa30ad12ed22f19fba627a03672cd463ce55825ac776de25b952` |
| 4 | `lemma` | [ofCat_toCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/ofcat-tocat--e6bfd001fd7ce6c96c978379.md) | 69 | `result-track:e6bfd001fd7ce6c96c97837980a403abdd368c870811854023ab4d04c9bb34a9` |
| 5 | `lemma` | [toCat_comp_toCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/tocat-comp-tocat--d38855dad46e6ba0758ddaa6.md) | 73 | `result-track:d38855dad46e6ba0758ddaa6ab08fd563a1f3dfeaf82463cb1df8f40c1accac8` |
| 6 | `lemma` | [Adjunction.ofCat_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/adjunction-ofcat-id--60bfacec4df668e5da5874ff.md) | 83 | `result-track:60bfacec4df668e5da5874ff60c56e7a3b14865abd80928770f1c06fe317f3bf` |
| 7 | `lemma` | [Adjunction.ofCat_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/adjunction-ofcat-comp--d145a34e871c9e6153ff5564.md) | 88 | `result-track:d145a34e871c9e6153ff556447a762dee8f0c538a4e7f080e4d278c4848c78ce` |
| 8 | `lemma` | [toNatTrans_mateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/tonattrans-mateequiv--a65046c0fdd052b0ef546beb.md) | 97 | `result-track:a65046c0fdd052b0ef546beb937b3ce5e36bf836fd46c49c9b040cf449062492` |
| 9 | `lemma` | [toNatTrans_conjugateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/tonattrans-conjugateequiv--e0745071b5fe38a74d49ebef.md) | 108 | `result-track:e0745071b5fe38a74d49ebefb0229ca2a7b5f83e86832cf03a65e7b21dcace67` |
| 10 | `lemma` | [left_triangle_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/left-triangle-components--d84655795add7442e1c6aff4.md) | 124 | `result-track:d84655795add7442e1c6aff4013d50e5642a176dc56d39ec78f8c4987b74b2cc` |
| 11 | `lemma` | [right_triangle_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/right-triangle-components--9d09bc4b9a56e223c19fff2a.md) | 131 | `result-track:9d09bc4b9a56e223c19fff2aa5eeaa04512f670ec4751175d9e52f3bb5c5a19d` |
| 12 | `lemma` | [unit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/unit-naturality--586215dc2469ef1b15668a62.md) | 141 | `result-track:586215dc2469ef1b15668a6225c1ee9f0a94ee3e8de1db0c6b74ab85d0d4aa28` |
| 13 | `lemma` | [counit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f.lean/declarations/counit-naturality--a6cd5fe810f2dbdc15e28ff4.md) | 150 | `result-track:a6cd5fe810f2dbdc15e28ff47a3b9d35813a0b772ab48b322bfa8346d0c0c909` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
