# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comparison.Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "779a8b2705f3c82f1d558c11fbecb5201d725f24",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `779a8b2705f3c82f1d558c11fbecb5201d725f24`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Properties` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Scope` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Fabric.Refinement` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CarrierRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/declarations/carrierrealization--6ede4c62d97b9e223b69982f.md) | 34 | `declaration-track:6ede4c62d97b9e223b69982ffdcbc2ed074350c098a32ee5561b2e4acdc5630a` |
| 2 | `theorem` | [mapIso_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/declarations/mapiso-bijective--2c6d16297621a0f0f1ec495e.md) | 47 | `result-track:2c6d16297621a0f0f1ec495e2a38925d1aec65e82086e69f5f220439476bc2c7` |
| 3 | `def` | [toComparisonSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/declarations/tocomparisonspec--6c5b12c7330476f91c759059.md) | 74 | `declaration-track:6c5b12c7330476f91c7590592d1021f49e931a3ebf123115d672aecad35203f9` |
| 4 | `def` | [cellStateComparisonSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/declarations/cellstatecomparisonspec--bfa03edb7c87b52ec23ee2f4.md) | 85 | `declaration-track:bfa03edb7c87b52ec23ee2f4e455e652f607487f1975136c446e6c3fc3e83324` |
| 5 | `theorem` | [realizationComparison_isBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/declarations/realizationcomparison-isbijective--5a8757d706ab3bfe6a5039c2.md) | 100 | `result-track:5a8757d706ab3bfe6a5039c24edb78fba67c51c7850b24ce2403fd8d4949bf8e` |
| 6 | `theorem` | [cellComparison_isSurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/declarations/cellcomparison-issurjective--3e12a9d35c12baed40440351.md) | 113 | `result-track:3e12a9d35c12baed40440351ec21a7731c50e4e2f1d4c4830b5f6205a36ef9eb` |
| 7 | `def` | [implementationStateSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/declarations/implementationstatespec--7edfed09c74825483fd42b4a.md) | 127 | `declaration-track:7edfed09c74825483fd42b4a8e80fea1fea4624f677256d1274552731bc79640` |
| 8 | `def` | [implementationStateCertified](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/declarations/implementationstatecertified--ae06ee8ebc5d8291c86b11c7.md) | 145 | `declaration-track:ae06ee8ebc5d8291c86b11c769e54bac7b214dd3939a88cf8ee91327e1b4d9d6` |
| 9 | `structure` | [ParameterizedRealizationTheory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/declarations/parameterizedrealizationtheory--9b09d2637c6e694c98bb4060.md) | 175 | `declaration-track:9b09d2637c6e694c98bb4060f5d04a02ea5d0521d60e192b110c80606bb70811` |
| 10 | `structure` | [RepresentationIndependence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/declarations/representationindependence--60d9868df0d5ee5c5cd25056.md) | 183 | `declaration-track:60d9868df0d5ee5c5cd25056aa59176c96fa2e31e02906c779ecc721fa2b7308` |
| 11 | `def` | [atFabric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/declarations/atfabric--79935b70b956bdc48be984b5.md) | 192 | `declaration-track:79935b70b956bdc48be984b5b1201e271c20474dc1a256e8282c1e5deb57dd7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
