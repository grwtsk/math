# Verification target: GRWTSK.Algebra.TraceStability.Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5c64628a1262872810a599ea5651868a4465102",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/index.md) · [Full source](../../../../mathematics/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5c64628a1262872810a599ea5651868a4465102`.

Source path: `GRWTSK/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Trace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LawTraceStabilityObligation](../../../../mathematics/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/declarations/lawtracestabilityobligation--60937b42000c644b580c7f4b.md) | 15 | `declaration-track:60937b42000c644b580c7f4b21b14ebc7070fa024a31c3c9d5a22dca345c0c47` |
| 2 | `structure` | [OperatorTraceStabilityCertificate](../../../../mathematics/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/declarations/operatortracestabilitycertificate--5baf4b5f93373b903443c0c2.md) | 24 | `declaration-track:5baf4b5f93373b903443c0c22b0d37bb89951055b458c969f45d3e707c341cbf` |
| 3 | `theorem` | [stableTrace_law_perturbation_from_certified_duality](../../../../mathematics/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/declarations/stabletrace-law-perturbation-from-certified-duality--e1018e5182adee563fdc3d1f.md) | 34 | `result-track:e1018e5182adee563fdc3d1f9a8b8b46c7f6c579fc93564e3c26c7cf360f5cb1` |
| 4 | `theorem` | [law_and_operator_trace_defects_compose](../../../../mathematics/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/declarations/law-and-operator-trace-defects-compose--115a5493610cb63f0cedb3c4.md) | 49 | `result-track:115a5493610cb63f0cedb3c40316edcc54ca02e7e272f22a05360b0616bb1e99` |
| 5 | `theorem` | [global_trace_defects_remain_separate](../../../../mathematics/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/declarations/global-trace-defects-remain-separate--cbb63c59f4598e311e1c5bed.md) | 66 | `result-track:cbb63c59f4598e311e1c5bedcbfee8dacff2dc605c06170a60662114966b4be2` |
| 6 | `theorem` | [global_trace_defects_with_remainder_remain_separate](../../../../mathematics/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/declarations/global-trace-defects-with-remainder-remain-separate--8b8fc13d23d9d67c16ce9a36.md) | 94 | `result-track:8b8fc13d23d9d67c16ce9a365be42a01a07f43ac29adeb9e5283e20f1a48a92c` |
| 7 | `theorem` | [global_trace_defects_with_two_remainders_remain_separate](../../../../mathematics/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/declarations/global-trace-defects-with-two-remainders-remain-separate--aeecf49a6114af294f42e536.md) | 124 | `result-track:aeecf49a6114af294f42e536da79f27338dd9f314fa07917aa08af08360d4514` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
