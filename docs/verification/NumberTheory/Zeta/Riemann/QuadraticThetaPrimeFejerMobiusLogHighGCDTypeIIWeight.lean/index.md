# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29130ffb1b08afe4da29860f267cd0d827f700d0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29130ffb1b08afe4da29860f267cd0d827f700d0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.FiniteDivisorSummatoryBound`](../../../../../mathematics/NumberTheory/FiniteDivisorSummatoryBound.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonAliasingFejerShiftWeight_le_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/declarations/nonaliasingfejershiftweight-le-one--66e249c532fc570a098f098b.md) | 30 | `result-track:66e249c532fc570a098f098b64bdddc7d9185d005f87aa009f45da211ef8f9a4` |
| 2 | `theorem` | [centeredMobiusLogDivisorTerm_some_abs_le_log_four_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/declarations/centeredmobiuslogdivisorterm-some-abs-le-log-four-mul--afdbcb80acccc7c4b4090af2.md) | 67 | `result-track:afdbcb80acccc7c4b4090af2979de6152fd0e9a90655b0a0c10f99b99ceb9ad2` |
| 3 | `abbrev` | [MobiusLogHighGCDTypeIITermIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/declarations/mobiusloghighgcdtypeiitermindex--99da665438a74e9d91f4426e.md) | 108 | `declaration-track:99da665438a74e9d91f4426e054726cf3380c1878da85e6a1957b6b9f1cc858e` |
| 4 | `def` | [mobiusLogAbsoluteHighGCDTypeIITermIndexSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/declarations/mobiuslogabsolutehighgcdtypeiitermindexset--7e2a76a5c5424efbdc37e88e.md) | 112 | `declaration-track:7e2a76a5c5424efbdc37e88e15fbf252ee01bef52466b96aa551ff11d14a19b5` |
| 5 | `def` | [mobiusLogAbsoluteHighGCDTypeIITermValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/declarations/mobiuslogabsolutehighgcdtypeiitermvalue--4c70f2e1b8d4af2f73e26ac1.md) | 120 | `declaration-track:4c70f2e1b8d4af2f73e26ac13bf23a001af981fcc035e0867a2beecf73bb4848` |
| 6 | `theorem` | [nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate_eq_termIndexSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/declarations/nonaliasingfejermobiuslogabsolutehighgcdaggregate-eq-termindexsum--67104e38dada1461bfbf967c.md) | 128 | `result-track:67104e38dada1461bfbf967c367a563c07aa08f9768d1cb40202db26c16ff4ce` |
| 7 | `theorem` | [mobiusLogAbsoluteHighGCDTypeIITermValue_le_log_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/declarations/mobiuslogabsolutehighgcdtypeiitermvalue-le-log-sq--0c50057eddca2e9b6699efb1.md) | 143 | `result-track:0c50057eddca2e9b6699efb110e181ccbb5d218f1b32039719be16d43bda03f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
