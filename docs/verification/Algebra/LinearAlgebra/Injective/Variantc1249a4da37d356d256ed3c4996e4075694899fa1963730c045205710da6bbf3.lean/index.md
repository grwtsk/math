# Verification target: GRWTSK.Algebra.LinearAlgebra.Injective.Variantc1249a4da37d356d256ed3c4996e4075694899fa1963730c045205710da6bbf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eb46d08178a4379fda9aad62dfda8e87347de08",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variantc1249a4da37d356d256ed3c4996e4075694899fa1963730c045205710da6bbf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantc1249a4da37d356d256ed3c4996e4075694899fa1963730c045205710da6bbf3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantc1249a4da37d356d256ed3c4996e4075694899fa1963730c045205710da6bbf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eb46d08178a4379fda9aad62dfda8e87347de08`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Injective/Variantc1249a4da37d356d256ed3c4996e4075694899fa1963730c045205710da6bbf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Injective/Variantc1249a4da37d356d256ed3c4996e4075694899fa1963730c045205710da6bbf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.ZModuleEquivalence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Injective` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Module.Baer.of_divisible](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantc1249a4da37d356d256ed3c4996e4075694899fa1963730c045205710da6bbf3.lean/declarations/module-baer-of-divisible--e541e69cc597fd4e764a881c.md) | 53 | `result-track:e541e69cc597fd4e764a881c85b1140289552bf7ca0a7bbed5586e1cc6d81fc0` |
| 2 | `theorem` | [injective_as_module_iff](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantc1249a4da37d356d256ed3c4996e4075694899fa1963730c045205710da6bbf3.lean/declarations/injective-as-module-iff--eb30833512b7f5f6762be91c.md) | 68 | `result-track:eb30833512b7f5f6762be91cec81ae1d90c9b806984b27991b7c0134a2143cf1` |
| 3 | `instance` | [injective_of_divisible](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantc1249a4da37d356d256ed3c4996e4075694899fa1963730c045205710da6bbf3.lean/declarations/injective-of-divisible--3fd1a12c71d9c06d8bb63474.md) | 72 | `declaration-track:3fd1a12c71d9c06d8bb634746528e6b95dce4464c2bfbad4e3b58114aed932b9` |
| 4 | `instance` | [injective_ratCircle](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantc1249a4da37d356d256ed3c4996e4075694899fa1963730c045205710da6bbf3.lean/declarations/injective-ratcircle--dceec590c46fa9dfb55a5211.md) | 77 | `declaration-track:dceec590c46fa9dfb55a52119b53744f56e2e998287e856d2e173a864cce3b27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
