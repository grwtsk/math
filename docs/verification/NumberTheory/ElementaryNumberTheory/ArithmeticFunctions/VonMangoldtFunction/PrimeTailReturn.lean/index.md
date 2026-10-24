# Verification target: GRWTSK.NumberTheory.VonMangoldt.PrimeTailReturn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcb85000e7df8de54282661104b760a60b626e73",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/PrimeTailReturn.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcb85000e7df8de54282661104b760a60b626e73`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/PrimeTailReturn.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/PrimeTailReturn.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Analysis.GreenKernel.TailAugmentation`](../../../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [removedCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/removedcoefficient--63c4de943e54c073e8905ba7.md) | 27 | `declaration-track:63c4de943e54c073e8905ba704b7dfaab235239b6e70b2c8b8d2e8e0ee66b228` |
| 2 | `def` | [primeCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/primecoefficient--66b83b61e28fd4a7d7919b07.md) | 30 | `declaration-track:66b83b61e28fd4a7d7919b07465c34cdf92cb56a6d2f7c41eddf61f65dd1cfe6` |
| 3 | `def` | [tailSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/tailsource--3c9e490e093b19ae6d0691b7.md) | 32 | `declaration-track:3c9e490e093b19ae6d0691b72f07db635b8f7e898d9e05d627f82e44ffbc32e8` |
| 4 | `def` | [tailEnergy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/tailenergy--ed5e9f36e59f079a10d3a5b6.md) | 34 | `declaration-track:ed5e9f36e59f079a10d3a5b6396ec8b650839347c9b3cbb8be7befd4d9ee1c51` |
| 5 | `def` | [removedMass](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/removedmass--3c107bf758c6af0422631a4d.md) | 37 | `declaration-track:3c107bf758c6af0422631a4de579b9bcce47e1c748be08b7a6599e52fb2211ad` |
| 6 | `def` | [removedTail](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/removedtail--af8fa22f59a2a74ebd992f68.md) | 39 | `declaration-track:af8fa22f59a2a74ebd992f681c4858fbc536c2127baa8bec592de0538c1cf485` |
| 7 | `def` | [removedEnergy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/removedenergy--dee7f9ec91adf197574c4004.md) | 42 | `declaration-track:dee7f9ec91adf197574c4004a3980e1a9009f6096db639d54371971093e48682` |
| 8 | `def` | [primeMass0](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/primemass0--e9ee22ceea0a7bf4e49fe1e7.md) | 45 | `declaration-track:e9ee22ceea0a7bf4e49fe1e718e98d020fadb34a52910c9184f3f76527725003` |
| 9 | `def` | [primeTail](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/primetail--3774303f56736e1b5c42bfe5.md) | 47 | `declaration-track:3774303f56736e1b5c42bfe5c6a7cae2293b5862f807139ec2db955642fabfca` |
| 10 | `def` | [primeEnergy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/primeenergy--9b9c4cddc6ea2ea507279824.md) | 49 | `declaration-track:9b9c4cddc6ea2ea5072798240b3e45c4bb89d95e51f437f19bdd7aebde599e49` |
| 11 | `theorem` | [coefficient_partition](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/coefficient-partition--03267ec3ab8f46f2e66439a7.md) | 52 | `result-track:03267ec3ab8f46f2e66439a787e977fb0e1df58006b9a3f40761b3bbd36d60d1` |
| 12 | `theorem` | [removedCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/removedcoefficient-nonneg--99c45b44280f4d9ce0a715a2.md) | 57 | `result-track:99c45b44280f4d9ce0a715a2c09f7f108e38906b86659d70b6d0a71c714e1791` |
| 13 | `theorem` | [tailSource_eq_literal](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/tailsource-eq-literal--b557e8030d313f0b7fe19422.md) | 64 | `result-track:b557e8030d313f0b7fe194225cfccbf9bf82306d4629aaed12c2eb02f0065c49` |
| 14 | `theorem` | [integral_tailSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/integral-tailsource--7b96d2d3d713740683ed6400.md) | 71 | `result-track:7b96d2d3d713740683ed640055f8a7c2a3ec52d3368d0b759a097e82c37930aa` |
| 15 | `theorem` | [tailSource_integrable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/tailsource-integrable--7c83cc60e719c9ce61e77e4e.md) | 77 | `result-track:7c83cc60e719c9ce61e77e4e43bc5cc2c510fc7f21f310a34989a7fb61183de1` |
| 16 | `theorem` | [tailSource_square_integrable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/tailsource-square-integrable--81ea38f7ae85645920bbb388.md) | 80 | `result-track:81ea38f7ae85645920bbb388fec85cfb2d7f3fa1d40f349deae96c42ff71b92e` |
| 17 | `theorem` | [augmented_eq_tailEnergy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/augmented-eq-tailenergy--0d723ec21f54182573ea6c42.md) | 94 | `result-track:0d723ec21f54182573ea6c427c71a4fa42ecd089c319c72e0b888f977fb50680` |
| 18 | `theorem` | [removedTail_integrable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/removedtail-integrable--fdef7e240299508b9ab6f98d.md) | 111 | `result-track:fdef7e240299508b9ab6f98dcf80db4a1c1f70efc38b1b458e36916bfc9c708b` |
| 19 | `theorem` | [removedTail_square_integrable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/removedtail-square-integrable--66fbd9d427691953781936a1.md) | 114 | `result-track:66fbd9d427691953781936a1e7da567860f58186b9dd02e6fbd99aaa16d82dca` |
| 20 | `theorem` | [primeTail_integrable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/primetail-integrable--b863dcd0941b8c272b5fcd4a.md) | 118 | `result-track:b863dcd0941b8c272b5fcd4adfcf270b0e32c0797ab6bfa3c899a56912d2e7a6` |
| 21 | `theorem` | [primeTail_square_integrable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/primetail-square-integrable--6aa742e87a59319165b4740b.md) | 121 | `result-track:6aa742e87a59319165b4740b6eaa4374937e5133d147595ce6db93b2af0e1cee` |
| 22 | `theorem` | [removedMass_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/removedmass-nonneg--0bfc8706dda17742165fed40.md) | 133 | `result-track:0bfc8706dda17742165fed408d0683e6c641c8537138bb34bd3c56f69d72e7e5` |
| 23 | `theorem` | [source_mass_partition](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/source-mass-partition--6b00d375ee47e2390a8559d1.md) | 136 | `result-track:6b00d375ee47e2390a8559d1366c5818479202af62106d806bea755dac4380ab` |
| 24 | `theorem` | [source_tail_partition](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/source-tail-partition--e3b06960cfa3ea739c7bf7a0.md) | 140 | `result-track:e3b06960cfa3ea739c7bf7a0ed769f39decd1c8c0ee1a117c2f44564e926df35` |
| 25 | `theorem` | [primeTail_eq_literal](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/primetail-eq-literal--6e3191b76feed461be62e978.md) | 146 | `result-track:6e3191b76feed461be62e978b76e05a3d26ababb207d9f1f0093dd12deb7f285` |
| 26 | `theorem` | [primeMass0_eq_literal](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/primemass0-eq-literal--315d369770c087af09b95f1a.md) | 159 | `result-track:315d369770c087af09b95f1a8834359c1fb561ce9cd3a16c2c1fd589ffb4595f` |
| 27 | `theorem` | [removedEnergy_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/removedenergy-nonneg--88506f86475549f817d4ec9e.md) | 165 | `result-track:88506f86475549f817d4ec9eb1503ecfcd5e21ea456122e3b23b043946b8a4f8` |
| 28 | `theorem` | [removedEnergy_le_mass](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/removedenergy-le-mass--0aea3974aa866ad99b950d76.md) | 168 | `result-track:0aea3974aa866ad99b950d76b05c327950e79899d3fba70d44d1634a10011238` |
| 29 | `theorem` | [all_energy_le_prime_and_removed](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/all-energy-le-prime-and-removed--8b3b8466d7aad33c23d262d7.md) | 173 | `result-track:8b3b8466d7aad33c23d262d72b6160cf5c1466cc46a0eaf50c1169879134a5c2` |
| 30 | `theorem` | [prime_energy_le_all_and_removed](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/prime-energy-le-all-and-removed--142d6cf93014a981a1027640.md) | 197 | `result-track:142d6cf93014a981a1027640cc3aaa552562191445770088c739be43222a21d4` |
| 31 | `theorem` | [all_energy_le_prime_and_mass](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/all-energy-le-prime-and-mass--27bba152a70dac27455b2170.md) | 222 | `result-track:27bba152a70dac27455b21705f48cc5dbff628e5a3dc471e909549b03ec7e77f` |
| 32 | `theorem` | [prime_energy_le_all_and_mass](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/declarations/prime-energy-le-all-and-mass--7c8a232f0fc7c67c136ca590.md) | 226 | `result-track:7c8a232f0fc7c67c136ca590398429f32f57495940dc7144a3172031cdf63ddb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
