# Verification target: GRWTSK.Algebra.TraceStability.Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e2ae40e080f3109ff035c0fe0acf450920ca982",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/index.md) · [Full source](../../../../mathematics/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e2ae40e080f3109ff035c0fe0acf450920ca982`.

Source path: `GRWTSK/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Trace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LawTraceStabilityObligation](../../../../mathematics/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/declarations/lawtracestabilityobligation--c38f885506b9a591c6c7be93.md) | 23 | `declaration-track:c38f885506b9a591c6c7be93782f4f6ed2045751bdf35f0a895b7389e4456d6f` |
| 2 | `structure` | [OperatorTraceStabilityCertificate](../../../../mathematics/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/declarations/operatortracestabilitycertificate--1b321f6b5ac946ed31f775e5.md) | 32 | `declaration-track:1b321f6b5ac946ed31f775e57e80138973222672c49ac4561b8560d158e4cd74` |
| 3 | `theorem` | [stableTrace_law_perturbation_from_certified_duality](../../../../mathematics/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/declarations/stabletrace-law-perturbation-from-certified-duality--d4ff5234c6bf5d55073c4eff.md) | 42 | `result-track:d4ff5234c6bf5d55073c4eff0ac09423fcb3234b505a3ee3d8254380629df8c5` |
| 4 | `theorem` | [law_and_operator_trace_defects_compose](../../../../mathematics/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/declarations/law-and-operator-trace-defects-compose--20650ac04e3f4f62cb94549a.md) | 57 | `result-track:20650ac04e3f4f62cb94549a76613158565d1370e0a3d8f55f54703bd0d78b6a` |
| 5 | `theorem` | [global_trace_defects_remain_separate](../../../../mathematics/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/declarations/global-trace-defects-remain-separate--ca3276caa17e895e5e59e3ad.md) | 74 | `result-track:ca3276caa17e895e5e59e3ad8d27cfd42be8c6ba02fcc59cf45f43db0c40e43f` |
| 6 | `theorem` | [global_trace_defects_with_remainder_remain_separate](../../../../mathematics/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/declarations/global-trace-defects-with-remainder-remain-separate--497788c3c1f9f9f2a1a509dc.md) | 102 | `result-track:497788c3c1f9f9f2a1a509dc57ee612f3f83dcf8ad90379e4fb0a3e12256e7cd` |
| 7 | `theorem` | [global_trace_defects_with_two_remainders_remain_separate](../../../../mathematics/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/declarations/global-trace-defects-with-two-remainders-remain-separate--1585b8f9e87c57a1bd731cb6.md) | 132 | `result-track:1585b8f9e87c57a1bd731cb66b8a62a7da89495d88f1d6b3f3a103541216f5aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
