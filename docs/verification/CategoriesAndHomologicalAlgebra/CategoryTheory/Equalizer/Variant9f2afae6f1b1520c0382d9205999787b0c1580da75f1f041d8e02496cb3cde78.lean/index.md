# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizer.Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7af425c4cdd90ec9141c6169862cc2fd5d32f319",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7af425c4cdd90ec9141c6169862cc2fd5d32f319`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subpresheaf.Image` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer--a7c7a8c7ac918229cc1c9e43.md) | 39 | `declaration-track:a7c7a8c7ac918229cc1c9e43432a5c5ab3a9d30b5271068210c68207d5645e2b` |
| 2 | `lemma` | [equalizer_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer-le--493928c137e7771460a2ce0d.md) | 49 | `result-track:493928c137e7771460a2ce0dd756e364742d311347aea527fad6b777d51fa513` |
| 3 | `lemma` | [equalizer_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer-self--1a745eaea4c844b23b39105a.md) | 53 | `result-track:1a745eaea4c844b23b39105a614f82e6be2fc77678d0ba8a67ec46e20720af9a` |
| 4 | `lemma` | [mem_equalizer_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/mem-equalizer-iff--e6f69475c6adebc1bfe9ec33.md) | 55 | `result-track:e6f69475c6adebc1bfe9ec330190f7c7b522aa575a5df66310f36e520a77718f` |
| 5 | `lemma` | [range_le_equalizer_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/range-le-equalizer-iff--ccdc85547c1859eea01f3f36.md) | 59 | `result-track:ccdc85547c1859eea01f3f36deec9ff3f34a01fb24648575a108ddcbc462e4ce` |
| 6 | `lemma` | [equalizer_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer-eq-iff--a966e710cb73df017f1c4306.md) | 64 | `result-track:a966e710cb73df017f1c4306fe9d8168111eab48407a14460fb8fda74ab59f04` |
| 7 | `def` | [equalizer.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer--6891eadf6739d211024496b8.md) | 77 | `declaration-track:6891eadf6739d211024496b8d570fc6ce85bef250d7f1164b1832cde1c273c42` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/instance--519294116705cc5698e32714.md) | 80 | `declaration-track:519294116705cc5698e32714c0155e7c9167c70ae0b5edc8d4d3647f1aaaa992` |
| 9 | `lemma` | [equalizer.ι_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer--7add995a4baf56f9dc8ebe89.md) | 85 | `result-track:7add995a4baf56f9dc8ebe890f3755c527fe130727d0b7f635ba5d973d81462e` |
| 10 | `lemma` | [equalizer.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer-condition--3c772beaf71d4c1263db47b1.md) | 88 | `result-track:3c772beaf71d4c1263db47b1776ba732e0390420121e715b1eeec6212248d2b6` |
| 11 | `def` | [equalizer.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer-lift--d8c15062f167a8bb737dffbf.md) | 96 | `declaration-track:d8c15062f167a8bb737dffbf90d009faa6499ff8d880d91558077c76af0ebbc4` |
| 12 | `lemma` | [equalizer.lift_ι'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer-lift--f926f6fbdc5e2c0bb6355dc2.md) | 102 | `result-track:f926f6fbdc5e2c0bb6355dc27b9939ad2ffa8e85a7b480ae2e3204ef6d4c9a1d` |
| 13 | `lemma` | [equalizer.lift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer-lift--8afe008f3b523be779302989.md) | 108 | `result-track:8afe008f3b523be7793029893be39b5e3c0a920faddc10799fbbb7a7380c9679` |
| 14 | `def` | [equalizer.fork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer-fork--59802c6409812263587ab998.md) | 116 | `declaration-track:59802c6409812263587ab998ba29566fb84891f9846225836de0a6785f3fc08e` |
| 15 | `lemma` | [equalizer.fork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer-fork--4e8f7d1ed469b3b424834e33.md) | 120 | `result-track:4e8f7d1ed469b3b424834e337be2b40c289ed09626fca09f5cce92b908161dac` |
| 16 | `def` | [equalizer.forkIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant9f2afae6f1b1520c0382d9205999787b0c1580da75f1f041d8e02496cb3cde78.lean/declarations/equalizer-forkislimit--a0df5ab890d0f78fec9449e1.md) | 124 | `declaration-track:a0df5ab890d0f78fec9449e11324d512c2dd230bd8ae031a54030850fe0ee5ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
