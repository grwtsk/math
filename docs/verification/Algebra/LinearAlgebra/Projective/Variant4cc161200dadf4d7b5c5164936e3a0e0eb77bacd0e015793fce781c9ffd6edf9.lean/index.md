# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83bd7e1cc4bda8a9c50c11712d422bcc8cf86afa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83bd7e1cc4bda8a9c50c11712d422bcc8cf86afa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.FinitePresentation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Submodule` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Module.free_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean/declarations/module-free-of-islocalizedmodule--f6bfc5f4edf99e5b86c020fd.md) | 33 | `result-track:f6bfc5f4edf99e5b86c020fde28bf2ccb7863acdc498bd596949ba2c33d57105` |
| 2 | `theorem` | [Module.lift_rank_of_isLocalizedModule_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean/declarations/module-lift-rank-of-islocalizedmodule-of-free--99d587821a643460029756b4.md) | 44 | `result-track:99d587821a643460029756b40580965a50af32b1364c60b39cc460528236778c` |
| 3 | `theorem` | [Module.finrank_of_isLocalizedModule_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean/declarations/module-finrank-of-islocalizedmodule-of-free--28c762eb8fb8c10b90659995.md) | 58 | `result-track:28c762eb8fb8c10b90659995866df63c18ffc57c3c462c043fb2cb85ab567e1a` |
| 4 | `theorem` | [Module.projective_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean/declarations/module-projective-of-islocalizedmodule--a639209b62f68fe942062fca.md) | 66 | `result-track:a639209b62f68fe942062fcaf2e6d6bc9fca153a261fcdcb75d6927ae4eb7634` |
| 5 | `theorem` | [LinearMap.split_surjective_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean/declarations/linearmap-split-surjective-of-localization-maximal--f4da801d0ced0da3bcedf016.md) | 72 | `result-track:f4da801d0ced0da3bcedf0167a2f6e8f5588ef451c8597307ca8bb3e11952038` |
| 6 | `theorem` | [Module.projective_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean/declarations/module-projective-of-localization-maximal--b2d614b75a7ba3d471419acb.md) | 120 | `result-track:b2d614b75a7ba3d471419acb7ac3c2d9fe6bed283fd69d4e9c8c3b8b000fba4b` |
| 7 | `theorem` | [Module.projective_of_localization_maximal'](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant4cc161200dadf4d7b5c5164936e3a0e0eb77bacd0e015793fce781c9ffd6edf9.lean/declarations/module-projective-of-localization-maximal--b28ac479837811fd65d591c9.md) | 157 | `result-track:b28ac479837811fd65d591c9d7696e57d7df002049aea98927812f480d599918` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
