# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcef170ddde778f44fd5ed12801a728be37c7125",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcef170ddde778f44fd5ed12801a728be37c7125`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MobiusLogHighGCDReducedDivisorTupleIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/declarations/mobiusloghighgcdreduceddivisortupleindex--0089e3a9284425c98c875b68.md) | 28 | `declaration-track:0089e3a9284425c98c875b684c7c7cd8f4d5f328fc75e6b9cc069528d6da6f4c` |
| 2 | `def` | [mobiusLogHighGCDReducedDivisorTupleSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/declarations/mobiusloghighgcdreduceddivisortupleset--968d57c6285259b8006355ea.md) | 33 | `declaration-track:968d57c6285259b8006355eaba85edf26c4dd8e5be2bf401662dd961a7b638fc` |
| 3 | `def` | [mobiusLogHighGCDReduceTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/declarations/mobiusloghighgcdreduceterm--294631278f620e4073637f52.md) | 41 | `declaration-track:294631278f620e4073637f5236f2d2d46bb29e21fa5e648bdec4546c6bcf0dc0` |
| 4 | `theorem` | [mobiusLogHighGCDReduceTerm_mapsTo](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/declarations/mobiusloghighgcdreduceterm-mapsto--d2abf0ae76501c8bb41f05ef.md) | 52 | `result-track:d2abf0ae76501c8bb41f05ef647984dc3fefb0ce09a5ee91b113d9e9c3bea3c3` |
| 5 | `theorem` | [mobiusLogHighGCDReduceTerm_injOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/declarations/mobiusloghighgcdreduceterm-injon--0ada2789fd653486c58d5d9a.md) | 131 | `result-track:0ada2789fd653486c58d5d9ae73a221fcf9dd20f3e7d7a35766872dfbef1db14` |
| 6 | `theorem` | [mobiusLogAbsoluteHighGCDTypeIITermIndexSet_card_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/declarations/mobiuslogabsolutehighgcdtypeiitermindexset-card-le--0f5a2f9f757d2cc6fa7ac06d.md) | 240 | `result-track:0f5a2f9f757d2cc6fa7ac06d661c3653c52c830ab36f76d282294da077c161da` |
| 7 | `theorem` | [mobiusLogHighGCDReducedDivisorTupleSet_card](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/declarations/mobiusloghighgcdreduceddivisortupleset-card--2274031dafab8c75616d1c96.md) | 252 | `result-track:2274031dafab8c75616d1c963eb90c8fd3e7c4936ea62232b7e0d6ef45d78268` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
