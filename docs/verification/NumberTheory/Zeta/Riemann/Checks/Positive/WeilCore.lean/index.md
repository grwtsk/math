# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilCore

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f29ffa793f431847d3818bea751774e5e3b9eb6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f29ffa793f431847d3818bea751774e5e3b9eb6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilPolarization`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/declarations/example--451527630df18db87a20e270.md) | 19 | `declaration-track:451527630df18db87a20e270289ee0112a17614324b0d3fb1f7e9fb4894ee8f2` |
| 2 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/declarations/example--7a77962ce02439edcad181b2.md) | 20 | `declaration-track:7a77962ce02439edcad181b28ae8887dea5947ae5e9641d4472346625c1fcf77` |
| 3 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/declarations/example--6f0a6c952505ad9826b9ca72.md) | 22 | `declaration-track:6f0a6c952505ad9826b9ca726b551d2e05b02de847b5f62ed050f939c6ba3710` |
| 4 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/declarations/example--1e3505a290c30063d0c74c97.md) | 25 | `declaration-track:1e3505a290c30063d0c74c9742b049311b045107cc6f8817b6b2f9f7f9e7ff90` |
| 5 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/declarations/example--a7d365a18c8f2e7f3ae8a844.md) | 28 | `declaration-track:a7d365a18c8f2e7f3ae8a8446c6f9d28a10c35395d7ba794b3bb730d95b5a341` |
| 6 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/declarations/example--5698edeb2f9a95000844e86e.md) | 31 | `declaration-track:5698edeb2f9a95000844e86edf73bed4c87ab2a545674f158b672a2cef9fe08d` |
| 7 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/declarations/example--076e0329428d883589b86bbf.md) | 34 | `declaration-track:076e0329428d883589b86bbfc93509ca66fa1a27bcab84d2122896d1eb4d1083` |
| 8 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/declarations/example--f93ab41ae13d4ba154ad384a.md) | 37 | `declaration-track:f93ab41ae13d4ba154ad384ae04c6994e351482fdac03af960675037160959dc` |
| 9 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/declarations/example--1d58b8bdb6d1227176c62067.md) | 42 | `declaration-track:1d58b8bdb6d1227176c62067f6f6a6487a638c89c1e54552d2c3fe02a0d3aa63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
