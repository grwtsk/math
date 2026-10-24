# Verification target: GRWTSK.NumberTheory.DiophantineEquations.DiophantineApproximation.Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fefffd0d1f9f27fec2b4fbc7911a7592389611e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fefffd0d1f9f27fec2b4fbc7911a7592389611e`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.ApproximationCorollaries` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.Translations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Units` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_int_int_abs_mul_sub_le](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/exists-int-int-abs-mul-sub-le--fe57588c21fa02f0cd58c133.md) | 103 | `result-track:fe57588c21fa02f0cd58c1331a58f39b0cc578e07875feab993b7abbf2a4f834` |
| 2 | `theorem` | [exists_nat_abs_mul_sub_round_le](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/exists-nat-abs-mul-sub-round-le--2bd29addee66bd29bc889960.md) | 150 | `result-track:2bd29addee66bd29bc889960d9fdbca058822871b69f623a6ff4163a8029db93` |
| 3 | `theorem` | [exists_rat_abs_sub_le_and_den_le](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/exists-rat-abs-sub-le-and-den-le--dba2e72d32b1a188cc8a4b28.md) | 163 | `result-track:dba2e72d32b1a188cc8a4b28b0eb500973244486d6d7da21d036528a9389e01d` |
| 4 | `theorem` | [exists_rat_abs_sub_lt_and_lt_of_irrational](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/exists-rat-abs-sub-lt-and-lt-of-irrational--a53226d6807042738b5be652.md) | 193 | `result-track:a53226d6807042738b5be65268e651c8a967694127641cc99db4c891ec8f4604` |
| 5 | `theorem` | [infinite_rat_abs_sub_lt_one_div_den_sq_of_irrational](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/infinite-rat-abs-sub-lt-one-div-den-sq-of-irrational--743a8daa28f9eab3a4635455.md) | 215 | `result-track:743a8daa28f9eab3a4635455a9330f88b7ad7c271e77727b8d56ce213ecb7a2a` |
| 6 | `theorem` | [den_le_and_le_num_le_of_sub_lt_one_div_den_sq](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/den-le-and-le-num-le-of-sub-lt-one-div-den-sq--6fd54ae414ae1012ccb7b9f8.md) | 243 | `result-track:6fd54ae414ae1012ccb7b9f805d98e9a5ba4a7a4714beeb2b5abde683c2c71a0` |
| 7 | `theorem` | [finite_rat_abs_sub_lt_one_div_den_sq](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/finite-rat-abs-sub-lt-one-div-den-sq--baec86fffb63f9666411e001.md) | 273 | `result-track:baec86fffb63f9666411e00183a71aa1c75bdfaf5e904cb67b41c3a59eb929ff` |
| 8 | `theorem` | [Real.infinite_rat_abs_sub_lt_one_div_den_sq_iff_irrational](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/real-infinite-rat-abs-sub-lt-one-div-den-sq-iff-irrational--8e8f89b0aca3020ac807f830.md) | 298 | `result-track:8e8f89b0aca3020ac807f830b31feddd485b68dcab0b74c8991dc2bb7c93c4a9` |
| 9 | `def` | [convergent](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/convergent--10f8ba1bcacc8d1b542fce1a.md) | 345 | `declaration-track:10f8ba1bcacc8d1b542fce1ada477fad444c681767a38fcfea9f6b15c88e4ca0` |
| 10 | `theorem` | [convergent_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/convergent-zero--75e817ddf8e1c8fa6bcb630d.md) | 352 | `result-track:75e817ddf8e1c8fa6bcb630dda0912858d23ebce19f2016267c50115400d8908` |
| 11 | `theorem` | [convergent_succ](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/convergent-succ--7d68c75aef48922510b5afc0.md) | 358 | `result-track:7d68c75aef48922510b5afc0e2f3223aefef782666e15aa3ad09f08a857bedc4` |
| 12 | `theorem` | [convergent_of_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/convergent-of-zero--f4b1cf5fd7a73dc62f2f1ffd.md) | 367 | `result-track:f4b1cf5fd7a73dc62f2f1ffd129c8577b740226f25b0ac8f00488269ef37cb46` |
| 13 | `theorem` | [convergent_of_int](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/convergent-of-int--f62f8e0a9875188bddea6569.md) | 375 | `result-track:f62f8e0a9875188bddea6569d54992034fe77ff8fa13bf4bdc3d9505bedeb776` |
| 14 | `theorem` | [continued_fraction_convergent_eq_convergent](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/continued-fraction-convergent-eq-convergent--6ca36e417f0bf3d211cd577a.md) | 391 | `result-track:6ca36e417f0bf3d211cd577a4fcb03c18c3867a2c667d79eefd8b6a791b8ba1b` |
| 15 | `def` | [ContfracLegendre.Ass](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/contfraclegendre-ass--96160aa6e51fd477a2ab7c34.md) | 415 | `declaration-track:96160aa6e51fd477a2ab7c349b5b4671d6894aa8f614db7c1ad809112570405d` |
| 16 | `theorem` | [aux₀](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/aux--c135456cd120e2a081956ad2.md) | 422 | `result-track:c135456cd120e2a081956ad24a9d0f388a597a2e591eb3f4e23cfd32125c6aaa` |
| 17 | `theorem` | [aux₁](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/aux--5d1d471e4398a17c9683320e.md) | 429 | `result-track:5d1d471e4398a17c9683320e5e8407c89162d7d6ef72e395886c7edb08ff8bce` |
| 18 | `theorem` | [aux₂](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/aux--a3d6fa01134542d1dcbba565.md) | 448 | `result-track:a3d6fa01134542d1dcbba5656061528e3b6b431556d4af4ac03a355ad1c4013f` |
| 19 | `theorem` | [aux₃](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/aux--516d154aadea0005f4e7d4ed.md) | 485 | `result-track:516d154aadea0005f4e7d4edd2be6fca4510696ad8938c2f0979eb05d9dd1ecc` |
| 20 | `theorem` | [invariant](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/invariant--9bd6cb9bf3c754640135f624.md) | 524 | `result-track:9bd6cb9bf3c754640135f624206cff81e12800ce643bd8bc203c17f8ff57b55e` |
| 21 | `theorem` | [exists_rat_eq_convergent'](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/exists-rat-eq-convergent--8415dfa9b0316e8d4bcb0e18.md) | 544 | `result-track:8415dfa9b0316e8d4bcb0e1832b92c8a083e556a6a32d945e75fe8b080c4b6df` |
| 22 | `theorem` | [exists_rat_eq_convergent](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/exists-rat-eq-convergent--530b58b67adadfda86196182.md) | 594 | `result-track:530b58b67adadfda861961824d9d27b1d865b91003543ee159efb13560492944` |
| 23 | `theorem` | [exists_continued_fraction_convergent_eq_rat](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/declarations/exists-continued-fraction-convergent-eq-rat--d4db9be26c5d9a32d70918b3.md) | 612 | `result-track:d4db9be26c5d9a32d70918b33b467c64ba77c177aac1a53a7308dcc87cf6ce8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
