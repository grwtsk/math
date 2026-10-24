# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftPrimeTermFactorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecfef89654ed3ecea7c3b8a1a1729bfa6961983e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecfef89654ed3ecea7c3b8a1a1729bfa6961983e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticChannelPacking`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [safePlusDefectScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeplusdefectscale--e3f3595375948a7d42255e15.md) | 40 | `declaration-track:e3f3595375948a7d42255e1516896b8b556b65b3cab689218edfc8e4f078ca60` |
| 2 | `def` | [safeMinusDefectScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeminusdefectscale--b6f0451dc7079c25cccc4841.md) | 44 | `declaration-track:b6f0451dc7079c25cccc48411744c46704e63a4121f57f26213a318a95c5745a` |
| 3 | `def` | [safeEvenDefectScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeevendefectscale--58bf9491348767e769deefd7.md) | 48 | `declaration-track:58bf9491348767e769deefd746eb328794dc5ec1ea8cb39648efe8bba53b6723` |
| 4 | `def` | [safeOddDefectScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeodddefectscale--2e13ca2bedae60d10088c1b4.md) | 52 | `declaration-track:2e13ca2bedae60d10088c1b43c1ce89d6033fca8e25e547115352003481a8a69` |
| 5 | `theorem` | [safePlusDefectScale_cast](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeplusdefectscale-cast--d2dd3ff22749eb225d91e460.md) | 56 | `result-track:d2dd3ff22749eb225d91e4602ebe1c76c1067436f3dec350bdc764a7a7e6adf2` |
| 6 | `theorem` | [safeMinusDefectScale_cast](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeminusdefectscale-cast--4545494861b3ef2a50ff6365.md) | 65 | `result-track:4545494861b3ef2a50ff636580ae5ab41cbbf4593a19f5c884164e9e4b7211b9` |
| 7 | `theorem` | [safeShiftPlus_eq_center_add_defect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeshiftplus-eq-center-add-defect--f535bfcd2c82ad842a996529.md) | 74 | `result-track:f535bfcd2c82ad842a996529aef1545d3068c3e1d0227dd7aa8a8b0f7842f6f9` |
| 8 | `theorem` | [safeShiftMinus_eq_center_sub_defect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeshiftminus-eq-center-sub-defect--33ab86046fc96906d15fcc2e.md) | 81 | `result-track:33ab86046fc96906d15fcc2eac3032b2ecd8c34c0e62fa256de5d56cdaa80177` |
| 9 | `theorem` | [safePlusPrimePowerTerm_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeplusprimepowerterm-factor--db5fd94ed0466e89046af838.md) | 88 | `result-track:db5fd94ed0466e89046af838303f75fa146429752a19458e11770bd438c3384d` |
| 10 | `theorem` | [safeMinusPrimePowerTerm_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeminusprimepowerterm-factor--af2b71ee1ffc0450ac6e7977.md) | 107 | `result-track:af2b71ee1ffc0450ac6e79776ec30319e663e3a809f64ecf307ee0d2ccf87f58` |
| 11 | `theorem` | [safeEvenPrimePowerTerm_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeevenprimepowerterm-factor--07ab2a14bc905b0e0fe2712d.md) | 126 | `result-track:07ab2a14bc905b0e0fe2712dc9808ce69e20ef2a17f33da311a120cab313bd90` |
| 12 | `theorem` | [safeOddPrimePowerTerm_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeoddprimepowerterm-factor--46899b3d756ded87a84d182f.md) | 138 | `result-track:46899b3d756ded87a84d182f705fb9ed38fb6e1b3bc2a4ce1a1a33adece9206a` |
| 13 | `theorem` | [safeEvenDefectScale_eq_one_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeevendefectscale-eq-one-of-zerodefect--fafc44a601ffdd140676631b.md) | 149 | `result-track:fafc44a601ffdd140676631be64f3721d0da6e314d0986e0ed7810a4ced7a1d4` |
| 14 | `theorem` | [safeOddDefectScale_eq_zero_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeodddefectscale-eq-zero-of-zerodefect--77d719b2b8fa191ed4900c48.md) | 156 | `result-track:77d719b2b8fa191ed4900c48164b740f6dcab6b43063e95c4178941b15868068` |
| 15 | `theorem` | [safeEvenPrimePowerTerm_re_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeevenprimepowerterm-re-factor--86ddfb1f073b93f3a4151076.md) | 164 | `result-track:86ddfb1f073b93f3a4151076cd9117b5b92c23b4d58c078e2c31da35bdde7a07` |
| 16 | `theorem` | [safeOddPrimePowerTerm_im_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftPrimeTermFactorization.lean/declarations/safeoddprimepowerterm-im-factor--36b12428bd838be926e7eb2f.md) | 173 | `result-track:36b12428bd838be926e7eb2fb03b528720dbed976a4664cc365f3d31707aa6ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
