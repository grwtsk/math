# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bicones.Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dfcbdc35881b1e37b8ee5eb9b8ac0db59b2deb9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dfcbdc35881b1e37b8ee5eb9b8ac0db59b2deb9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Cones` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Bicone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/bicone--474a632d3ff3f6739ea927df.md) | 43 | `declaration-track:474a632d3ff3f6739ea927df3fbdecd30ec7cae45ede24a2d4500a1d9728a7e9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/instance--5c73caa430d591b788207954.md) | 51 | `declaration-track:5c73caa430d591b788207954f4d5a16706ec0280c07071e1a08a7e7352ecb68e` |
| 3 | `instance` | [finBicone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/finbicone--e37724b1d4ba5545937a5908.md) | 55 | `declaration-track:e37724b1d4ba5545937a59085e2963654d3bb6d75ce1bb83532a585594054431` |
| 4 | `inductive` | [BiconeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/biconehom--41c5f394c3296f834b6c4dc0.md) | 63 | `declaration-track:41c5f394c3296f834b6c4dc0b31b11f677c035498943acaf18bcac1a30e271ce` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/instance--17a9f89e9fa28dedfb5cd816.md) | 70 | `declaration-track:17a9f89e9fa28dedfb5cd816f64ff465ed863c760f67f5f4c207cd84676adb7c` |
| 6 | `instance` | [BiconeHom.decidableEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/biconehom-decidableeq--babfd272596b7a82cd49c49b.md) | 73 | `declaration-track:babfd272596b7a82cd49c49b0e8532e9327d3c12c5b6c09204f4a2026c5a996d` |
| 7 | `instance` | [biconeCategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/biconecategorystruct--2f7b71675aac05d1f38d7ab1.md) | 77 | `declaration-track:2f7b71675aac05d1f38d7ab1e293e29001a60718302755f373d19bc558cd43af` |
| 8 | `instance` | [biconeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/biconecategory--5ce861a0ba078ff19edc9636.md) | 91 | `declaration-track:5ce861a0ba078ff19edc96366c2c8dc2bc37afd3e32437a8e32909e488977df4` |
| 9 | `def` | [biconeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/biconemk--295b98700dd61b7aeb4ea049.md) | 105 | `declaration-track:295b98700dd61b7aeb4ea0493e5527d8355e3db4072fbff7451eecd3ce641927` |
| 10 | `instance` | [finBiconeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/finbiconehom--a29a5333790986c26fe8f47f.md) | 127 | `declaration-track:a29a5333790986c26fe8f47f11b16039991c9b170e1716f9f69276fa282d9750` |
| 11 | `instance` | [biconeSmallCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/biconesmallcategory--6489e4ef1523701369d953cc.md) | 161 | `declaration-track:6489e4ef1523701369d953cc4a87746b223ccfd558f96ff589a6210b7dc93e20` |
| 12 | `instance` | [biconeFinCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/declarations/biconefincategory--05620be6c7cdb5fe26a1168c.md) | 164 | `declaration-track:05620be6c7cdb5fe26a1168c86c43e89789e10e811c7289e272cad5e51f7a404` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
