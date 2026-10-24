# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizer.Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bf3b92e0038f8a182157bc8fbfa28c74ceff2cb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bf3b92e0038f8a182157bc8fbfa28c74ceff2cb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Reflexive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.SplitEqualizer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CofreeEqualizer.topMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/cofreeequalizer-topmap--44089e798b77676f028b2f4d.md) | 53 | `declaration-track:44089e798b77676f028b2f4d17032a62f0dac354c9df0678260acf1b850db2dc` |
| 2 | `def` | [CofreeEqualizer.bottomMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/cofreeequalizer-bottommap--6c013d99092145b3f0784377.md) | 58 | `declaration-track:6c013d99092145b3f0784377394c65ef46ca9b4152bb43848c028dca49667c86` |
| 3 | `def` | [CofreeEqualizer.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/cofreeequalizer--490d729113e5fc69ff3206c2.md) | 65 | `declaration-track:490d729113e5fc69ff3206c212947661f43b7e7c98cdb5cc19b471fe0870ef3d` |
| 4 | `theorem` | [CofreeEqualizer.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/cofreeequalizer-condition--4b7e7502d73468c082c90a8e.md) | 69 | `result-track:4b7e7502d73468c082c90a8ea7656f90b0a3322e82acdf01f4dfa6b91f70c10b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/instance--0ab8899952becefb48fd9466.md) | 74 | `declaration-track:0ab8899952becefb48fd9466459ded6ed0cf08f54d04dc67d4a77e526363155b` |
| 6 | `def` | [beckCoalgebraFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/beckcoalgebrafork--3c50aebbfc1352c5a7cc3cbc.md) | 87 | `declaration-track:3c50aebbfc1352c5a7cc3cbccab270ae231e2889eb569ac6aee7c6d07674cd41` |
| 7 | `def` | [beckCoalgebraEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/beckcoalgebraequalizer--849ab0fee31f76b2e8019b49.md) | 93 | `declaration-track:849ab0fee31f76b2e8019b49d9132065b496954972ca8102933d084773d03da6` |
| 8 | `def` | [beckSplitEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/becksplitequalizer--9a74352ab2fe2cec22e54b0c.md) | 114 | `declaration-track:9a74352ab2fe2cec22e54b0cbaab3385edbef8c87f43d7e39cf058ff61e0d6f1` |
| 9 | `def` | [beckFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/beckfork--318f42036513779c0cec2e4c.md) | 119 | `declaration-track:318f42036513779c0cec2e4c3893905201d73ec6d678711bc5f0b198c8b4731a` |
| 10 | `theorem` | [beckFork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/beckfork--b45b607be0bd37ae290f4844.md) | 123 | `result-track:b45b607be0bd37ae290f48449a93153fd8b06c909bd554a6b9ebe80b0161f08f` |
| 11 | `def` | [beckEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/beckequalizer--36f631fa9ce91f72469bcca0.md) | 127 | `declaration-track:36f631fa9ce91f72469bcca0bfbbe51b75b6d89ffd99f016d1e29fee26b618a9` |
| 12 | `theorem` | [beckEqualizer_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/declarations/beckequalizer-lift--abc78b7ff816df54b5fd20b1.md) | 131 | `result-track:abc78b7ff816df54b5fd20b159a100f6a2d4ec43ac3d214c08f1ba4bd4c0034e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
