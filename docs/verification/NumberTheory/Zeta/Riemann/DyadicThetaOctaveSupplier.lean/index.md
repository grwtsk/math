# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaOctaveSupplier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36836862adf42300225202b9120570933e02be64",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36836862adf42300225202b9120570933e02be64`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiOctaveEnergySupplier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaError](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/declarations/thetaerror--4d87ea72d4acf2a1af6c5408.md) | 38 | `declaration-track:4d87ea72d4acf2a1af6c54085ea85b280af01b3824b3a4117461c405d246dee9` |
| 2 | `theorem` | [sqrt_X_le_X_mul_sqrt_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/declarations/sqrt-x-le-x-mul-sqrt-target--58319b0278a488083d4f3e80.md) | 41 | `result-track:58319b0278a488083d4f3e80b02f780aeea19ff9bdb17ad58bb223af5aecf060` |
| 3 | `theorem` | [sqrt_twoX_le_two_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/declarations/sqrt-twox-le-two-target--33e8942da789a86136801faa.md) | 75 | `result-track:33e8942da789a86136801faa06e2e351a7b7a96d5c56fc50074b64ed6fc35ac6` |
| 4 | `def` | [AllDyadicThetaOctaveSquareRootBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/declarations/alldyadicthetaoctavesquarerootbound--ec786ec09d224a0d215f16d3.md) | 98 | `declaration-track:ec786ec09d224a0d215f16d31416f0391f715bfc9630339d54d2761da793d7e6` |
| 5 | `theorem` | [thetaOctaveSquareRootBound_to_psi](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/declarations/thetaoctavesquarerootbound-to-psi--320bc491469031e5e3734354.md) | 111 | `result-track:320bc491469031e5e37343542ba6ee2774b90b1943e1892b46a3df064de9ed93` |
| 6 | `theorem` | [thetaOctaveSquareRootBound_to_allDyadicEnergyBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/declarations/thetaoctavesquarerootbound-to-alldyadicenergybound--412725bcbe3b23cc5f12ef88.md) | 176 | `result-track:412725bcbe3b23cc5f12ef88bdd325e7b7e7254d0fd8101ea147f317b6afd4da` |
| 7 | `theorem` | [riemannHypothesis_of_thetaOctaveSquareRootBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/declarations/riemannhypothesis-of-thetaoctavesquarerootbound--425462fd912402fcd05807df.md) | 182 | `result-track:425462fd912402fcd05807df5aaab2f6ddef16127b8df809168dc09248a5f0f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
