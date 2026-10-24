# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d639b133d1231fdc04d53260ef39d709db9ac511",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d639b133d1231fdc04d53260ef39d709db9ac511`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.ULift` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [discreteFintype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29.lean/declarations/discretefintype--7eca0880890c2564c8cbd677.md) | 30 | `declaration-track:7eca0880890c2564c8cbd677696ba76e02221c7856ab34ead9dd632c73614c6b` |
| 2 | `instance` | [discreteHomFintype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29.lean/declarations/discretehomfintype--6954136539321733b3ac8be2.md) | 33 | `declaration-track:6954136539321733b3ac8be2c0f9a5f5b8b25d57df4c8e16132ced0253712400` |
| 3 | `class` | [FinCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29.lean/declarations/fincategory--16b3e517a1c86354d40366f9.md) | 38 | `declaration-track:16b3e517a1c86354d40366f9649a85caa13878344cd740418686fb142906c819` |
| 4 | `instance` | [finCategoryDiscreteOfFintype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29.lean/declarations/fincategorydiscreteoffintype--2ce1dcd4cd3267cdda93dfa3.md) | 44 | `declaration-track:2ce1dcd4cd3267cdda93dfa3f227ab5c286f7b48bb69f19d24307aa7614020d8` |
| 5 | `instance` | [finCategoryOpposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29.lean/declarations/fincategoryopposite--f8934c1ed2acd9163817523b.md) | 50 | `declaration-track:f8934c1ed2acd9163817523b0e3363997270358dea8240d5529a61f7dfcb64db` |
| 6 | `instance` | [finCategoryUlift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant35aa0a13f10d88daf57431638877b981ac53e17bcae68953b122481ba4ddae29.lean/declarations/fincategoryulift--05399e3c0a7c28524fe1ee08.md) | 55 | `declaration-track:05399e3c0a7c28524fe1ee0851b0f804f4c37829c6f864a3afb9838d8f192bc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
