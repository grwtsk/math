# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Normalized.Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d96dcebf3d5bdc91555d1114c5e0c81a350c7d56",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d96dcebf3d5bdc91555d1114c5e0c81a350c7d56`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.FunctorN` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HigherFacesVanish.inclusionOfMooreComplexMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/declarations/higherfacesvanish-inclusionofmoorecomplexmap--21755d61258db19c6fb61074.md) | 42 | `result-track:21755d61258db19c6fb610740c2e0a628720b0dfcd6580300364362369906278` |
| 2 | `theorem` | [factors_normalizedMooreComplex_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/declarations/factors-normalizedmoorecomplex-pinfty--4951eec1ef291a1a85821c3e.md) | 48 | `result-track:4951eec1ef291a1a85821c3eda09b39be12962014f7b6d7ba5b4f94060c8fc65` |
| 3 | `def` | [PInftyToNormalizedMooreComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/declarations/pinftytonormalizedmoorecomplex--e1d7fdb1c8bccda2f59f6439.md) | 59 | `declaration-track:e1d7fdb1c8bccda2f59f6439a0f3c65cb31e9dc98eeecfee15ddb070506bb9fc` |
| 4 | `theorem` | [PInftyToNormalizedMooreComplex_comp_inclusionOfMooreComplexMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/declarations/pinftytonormalizedmoorecomplex-comp-inclusionofmoorecomplexmap--8fcc3f445fd6cdb4b87d2f47.md) | 69 | `result-track:8fcc3f445fd6cdb4b87d2f47237f127cf1412089be4ffd5afe5afb575daf4f00` |
| 5 | `theorem` | [PInftyToNormalizedMooreComplex_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/declarations/pinftytonormalizedmoorecomplex-naturality--0dadc3ab56fa32c921255e13.md) | 73 | `result-track:0dadc3ab56fa32c921255e137ca31f9adb344ba36d2b73fbb175ebd4c8a60d93` |
| 6 | `theorem` | [PInfty_comp_PInftyToNormalizedMooreComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/declarations/pinfty-comp-pinftytonormalizedmoorecomplex--4574e6bd86b02f4eef5436e7.md) | 79 | `result-track:4574e6bd86b02f4eef5436e740d1c195a9cf2785f76c0eaca30f4e0436f0ba55` |
| 7 | `theorem` | [inclusionOfMooreComplexMap_comp_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/declarations/inclusionofmoorecomplexmap-comp-pinfty--8176d0028e3afeb00d019f8f.md) | 83 | `result-track:8176d0028e3afeb00d019f8fe50c35d4f3856fb0e159231179509df796cb4620` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/declarations/instance--ab1ca27a31ba58c0d293ff5a.md) | 90 | `declaration-track:ab1ca27a31ba58c0d293ff5a9995cb1a3c41525a84d3acba9aed865c68fd7c44` |
| 9 | `def` | [splitMonoInclusionOfMooreComplexMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/declarations/splitmonoinclusionofmoorecomplexmap--22a813756b7a8b465bc5127f.md) | 98 | `declaration-track:22a813756b7a8b465bc5127f2407ad64597a21751173b6996b6d40d3f0ded3c5` |
| 10 | `def` | [N₁_iso_normalizedMooreComplex_comp_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/declarations/n-iso-normalizedmoorecomplex-comp-tokaroubi--f136b571dd60a738e8090520.md) | 112 | `declaration-track:f136b571dd60a738e80905201d2715e259fa38b73f4993a218f881512eb63f2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
