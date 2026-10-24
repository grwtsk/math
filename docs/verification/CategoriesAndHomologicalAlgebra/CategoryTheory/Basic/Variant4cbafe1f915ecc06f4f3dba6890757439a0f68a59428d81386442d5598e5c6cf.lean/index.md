# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73b1041d1b9da401ceaf6a7a3aef45b309e8eedc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73b1041d1b9da401ceaf6a7a3aef45b309e8eedc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Extensive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coverage` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EffectiveEpi.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Precoherent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean/declarations/precoherent--55fb1cff1b6b75b0d05bcf19.md) | 60 | `declaration-track:55fb1cff1b6b75b0d05bcf1924c327da41da288bef0f141130b1aaee8bbf7027` |
| 2 | `def` | [coherentCoverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean/declarations/coherentcoverage--ffae8394c475117c884a41e5.md) | 76 | `declaration-track:ffae8394c475117c884a41e500a5ae65b22415fd293887e57edb415f3b93f967` |
| 3 | `def` | [coherentTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean/declarations/coherenttopology--80994fc05ef25268fe23ef88.md) | 89 | `declaration-track:80994fc05ef25268fe23ef883c3208b077a134cdbb60f7dd24be156e221043ed` |
| 4 | `class` | [Preregular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean/declarations/preregular--2f87f67fb34922ad16412c35.md) | 98 | `declaration-track:2f87f67fb34922ad16412c35eed8c4ccbfdd3c574e9d08ecade613f9e2281289` |
| 5 | `def` | [regularCoverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean/declarations/regularcoverage--6b8007af2f119345af4bdb83.md) | 117 | `declaration-track:6b8007af2f119345af4bdb83d67fd18022224c6f35b21e7dd54ea70cef305896` |
| 6 | `def` | [regularTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean/declarations/regulartopology--b14d0b8d1c818ed278373074.md) | 136 | `declaration-track:b14d0b8d1c818ed2783730746cec03c4bf604bc011db3bf4946620223284641a` |
| 7 | `def` | [extensiveCoverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean/declarations/extensivecoverage--856cb43b93b5c9945e93328a.md) | 144 | `declaration-track:856cb43b93b5c9945e93328ae364bc2f429c9e0a96f8a04679f94f7fe5a7df9d` |
| 8 | `def` | [extensiveTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4cbafe1f915ecc06f4f3dba6890757439a0f68a59428d81386442d5598e5c6cf.lean/declarations/extensivetopology--e2734e3531917e4930aac1fa.md) | 163 | `declaration-track:e2734e3531917e4930aac1fae3d5a7256f18415bda7450bac612cb073ab90ef0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
