# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60b8f295e8fed1059f6a15c604161ad66dc8c752",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60b8f295e8fed1059f6a15c604161ad66dc8c752`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactFrontier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls.lean/declarations/exactfrontier--51f9ba9e14ffff873f28e423.md) | 13 | `declaration-track:51f9ba9e14ffff873f28e4233a1aeb9dd4c274c05ca15143234aaaa88ca020eb` |
| 2 | `theorem` | [squarefreeSupportReductionClosed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls.lean/declarations/squarefreesupportreductionclosed--f6ce7d5800c3a8caeab44eeb.md) | 30 | `result-track:f6ce7d5800c3a8caeab44eebac5a9c97ac1f2b7c16d64636b2f06a17fb848c78` |
| 3 | `theorem` | [primitiveCoprimeReductionClosed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls.lean/declarations/primitivecoprimereductionclosed--17738e448d4ea15f4f9c64c4.md) | 36 | `result-track:17738e448d4ea15f4f9c64c413d4260ae3775aed65588deba3c1842242492fa6` |
| 4 | `def` | [remainingArithmeticFrontier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls.lean/declarations/remainingarithmeticfrontier--25992b85225c042d4531867f.md) | 45 | `declaration-track:25992b85225c042d4531867f04a3f20ecf277d7c9e964d0fff120f889a24d284` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
