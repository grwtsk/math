# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpEnergyAttempt05.Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "554aa636f873f5df95bb833f3a641747deb17f84",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `554aa636f873f5df95bb833f3a641747deb17f84`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/rayvalue--85ed5403a5da8564f539080d.md) | 12 | `declaration-track:85ed5403a5da8564f539080df1fc89584192bbb134a09c8893bdfa7e6b5eb05e` |
| 2 | `def` | [raySlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/rayslope--5e35b3c898f420d2137ca312.md) | 13 | `declaration-track:5e35b3c898f420d2137ca31259b0eb0188bd737a58a592ff444fb6f4127ecb65` |
| 3 | `def` | [weightedMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/weightedmass--bc96356ad49bca0c3cd2b5e8.md) | 14 | `declaration-track:bc96356ad49bca0c3cd2b5e879c6c9d4a886152474ac3e23a74d98594a6827f7` |
| 4 | `def` | [weightedEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/weightedenergy--b29ff43b76e8e6cf51097e4e.md) | 15 | `declaration-track:b29ff43b76e8e6cf51097e4e0b5f5f1d05d7e3cccf29f1e600674503b5454145` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/rayvalue-hasderivat--b4917ea8ada51e1f0405da44.md) | 17 | `result-track:b4917ea8ada51e1f0405da44598f6afb0bc72eb15b549eedc22553289acf5ec5` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/rayslope-hasderivat--4adbd2d04255e88e85985e9b.md) | 25 | `result-track:4adbd2d04255e88e85985e9bd2eefce9a1960aa46e26d41e4c385e638a9f40d0` |
| 7 | `theorem` | [rayValue_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/rayvalue-continuous--1523941519e4cd974c9e3f22.md) | 33 | `result-track:1523941519e4cd974c9e3f22a4be1ad668004e4e9411bf01dc0320da1e3bc2f2` |
| 8 | `theorem` | [raySlope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/rayslope-continuous--16b81f41a22554dc4045374b.md) | 36 | `result-track:16b81f41a22554dc4045374b68c2bf55b9fcfa046d3da23eee4ef3630759cf6d` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/weightedray-hasderivat--00b7db9fe52c4ce73a48ff3f.md) | 39 | `result-track:00b7db9fe52c4ce73a48ff3f76ba3d5305bd5256ef4f62e793380e479582500a` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/conjugateray-hasderivat--408bed10b022c3cb2ae1ec30.md) | 51 | `result-track:408bed10b022c3cb2ae1ec301de5e3d7a605534538c80fab9aaddc0eda614f7a` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/mass-integrand-continuous--adcd6973ccc178347b9b62c2.md) | 55 | `result-track:adcd6973ccc178347b9b62c20b44b346e3e817f5bb5b7c1bd89c3fa0fa38e8ec` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/energy-integrand-continuous--8f66751b699aa528ee2be551.md) | 59 | `result-track:8f66751b699aa528ee2be5516a4e1ee9687a0ffb8049c2c6e42a2d9cc1087fcf` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/weightedenergy-nonneg--f4187ffc50e2f08f761d17e4.md) | 63 | `result-track:f4187ffc50e2f08f761d17e4113645f6fe5ab310ecbb8d502e225854014fe254` |
| 14 | `theorem` | [rayValue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/rayvalue-zero--fa9134bac5fbf666ec8b6c81.md) | 67 | `result-track:fa9134bac5fbf666ec8b6c81c0594d6446898d26a1086d1322125dea2d7ed4d5` |
| 15 | `theorem` | [weightedMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/weightedmass-pos--c979c7a02467288cc2a9b382.md) | 70 | `result-track:c979c7a02467288cc2a9b382c2d5486ccc9ee1f25b66d9c3e7e4c2b6db68a108` |
| 16 | `theorem` | [weighted_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/weighted-energy-identity--36113865953b346bab5df84a.md) | 85 | `result-track:36113865953b346bab5df84aef73ed697a4d7618b13400b48c6d07f16cc70ade` |
| 17 | `theorem` | [literal_quartic_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/literal-quartic-nonzero--28790be6e5574e34e93b0ad8.md) | 127 | `result-track:28790be6e5574e34e93b0ad83ae9f5b4a838d766c4b3d6371b20fb708f27adf5` |
| 18 | `theorem` | [actual_mellin_halfstrip_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/declarations/actual-mellin-halfstrip-nonzero--e6bcc23bc593e12ff46c045c.md) | 142 | `result-track:e6bcc23bc593e12ff46c045c41f541b031590e415d6feebd5ae1e140fc929b2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
