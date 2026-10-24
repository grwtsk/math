# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologicalComplexLimits.Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9365248eb5be6b7b424abdc76bd4192d384a9e3",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9365248eb5be6b7b424abdc76bd4192d384a9e3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Single` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitOfEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/islimitofeval--951103eada73924cd1631355.md) | 41 | `declaration-track:951103eada73924cd1631355f8da41dcd65b32043650736d34060580578a8a84` |
| 2 | `def` | [coneOfHasLimitEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/coneofhaslimiteval--a1dbeee00ef6767eb76a281c.md) | 67 | `declaration-track:a1dbeee00ef6767eb76a281c2d2ca2dea9a06d14a939801f451f5279801eb4d7` |
| 3 | `def` | [isLimitConeOfHasLimitEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/islimitconeofhaslimiteval--8ec4111d50aa7d62f2f27f7e.md) | 85 | `declaration-track:8ec4111d50aa7d62f2f27f7ebc6e2ea03b645fd66f9434b748116b04df301a4e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--1e395048a597f0da8402a140.md) | 88 | `declaration-track:1e395048a597f0da8402a14023ed9836268a123b6828c04f1624a1b77b3c4793` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--10d1bbac063af843501f70c5.md) | 90 | `declaration-track:10d1bbac063af843501f70c5be31ae009d8340c92fe84273000cd0c2cd75ca70` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--bce69027934f63e2b2126b19.md) | 95 | `declaration-track:bce69027934f63e2b2126b191afec2357c6e823dc70bab6854f4b12f5ef6dfe8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--22451213536a304baea91804.md) | 97 | `declaration-track:22451213536a304baea91804d6b84f396f045add4128fcdf8fcf72016c8720d9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--8bb4b9301868701ca484ffdc.md) | 100 | `declaration-track:8bb4b9301868701ca484ffdc327c9f3e34a260ad042663f9e66aa37c08f99069` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--df3beedd22bf30bfc5c25883.md) | 103 | `declaration-track:df3beedd22bf30bfc5c25883ab7a781f33965c57d5995f8aab1c10c693ffc6a4` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--93c7ea633208639b919a0923.md) | 106 | `declaration-track:93c7ea633208639b919a0923774d16eadeb1edc22d275a429684a5831f9e8ddf` |
| 11 | `def` | [isColimitOfEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/iscolimitofeval--6c8675b8f2ecef3645a4fe71.md) | 117 | `declaration-track:6c8675b8f2ecef3645a4fe711bcb6b2bc3089ce1d977e51f640d0bdfe6b4e088` |
| 12 | `def` | [coconeOfHasColimitEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/coconeofhascolimiteval--2e4fdfc9b0f5414b8df0387a.md) | 144 | `declaration-track:2e4fdfc9b0f5414b8df0387a297d56463816b74f4fe8045a61c020998a03bf0a` |
| 13 | `def` | [isColimitCoconeOfHasColimitEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/iscolimitcoconeofhascolimiteval--2d5e6141e1ad98f47e9ba004.md) | 162 | `declaration-track:2d5e6141e1ad98f47e9ba004f1f4eb3f03360478cffbcd56e711a6e5d6097bea` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--f95ffefa6e7281ebe86395a4.md) | 165 | `declaration-track:f95ffefa6e7281ebe86395a4b70ed58239dc048b27c10016a99b44eb878bc127` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--7beff5c3ea6f625cd923203b.md) | 167 | `declaration-track:7beff5c3ea6f625cd923203bd95ba2f4285ce6ed94aa57a459d91af6a6c38e0e` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--c293e23bcf4f957cf8b93fc8.md) | 173 | `declaration-track:c293e23bcf4f957cf8b93fc862b8f928da1eb8d783bae58fd14db15b590ef3c9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--bc7e063b5fad83b9fc3ea171.md) | 175 | `declaration-track:bc7e063b5fad83b9fc3ea1718242d240f9ff4947dccb4743bab6ebbce1e00747` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--996c926eea78f02190cb60d4.md) | 178 | `declaration-track:996c926eea78f02190cb60d4607e5d66de176b4622e4c195c117f931af7d65c8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--2178b1cf2efd8cec69e2f93d.md) | 181 | `declaration-track:2178b1cf2efd8cec69e2f93d9b0d3bb4bf431962cf5358cd3d4e0e90e195b722` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--6c8edd1ece8ec068c8868561.md) | 184 | `declaration-track:6c8edd1ece8ec068c88685618c59753f79373660d572fa2d990fd60b800fc012` |
| 21 | `lemma` | [preservesLimitsOfShape_of_eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/preserveslimitsofshape-of-eval--8b2ab62f4a2e67451064e52a.md) | 191 | `result-track:8b2ab62f4a2e67451064e52a484522982a0b4938bb1da448a55ccac6cfda91f2` |
| 22 | `lemma` | [preservesColimitsOfShape_of_eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/preservescolimitsofshape-of-eval--63120510a07ad96eb1fab1d8.md) | 200 | `result-track:63120510a07ad96eb1fab1d8862538748720aacaa796bdd1d0fb25af949ff608` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--64aaba8b789707b64bec62ac.md) | 211 | `declaration-track:64aaba8b789707b64bec62aca4536b68ddbee6f9ca46db726d6f7c0417e2c78f` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--41f21293eb06757c3947045c.md) | 218 | `declaration-track:41f21293eb06757c3947045ca7d9ad4aaa70b2fd9a1efd91439f436c532742e6` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--868316e8f6083ef53e34f91c.md) | 225 | `declaration-track:868316e8f6083ef53e34f91c81c031df77963b212475ff4ea021c3355b972e1c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant506c40696a7cb42a9e4174a576701089ff2e053c46040facdb8176d4432257fd.lean/declarations/instance--8df34f6da7d7ad2555e23dd9.md) | 227 | `declaration-track:8df34f6da7d7ad2555e23dd9bdb533772ae3a3fb4f1c2a24db69c977c7928432` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
