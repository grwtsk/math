# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69a67e7773744dd8fbb42c219098ef7f44e8148c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69a67e7773744dd8fbb42c219098ef7f44e8148c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactFrontier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls.lean/declarations/exactfrontier--a6c070a38e2b8e8865055599.md) | 15 | `declaration-track:a6c070a38e2b8e8865055599864b1e96878aeecee127a3ea06c0447d3c4b92de` |
| 2 | `theorem` | [finiteDivisorSummatoryClosed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls.lean/declarations/finitedivisorsummatoryclosed--18a610f369e4c1b90ba16f25.md) | 31 | `result-track:18a610f369e4c1b90ba16f25092af300e2b8eb50554d1259bec16ae84060ee36` |
| 3 | `theorem` | [exactFejerShiftWeightUnitBoundClosed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls.lean/declarations/exactfejershiftweightunitboundclosed--036f96e1592556791f6c95e5.md) | 38 | `result-track:036f96e1592556791f6c95e5f25e2f65765552cf4a5a45439d14051ea89e8ff5` |
| 4 | `theorem` | [absoluteHighGCDTypeIIClosed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls.lean/declarations/absolutehighgcdtypeiiclosed--2bdb721ddeb2999c6f62b222.md) | 48 | `result-track:2bdb721ddeb2999c6f62b222c75215cbb68ff40be7eeb1d2508e53b4dd553d13` |
| 5 | `def` | [remainingArithmeticFrontier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls.lean/declarations/remainingarithmeticfrontier--2ccc0f6e03c388d5633195b3.md) | 53 | `declaration-track:2ccc0f6e03c388d5633195b33617c937c57fc24dbce51d44b0ba429c6d177e64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
