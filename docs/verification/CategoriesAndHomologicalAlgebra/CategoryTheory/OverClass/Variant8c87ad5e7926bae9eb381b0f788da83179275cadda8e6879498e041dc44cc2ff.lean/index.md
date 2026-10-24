# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OverClass.Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13b7b4bbc10e29295a24b7c9a995a02a8c1a9e14",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13b7b4bbc10e29295a24b7c9a995a02a8c1a9e14`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Reassoc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OverClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/overclass--f46185f70b321f1fad87fa3c.md) | 47 | `declaration-track:f46185f70b321f1fad87fa3c7c6ad3092ba3900ab7c412a091ae0c77e15207ea` |
| 2 | `def` | [over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/over--16f9228320a5e042a05d86a1.md) | 56 | `declaration-track:16f9228320a5e042a05d86a13aea4512f9518aedccb3e7041dd38ef7643f4883` |
| 3 | `def` | [OverClass.Simps.over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/overclass-simps-over--25e4770bed8a2f36046d5106.md) | 62 | `declaration-track:25e4770bed8a2f36046d5106948220fe4a5e8cbdd52de1a86217857c5805bd98` |
| 4 | `class` | [CanonicallyOverClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/canonicallyoverclass--17e018e6816fd26a980603cf.md) | 71 | `declaration-track:17e018e6816fd26a980603cf380588d24ec16dcac6659cfa8575abb3ee72d444` |
| 5 | `def` | [CanonicallyOverClass.Simps.over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/canonicallyoverclass-simps-over--60203540867736907c0298fd.md) | 74 | `declaration-track:60203540867736907c0298fd6098d5764843a6bb5f81df17b10ddb4b87c83ddd` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/instance--1e2074a60ab6b950685e6c30.md) | 79 | `declaration-track:1e2074a60ab6b950685e6c3062a5247f7cb065ec7dad4383455e501287e45200` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/instance--cdf5aad44ed5b7aca51211af.md) | 81 | `declaration-track:cdf5aad44ed5b7aca51211aff1474f95a23c6b7b843b133148cb51e2c5b03504` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/instance--77a65d73fc7894a57cc3893e.md) | 85 | `declaration-track:77a65d73fc7894a57cc3893ee0796cce6279f29e140085bf1d17998d54a6677b` |
| 9 | `class` | [HomIsOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/homisover--be8aeb917e528daea35e6038.md) | 90 | `declaration-track:be8aeb917e528daea35e6038516f2a049ec63009f851011d32ac748881dae063` |
| 10 | `lemma` | [comp_over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/comp-over--6f48a5807c45b80bd9e68661.md) | 94 | `result-track:6f48a5807c45b80bd9e68661f128ab688e7d2591829a6f673f7e771418410c48` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/instance--1cef7016dcc738af8ea54adf.md) | 98 | `declaration-track:1cef7016dcc738af8ea54adf92d4535ffd973ff935c72983c56fe8e106730ec2` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/instance--dc9cf9e7804a5f0186fe9688.md) | 100 | `declaration-track:dc9cf9e7804a5f0186fe968839be5ff42a0113b2c8f646002570060120e8c89f` |
| 13 | `abbrev` | [IsOverTower](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/isovertower--f8c2275a229bc1f23df939eb.md) | 106 | `declaration-track:f8c2275a229bc1f23df939ebc60005317967f3a821ad007da6e3c39d547c0127` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/instance--c4cb02ef323715d4e63c9c44.md) | 109 | `declaration-track:c4cb02ef323715d4e63c9c44fce3603c4c548574c1351d46952214f6f9258123` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/instance--189e6be5da14dad9d2a5743d.md) | 110 | `declaration-track:189e6be5da14dad9d2a5743db162ca8a1bfaad9b481a3feaf337fd242af53c0c` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/instance--151316915b66bd19416ac56a.md) | 112 | `declaration-track:151316915b66bd19416ac56a02d42591c1c09ac427d6dc37e38133e81f91fafd` |
| 17 | `lemma` | [homIsOver_of_isOverTower](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/homisover-of-isovertower--c0a5b661ab403162a6234d9f.md) | 115 | `result-track:c0a5b661ab403162a6234d9fe781ebe0c7401e62a9d549a15372269c159cf7ab` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/instance--4b1191ae2829c510c1fecc98.md) | 121 | `declaration-track:4b1191ae2829c510c1fecc98add3dfdf461c15910abae96312d96e9fffc66899` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/instance--78061357bcdbc684cd022b31.md) | 126 | `declaration-track:78061357bcdbc684cd022b31a0c9097929a01553d1c588a0bb1e48ddf6f85b2b` |
| 20 | `def` | [OverClass.asOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/overclass-asover--6bddf0880298c3b44aa60af9.md) | 134 | `declaration-track:6bddf0880298c3b44aa60af9896339ad0c438efaf317b1dc31fe393a02593349` |
| 21 | `def` | [OverClass.asOverHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/overclass-asoverhom--5459011e292a0f1adae763c0.md) | 138 | `declaration-track:5459011e292a0f1adae763c0e2e5f1d68186d7f6643566f839654d55b86bff23` |
| 22 | `instance` | [OverClass.fromOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/overclass-fromover--4e034a48e70ce4096cd2c160.md) | 143 | `declaration-track:4e034a48e70ce4096cd2c160427742a6c3bf2213e592eddc039f1329af90c255` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverClass/Variant8c87ad5e7926bae9eb381b0f788da83179275cadda8e6879498e041dc44cc2ff.lean/declarations/instance--e2741db4f8ff1eb5290538a1.md) | 146 | `declaration-track:e2741db4f8ff1eb5290538a1432038737ef304dcb630c01d4be18b1749892076` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
