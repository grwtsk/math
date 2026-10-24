# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grp.Variant5e9488d9de726244042e42fe43ffc6c659c924d1c758085ef53ff201b25081b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a985b8ea2ac4dc017c6d6342e593c6e0c89cf28c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant5e9488d9de726244042e42fe43ffc6c659c924d1c758085ef53ff201b25081b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant5e9488d9de726244042e42fe43ffc6c659c924d1c758085ef53ff201b25081b6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant5e9488d9de726244042e42fe43ffc6c659c924d1c758085ef53ff201b25081b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a985b8ea2ac4dc017c6d6342e593c6e0c89cf28c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant5e9488d9de726244042e42fe43ffc6c659c924d1c758085ef53ff201b25081b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant5e9488d9de726244042e42fe43ffc6c659c924d1c758085ef53ff201b25081b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Internal.Types.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Grp_` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [grpGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant5e9488d9de726244042e42fe43ffc6c659c924d1c758085ef53ff201b25081b6.lean/declarations/grpgroup--0f842339e04d3c07559226b6.md) | 25 | `declaration-track:0f842339e04d3c07559226b61c62b284b21ee9285154442586cf8c459677031c` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant5e9488d9de726244042e42fe43ffc6c659c924d1c758085ef53ff201b25081b6.lean/declarations/functor--2c313d97172ff3af8d9cdd2a.md) | 31 | `declaration-track:2c313d97172ff3af8d9cdd2a6e6a5072d16d57acbc39e37fe2a3d25291d5375f` |
| 3 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant5e9488d9de726244042e42fe43ffc6c659c924d1c758085ef53ff201b25081b6.lean/declarations/inverse--a739d3a39599fbb65f4cd893.md) | 36 | `declaration-track:a739d3a39599fbb65f4cd893e9d497b72ee859a3f105b9221aee3dcc6a47e266` |
| 4 | `def` | [grpTypeEquivalenceGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant5e9488d9de726244042e42fe43ffc6c659c924d1c758085ef53ff201b25081b6.lean/declarations/grptypeequivalencegrp--52e3b0f70151e37382bc4fa3.md) | 51 | `declaration-track:52e3b0f70151e37382bc4fa3ec98adeb1ef5ddc3585784c406bafe0d92b5c7c0` |
| 5 | `def` | [grpTypeEquivalenceGrpForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant5e9488d9de726244042e42fe43ffc6c659c924d1c758085ef53ff201b25081b6.lean/declarations/grptypeequivalencegrpforget--375ded328e5f31f6f9dfff19.md) | 62 | `declaration-track:375ded328e5f31f6f9dfff19c4b1597b943fa69be0fce9bdacf447640c11d543` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
