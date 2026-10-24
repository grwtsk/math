# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RieszZeroContinuity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5defd1bb14197c5b36174470f7f6d9ecca74db7a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5defd1bb14197c5b36174470f7f6d9ecca74db7a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail`](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Topology.UniformSpace.UniformApproximation` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [firstRieszTailBudget_mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean/declarations/firstriesztailbudget-mono--f4e2fa06037ee60d731239db.md) | 17 | `result-track:f4e2fa06037ee60d731239db2a496ad57dc9d47b5af11fb806d20dd5ce8190be` |
| 2 | `theorem` | [finiteRieszZeroHead_tendstoUniformlyOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean/declarations/finiterieszzerohead-tendstouniformlyon--c0a4e9b8a5c106537ba6b442.md) | 28 | `result-track:c0a4e9b8a5c106537ba6b442d8c50616cfafc606e44c8c1bf0771c498c6b9ebd` |
| 3 | `theorem` | [fullRieszZeroValue_continuousOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean/declarations/fullrieszzerovalue-continuouson--e9f83e33d419c4b39e944f6c.md) | 39 | `result-track:e9f83e33d419c4b39e944f6cfe7e9e1368bcb83876fe38329c17f85e8b4caf36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
