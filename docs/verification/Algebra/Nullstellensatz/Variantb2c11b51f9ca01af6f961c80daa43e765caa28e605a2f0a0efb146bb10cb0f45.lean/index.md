# Verification target: GRWTSK.Algebra.Nullstellensatz.Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5de8e7ba22091c3ed9112c1f455c2f80325541a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5de8e7ba22091c3ed9112c1f455c2f80325541a`.

Source path: `GRWTSK/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.MvPolynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PrimeSpectrum.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/zerolocus--d5e569a3779c2d95bf601a10.md) | 41 | `declaration-track:d5e569a3779c2d95bf601a10ae1d842e999f3ad02967149da8aefd69bec5dd31` |
| 2 | `theorem` | [mem_zeroLocus_iff](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/mem-zerolocus-iff--954cfaf04a1e4283edd7628b.md) | 46 | `result-track:954cfaf04a1e4283edd7628b07ccbda57d7b52f06a55083f5aaac3b18975267d` |
| 3 | `theorem` | [zeroLocus_anti_mono](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/zerolocus-anti-mono--810b24828a9cf3d945f0a34e.md) | 51 | `result-track:810b24828a9cf3d945f0a34e4e2dc6a0d502b76c4d66702e6b2b1e70f516a338` |
| 4 | `theorem` | [zeroLocus_bot](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/zerolocus-bot--96f466bcd4bb9cdef6d5bdea.md) | 56 | `result-track:96f466bcd4bb9cdef6d5bdea8691c7f2bd3cdf341bdb15bb0d389a9071294ca2` |
| 5 | `theorem` | [zeroLocus_top](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/zerolocus-top--587322f63792eab4db056a91.md) | 61 | `result-track:587322f63792eab4db056a912ae2a7f9990c753a8279482ce261c8692a4d6163` |
| 6 | `def` | [vanishingIdeal](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/vanishingideal--4803fb293ef741fc78db2d06.md) | 66 | `declaration-track:4803fb293ef741fc78db2d06bf4e5380d8d49203de756b98a5854d0d8ef619ae` |
| 7 | `theorem` | [mem_vanishingIdeal_iff](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/mem-vanishingideal-iff--9ef2f6401af271120a8706b3.md) | 75 | `result-track:9ef2f6401af271120a8706b382ac73d0d62de7aa01e84d7496535ecc2f05607a` |
| 8 | `theorem` | [vanishingIdeal_anti_mono](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/vanishingideal-anti-mono--a5d4f952704b3f0a5e22748c.md) | 80 | `result-track:a5d4f952704b3f0a5e22748cdc54e51415b235bb12f8d686275f00b00138e434` |
| 9 | `theorem` | [vanishingIdeal_empty](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/vanishingideal-empty--45f1857bb810da334e638fbf.md) | 84 | `result-track:45f1857bb810da334e638fbffa6ae9d388d872097d4ffec259602a4ffcc8d225` |
| 10 | `theorem` | [le_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/le-vanishingideal-zerolocus--1aa36787398955f41477a5f7.md) | 88 | `result-track:1aa36787398955f41477a5f79531dc36f7aa2eaf89e891201763c766b7fa0642` |
| 11 | `theorem` | [zeroLocus_vanishingIdeal_le](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/zerolocus-vanishingideal-le--19bfed5aff1a3ae7cf23e58b.md) | 92 | `result-track:19bfed5aff1a3ae7cf23e58b3cdae41458aca89d5fd3d92fc3f69c925e47bedf` |
| 12 | `theorem` | [zeroLocus_vanishingIdeal_galoisConnection](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/zerolocus-vanishingideal-galoisconnection--9fde904dacfcac9bf8e51ed9.md) | 96 | `result-track:9fde904dacfcac9bf8e51ed9c1bc22a28859aa5343854d1dc8a585e7f67c49e7` |
| 13 | `theorem` | [le_zeroLocus_iff_le_vanishingIdeal](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/le-zerolocus-iff-le-vanishingideal--56c056e56236bb04151c3648.md) | 102 | `result-track:56c056e56236bb04151c36482f96060839d0eccc990238ed6bb90ef5963e51b5` |
| 14 | `theorem` | [zeroLocus_span](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/zerolocus-span--0475970054df9e8d5d08dfa7.md) | 106 | `result-track:0475970054df9e8d5d08dfa779248b156360fb17eaca245ec8f63d71d3aa71dd` |
| 15 | `theorem` | [mem_vanishingIdeal_singleton_iff](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/mem-vanishingideal-singleton-iff--7fb722ae6324db571dbff232.md) | 111 | `result-track:7fb722ae6324db571dbff232e67cae6a3e4c6c8f4f7071f79e8791bcd9082ff3` |
| 16 | `instance` | [vanishingIdeal_singleton_isMaximal](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/vanishingideal-singleton-ismaximal--d5601649fd17e6f85d084962.md) | 116 | `declaration-track:d5601649fd17e6f85d0849628b16f47b5b04fe920c9482807e95c92fe5cdaaab` |
| 17 | `theorem` | [radical_le_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/radical-le-vanishingideal-zerolocus--f4423ddf023dceec59b2c852.md) | 132 | `result-track:f4423ddf023dceec59b2c8523058f08f66ec7f9edd88ae6e53523cb40156ce58` |
| 18 | `def` | [pointToPoint](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/pointtopoint--e6d4542ab9516ab74adb4a99.md) | 145 | `declaration-track:e6d4542ab9516ab74adb4a9915967847314fd7a48ee3cccf16e0908abc6babe8` |
| 19 | `theorem` | [vanishingIdeal_pointToPoint](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/vanishingideal-pointtopoint--5d9847f06f7f74eda9d2411e.md) | 150 | `result-track:5d9847f06f7f74eda9d2411ed4ff70149d053232d4ef26d2a90570643177027b` |
| 20 | `theorem` | [pointToPoint_zeroLocus_le](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/pointtopoint-zerolocus-le--b90161a6a1ab992720810ce5.md) | 163 | `result-track:b90161a6a1ab992720810ce582a1af4441ba500fb4d2f05b47a5212c93a6fcf1` |
| 21 | `theorem` | [isMaximal_iff_eq_vanishingIdeal_singleton](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/ismaximal-iff-eq-vanishingideal-singleton--e41a2a10464c43246306ae41.md) | 173 | `result-track:e41a2a10464c43246306ae415a46b9cc40cd1b4dd7d2b4dcb8a75da2aa0dd7c0` |
| 22 | `theorem` | [vanishingIdeal_zeroLocus_eq_radical](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/vanishingideal-zerolocus-eq-radical--b1395bb3d718fb8f08c6ba15.md) | 200 | `result-track:b1395bb3d718fb8f08c6ba156514add1e37bd168f2cb6278335e003b7ae81fb0` |
| 23 | `theorem` | [IsPrime.vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/declarations/isprime-vanishingideal-zerolocus--acde08d621faa8b31e775150.md) | 217 | `result-track:acde08d621faa8b31e775150fa2b98770ecb433cf11ef660e0fe8d9e7b5521ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
