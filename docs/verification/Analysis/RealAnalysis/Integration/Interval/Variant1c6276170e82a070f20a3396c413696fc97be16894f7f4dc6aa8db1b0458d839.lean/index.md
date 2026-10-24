# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Interval.Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9c7c85022e1d8459d0c0f4d771152753dc01c31",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9c7c85022e1d8459d0c0f4d771152753dc01c31`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intervalReflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/intervalreflection--84f39a2a754cdbe36ed0cbc1.md) | 28 | `declaration-track:84f39a2a754cdbe36ed0cbc1484fdb0ffbe598629680b229f204e77784e6cb73` |
| 2 | `theorem` | [interval_reflection_involutive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/interval-reflection-involutive--199815247769dd79e1b2d59f.md) | 31 | `result-track:199815247769dd79e1b2d59fe8c919c357727465bbbee1162af1e3a06d8a6db6` |
| 3 | `theorem` | [interval_reflection_mem_Icc_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/interval-reflection-mem-icc-iff--e6155c4b9f075019141341f0.md) | 38 | `result-track:e6155c4b9f075019141341f01a93cc1fad7fb200580360004fd420d41d0708b4` |
| 4 | `def` | [evenPart](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/evenpart--d7ac0b4fdd3b2b6785b4df81.md) | 44 | `declaration-track:d7ac0b4fdd3b2b6785b4df815053c4b9d917df37215c807d0b7db35ee2b2a592` |
| 5 | `def` | [oddPart](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/oddpart--5978d03c075203b3590994eb.md) | 48 | `declaration-track:5978d03c075203b3590994eba389f4e3d800a02b16bc7604c09d7d8b2527da24` |
| 6 | `theorem` | [even_add_odd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/even-add-odd--762271003d6866ff03ae5fc8.md) | 51 | `result-track:762271003d6866ff03ae5fc8fd4b7a88288798a4fab782d54e93c740267dd76d` |
| 7 | `theorem` | [even_part_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/even-part-reflection--e401d459b50eaacf30e652d2.md) | 56 | `result-track:e401d459b50eaacf30e652d2ec76e32fe93d40e0a9371e1af48263f47dee2eee` |
| 8 | `theorem` | [odd_part_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/odd-part-reflection--760cb806084d2bb87a186576.md) | 61 | `result-track:760cb806084d2bb87a186576be7cbb075fae8ed9915a870566a8b1c87f3c24ce` |
| 9 | `theorem` | [integral_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/integral-reflection--29859c49f5a4bd3d72115aa1.md) | 67 | `result-track:29859c49f5a4bd3d72115aa111d549238571c49e88a118a8d9ea21f133e5b7d8` |
| 10 | `theorem` | [integral_eq_zero_of_reflection_odd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/integral-eq-zero-of-reflection-odd--d5e2e58d35067379db87c22e.md) | 74 | `result-track:d5e2e58d35067379db87c22e4d18be9b959632f68149d8a8600db0d7c32c5e29` |
| 11 | `theorem` | [integral_even_mul_odd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/integral-even-mul-odd--d0ffaa6cdc2b7e316aaeccb1.md) | 82 | `result-track:d0ffaa6cdc2b7e316aaeccb1260d7d47f15fda3763b6ed45ceb83331f3764adb` |
| 12 | `theorem` | [integral_odd_mul_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/integral-odd-mul-even--3b7e940ffffc1311647d4238.md) | 89 | `result-track:3b7e940ffffc1311647d42380057c424cbd2412e17582e1959c91a3885c5b8a4` |
| 13 | `theorem` | [integral_product_eq_signed_squares](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/integral-product-eq-signed-squares--da531faecbf4a01f76e9732e.md) | 95 | `result-track:da531faecbf4a01f76e9732ec80bd5115124919a4616d9e3a21dad0da9fdf635` |
| 14 | `theorem` | [integral_product_eq_even_add_odd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/declarations/integral-product-eq-even-add-odd--aec09b52d805cbd17a8926ac.md) | 111 | `result-track:aec09b52d805cbd17a8926acbeafa26928872e4d41bb10b3a88a95f3a3aca67f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
