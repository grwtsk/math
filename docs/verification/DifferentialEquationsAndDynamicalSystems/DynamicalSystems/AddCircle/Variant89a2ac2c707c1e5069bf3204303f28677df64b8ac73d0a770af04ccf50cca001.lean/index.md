# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.AddCircle.Variant89a2ac2c707c1e5069bf3204303f28677df64b8ac73d0a770af04ccf50cca001

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8948e6910337235dde35465801ebce0f0fd2027",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant89a2ac2c707c1e5069bf3204303f28677df64b8ac73d0a770af04ccf50cca001.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant89a2ac2c707c1e5069bf3204303f28677df64b8ac73d0a770af04ccf50cca001.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant89a2ac2c707c1e5069bf3204303f28677df64b8ac73d0a770af04ccf50cca001.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8948e6910337235dde35465801ebce0f0fd2027`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant89a2ac2c707c1e5069bf3204303f28677df64b8ac73d0a770af04ccf50cca001.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant89a2ac2c707c1e5069bf3204303f28677df64b8ac73d0a770af04ccf50cca001.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.AddCircle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.Ergodic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.DensityTheorem` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.Iterate` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_empty_or_univ_of_forall_vadd_ae_eq_self](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant89a2ac2c707c1e5069bf3204303f28677df64b8ac73d0a770af04ccf50cca001.lean/declarations/ae-empty-or-univ-of-forall-vadd-ae-eq-self--ba9ec820c1a3e619bd04ed44.md) | 51 | `result-track:ba9ec820c1a3e619bd04ed44966ee3ad434f7353c48596d4de60b2f1b1f17046` |
| 2 | `theorem` | [ergodic_zsmul](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant89a2ac2c707c1e5069bf3204303f28677df64b8ac73d0a770af04ccf50cca001.lean/declarations/ergodic-zsmul--9e487346ce95f2aea95ecbc3.md) | 110 | `result-track:9e487346ce95f2aea95ecbc34992f6d6e4cb6c0d6529b4e7fbb50f45e18a406f` |
| 3 | `theorem` | [ergodic_nsmul](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant89a2ac2c707c1e5069bf3204303f28677df64b8ac73d0a770af04ccf50cca001.lean/declarations/ergodic-nsmul--56da5f05845e993200d9fa70.md) | 129 | `result-track:56da5f05845e993200d9fa70e6db5da2b5b722a6956c26caf1d0638e68aab51c` |
| 4 | `theorem` | [ergodic_zsmul_add](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant89a2ac2c707c1e5069bf3204303f28677df64b8ac73d0a770af04ccf50cca001.lean/declarations/ergodic-zsmul-add--ed930e07b8bf5e69ec71d9bd.md) | 133 | `result-track:ed930e07b8bf5e69ec71d9bdc0ac9b5e91dd0d8399ba8170d4e5debde6007dd2` |
| 5 | `theorem` | [ergodic_nsmul_add](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant89a2ac2c707c1e5069bf3204303f28677df64b8ac73d0a770af04ccf50cca001.lean/declarations/ergodic-nsmul-add--09fbb0b3d412fac09fef467c.md) | 151 | `result-track:09fbb0b3d412fac09fef467ced3a6501f3e71288695aa93e2283f31dc412c8b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
