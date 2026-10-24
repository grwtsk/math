# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95555b12ee3cc5cf97d28dc3e81ff99ea4ff2fde",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95555b12ee3cc5cf97d28dc3e81ff99ea4ff2fde`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.FunctorCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Center.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toCatCenter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b.lean/declarations/tocatcenter--e6ecd570f82f83a2cb2aaeaa.md) | 39 | `declaration-track:e6ecd570f82f83a2cb2aaeaa5a8d2c8f47b0a6c436e0b1cb20eb323c4638cf06` |
| 2 | `def` | [smulOfRingMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b.lean/declarations/smulofringmorphism--e3425b0b266d41d906b737a3.md) | 62 | `declaration-track:e3425b0b266d41d906b737a355407460e49e9b415aebf3b8b5ce9add9f42463b` |
| 3 | `lemma` | [smulOfRingMorphism_smul_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b.lean/declarations/smulofringmorphism-smul-eq--7a461ffb57d80a906a2643cb.md) | 67 | `result-track:7a461ffb57d80a906a2643cb9ea4d360068eaf99ee12d41df5a3e2afe2a1dfd4` |
| 4 | `lemma` | [smulOfRingMorphism_smul_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b.lean/declarations/smulofringmorphism-smul-eq--45e2968ccec98619a979910f.md) | 72 | `result-track:45e2968ccec98619a979910f0ca62a280c39569ddd6d32ceb9a73d9912e8e149` |
| 5 | `def` | [homModuleOfRingMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b.lean/declarations/hommoduleofringmorphism--ae0ff02a89774fa23f451743.md) | 82 | `declaration-track:ae0ff02a89774fa23f4517434af9d33e9ba4e11e93cc555ba44c11a6ee6d63dc` |
| 6 | `def` | [ofRingMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant0f195cc31411e818d90d074ed50515835e3d3d05626a7ce06bf9ae628305ca4b.lean/declarations/ofringmorphism--46c11502cc9ef59239a15d6d.md) | 104 | `declaration-track:46c11502cc9ef59239a15d6d45414a60e747aeaacc592b58f7d646791f471735` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
