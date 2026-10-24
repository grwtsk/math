# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyCoordinateCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5674832ef1b8d76fafa2a9d4795669c2e55457e1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5674832ef1b8d76fafa2a9d4795669c2e55457e1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyWitnessComparison`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AllDyadicPrimeOnlyFourierCoordinateBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/declarations/alldyadicprimeonlyfouriercoordinatebound--66ecae597782bfcc8f4ef33b.md) | 39 | `declaration-track:66ecae597782bfcc8f4ef33b61b76130eab5bde7fbad0a74001aa0425f1c5e9e` |
| 2 | `theorem` | [inv_le_rpow_neg_one_add_eta](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/declarations/inv-le-rpow-neg-one-add-eta--8816cf14835ffdfd595a4d7b.md) | 49 | `result-track:8816cf14835ffdfd595a4d7b08c0da0254de697687df6c4cde545c156742b41d` |
| 3 | `theorem` | [higherPrimePowerResidual_le_targetScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/declarations/higherprimepowerresidual-le-targetscale--c08b7635714f0a8fb3bdce1b.md) | 59 | `result-track:c08b7635714f0a8fb3bdce1b35e1648b01e210e4ad878b5a3be1b8df98483b41` |
| 4 | `theorem` | [primeOnlyBound_to_fullCoordinateBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/declarations/primeonlybound-to-fullcoordinatebound--4eb24575dffe5d34886cc135.md) | 77 | `result-track:4eb24575dffe5d34886cc1359f2b1b1222a600aa3b094440037d6d024602dcca` |
| 5 | `theorem` | [fullCoordinateBound_to_primeOnlyBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/declarations/fullcoordinatebound-to-primeonlybound--4e72c74dd04c2cca81253d58.md) | 108 | `result-track:4e72c74dd04c2cca81253d58d66d15eacf299cc5ce54ae4dabd47c75d5995095` |
| 6 | `theorem` | [allDyadicPrimeOnlyFourierCoordinateBound_iff_full](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/declarations/alldyadicprimeonlyfouriercoordinatebound-iff-full--90887bc60cfc27fd50eedbfa.md) | 138 | `result-track:90887bc60cfc27fd50eedbfa0f43a56784499e5ab6a5253a28f69db4d056f972` |
| 7 | `theorem` | [allDyadicPrimeOnlyFourierCoordinateBound_iff_energy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/declarations/alldyadicprimeonlyfouriercoordinatebound-iff-energy--b7823b5fba078088464c56a2.md) | 145 | `result-track:b7823b5fba078088464c56a27eee2b8b201164e9b7666da2f156f40f67a1d37c` |
| 8 | `theorem` | [riemannHypothesis_of_primeOnlyFourierCoordinateBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/declarations/riemannhypothesis-of-primeonlyfouriercoordinatebound--b48f989ee3c6231c61ed2702.md) | 153 | `result-track:b48f989ee3c6231c61ed27025f8cb09d5d5d75f89f5b96090c1c574c48998c9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
