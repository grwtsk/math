# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limit.Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63115add87900e6942226c45ceb4c2f7e924f47b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63115add87900e6942226c45ceb4c2f7e924f47b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [categoryObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/declarations/categoryobjects--06eccb508d8dc19e0ed54949.md) | 37 | `declaration-track:06eccb508d8dc19e0ed549490a4d11ec12fa980d43cf28ec6ae5e9b03a71ad8d` |
| 2 | `def` | [homDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/declarations/homdiagram--33de40e5891041e8993192b2.md) | 44 | `declaration-track:33de40e5891041e8993192b284992f955ef82b15d40f1b9fb3cd48b249868918` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/declarations/instance--1cfecd024116759f4bd02f0b.md) | 60 | `declaration-track:1cfecd024116759f4bd02f0bd8fe631596133e44c62f63005cb99aebc33da30f` |
| 4 | `def` | [limitConeX](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/declarations/limitconex--1414be1ad830987cafcbe34c.md) | 77 | `declaration-track:1414be1ad830987cafcbe34c5aeab76feda3e4d12bd442d127f15100d4c8dfbf` |
| 5 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/declarations/limitcone--a232cae05f87d483eaad2f4b.md) | 81 | `declaration-track:a232cae05f87d483eaad2f4bc9c9c67a01084ed25b96415c55fd4c4c3e6c1f86` |
| 6 | `def` | [limitConeLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/declarations/limitconelift--7b58abe2c86d83ebdba51af5.md) | 93 | `declaration-track:7b58abe2c86d83ebdba51af5dc86ef2832cef59331645610f88925e030eb23d1` |
| 7 | `theorem` | [limit_π_homDiagram_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/declarations/limit-homdiagram-eqtohom--ae847697e1e86492058f9d48.md) | 115 | `result-track:ae847697e1e86492058f9d4866037b12a94065dace3dbcb4c867cc53277d9620` |
| 8 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/declarations/limitconeislimit--a8bbf8b19e952eb50a663daa.md) | 123 | `declaration-track:a8bbf8b19e952eb50a663daace0c22bdad094049d9c0b92ca1ec306fcae3de08` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/declarations/instance--9a8f53d854b54a48f54047d4.md) | 142 | `declaration-track:9a8f53d854b54a48f54047d4af3a118938bc3826f35750759015521f52f5d67a` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/declarations/instance--fb16275f5a2c6ecbe89bf3da.md) | 146 | `declaration-track:fb16275f5a2c6ecbe89bf3da273990ee8baa709d0a0bc0ee8e12c1464de5cd99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
