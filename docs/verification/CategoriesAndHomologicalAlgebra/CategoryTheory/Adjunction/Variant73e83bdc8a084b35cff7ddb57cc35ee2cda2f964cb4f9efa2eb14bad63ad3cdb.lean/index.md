# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99316716f3e6287db40df966675e5f2cc40e1671",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99316716f3e6287db40df966675e5f2cc40e1671`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Kan.HasKan` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Adjunction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Adjunction.isAbsoluteLeftKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/declarations/adjunction-isabsoluteleftkan--129026f2e27696a03b544be8.md) | 44 | `declaration-track:129026f2e27696a03b544be861d49b0b5b05144189ba514eaf4cf890e0704fed` |
| 2 | `def` | [LeftExtension.IsKan.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/declarations/leftextension-iskan-adjunction--a0e05474bef50145c9a777a7.md) | 75 | `declaration-track:a0e05474bef50145c9a777a70a3577cd7433cbd9cdf031b64229e6b34560fba8` |
| 3 | `def` | [LeftExtension.IsAbsKan.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/declarations/leftextension-isabskan-adjunction--9d03223002e81819e1d85f52.md) | 99 | `declaration-track:9d03223002e81819e1d85f524ce17a2465733f546637f7b54c7301047951ed50` |
| 4 | `theorem` | [isLeftAdjoint_TFAE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/declarations/isleftadjoint-tfae--0f42b16b33ecb4d4f90a2773.md) | 103 | `result-track:0f42b16b33ecb4d4f90a27735aa8a2c5d2a0459b580ad50c3c9898985005f023` |
| 5 | `def` | [Adjunction.isAbsoluteLeftKanLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/declarations/adjunction-isabsoluteleftkanlift--f048be320cd5e38d091b3450.md) | 124 | `declaration-track:f048be320cd5e38d091b3450d99c0d2f911e0608c3d5c1acacbf333e399f8770` |
| 6 | `def` | [LeftLift.IsKan.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/declarations/leftlift-iskan-adjunction--050de66085bbe7a6491ae17d.md) | 154 | `declaration-track:050de66085bbe7a6491ae17dccbd4ce6f70c44ce14bed521ffde34cfec3a8ddc` |
| 7 | `def` | [LeftLift.IsAbsKan.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/declarations/leftlift-isabskan-adjunction--7ee99a1743ba7d8d35660525.md) | 178 | `declaration-track:7ee99a1743ba7d8d356605253c07524914e443e90a0ca83092723560190de072` |
| 8 | `theorem` | [isRightAdjoint_TFAE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/declarations/isrightadjoint-tfae--a3e475e0439045b9a9b303ef.md) | 182 | `result-track:a3e475e0439045b9a9b303efd326ad1fa7cdd39b626fa74b587f7103e4fad27c` |
| 9 | `def` | [isKanOfWhiskerLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/declarations/iskanofwhiskerleftadjoint--4c13088471d3c4b076a1029e.md) | 200 | `declaration-track:4c13088471d3c4b076a1029e4f9f1bde06b7db3ff8eec036bfffa6ac1a48a249` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/declarations/instance--9fdaa2145804472c160c6405.md) | 255 | `declaration-track:9fdaa2145804472c160c640591710dacba7ce8b9fe6372ec17ae887d2bdc2b42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
