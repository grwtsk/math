# Verification target: GRWTSK.Analysis.SpecialFunctions.QuarterDigammaEndpoint.Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ece6d1d1495fb31b223deecfd752ed98789ff21d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ece6d1d1495fb31b223deecfd752ed98789ff21d`.

Source path: `GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gamma_of_positive_nonzero](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean/declarations/gamma-of-positive-nonzero--b2a0e559da819ec23423df0f.md) | 21 | `result-track:b2a0e559da819ec23423df0fa4f9ba9f6e25d6d53d543107aa481e8513d30f94` |
| 2 | `theorem` | [gamma_of_positive_differentiable](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean/declarations/gamma-of-positive-differentiable--f2f1116807ee388fa4096ebc.md) | 26 | `result-track:f2f1116807ee388fa4096ebc4a6ba77df6b5be9da7c7501c7386e80c6b09378f` |
| 3 | `theorem` | [reflection_quarter](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean/declarations/reflection-quarter--35bef8bea6f444a81e2961fb.md) | 34 | `result-track:35bef8bea6f444a81e2961fb24b4b48e9eab3db0d9fd2479456d84a3b5abbaf3` |
| 4 | `theorem` | [duplication_quarter](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean/declarations/duplication-quarter--e4d2c9caad89a9a2a016b4f5.md) | 79 | `result-track:e4d2c9caad89a9a2a016b4f55f005b7ac96067e11279c6b6e9c6a7f41d5ebade` |
| 5 | `theorem` | [actual_quarter_value](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean/declarations/actual-quarter-value--d7cb4cef4f7c4f1b8933d669.md) | 125 | `result-track:d7cb4cef4f7c4f1b8933d6697831794442f9058cea5b247a65f12b2506731a85` |
| 6 | `theorem` | [actual_quarter_real_value](../../../../../mathematics/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean/declarations/actual-quarter-real-value--f19d2641c94106fe85f03bad.md) | 132 | `result-track:f19d2641c94106fe85f03bada883323532203e228c2beef11ee885a7cf90c5cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
