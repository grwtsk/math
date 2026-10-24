# Verification target: GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d92f4cfddbfef7a5784ef4bb2784477f4a272269",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d92f4cfddbfef7a5784ef4bb2784477f4a272269`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachRationalArcSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcs`](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachLiftedRationalArcCenter](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachliftedrationalarccenter--7006f42de93961ef44b9f273.md) | 37 | `declaration-track:7006f42de93961ef44b9f2733d7c50b48cb46d41f5c3c034460e0b2b39de61be` |
| 2 | `def` | [goldbachLiftedRationalArc](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachliftedrationalarc--d00c539d075e4c56f87028f5.md) | 42 | `declaration-track:d00c539d075e4c56f87028f58551ba59a97a3825bb10093dc7d7faf9a0565190` |
| 3 | `theorem` | [goldbachRationalArcCenter_mem_Ico](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachrationalarccenter-mem-ico--ef59e619cb89d325144c1a25.md) | 51 | `result-track:ef59e619cb89d325144c1a25d01f1dcb3b0f1754fc1f62cafa28607a22f00bf4` |
| 4 | `theorem` | [goldbachReducedFraction_eq_of_cross_mul](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachreducedfraction-eq-of-cross-mul--d477ab21c57c4f8289b8754c.md) | 65 | `result-track:d477ab21c57c4f8289b8754c7cad2f4821614dac3f973742f98c89c7d1ea9489` |
| 5 | `theorem` | [goldbachLiftedRationalArcCenter_eq_iff](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachliftedrationalarccenter-eq-iff--ce1cf98597ca772cbd7785f5.md) | 90 | `result-track:ce1cf98597ca772cbd7785f58fbe822f9784feb077d211fc551e918b2630a853` |
| 6 | `def` | [goldbachLiftedRationalDeterminant](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachliftedrationaldeterminant--9a3c0dc16d835a267f1c1649.md) | 146 | `declaration-track:9a3c0dc16d835a267f1c16497d69160381faa06203d1fd4b092b1ff501bffff4` |
| 7 | `theorem` | [goldbachLiftedRationalArcCenter_sub_eq](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachliftedrationalarccenter-sub-eq--9e45c32292f7e704d98b417b.md) | 152 | `result-track:9e45c32292f7e704d98b417b8d95b1c04d97eff9b769f0f2610f84d1ee5c0810` |
| 8 | `theorem` | [goldbachLiftedRationalDeterminant_ne_zero](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachliftedrationaldeterminant-ne-zero--fa668432b4f844ee0c8e3c15.md) | 168 | `result-track:fa668432b4f844ee0c8e3c15712d599225d9c9070fe7e59d0d3194eed11059f1` |
| 9 | `theorem` | [goldbachLiftedRationalArcCenter_separation](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachliftedrationalarccenter-separation--329f02364561c9f516c9f15a.md) | 195 | `result-track:329f02364561c9f516c9f15a446d8f251d40927730e2adddf494b192460024fa` |
| 10 | `theorem` | [goldbachRationalArcRadius_add_lt_inverse_mul](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachrationalarcradius-add-lt-inverse-mul--39584ce3bf1ff1ca8bfadc3b.md) | 222 | `result-track:39584ce3bf1ff1ca8bfadc3bb54ec7933dabd43c1e26ff60b0f942bc6fd2ac61` |
| 11 | `theorem` | [goldbachRationalArcRadius_add_lt_of_global_scale](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachrationalarcradius-add-lt-of-global-scale--e898d7bd40f62d4aa0415b2b.md) | 254 | `result-track:e898d7bd40f62d4aa0415b2b9b5ecb9198c25373ffd238551595c0ae4d30cd1a` |
| 12 | `theorem` | [disjoint_Icc_of_radius_add_lt_abs_sub](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/disjoint-icc-of-radius-add-lt-abs-sub--3ee611a715e9c7ee699d59d0.md) | 275 | `result-track:3ee611a715e9c7ee699d59d05fffc18af8a5f6db6260af9985aecb1645a48cb7` |
| 13 | `theorem` | [goldbachLiftedRationalArcs_disjoint](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachliftedrationalarcs-disjoint--975e8277d0eaa2ce44ffca0e.md) | 290 | `result-track:975e8277d0eaa2ce44ffca0e827666d6eafd0330e0c1e7ebd63440a04f486039` |
| 14 | `theorem` | [goldbachPeriodizedRationalArc_eq_three_lifts](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachperiodizedrationalarc-eq-three-lifts--2cf90d08ba870514e2b9195b.md) | 306 | `result-track:2cf90d08ba870514e2b9195b8e6320e9a245c7f70bce18f9b7034e0c4ae05e20` |
| 15 | `theorem` | [goldbachPeriodizedRationalArcs_disjoint](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachperiodizedrationalarcs-disjoint--4218ed6f94b37a97739799a3.md) | 320 | `result-track:4218ed6f94b37a97739799a3b8b47b2a5836cde4748c7c23563251e9fd6aca20` |
| 16 | `theorem` | [goldbachPeriodizedRationalArcs_pairwiseDisjoint](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/declarations/goldbachperiodizedrationalarcs-pairwisedisjoint--cdc58b9c87854b93f93fde28.md) | 354 | `result-track:cdc58b9c87854b93f93fde287223261737f6b3e15c93faf44605dba21837e45e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
