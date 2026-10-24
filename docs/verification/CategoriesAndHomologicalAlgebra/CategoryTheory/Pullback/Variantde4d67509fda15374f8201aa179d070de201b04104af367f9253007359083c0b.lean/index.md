# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullback.Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcf21c72976dbc06a06b9efb7e0cefb9b2bde992",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcf21c72976dbc06a06b9efb7e0cefb9b2bde992`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Restrict` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Flat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Continuous` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LeftExact` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sheafPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/declarations/sheafpullback--25c1dbae344354d61a8b2544.md) | 59 | `declaration-track:25c1dbae344354d61a8b25447ad90c29919d16a7f4f87a05146c62d1185c4265` |
| 2 | `def` | [sheafAdjunctionContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/declarations/sheafadjunctioncontinuous--5d5e44290e144b9483acff60.md) | 63 | `declaration-track:5d5e44290e144b9483acff600636bdcf302d44cd23d7ded24965fa7449ccbdba` |
| 3 | `def` | [sheafPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/declarations/sheafpullback--5aa14697b63961a914c732f7.md) | 74 | `declaration-track:5aa14697b63961a914c732f72c95a4c02e8bfda54fc2c3e74c1c9148052c01e3` |
| 4 | `def` | [sheafAdjunctionContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/declarations/sheafadjunctioncontinuous--640ea696e76cba25587c4e94.md) | 79 | `declaration-track:640ea696e76cba25587c4e94b887728108aa4a2bc7f3aec3fbf6728f919a7657` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/declarations/instance--262190debb36856f015d1ae9.md) | 84 | `declaration-track:262190debb36856f015d1ae9bc2425ea35abf8145916a3e8d4c7cb169de43e54` |
| 6 | `def` | [sheafPullbackIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/declarations/sheafpullbackiso--35d076a94f4425674469bd49.md) | 89 | `declaration-track:35d076a94f4425674469bd49e4fa12e9c84acff582c8bb740f04c01b6cd9c085` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/declarations/instance--f987940633b872efa1827020.md) | 97 | `declaration-track:f987940633b872efa18270208dd2ecd94b57e8320b1d8c1a1eb8b2917f866ada` |
| 8 | `instance` | [preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/declarations/preservesfinitelimits--d92283d21e3fa0d636de61d0.md) | 102 | `declaration-track:d92283d21e3fa0d636de61d02f1129288a4b48861167e54c026f4fc34ffadc02` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/declarations/example--68a2f288bbbef844fa36a3ef.md) | 121 | `declaration-track:68a2f288bbbef844fa36a3ef0d647b01cb30a69978736e4bb03fd428f19fd89d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/declarations/instance--94c039743888bbf4537441c5.md) | 124 | `declaration-track:94c039743888bbf4537441c5c3713ede9b4832410fd7dd9440229a8e4217dbfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
