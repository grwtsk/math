# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d81d1751b0c66fe1ebbb20e90d22a5e7e9b72563",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d81d1751b0c66fe1ebbb20e90d22a5e7e9b72563`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean/declarations/prod--68683b95c33419e6f18eb158.md) | 28 | `declaration-track:68683b95c33419e6f18eb158cd4d615c2a993ab9db43d123e619523743356355` |
| 2 | `theorem` | [coe_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean/declarations/coe-prod--28fa82e8e1a30fe983279e13.md) | 34 | `result-track:28fa82e8e1a30fe983279e13b447c7224216673d23af7c32710554b14386aa81` |
| 3 | `theorem` | [prod_toSubmodule](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean/declarations/prod-tosubmodule--f324fefd9c8b006f2d7377b1.md) | 38 | `result-track:f324fefd9c8b006f2d7377b14481849ae803515260396ab7d624d00a0b6a488d` |
| 4 | `theorem` | [mem_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean/declarations/mem-prod--e4c8584599b8e5c7c5762da1.md) | 41 | `result-track:e4c8584599b8e5c7c5762da1f95d6bc8dd821172979319f27eba8a6b433467e6` |
| 5 | `theorem` | [prod_top](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean/declarations/prod-top--58a28fdc5256b592ebf51c1a.md) | 45 | `result-track:58a28fdc5256b592ebf51c1a700b39f4641c8917abacef783cf9514d57818cc4` |
| 6 | `theorem` | [prod_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean/declarations/prod-mono--27eface26be87c6a7fe42e30.md) | 47 | `result-track:27eface26be87c6a7fe42e30ce974f334137cfea7d6c86f42f7bece81b112705` |
| 7 | `theorem` | [prod_inf_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant3782811b123e8e0d3045ddb56420ea1987e677b72a829aa1eceae4d78b25e3c4.lean/declarations/prod-inf-prod--23024c558025ee0b54a93fca.md) | 52 | `result-track:23024c558025ee0b54a93fca56a99872837ebddfe5e894afcb206e39b666ca2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
