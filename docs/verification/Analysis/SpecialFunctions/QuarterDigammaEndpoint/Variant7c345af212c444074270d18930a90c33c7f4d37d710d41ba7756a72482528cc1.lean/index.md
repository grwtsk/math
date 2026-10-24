# Verification target: GRWTSK.Analysis.SpecialFunctions.QuarterDigammaEndpoint.Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2941a1587acbb643ac5401a9d1a090f447e14ad9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2941a1587acbb643ac5401a9d1a090f447e14ad9`.

Source path: `GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gamma_of_positive_nonzero](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/declarations/gamma-of-positive-nonzero--6ea06f3ce0f0aa55822df6b9.md) | 13 | `result-track:6ea06f3ce0f0aa55822df6b9f17b42befef875a0c24d001006cbb3998745c50e` |
| 2 | `theorem` | [gamma_of_positive_differentiable](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/declarations/gamma-of-positive-differentiable--b53201ee7addbe6f8e3c1126.md) | 18 | `result-track:b53201ee7addbe6f8e3c112647042b514d221025c85080f179f522fa08b20a7f` |
| 3 | `theorem` | [reflection_quarter](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/declarations/reflection-quarter--b638e75f39f72506761d3a97.md) | 26 | `result-track:b638e75f39f72506761d3a97ce401bf2020e3d0d0ffb12d9fbcc24ff1c3b6953` |
| 4 | `theorem` | [duplication_quarter](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/declarations/duplication-quarter--128fb358f4fe9f57caa30b57.md) | 71 | `result-track:128fb358f4fe9f57caa30b571155619505de1429fe766de516e11e9863e69ce4` |
| 5 | `theorem` | [actual_quarter_value](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/declarations/actual-quarter-value--2a6077efda837375e2ee2234.md) | 117 | `result-track:2a6077efda837375e2ee2234fedebe11377f3b16b1767e12ac125fd44db6bcdb` |
| 6 | `theorem` | [actual_quarter_real_value](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/declarations/actual-quarter-real-value--82e43214365cf9d40ae05977.md) | 124 | `result-track:82e43214365cf9d40ae0597713c9269fa4d925e9ad3a801895c945af5dab72b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
