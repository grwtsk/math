# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologicalComplexLimits.Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36bd4385cbb9ac048ad990a3b87e1a25b2b3abcf",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36bd4385cbb9ac048ad990a3b87e1a25b2b3abcf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Single` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitOfEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/islimitofeval--b673ec550c64720a50870dd7.md) | 33 | `declaration-track:b673ec550c64720a50870dd7a6475eff151e6a68714ed6f11ed5fa82ea0fe419` |
| 2 | `def` | [coneOfHasLimitEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/coneofhaslimiteval--d8435cee289b6318054ba1c6.md) | 59 | `declaration-track:d8435cee289b6318054ba1c683ac9800e95745f1210484e59ae634a70fd1ac60` |
| 3 | `def` | [isLimitConeOfHasLimitEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/islimitconeofhaslimiteval--3f1877e5c49fa2662b34b8b8.md) | 77 | `declaration-track:3f1877e5c49fa2662b34b8b81827398520ae1b10461507abb7c63af7f6a80904` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--79767dabb1a5fe2e1e69d537.md) | 80 | `declaration-track:79767dabb1a5fe2e1e69d537543ad5ee0c90d889298a517f2855387edff37216` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--bf842a2b8938edc4192ced5b.md) | 82 | `declaration-track:bf842a2b8938edc4192ced5bd9d22801ca69c6e55ae7f9d143ce5334ebf1b73c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--0ad601a35f4cdec3efffc082.md) | 87 | `declaration-track:0ad601a35f4cdec3efffc08207298dd76f90b1530e18d2ac906933dfc38dd4bd` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--2d3b93aef5f11794f04cf26f.md) | 89 | `declaration-track:2d3b93aef5f11794f04cf26f48ab60f15bb96afc85e3830ca9f4e8bdcc363449` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--5dac728951b9a0309f578420.md) | 92 | `declaration-track:5dac728951b9a0309f5784204ccf127168af373815252b584009d9d5c0107492` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--2a4aa952b5dab29fc231d307.md) | 95 | `declaration-track:2a4aa952b5dab29fc231d3079acb67f92bd56127588ebdd7ad615f913f63aa91` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--f634cb3efbfadebc6a7c57b5.md) | 98 | `declaration-track:f634cb3efbfadebc6a7c57b5100d2805b77ff016240c44c090d74bc6ad54421b` |
| 11 | `def` | [isColimitOfEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/iscolimitofeval--872541ab7b8fab4ab4e17d09.md) | 109 | `declaration-track:872541ab7b8fab4ab4e17d09a14fbefc832beda8d4f84983c5a36a42fd7b3fc0` |
| 12 | `def` | [coconeOfHasColimitEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/coconeofhascolimiteval--cee56ea831149e0e9abf26a7.md) | 136 | `declaration-track:cee56ea831149e0e9abf26a70d3e71dd47450a547a82c4551d0f4d7e8f26ab7b` |
| 13 | `def` | [isColimitCoconeOfHasColimitEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/iscolimitcoconeofhascolimiteval--1a62740e42d6daf5b8cdb55f.md) | 154 | `declaration-track:1a62740e42d6daf5b8cdb55f78a141711ba429447be43723fc7f5d1ecc64df4c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--369e5c5b04ff8f5557e177da.md) | 157 | `declaration-track:369e5c5b04ff8f5557e177da02976138a08312665e66c48d37d81c3d1fb51bc6` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--6e091fa6eded54abb995b2ce.md) | 159 | `declaration-track:6e091fa6eded54abb995b2ce450488cf2513a4a4b95410635344ee4a3c754456` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--cdfc295337e813111a8827c8.md) | 165 | `declaration-track:cdfc295337e813111a8827c88d61a041b098cf384a85772bbdfa6571c7783e44` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--6f0e5112baace3e95a775d6a.md) | 167 | `declaration-track:6f0e5112baace3e95a775d6a95c2eebcc6c8b82d0b9b0a5ae5217ee60e6a2a22` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--63b822980d2a33ae84810b43.md) | 170 | `declaration-track:63b822980d2a33ae84810b43d09806c94adc8ab7aae7c51bd738454370178fcf` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--326a165a472ab668698b4286.md) | 173 | `declaration-track:326a165a472ab668698b4286ac4a7aa21b0f1a0a3ee1952d290cc97d3db08c69` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--8496492b5ba039b20f4a97fd.md) | 176 | `declaration-track:8496492b5ba039b20f4a97fd0b81e9d5dd09107f707612e2289f3610a8c3fa3b` |
| 21 | `lemma` | [preservesLimitsOfShape_of_eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/preserveslimitsofshape-of-eval--17664962298053060ca62741.md) | 183 | `result-track:17664962298053060ca6274135494a9d2957d1612b1bd086817e267d56cc2993` |
| 22 | `lemma` | [preservesColimitsOfShape_of_eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/preservescolimitsofshape-of-eval--599413bd818092d66383a5ff.md) | 192 | `result-track:599413bd818092d66383a5ffb85dc6d5e22d72a07f0a6cdd35b5b5a55021248b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--db11ae115bbcb89c819824dd.md) | 203 | `declaration-track:db11ae115bbcb89c819824dd495e20c2616082891fe69910aeefc2c1593b8cc0` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--a262744d00ffacc2f26bf616.md) | 210 | `declaration-track:a262744d00ffacc2f26bf61607034342d8fb215d9e7ba8aa9ec633f2d9874c6b` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--4d3936be657753cb38e577ae.md) | 217 | `declaration-track:4d3936be657753cb38e577aed9195f334b4e8cf06ba564122998dc0760ef5be5` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta0b715618228a6cf992971048af51048c90f05ede2ec92564d7f78d5e1f88d2c.lean/declarations/instance--bc73ccc15b5112f04c736cd7.md) | 219 | `declaration-track:bc73ccc15b5112f04c736cd7d6270cdeb58fe867e80600e617b00ca3bebe27e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
