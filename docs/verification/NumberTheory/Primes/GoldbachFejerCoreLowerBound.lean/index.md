# Verification target: GRWTSK.NumberTheory.Primes.GoldbachFejerCoreLowerBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf516f0e84b56741728594781af922e362708f05",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf516f0e84b56741728594781af922e362708f05`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFejerKernel`](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachFejerCoreRadius](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachfejercoreradius--64ff83cfbb368acf102ffc70.md) | 44 | `declaration-track:64ff83cfbb368acf102ffc7076f70651f5bc911864e74a3fa33417f4660d9796` |
| 2 | `def` | [goldbachFejerCoreMain](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachfejercoremain--6fd008de756f715235607ce3.md) | 48 | `declaration-track:6fd008de756f715235607ce3709eb04c263f04bd3103bccb7d1501818f57a9c3` |
| 3 | `def` | [goldbachFejerCoreIntegral](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachfejercoreintegral--6c5a3649e52e3ad4c5f28365.md) | 52 | `declaration-track:6c5a3649e52e3ad4c5f28365dfb74ad79707be0f1aa19809c3053d83927b1727` |
| 4 | `theorem` | [goldbachFejerCoreRadius_pos](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachfejercoreradius-pos--ceef7d67c1846e06f40e9fcc.md) | 59 | `result-track:ceef7d67c1846e06f40e9fcc557da4369b4ad35931f199b392285784ba000ba1` |
| 5 | `theorem` | [unitCharacter_nat_re](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/unitcharacter-nat-re--b0f288fc7e0aced73b173ba2.md) | 65 | `result-track:b0f288fc7e0aced73b173ba2f01b4d48250bab23fb4e5904857dc28784d5cab9` |
| 6 | `theorem` | [abs_goldbach_phase_le_pi_div_three](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/abs-goldbach-phase-le-pi-div-three--1722ce642588c4885f69d2b3.md) | 83 | `result-track:1722ce642588c4885f69d2b330a6cbf4ca93459499875f1d05b3a7f9582f5b03` |
| 7 | `theorem` | [one_half_le_unitCharacter_nat_re_on_core](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/one-half-le-unitcharacter-nat-re-on-core--2ce710d76e8a2964dbf9806f.md) | 130 | `result-track:2ce710d76e8a2964dbf9806fd3dee985407ccd5790d55152519c4b0737f75780` |
| 8 | `theorem` | [goldbachIntegerExponentialKernel_re_lower_on_core](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachintegerexponentialkernel-re-lower-on-core--56333869ac411f54bad58052.md) | 160 | `result-track:56333869ac411f54bad5805291f4a1db207e30036dbc0c10a90f9b74ebef0b93` |
| 9 | `theorem` | [goldbachFejerKernel_lower_on_core](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachfejerkernel-lower-on-core--6e19265ef4ded604c5c7c356.md) | 186 | `result-track:6e19265ef4ded604c5c7c3560bc980a5b6b16fea88fd3827bc93a259b43c207c` |
| 10 | `theorem` | [continuous_goldbachFejerKernel](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/continuous-goldbachfejerkernel--213be05248339660da9347af.md) | 209 | `result-track:213be05248339660da9347af81c8972765bb71bde762e7564a63d7e24ce6e632` |
| 11 | `theorem` | [goldbachFejerCoreMain_le_integral](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachfejercoremain-le-integral--3ed7a966aa98723d66a565de.md) | 217 | `result-track:3ed7a966aa98723d66a565de9e3f4e872d43548151183f14b002562add6830f6` |
| 12 | `theorem` | [goldbachFejerCoreRadius_le_arcRadius](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachfejercoreradius-le-arcradius--814a02528046a9c64ae94156.md) | 250 | `result-track:814a02528046a9c64ae941565d244ff28216abffe53215bf4bc544dbc92a777a` |
| 13 | `theorem` | [goldbachFejerCoreInterval_subset_symmetric](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachfejercoreinterval-subset-symmetric--1b66882f023efdbadd3a94e0.md) | 270 | `result-track:1b66882f023efdbadd3a94e0ba0f5dec81db1a626a4d66eb74824ea2ca9d7ccb` |
| 14 | `theorem` | [goldbachSymmetricRealSingularIntegral_re_eq_fejerIntegral](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachsymmetricrealsingularintegral-re-eq-fejerintegral--6c31b5b061ac05f052f6632e.md) | 287 | `result-track:6c31b5b061ac05f052f6632e0ac1bca37e0c6ec8e214bc3c1c0fc5405c192674` |
| 15 | `theorem` | [goldbachFejerCoreMain_le_symmetric_re](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachfejercoremain-le-symmetric-re--11a7ce0bb9a265a89cca0fe3.md) | 301 | `result-track:11a7ce0bb9a265a89cca0fe343382a047d9a9974a09fcd14c5fb1f651235e3e3` |
| 16 | `theorem` | [goldbachSymmetricRealSingularIntegral_re_pos](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachsymmetricrealsingularintegral-re-pos--a3ab9dcce5ce6232606e8a1e.md) | 327 | `result-track:a3ab9dcce5ce6232606e8a1e419fef16750adf2a93daed67f8658da187dfed5d` |
| 17 | `def` | [goldbachFejerWindowUpper](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachfejerwindowupper--235a8b3216b34364bc1816e5.md) | 337 | `declaration-track:235a8b3216b34364bc1816e5586dce8806c886fba2a4e1941437c9c5ccaaa491` |
| 18 | `theorem` | [goldbachSymmetricRealSingularIntegral_re_le_upper](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachsymmetricrealsingularintegral-re-le-upper--536a4b9ec942e47e6b11b35b.md) | 344 | `result-track:536a4b9ec942e47e6b11b35b6527023354a26ad2b72c84f83a7ea9dec03dfc2c` |
| 19 | `theorem` | [goldbachSymmetricRealSingularIntegral_im_zero](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/declarations/goldbachsymmetricrealsingularintegral-im-zero--56d11e5b8749e8e4528bde8f.md) | 383 | `result-track:56d11e5b8749e8e4528bde8f2db468787b92de42e5d685282d426e844ac90afe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
