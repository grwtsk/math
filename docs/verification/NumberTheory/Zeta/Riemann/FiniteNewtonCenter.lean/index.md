# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.FiniteNewtonCenter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fed1d694ca3f59874d676256fda0d94e7fab709a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fed1d694ca3f59874d676256fda0d94e7fab709a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.FiniteZetaPowerEnclosure`](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalNewtonWitness`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diskBudgetQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean/declarations/diskbudgetq--4cabd02d2d3fee5e41f21583.md) | 26 | `declaration-track:4cabd02d2d3fee5e41f215838059caaef431e7f99f970b8b514e01bcaddbe5ad` |
| 2 | `theorem` | [cast_diskBudgetQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean/declarations/cast-diskbudgetq--8121d63ba62a63d2e198f3b7.md) | 31 | `result-track:8121d63ba62a63d2e198f3b742e8962058c3ad09a00b5dda102c13f60258afbe` |
| 3 | `theorem` | [centerEnclosures_of_power_packet](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean/declarations/centerenclosures-of-power-packet--bf6e00501fe62a907b31ae24.md) | 36 | `result-track:bf6e00501fe62a907b31ae24ee48dc623911e7ceefa67ae5a06c30a935c13cda` |
| 4 | `theorem` | [exists_zero_of_power_packet](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean/declarations/exists-zero-of-power-packet--49792f2bc8f40f6a589f40b8.md) | 56 | `result-track:49792f2bc8f40f6a589f40b83b369c1f68bdc2e11958234a3c9169276598c5f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
