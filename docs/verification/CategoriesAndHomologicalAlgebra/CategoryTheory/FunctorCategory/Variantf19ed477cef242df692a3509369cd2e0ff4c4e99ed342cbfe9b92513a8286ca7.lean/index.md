# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2719da3453767367b775e08dbe27338c9049ac2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2719da3453767367b775e08dbe27338c9049ac2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.CommMon_` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Comon_` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/functorobj--b526b2fcd6522ae9876a1c63.md) | 53 | `declaration-track:b526b2fcd6522ae9876a1c631c24683e9f1cb0ff63d735d9b8e5dfdf7ecf58ee` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/functor--d8139852830c4973689c099f.md) | 72 | `declaration-track:d8139852830c4973689c099f41b98cdc349ecb79857d272b4a47510f733f58e6` |
| 3 | `def` | [inverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/inverseobj--66aec429d5255c8ac91b8d9e.md) | 83 | `declaration-track:66aec429d5255c8ac91b8d9ead771b4d3b25f1d9044b87547d2c88dee3ad6a35` |
| 4 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/inverse--bf42e3e7018c6766fe0595fb.md) | 92 | `declaration-track:bf42e3e7018c6766fe0595fbac962dfaa578b3e4c74814dbb1ed8f10692fb2bc` |
| 5 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/unitiso--8bd91ef156f63594cadddc97.md) | 102 | `declaration-track:8bd91ef156f63594cadddc9717db5949616215215c64adfce6f0ee3dd77b880c` |
| 6 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/counitiso--efecd4b3775a6ac3f251dab8.md) | 110 | `declaration-track:efecd4b3775a6ac3f251dab8ade62401ed2f4cbf80bbb0c18ea4affe87652464` |
| 7 | `def` | [monFunctorCategoryEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/monfunctorcategoryequivalence--a796c81037bc86fae5657c5c.md) | 123 | `declaration-track:a796c81037bc86fae5657c5c030bc43a13dd9cb0e54724a650367942432018e2` |
| 8 | `def` | [functorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/functorobj--ff2e6d70ffd1d208b32b2224.md) | 137 | `declaration-track:ff2e6d70ffd1d208b32b2224f1f23c558fcbd0794f7efa91c096452392619a17` |
| 9 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/functor--6402034e4e15ae83795edada.md) | 156 | `declaration-track:6402034e4e15ae83795edada4ef5930b36df9fd9f59b0dfd5c8e524cd4ea284d` |
| 10 | `def` | [inverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/inverseobj--aa4205d098ce048710c60982.md) | 167 | `declaration-track:aa4205d098ce048710c609823ec3284ebbf5bb790c51bbe85a3b65df493ccc0f` |
| 11 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/inverse--eef8347edfda411ce340a587.md) | 176 | `declaration-track:eef8347edfda411ce340a5878f985f05368a3577534fe95d3ba9952be8307095` |
| 12 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/unitiso--b12d67c3d3b47f387c26da63.md) | 188 | `declaration-track:b12d67c3d3b47f387c26da63c143fa1732a6733b031e6a8e093929b9cbdc8627` |
| 13 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/counitiso--3ab497da9ed7c4563f1474be.md) | 196 | `declaration-track:3ab497da9ed7c4563f1474bed710b44ca725ff699a3f74580e50065aa6489993` |
| 14 | `def` | [comonFunctorCategoryEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/comonfunctorcategoryequivalence--8ff52f5d0122765f38e82663.md) | 209 | `declaration-track:8ff52f5d0122765f38e8266317d7787146660d58b2450b741333268862949fe4` |
| 15 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/functor--2b5cad8ae730e72d94ab225e.md) | 225 | `declaration-track:2b5cad8ae730e72d94ab225e8733f3d5cc01809450a3027936b03a397560c753` |
| 16 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/inverse--faffbc1c87d07ea6ff01c43b.md) | 237 | `declaration-track:faffbc1c87d07ea6ff01c43bbf21834d428f500d68bbad9910dd2a6f21a6b428` |
| 17 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/unitiso--5f5eb3f3301aad0f38677b64.md) | 246 | `declaration-track:5f5eb3f3301aad0f38677b6406ac246839246e4a753960319c90bd8b5e5fcb12` |
| 18 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/counitiso--be2900408155764fde31f9b1.md) | 254 | `declaration-track:be2900408155764fde31f9b117336cfd358154cce8118c6bb6d9c2b9fa69af28` |
| 19 | `def` | [commMonFunctorCategoryEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf19ed477cef242df692a3509369cd2e0ff4c4e99ed342cbfe9b92513a8286ca7.lean/declarations/commmonfunctorcategoryequivalence--c43b4ac4f62e82e19527feeb.md) | 267 | `declaration-track:c43b4ac4f62e82e19527feeb2b55ec0dc7c2455f45726425221851bbbbc9b89b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
