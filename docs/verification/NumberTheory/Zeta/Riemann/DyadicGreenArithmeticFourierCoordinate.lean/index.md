# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenArithmeticFourierCoordinate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd1985a5bd0bfb813bb597dca34a3175f672f70e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd1985a5bd0bfb813bb597dca34a3175f672f70e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicFourierFrameEnergyEquivalence`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fourierModeValue_eq_phase_difference](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/fouriermodevalue-eq-phase-difference--b47ef9dc75f9d44d3d7b1188.md) | 45 | `result-track:b47ef9dc75f9d44d3d7b1188f7afbdfb0fb2f1b147da51235778f834bbbfe2cf` |
| 2 | `def` | [greenFourierPrimeCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenfourierprimecoordinate--eaddffe900f6df3d0d1e978b.md) | 56 | `declaration-track:eaddffe900f6df3d0d1e978b2a512e279940eb6313f22a85a50e0cefe289114d` |
| 3 | `def` | [greenFourierBackgroundCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenfourierbackgroundcoordinate--d23ae4e8ce8923a56eb3d68a.md) | 62 | `declaration-track:d23ae4e8ce8923a56eb3d68a5e86b0f88c69e0eba9ebbff263d0a45c595ba61b` |
| 4 | `def` | [greenArithmeticFourierCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenarithmeticfouriercoordinate--4c65027e4103fcd5c3254cf5.md) | 69 | `declaration-track:4c65027e4103fcd5c3254cf55bbe12909df76b4ff17d6d8230dbb191d8309721` |
| 5 | `theorem` | [greenArithmeticFourierCoordinate_eq_neg_action](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenarithmeticfouriercoordinate-eq-neg-action--d935c5f2fc90cdce7db02f90.md) | 75 | `result-track:d935c5f2fc90cdce7db02f90f236e41ec85e6bc9318c951c09eb7bbd0ddd406b` |
| 6 | `theorem` | [fourierModeValue_zero_frequency](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/fouriermodevalue-zero-frequency--bdff32deacc28348d1e68009.md) | 86 | `result-track:bdff32deacc28348d1e68009da4db6073eb787ec3172398e13ead421b82f6052` |
| 7 | `theorem` | [greenFourierPrimeCoordinate_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenfourierprimecoordinate-zero--eb746ab0bae22fb527e4a48a.md) | 91 | `result-track:eb746ab0bae22fb527e4a48a69c5d681cd522ea5ea9793cf94aa1567ba234d31` |
| 8 | `theorem` | [greenFourierBackgroundCoordinate_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenfourierbackgroundcoordinate-zero--bee5d0479376d8a55e2f4796.md) | 97 | `result-track:bee5d0479376d8a55e2f479680aa7764d8d9dcda0ed6f26eb343ad22b140db51` |
| 9 | `theorem` | [greenArithmeticFourierCoordinate_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenarithmeticfouriercoordinate-zero--21058f7b3f7d7e2b4a3f6f5c.md) | 103 | `result-track:21058f7b3f7d7e2b4a3f6f5c16102b9734ac5b52ff569150c53f92fbf2c808af` |
| 10 | `theorem` | [greenArithmeticFourierCoordinate_eq_coeff_of_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenarithmeticfouriercoordinate-eq-coeff-of-ne-zero--5aeff2552fdcb25065ddacf7.md) | 109 | `result-track:5aeff2552fdcb25065ddacf7ffd515b2562859406e8f690e0133a085c665e782` |
| 11 | `theorem` | [greenArithmeticFourierCoordinate_eq_coeff](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenarithmeticfouriercoordinate-eq-coeff--ec344ebf1d1d3a1621fdad54.md) | 122 | `result-track:ec344ebf1d1d3a1621fdad54eefc004e0ce179332ecdb0704efd0380a4787f89` |
| 12 | `theorem` | [greenAdmissibleFourierModeEnergy_eq_arithmeticCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenadmissiblefouriermodeenergy-eq-arithmeticcoordinate--8d729ecdd8273497429aafdd.md) | 135 | `result-track:8d729ecdd8273497429aafdd27c6284276871e09b3f1686e13cc23f06dfe8619` |
| 13 | `def` | [greenArithmeticFourierShellEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenarithmeticfouriershellenergy--eb66392b705e4e0c25e12203.md) | 144 | `declaration-track:eb66392b705e4e0c25e12203bea90d3769aa34456b1300aaf336ffef47a453a3` |
| 14 | `theorem` | [greenArithmeticFourierShellEnergy_eq_admissible](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenarithmeticfouriershellenergy-eq-admissible--534ee3170af9994fa92d8d14.md) | 149 | `result-track:534ee3170af9994fa92d8d14a477b3e9ffa66337441254fa994d08e58b21fb3c` |
| 15 | `def` | [greenArithmeticFourierHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenarithmeticfourierhead--4f6b7c9112787ee744311a47.md) | 160 | `declaration-track:4f6b7c9112787ee744311a473aa2587e33374c9b630c8dc9d81105be0c1a90a2` |
| 16 | `theorem` | [greenArithmeticFourierHead_eq_admissible](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenarithmeticfourierhead-eq-admissible--6f74a3722f811c067fd611c7.md) | 165 | `result-track:6f74a3722f811c067fd611c76b8a874913367a3013fa262a84669e6fd4e7718e` |
| 17 | `theorem` | [greenArithmeticFourierHead_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/declarations/greenarithmeticfourierhead-tendsto--a75a450bc9f1ce0b0a8173fa.md) | 177 | `result-track:a75a450bc9f1ce0b0a8173fa4709bf88a0405f3346839897be04e80e2139a870` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
