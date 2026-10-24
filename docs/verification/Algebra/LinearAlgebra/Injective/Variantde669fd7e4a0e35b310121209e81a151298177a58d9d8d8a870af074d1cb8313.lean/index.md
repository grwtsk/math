# Verification target: GRWTSK.Algebra.LinearAlgebra.Injective.Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84a8a2b1a1db0c43289e29a6013995c4c02f0a6f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84a8a2b1a1db0c43289e29a6013995c4c02f0a6f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.ZModuleEquivalence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Injective` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Module.Baer.of_divisible](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean/declarations/module-baer-of-divisible--0d3c9933818baf0ddeb1747c.md) | 45 | `result-track:0d3c9933818baf0ddeb1747cffb00666da6fc4d26d6bdd5b7019c840af3134c4` |
| 2 | `theorem` | [injective_as_module_iff](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean/declarations/injective-as-module-iff--ce69bc74ec79e2e8f41a7880.md) | 60 | `result-track:ce69bc74ec79e2e8f41a78805217e3026413cb5716f3151e8b0bf752fb6a6a21` |
| 3 | `instance` | [injective_of_divisible](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean/declarations/injective-of-divisible--25ad8fb96e2458f1fbc5caca.md) | 64 | `declaration-track:25ad8fb96e2458f1fbc5cacaa2b281a3497d45d007aab569acc84cffa7dc789e` |
| 4 | `instance` | [injective_ratCircle](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean/declarations/injective-ratcircle--42994979df0acb0dcb0ec83f.md) | 69 | `declaration-track:42994979df0acb0dcb0ec83fdda65380b83d92f1f8bf503a72518721459c25f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
