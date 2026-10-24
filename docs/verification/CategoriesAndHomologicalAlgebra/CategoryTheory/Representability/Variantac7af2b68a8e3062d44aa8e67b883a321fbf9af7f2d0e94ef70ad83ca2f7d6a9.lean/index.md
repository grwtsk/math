# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Representability.Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9228ae650b0a7b50a10b36f0cb7af8aa9fb7dfc0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9228ae650b0a7b50a10b36f0cb7af8aa9fb7dfc0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean.json)

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
| 1 | `def` | [glueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/gluedata--208644ddecd2c5b699344fdd.md) | 76 | `declaration-track:208644ddecd2c5b699344fdd3dbb51c5db2e1b572ee8e1f4cf0c00613cb58279` |
| 2 | `def` | [toGlued](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/toglued--dad733f3689a8f2d100e613b.md) | 95 | `declaration-track:dad733f3689a8f2d100e613b5ff4ee9213bbee594e1f6e1446afb8fa918b4e1d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/instance--dfdc580db901406dabc34f4c.md) | 99 | `declaration-track:dfdc580db901406dabc34f4c683df99f90a06a213840c6e2eff3cdc1ad8ce88f` |
| 4 | `def` | [yonedaGluedToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/yonedagluedtosheaf--2a0013e086dac997b340eb20.md) | 105 | `declaration-track:2a0013e086dac997b340eb20bb99c1f01903e1d2c59784801ef2233fd6ad1867` |
| 5 | `lemma` | [yoneda_toGlued_yonedaGluedToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/yoneda-toglued-yonedagluedtosheaf--17ac1ee11b74e9bd0bf529f2.md) | 120 | `result-track:17ac1ee11b74e9bd0bf529f20331eb75e4a90e6e6fd8a34582a8e495f7e1b028` |
| 6 | `lemma` | [yonedaGluedToSheaf_app_toGlued](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/yonedagluedtosheaf-app-toglued--e36d17cbcbd7f2dcbdbe6542.md) | 129 | `result-track:e36d17cbcbd7f2dcbdbe6542d0b89c839ff16d5aeccc218f0e4d544a5b20fe1e` |
| 7 | `lemma` | [yonedaGluedToSheaf_app_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/yonedagluedtosheaf-app-comp--b3f875eb7eea2b3370285bce.md) | 136 | `result-track:b3f875eb7eea2b3370285bcecab96e0382484fef2391bd71854466c44104ead0` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/instance--f87e26404097796843435fd0.md) | 141 | `declaration-track:f87e26404097796843435fd0ef0f26aa57e5ae6a906892a5a7d0d061e85d4bcf` |
| 9 | `lemma` | [comp_toGlued_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/comp-toglued-eq--769d6d47d27c6b6a251ebfff.md) | 149 | `result-track:769d6d47d27c6b6a251ebfffa7702289e508d86a67b886f4cb3621f4a60579c9` |
| 10 | `lemma` | [glueData_openCover_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/gluedata-opencover-map--8e2baf8927a710543c0d974f.md) | 158 | `result-track:8e2baf8927a710543c0d974fc5d3285a89ef8a6b84c50cb547d907e4850f6b7d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/instance--741520eb47ffb2729fe8338a.md) | 162 | `declaration-track:741520eb47ffb2729fe8338aa4a34a0adf3420617d3844a67fdb4934e13083a9` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/instance--5aacd210f00e6e40e1644fa8.md) | 180 | `declaration-track:5aacd210f00e6e40e1644fa8f16e9d235e99c47ce44168d0b7d113016209a184` |
| 13 | `def` | [yonedaIsoSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/yonedaisosheaf--c6ec39062c76750fd00a1863.md) | 187 | `declaration-track:c6ec39062c76750fd00a1863b9dc0676a60ba82f13be433245df236ff23c4392` |
| 14 | `def` | [representableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/representableby--3ff913b1053ed870f6b35130.md) | 201 | `declaration-track:3ff913b1053ed870f6b3513078a5f0d61e34902c418576bb62155db5f704559b` |
| 15 | `theorem` | [isRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/declarations/isrepresentable--8b4c1db2718390e37dc4ce16.md) | 216 | `result-track:8b4c1db2718390e37dc4ce16aa65d151bef55226c53ef0caf74de11d21861199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
