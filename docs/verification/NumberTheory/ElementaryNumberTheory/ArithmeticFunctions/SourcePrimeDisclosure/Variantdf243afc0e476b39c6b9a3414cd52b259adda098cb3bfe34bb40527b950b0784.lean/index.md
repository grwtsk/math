# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SourcePrimeDisclosure.Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "191d9f886637eb847e7e25f8ba5f7d1724891606",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `191d9f886637eb847e7e25f8ba5f7d1724891606`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean.json)

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
| 1 | `def` | [primeDivisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/primedivisors--189de661a3c95175e673b47a.md) | 30 | `declaration-track:189de661a3c95175e673b47aba42f06a2ce77a0bbb3b9f130e20668357d35c29` |
| 2 | `theorem` | [primeDivisors_fresh_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/primedivisors-fresh-coprime--142ad57b491286a5f3799e24.md) | 33 | `result-track:142ad57b491286a5f3799e2478f7c55634c50e8da864a50ed727ee353cda4ade` |
| 3 | `theorem` | [primeDivisors_insert](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/primedivisors-insert--709677af51116fca5accb702.md) | 49 | `result-track:709677af51116fca5accb70278bc286af58cbdc85b055e8198c2c64840b8ea01` |
| 4 | `theorem` | [primeDivisors_insert_disjoint](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/primedivisors-insert-disjoint--cc17028146a53ec9b7338e48.md) | 73 | `result-track:cc17028146a53ec9b7338e48e30622198b495a24ce3739b0a41c0b6ff60b984f` |
| 5 | `def` | [centeredDisclosure](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/centereddisclosure--9208aa950c8738661969ecef.md) | 83 | `declaration-track:9208aa950c8738661969ecefeac7aa4290fc5f9b8d2f15e6b0b64ec0232fbc8c` |
| 6 | `def` | [disclosedMean](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/disclosedmean--7affd2ad026a49cd0d1b4128.md) | 87 | `declaration-track:7affd2ad026a49cd0d1b41286b42caddd75bd77f8ebfd0c79a014702952d46cd` |
| 7 | `def` | [disclosedDivisorSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/discloseddivisorsum--39b0262174a67480cbc8598e.md) | 90 | `declaration-track:39b0262174a67480cbc8598ed89b98d675dcfc39131a01d029f5557c6055ebe4` |
| 8 | `def` | [freshPrimeCorrection](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/freshprimecorrection--299e256804edd634c3be03e3.md) | 93 | `declaration-track:299e256804edd634c3be03e3b96304d37e0a516d48f116590d476411a39a815c` |
| 9 | `theorem` | [moebius_fresh_prime_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/moebius-fresh-prime-mul--99091b120888a45f63824933.md) | 97 | `result-track:99091b120888a45f638249334f3b4e569d615bd434cae4f0a67380aaa2ac7b0e` |
| 10 | `theorem` | [fresh_prime_discrepancy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/fresh-prime-discrepancy--dd2143039072beee98d522e8.md) | 105 | `result-track:dd2143039072beee98d522e80b1e30571068395c1183e8c90f8992163d411566` |
| 11 | `theorem` | [centeredDisclosure_insert_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/centereddisclosure-insert-prime--1fb08b497a36e4e33664bb6e.md) | 118 | `result-track:1fb08b497a36e4e33664bb6ed20ad05f162cbc335488b2768edae7cf992625e5` |
| 12 | `theorem` | [centeredDisclosure_primeDivisors_insert](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/centereddisclosure-primedivisors-insert--d60d673d95d9a1b57fce47fc.md) | 142 | `result-track:d60d673d95d9a1b57fce47fc983444ac4462f391bae89097693d90d9b7729c13` |
| 13 | `theorem` | [centeredDisclosure_coverage](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/centereddisclosure-coverage--6b8be005581088fd2584f69e.md) | 153 | `result-track:6b8be005581088fd2584f69e5411b083dd9cc79ace5178b5b5e2e96f6ea5681c` |
| 14 | `def` | [disclosureSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/disclosuresource--b16be37834191cef8ad0a89e.md) | 180 | `declaration-track:b16be37834191cef8ad0a89e729ed84998af9d38b50ba38167f932ca1e15e798` |
| 15 | `def` | [correctionSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/correctionsource--7d9304928b7a0dd74f8931df.md) | 184 | `declaration-track:7d9304928b7a0dd74f8931df7c38a67d318f535741ddb2ded95740ca8ecd2d80` |
| 16 | `theorem` | [disclosureSource_insert_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/disclosuresource-insert-prime--51ac5947fdde79c491f96546.md) | 188 | `result-track:51ac5947fdde79c491f96546b0513891d003dc7259bee915e8f88646a5b11ede` |
| 17 | `theorem` | [disclosureSource_primeDivisors_insert](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/disclosuresource-primedivisors-insert--8e9319beac2a02021d43b25d.md) | 199 | `result-track:8e9319beac2a02021d43b25da623d61a7ea58284894427654d82fa6b144946f7` |
| 18 | `def` | [plainSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/plainsource--7b1fb2cb3eea86a38ae56324.md) | 210 | `declaration-track:7b1fb2cb3eea86a38ae563245a3c1a27b533d5ebf981e5d88552dda5db710618` |
| 19 | `def` | [primeMultipleSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/primemultiplesource--c3ea09f210a64841c76acdd7.md) | 213 | `declaration-track:c3ea09f210a64841c76acdd716a15f3caa39af9a348359a659ebad0906cef5d7` |
| 20 | `theorem` | [correctionSource_eq_mean_and_multiples](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/correctionsource-eq-mean-and-multiples--4dca0097ebf1c775bcb32c53.md) | 218 | `result-track:4dca0097ebf1c775bcb32c53152fe1eb1ed3e3eff22a645b8bb8876c443539b8` |
| 21 | `def` | [physicalDiagonal](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/physicaldiagonal--5d492df0bfa9d739761f6f16.md) | 235 | `declaration-track:5d492df0bfa9d739761f6f166510105810840c13984dd74007a100cb43fbed30` |
| 22 | `def` | [compensatedReadout](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/compensatedreadout--d847490820c301bb2677b00f.md) | 239 | `declaration-track:d847490820c301bb2677b00f671a2844356f28a72e9037ebd84004d4d27412db` |
| 23 | `theorem` | [compensatedReadout_row_increment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/compensatedreadout-row-increment--0905acc47453a59a49210e57.md) | 245 | `result-track:0905acc47453a59a49210e57f3a48234b879beb184d43baaa6247efae62089c8` |
| 24 | `theorem` | [compensatedReadout_two_row_increment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/compensatedreadout-two-row-increment--810efbbcd17193e5bc1a18a8.md) | 261 | `result-track:810efbbcd17193e5bc1a18a859e786426302db8eff24e94d3dd17ce601786799` |
| 25 | `theorem` | [repeated_prime_divisor_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/repeated-prime-divisor-zero--b3bdbd790b83f690f8cb1343.md) | 280 | `result-track:b3bdbd790b83f690f8cb13436ec20070796dc756f3a6aca739afa28bd1d19e93` |
| 26 | `theorem` | [prime_power_mangoldt_coefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/prime-power-mangoldt-coefficient--d44343dd3a988ce7e42e5d48.md) | 285 | `result-track:d44343dd3a988ce7e42e5d482939441759dceb0197c61e61ef5bc79e0dcd73f7` |
| 27 | `theorem` | [prime_three_centering_fixture](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/declarations/prime-three-centering-fixture--d73363250238d47975a6a745.md) | 293 | `result-track:d73363250238d47975a6a745b3b94548ed2bfe39d9f32e7063bb2914752b04aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
