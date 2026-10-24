# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SourcePrimeDisclosure.Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0016f32ce7bbe576202a2ff26341fb06622746f1",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0016f32ce7bbe576202a2ff26341fb06622746f1`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceOrbitCoordinates` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeDivisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/primedivisors--da07eaf1dccfde833da7960b.md) | 30 | `declaration-track:da07eaf1dccfde833da7960b0b8e40c42df1f1746d749405f4b818269736c89a` |
| 2 | `theorem` | [primeDivisors_fresh_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/primedivisors-fresh-coprime--85b51071e3b790dd6119d47e.md) | 33 | `result-track:85b51071e3b790dd6119d47ee89f7bde98e7350736f3fb71e72a3596cd5d8c89` |
| 3 | `theorem` | [primeDivisors_insert](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/primedivisors-insert--e5728f724ed7fe0a499c6a98.md) | 49 | `result-track:e5728f724ed7fe0a499c6a98365d6a50d165a1b24bd7cc2822e629f69488bb6c` |
| 4 | `theorem` | [primeDivisors_insert_disjoint](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/primedivisors-insert-disjoint--b338d893bb1882ccd1f19b89.md) | 73 | `result-track:b338d893bb1882ccd1f19b8955d1e799dd18ff7f2fc390ce91cf8acceb4a15c0` |
| 5 | `def` | [centeredDisclosure](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/centereddisclosure--9f39e2e2030c35f436f5b387.md) | 83 | `declaration-track:9f39e2e2030c35f436f5b387da9c64d895f2a6783731f7272352b0148e9398ec` |
| 6 | `def` | [disclosedMean](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/disclosedmean--d7195ee7ef1bda39626adff6.md) | 87 | `declaration-track:d7195ee7ef1bda39626adff680ec78a6467de1ae59c6efac0e0b15c569012ddb` |
| 7 | `def` | [disclosedDivisorSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/discloseddivisorsum--67e99611c0591f6738808fbf.md) | 90 | `declaration-track:67e99611c0591f6738808fbfb2b4da617488b7a2bbd9f4fd4c7cc965e2746d93` |
| 8 | `def` | [freshPrimeCorrection](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/freshprimecorrection--db0e02cf3cfc63abc5d285be.md) | 93 | `declaration-track:db0e02cf3cfc63abc5d285be603fd9038f77c2cea403e43742db49fdca62041a` |
| 9 | `theorem` | [moebius_fresh_prime_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/moebius-fresh-prime-mul--c8f65e7be0fb798a81970ec7.md) | 97 | `result-track:c8f65e7be0fb798a81970ec70b2b3a1a965fdf7e873da0a4cb8076ce6d4a9a0c` |
| 10 | `theorem` | [fresh_prime_discrepancy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/fresh-prime-discrepancy--810a6882e90f2af960b674d3.md) | 105 | `result-track:810a6882e90f2af960b674d34ad5037da2fceea0665a4f2396375328f628c651` |
| 11 | `theorem` | [centeredDisclosure_insert_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/centereddisclosure-insert-prime--47cc6b513ded1c3bde24a5c2.md) | 118 | `result-track:47cc6b513ded1c3bde24a5c2fa836fb2c4d7d56981321996c766d3e63dc283c6` |
| 12 | `theorem` | [centeredDisclosure_primeDivisors_insert](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/centereddisclosure-primedivisors-insert--1772835ea49406ed168f1638.md) | 142 | `result-track:1772835ea49406ed168f16384fd46cc43525baaf4655cc51bae2bfe157c6e1d1` |
| 13 | `theorem` | [centeredDisclosure_coverage](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/centereddisclosure-coverage--075e742a27d9cb9a561c9320.md) | 153 | `result-track:075e742a27d9cb9a561c9320089be7d522dd2448f0b18154d361dbf55f451567` |
| 14 | `def` | [disclosureSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/disclosuresource--af71ede5df30d9dfb8bbde07.md) | 180 | `declaration-track:af71ede5df30d9dfb8bbde07f132277980ebf2a78f1cb43af04baff4af532b90` |
| 15 | `def` | [correctionSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/correctionsource--66ba6ad7470a0d97fa72fe1c.md) | 184 | `declaration-track:66ba6ad7470a0d97fa72fe1c79ee7fbc85d14db28328f9ba30a7e2dc7e24352a` |
| 16 | `theorem` | [disclosureSource_insert_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/disclosuresource-insert-prime--b1a0c9ebc5765cc411dc0e2b.md) | 188 | `result-track:b1a0c9ebc5765cc411dc0e2b5316515bb4916df6c6a83425cad3559d204a4967` |
| 17 | `theorem` | [disclosureSource_primeDivisors_insert](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/disclosuresource-primedivisors-insert--e19e98445306b9913f408479.md) | 199 | `result-track:e19e98445306b9913f4084794c73faf6be1ca80c7004a90f217fb21b4dc8f822` |
| 18 | `def` | [plainSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/plainsource--a778ede2ba36aa677e1de221.md) | 210 | `declaration-track:a778ede2ba36aa677e1de2213616685a440de6cf1517f3ada9dbfb007e257390` |
| 19 | `def` | [primeMultipleSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/primemultiplesource--295b5676f98748137fae7615.md) | 213 | `declaration-track:295b5676f98748137fae7615239489b9a20e905f2d658fc555c0341438072d3a` |
| 20 | `theorem` | [correctionSource_eq_mean_and_multiples](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/correctionsource-eq-mean-and-multiples--1c01022486f0e90f5c873898.md) | 218 | `result-track:1c01022486f0e90f5c873898b7c4fde6b8e197eabdc529b01d2343c020bb2332` |
| 21 | `def` | [physicalDiagonal](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/physicaldiagonal--0dceece5ea9299be16e44960.md) | 235 | `declaration-track:0dceece5ea9299be16e449601bcb4d201f8516c7e5cc96dceae3b355caa17160` |
| 22 | `def` | [compensatedReadout](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/compensatedreadout--192c5f9ba9caec68024196f7.md) | 239 | `declaration-track:192c5f9ba9caec68024196f7915dc61d25b98484d369b5916d1c363c9491b9fa` |
| 23 | `theorem` | [compensatedReadout_row_increment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/compensatedreadout-row-increment--779f0a63d32b2bb798c71ef4.md) | 245 | `result-track:779f0a63d32b2bb798c71ef438efd0d400ec6ed59f3d1ece947a07cd3f40b03c` |
| 24 | `theorem` | [compensatedReadout_two_row_increment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/compensatedreadout-two-row-increment--be6227d923959dcfd38ad3e1.md) | 261 | `result-track:be6227d923959dcfd38ad3e10f8ba5ed0c9ba3fb37b956aed2d9961d4a397d5b` |
| 25 | `theorem` | [repeated_prime_divisor_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/repeated-prime-divisor-zero--fab765e9e4023a58698b4e44.md) | 280 | `result-track:fab765e9e4023a58698b4e44ef2530c250c2e555511278791da119e38d6509ca` |
| 26 | `theorem` | [prime_power_mangoldt_coefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/prime-power-mangoldt-coefficient--3e47715a8dc2d48ed9fc22d8.md) | 285 | `result-track:3e47715a8dc2d48ed9fc22d8e0d18dc5e7ba7f606bf8103464724805cc0539b9` |
| 27 | `theorem` | [prime_three_centering_fixture](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/declarations/prime-three-centering-fixture--0d004fd782cf08ce5188b6a6.md) | 293 | `result-track:0d004fd782cf08ce5188b6a69c0a57162fda5f9b2041d4b9fffc27d6e99a4bdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
