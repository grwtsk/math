# Verification target: GRWTSK.Algebra.LinearAlgebra.Injective.Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6905268c0fc3f38ee044e167d369ca0b4c2f6e66",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6905268c0fc3f38ee044e167d369ca0b4c2f6e66`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Injective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Divisible` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [injective_of_injective_as_module](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean/declarations/injective-of-injective-as-module--5bfaa0f2dacb79eac0e99238.md) | 36 | `result-track:5bfaa0f2dacb79eac0e992388e03856557083a394b310540e5db76d8e8cc03b5` |
| 2 | `theorem` | [injective_as_module_of_injective_as_Ab](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean/declarations/injective-as-module-of-injective-as-ab--026560e1418ff22948d22908.md) | 71 | `result-track:026560e1418ff22948d22908abf993e26618efa2934540d22681e9b7ce09c51e` |
| 3 | `instance` | [injective_of_divisible](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean/declarations/injective-of-divisible--b5300052fa5e1aae847e8bb9.md) | 109 | `declaration-track:b5300052fa5e1aae847e8bb9b082a6d1801c3d55423faa96843e613d32ff1939` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
