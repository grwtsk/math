# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unit.Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21e52a45493b7509eac735a668bd8b71aba54cb6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21e52a45493b7509eac735a668bd8b71aba54cb6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.PUnit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [punitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021.lean/declarations/punitcone--f115f811978a59a1c7068f70.md) | 27 | `declaration-track:f115f811978a59a1c7068f7070e1f3ea1ac179b23fb3d0e636b75dc8b5f2adc6` |
| 2 | `def` | [punitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021.lean/declarations/punitcocone--c9cc5051edb8c78f87db1643.md) | 31 | `declaration-track:c9cc5051edb8c78f87db1643c84b10a898ea69d51b5f03ed606b10f087c622b0` |
| 3 | `def` | [punitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021.lean/declarations/punitconeislimit--64f913da084f542c774165ac.md) | 36 | `declaration-track:64f913da084f542c774165ac9c207a741a039ef5ba0aaef58fac497297ca5326` |
| 4 | `def` | [punitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021.lean/declarations/punitcoconeiscolimit--4ea429d4d5cda4e1166bbb76.md) | 41 | `declaration-track:4ea429d4d5cda4e1166bbb764f561e9f6677c036f55274396f8ed3e45027ad78` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021.lean/declarations/instance--53f9f542038ec70318c62ebb.md) | 44 | `declaration-track:53f9f542038ec70318c62ebb80483e8d24616f2934e82c892e4d633295ddea4c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021.lean/declarations/instance--152c4b77b75884e1b1695ac1.md) | 47 | `declaration-track:152c4b77b75884e1b1695ac1348a4e4a544283feb654d730c6ce4a77e313ab3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
