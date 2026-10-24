# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalHighCounting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd4a7447fa9441839b2e76e0a0023d4e33249228",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd4a7447fa9441839b2e76e0a0023d4e33249228`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Series.HeightCountingTail`](../../../../../mathematics/Analysis/Series/HeightCountingTail.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countingCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/declarations/countingcoefficient--dddecdd0dd10f30ac7feedb8.md) | 30 | `declaration-track:dddecdd0dd10f30ac7feedb8287bfb93e798e1e26fee83938958f47e55cd630f` |
| 2 | `theorem` | [countingCoefficient_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/declarations/countingcoefficient-pos--a936403883ae9947e023c2c8.md) | 32 | `result-track:a936403883ae9947e023c2c8f0ddbf6ce942b9f80fe4024f0b826d510cc0288b` |
| 3 | `theorem` | [heightHead_difference_mass](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/declarations/heighthead-difference-mass--4a2ccd7b04157fe12f1de5ed.md) | 36 | `result-track:4a2ccd7b04157fe12f1de5ed974136ec192e509f7790738b6821988c19739369` |
| 4 | `theorem` | [heightCount_step](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/declarations/heightcount-step--deb0333b2f3a7b1aacf0eec8.md) | 60 | `result-track:deb0333b2f3a7b1aacf0eec898473d0a60efcec06d0b14f60bfb00b7652cf6b1` |
| 5 | `theorem` | [heightCount_nat_le_bands](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/declarations/heightcount-nat-le-bands--b791ca4db3d660c0c4942c7c.md) | 81 | `result-track:b791ca4db3d660c0c4942c7cf907d932e778ce0f42344ba87b8460aa36903fc0` |
| 6 | `theorem` | [localCountBudget_mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/declarations/localcountbudget-mono--5206f019a080fa76c2dc44cf.md) | 97 | `result-track:5206f019a080fa76c2dc44cf33e56de44ac99fa301637d9c24459c234a0b2b15` |
| 7 | `theorem` | [heightCount_nat_le_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/declarations/heightcount-nat-le-budget--9eeb327dc46b40fc83af91d1.md) | 107 | `result-track:9eeb327dc46b40fc83af91d1d12c6db922dc542fcaf33206048221c3c59110c9` |
| 8 | `theorem` | [localCountBudget_le_log_multiple](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/declarations/localcountbudget-le-log-multiple--efa71d18a323b975b1b3a9b3.md) | 126 | `result-track:efa71d18a323b975b1b3a9b31377bab65840580b846956d390050d0ad1f21780` |
| 9 | `theorem` | [heightCount_le_low_add](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/declarations/heightcount-le-low-add--fc4e2544246a15f3147b8781.md) | 146 | `result-track:fc4e2544246a15f3147b8781e5f8301dc75959bc2b222b9d799f96d911efcd49` |
| 10 | `theorem` | [finiteCountingMass_high_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/declarations/finitecountingmass-high-le--fc576006b2aa74b3c5a49cee.md) | 171 | `result-track:fc576006b2aa74b3c5a49cee47dcf14342bc0f6c283c1288ed21dc18c140200e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
