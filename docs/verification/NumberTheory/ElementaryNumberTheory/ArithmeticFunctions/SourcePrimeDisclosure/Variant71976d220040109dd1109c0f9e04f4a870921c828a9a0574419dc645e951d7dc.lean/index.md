# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SourcePrimeDisclosure.Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b2140826d1a640d0c6f7a3ee1effab23a7c01eb",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b2140826d1a640d0c6f7a3ee1effab23a7c01eb`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceOrbitCoordinates` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeDivisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/primedivisors--c7691bdc27e75cfc7cca351a.md) | 22 | `declaration-track:c7691bdc27e75cfc7cca351a678c5af7a046c98c72744a165e701aa06e3f4885` |
| 2 | `theorem` | [primeDivisors_fresh_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/primedivisors-fresh-coprime--f05f29a1e3d948def314bf70.md) | 25 | `result-track:f05f29a1e3d948def314bf705c4cf83045d621c23245cdd368fd0326bc11c225` |
| 3 | `theorem` | [primeDivisors_insert](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/primedivisors-insert--8d53d80f3003b25f68527b08.md) | 41 | `result-track:8d53d80f3003b25f68527b081ecdccaadfa1dbd8e417eb808a7b71a1104c0efc` |
| 4 | `theorem` | [primeDivisors_insert_disjoint](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/primedivisors-insert-disjoint--75e59bda58f8b2dbe81ea484.md) | 65 | `result-track:75e59bda58f8b2dbe81ea48457d8d1b0fbd125f8cbda8be3bbe14d65ae45618a` |
| 5 | `def` | [centeredDisclosure](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/centereddisclosure--8344139792d0175d08406a9a.md) | 75 | `declaration-track:8344139792d0175d08406a9a9b3f9e220b4cc148e6c78f0b31469b39677b3003` |
| 6 | `def` | [disclosedMean](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/disclosedmean--b636ab73e9e04a31c003c832.md) | 79 | `declaration-track:b636ab73e9e04a31c003c8325babce5c6cd0f6d4d44eea56e8f4ea1b6c05700a` |
| 7 | `def` | [disclosedDivisorSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/discloseddivisorsum--d7a9649d0ae1cfeb48d2fa26.md) | 82 | `declaration-track:d7a9649d0ae1cfeb48d2fa266e88224abc435f76265c15699652b5456a8577e6` |
| 8 | `def` | [freshPrimeCorrection](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/freshprimecorrection--0afdb2671320561332cd2c17.md) | 85 | `declaration-track:0afdb2671320561332cd2c17a7c20cba0f46dcc02b66567c6129ac551dac3665` |
| 9 | `theorem` | [moebius_fresh_prime_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/moebius-fresh-prime-mul--3a7af3a6b682afaf5512780a.md) | 89 | `result-track:3a7af3a6b682afaf5512780a9409cd03dfc6b619fdd232774632057c8f9eff50` |
| 10 | `theorem` | [fresh_prime_discrepancy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/fresh-prime-discrepancy--407f7ece35d8f1afd77f2f4f.md) | 97 | `result-track:407f7ece35d8f1afd77f2f4ff0be074fdb021741a946fb4be46e1e8e9fbf1454` |
| 11 | `theorem` | [centeredDisclosure_insert_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/centereddisclosure-insert-prime--19785825846d5b2e2c305fed.md) | 110 | `result-track:19785825846d5b2e2c305fed9dd04e6fc9a2f9b858bf1c094cb7315399e47980` |
| 12 | `theorem` | [centeredDisclosure_primeDivisors_insert](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/centereddisclosure-primedivisors-insert--249ea0df58872515184fb2a2.md) | 134 | `result-track:249ea0df58872515184fb2a22b588b3b56c6899a6d6bfc9d6bb65968dbc96242` |
| 13 | `theorem` | [centeredDisclosure_coverage](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/centereddisclosure-coverage--9ba79eafb5212528a6cf47be.md) | 145 | `result-track:9ba79eafb5212528a6cf47becb1ec63a3ecfa7bd153f4b582d146bb822e1f2da` |
| 14 | `def` | [disclosureSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/disclosuresource--0e3af389ac399e293759cd79.md) | 172 | `declaration-track:0e3af389ac399e293759cd7900c8cba200241b403675b809ee299c8445b136b8` |
| 15 | `def` | [correctionSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/correctionsource--194f2856791b67df21317190.md) | 176 | `declaration-track:194f2856791b67df21317190a2a003ea3ea3a28a603d9fc1873f15062a4b50d1` |
| 16 | `theorem` | [disclosureSource_insert_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/disclosuresource-insert-prime--77d5d5dd3a9fc0f84f9c4843.md) | 180 | `result-track:77d5d5dd3a9fc0f84f9c484337132a5af924630873f4f18531df3b8b2bce7280` |
| 17 | `theorem` | [disclosureSource_primeDivisors_insert](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/disclosuresource-primedivisors-insert--2c5fc8bb6f4db7a3694dbf55.md) | 191 | `result-track:2c5fc8bb6f4db7a3694dbf55eba151eaa9fdd3edc1666e552d784dd41e3e2879` |
| 18 | `def` | [plainSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/plainsource--850d291e2e51b9938b272a0e.md) | 202 | `declaration-track:850d291e2e51b9938b272a0e41fc5e0cf61fa5a24eba3cd0e5f63e5b0a46a1d6` |
| 19 | `def` | [primeMultipleSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/primemultiplesource--418053d1bedcd36dbcc5dabd.md) | 205 | `declaration-track:418053d1bedcd36dbcc5dabd87484eeabf49f14b8a4f8eabca3508cedadb5436` |
| 20 | `theorem` | [correctionSource_eq_mean_and_multiples](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/correctionsource-eq-mean-and-multiples--563845570b63ed9df2e7bcec.md) | 210 | `result-track:563845570b63ed9df2e7bceceffc556422f0148d0ba5e8d5ac8c781fffd8e163` |
| 21 | `def` | [physicalDiagonal](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/physicaldiagonal--bc40c79c1565f703718a9941.md) | 227 | `declaration-track:bc40c79c1565f703718a9941b50115de5739bf2428393c72b6acb029c57ae69e` |
| 22 | `def` | [compensatedReadout](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/compensatedreadout--b229f9d228d74f0381fedd9c.md) | 231 | `declaration-track:b229f9d228d74f0381fedd9c4ca00f151de96149dbfbdcd1ad2a68534cc935d8` |
| 23 | `theorem` | [compensatedReadout_row_increment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/compensatedreadout-row-increment--30871b6ba82f6b728536d3be.md) | 237 | `result-track:30871b6ba82f6b728536d3bea7ac817c30447b2d388064b7d7b310f3a88952a6` |
| 24 | `theorem` | [compensatedReadout_two_row_increment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/compensatedreadout-two-row-increment--3541dd005a8cdfccd3050efc.md) | 253 | `result-track:3541dd005a8cdfccd3050efcc32a7784385fbb1d80b37ccc4b59a5613f4c7647` |
| 25 | `theorem` | [repeated_prime_divisor_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/repeated-prime-divisor-zero--ba7f992b934c8f7595007731.md) | 272 | `result-track:ba7f992b934c8f75950077319c3feed6d4e0e833158e032093b064876d71df04` |
| 26 | `theorem` | [prime_power_mangoldt_coefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/prime-power-mangoldt-coefficient--52040d98b4f083182455ea9c.md) | 277 | `result-track:52040d98b4f083182455ea9c4f87131fd223b098f024dbbb1acc17ee86802fb2` |
| 27 | `theorem` | [prime_three_centering_fixture](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/declarations/prime-three-centering-fixture--9bc688b8aaf78ab4cbbf65ac.md) | 285 | `result-track:9bc688b8aaf78ab4cbbf65ac9543e675dcd96ff9157329040a84eed035c466c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
