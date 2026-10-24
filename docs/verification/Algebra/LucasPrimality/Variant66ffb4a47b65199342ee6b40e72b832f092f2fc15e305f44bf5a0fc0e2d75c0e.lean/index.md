# Verification target: GRWTSK.Algebra.LucasPrimality.Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39e0f93a7b61bb552bc2c993d64a0e962b9686c6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean/index.md) · [Full source](../../../../mathematics/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39e0f93a7b61bb552bc2c993d64a0e962b9686c6`.

Source path: `GRWTSK/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lucas_primality](../../../../mathematics/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean/declarations/lucas-primality--b84383fc484a5c79c1a4b2a9.md) | 35 | `result-track:b84383fc484a5c79c1a4b2a9f9f42f8301e6a7940fa755b0efade93486f51615` |
| 2 | `theorem` | [reverse_lucas_primality](../../../../mathematics/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean/declarations/reverse-lucas-primality--8b56075878f8ea345f9db7a5.md) | 53 | `result-track:8b56075878f8ea345f9db7a5ae9687970a1bf56f5d69dccc205b5a34c7778e23` |
| 3 | `theorem` | [lucas_primality_iff](../../../../mathematics/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean/declarations/lucas-primality-iff--cf13a8225c5e1dfb1557b079.md) | 69 | `result-track:cf13a8225c5e1dfb1557b07903af407a11561ccf274beb0c58241ae6152a3342` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
