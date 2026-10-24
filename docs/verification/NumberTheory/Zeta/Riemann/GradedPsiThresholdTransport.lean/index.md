# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.GradedPsiThresholdTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7ed85d75ce10b1b3a1803aad500ab070607110c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7ed85d75ce10b1b3a1803aad500ab070607110c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.GradedThetaThresholdTransport`](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiOctaveEnergySupplier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AllDyadicPsiAtThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean/declarations/alldyadicpsiatthreshold--440b6cec469b34c15e653322.md) | 35 | `declaration-track:440b6cec469b34c15e6533222791c4701ac650b29a2be1ebc241b03b6cd010c8` |
| 2 | `theorem` | [psiAtThreshold_to_energyAtThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean/declarations/psiatthreshold-to-energyatthreshold--3963562b0ae6b21f2c8b7b78.md) | 45 | `result-track:3963562b0ae6b21f2c8b7b789098b88a1de61049ad08f0737738e075759d4894` |
| 3 | `theorem` | [psiAtThreshold_to_sameZeroFree](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean/declarations/psiatthreshold-to-samezerofree--68eb0c11d8da5b893d896746.md) | 119 | `result-track:68eb0c11d8da5b893d896746d3d5dc89b43fc4f7c08c4f4c9e6f1b4c325fee90` |
| 4 | `theorem` | [psiAtThreshold_to_thetaAtThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean/declarations/psiatthreshold-to-thetaatthreshold--0939453f84e2ee6b41bb5399.md) | 129 | `result-track:0939453f84e2ee6b41bb53998eaac3d77d1c2783932e0cc8ff5797d4b97a1d09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
