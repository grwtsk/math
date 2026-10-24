# Verification target: GRWTSK.Algebra.LinearAlgebra.TraceStability.Variant29e44f5d0aa32af2ce9d575b4d7f4fecc79fcbed3afe3902297b991d8578cdb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e02f88666815be00e27cb6886fa0b19d2a8f10d0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TraceStability/Variant29e44f5d0aa32af2ce9d575b4d7f4fecc79fcbed3afe3902297b991d8578cdb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TraceStability/Variant29e44f5d0aa32af2ce9d575b4d7f4fecc79fcbed3afe3902297b991d8578cdb0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TraceStability/Variant29e44f5d0aa32af2ce9d575b4d7f4fecc79fcbed3afe3902297b991d8578cdb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e02f88666815be00e27cb6886fa0b19d2a8f10d0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TraceStability/Variant29e44f5d0aa32af2ce9d575b4d7f4fecc79fcbed3afe3902297b991d8578cdb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TraceStability/Variant29e44f5d0aa32af2ce9d575b4d7f4fecc79fcbed3afe3902297b991d8578cdb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ConnesBitfield.InvariantLawPerturbation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.Trace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invariantLawReducedTrace](../../../../../mathematics/Algebra/LinearAlgebra/TraceStability/Variant29e44f5d0aa32af2ce9d575b4d7f4fecc79fcbed3afe3902297b991d8578cdb0.lean/declarations/invariantlawreducedtrace--2e44747f5f2be5d4dc47e629.md) | 23 | `declaration-track:2e44747f5f2be5d4dc47e629d7556465b910dba15a17c4ff5e6129076d9261ed` |
| 2 | `structure` | [BoundaryTraceStabilityCertificate](../../../../../mathematics/Algebra/LinearAlgebra/TraceStability/Variant29e44f5d0aa32af2ce9d575b4d7f4fecc79fcbed3afe3902297b991d8578cdb0.lean/declarations/boundarytracestabilitycertificate--148697db5d1bea3d9867fb22.md) | 42 | `declaration-track:148697db5d1bea3d9867fb22b552b7840c99fdc1b2f21470e967e5dee481f109` |
| 3 | `def` | [BoundaryTraceStabilityCertificate.globalBound](../../../../../mathematics/Algebra/LinearAlgebra/TraceStability/Variant29e44f5d0aa32af2ce9d575b4d7f4fecc79fcbed3afe3902297b991d8578cdb0.lean/declarations/boundarytracestabilitycertificate-globalbound--1eafbee2b811189b5137eb10.md) | 160 | `declaration-track:1eafbee2b811189b5137eb103fcf1901fbefe02c156c694ba357af8f780058cd` |
| 4 | `theorem` | [boundary_trace_stability](../../../../../mathematics/Algebra/LinearAlgebra/TraceStability/Variant29e44f5d0aa32af2ce9d575b4d7f4fecc79fcbed3afe3902297b991d8578cdb0.lean/declarations/boundary-trace-stability--1301ff77eac9d62d266420b0.md) | 187 | `result-track:1301ff77eac9d62d266420b0165b2527171157a5b0d73a3103d265f1e5b854fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
