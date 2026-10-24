# Verification target: GRWTSK.Analysis.Complex.MeromorphicLogOrderDetector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/MeromorphicLogOrderDetector.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/MeromorphicLogOrderDetector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.

Source path: `GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/MeromorphicLogOrderDetector.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.LogarithmicOrderDetection`](../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.Meromorphic.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [meromorphic_order_of_local_factorization](../../../../mathematics/Analysis/ComplexAnalysis/MeromorphicLogOrderDetector.lean/declarations/meromorphic-order-of-local-factorization--5c29440e6912045a7e3204de.md) | 11 | `result-track:5c29440e6912045a7e3204def5c0447c80be30ff342eaf54114cc32c79aefa21` |
| 2 | `theorem` | [meromorphic_finite_order_factorization](../../../../mathematics/Analysis/ComplexAnalysis/MeromorphicLogOrderDetector.lean/declarations/meromorphic-finite-order-factorization--7aa6e0cb2858ec972c2cb23f.md) | 21 | `result-track:7aa6e0cb2858ec972c2cb23fa787b05b9e6c6170b30b0278507f42253c37e9c5` |
| 3 | `theorem` | [meromorphic_finite_order_scaled_coefficient](../../../../mathematics/Analysis/ComplexAnalysis/MeromorphicLogOrderDetector.lean/declarations/meromorphic-finite-order-scaled-coefficient--ac37abdf92bf2318649382a8.md) | 28 | `result-track:ac37abdf92bf2318649382a8c2dbf2d536c5b09297d51537e391e61c74fc0628` |
| 4 | `theorem` | [meromorphic_nonzero_order_no_continuous_extension](../../../../mathematics/Analysis/ComplexAnalysis/MeromorphicLogOrderDetector.lean/declarations/meromorphic-nonzero-order-no-continuous-extension--e3b4434de16fe1dd48e9e4ca.md) | 36 | `result-track:e3b4434de16fe1dd48e9e4ca68a2362518a1335e24f7b419e012c014fe21e0df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
