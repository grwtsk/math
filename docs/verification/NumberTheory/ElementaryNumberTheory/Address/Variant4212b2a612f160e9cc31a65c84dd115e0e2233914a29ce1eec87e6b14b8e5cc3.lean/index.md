# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Address.Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea85ca6a8c3487631fbe447299a94b9fb13f0e8e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea85ca6a8c3487631fbe447299a94b9fb13f0e8e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Nth` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SequentialPrimeSpecification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/sequentialprimespecification--f35c37b1206d53cd71ec5f04.md) | 27 | `declaration-track:f35c37b1206d53cd71ec5f04a8eae655430c580ea51e2d07b3710169e4670855` |
| 2 | `def` | [rank](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/rank--918f113fefd29bc8ac1d712e.md) | 36 | `declaration-track:918f113fefd29bc8ac1d712eeeedcb553f0010c62fcc6ea7f0d4c617240368f1` |
| 3 | `structure` | [PrimeEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/primeenumeration--5a718866123d67f47e962978.md) | 40 | `declaration-track:5a718866123d67f47e9629788e935c5b52d5eddd64c8ebb17ab0fa7bb9d2960b` |
| 4 | `def` | [canonicalPrimeEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/canonicalprimeenumeration--acb5e3ec59e4c41b99fdac84.md) | 51 | `declaration-track:acb5e3ec59e4c41b99fdac84fe28f398157ce92a07f2eb7c2600d3502f779fde` |
| 5 | `theorem` | [canonicalPrimeEnumeration_value](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/canonicalprimeenumeration-value--74ba34c40655886afdda50ad.md) | 58 | `result-track:74ba34c40655886afdda50adc5c60603b82e6cbe20304fe0fcacf206d7d8161f` |
| 6 | `theorem` | [canonicalPrimeEnumeration_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/canonicalprimeenumeration-prime--a579b4cc9c92ce1559d8f2b8.md) | 62 | `result-track:a579b4cc9c92ce1559d8f2b82b57d91b5aded5f941715cbc1d82394fc8410064` |
| 7 | `theorem` | [canonicalPrimeEnumeration_strictlyIncreasing](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/canonicalprimeenumeration-strictlyincreasing--040e3b63e74544bf68f3e542.md) | 66 | `result-track:040e3b63e74544bf68f3e542f78634442fb98d4feebd7799e5d5bb6ee2db369e` |
| 8 | `def` | [cantorPair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/cantorpair--55490c83b6f7551681f9fd25.md) | 73 | `declaration-track:55490c83b6f7551681f9fd25a7529dae564f1ffddd677a26c1d30779d3954717` |
| 9 | `def` | [finiteSequenceCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/finitesequencecode--b13e93f224656f3659167da9.md) | 77 | `declaration-track:b13e93f224656f3659167da91d27c0f0bb6eaa2cca7cba52cff9b6e34724b069` |
| 10 | `def` | [specificationCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/specificationcode--2255e4a571d6bfa66d8a84d2.md) | 82 | `declaration-track:2255e4a571d6bfa66d8a84d2673ac2777049213c9806bfe81efd1d45ad28fe4e` |
| 11 | `structure` | [FiberCoordinate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/fibercoordinate--9068c653503d9814ba3d74bd.md) | 87 | `declaration-track:9068c653503d9814ba3d74bd1070802a13477938cc47e8025892de90f20afaf5` |
| 12 | `def` | [mixedRadixValues](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/mixedradixvalues--3f4a2364e5918140b54f3a1b.md) | 95 | `declaration-track:3f4a2364e5918140b54f3a1bff55bc17dcefd9b2115efe6fa88d765cf5e15cb0` |
| 13 | `def` | [FiberCoordinate.mixedRadix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/fibercoordinate-mixedradix--d13bb0f23cd9807966a5c6f6.md) | 102 | `declaration-track:d13bb0f23cd9807966a5c6f6c5e03f9dfdf0f3c5bcf5bf1f9685b4d44668d27d` |
| 14 | `structure` | [MixedRadixEquivalence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/mixedradixequivalence--63f0f12a939a55b4ea63b556.md) | 110 | `declaration-track:63f0f12a939a55b4ea63b55684f91b89318c4dfae585e5eb77ccbf4d312c4320` |
| 15 | `structure` | [RawCarrierAddress](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/rawcarrieraddress--fd2a5476713f4f8607d79684.md) | 119 | `declaration-track:fd2a5476713f4f8607d79684e58a6c018977ab9bdf011ff9dc2621cd8a90e4d7` |
| 16 | `def` | [rawAddressCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/rawaddresscode--1f1d2edcb983b66aaf6fb834.md) | 126 | `declaration-track:1f1d2edcb983b66aaf6fb834d35de91ea16eac1c637bff4dbee6e6bb6cf7a96c` |
| 17 | `structure` | [AddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/addressenumeration--fe2966a549509ed087f752e2.md) | 135 | `declaration-track:fe2966a549509ed087f752e20cca0a40919c6afd4c09636ad274d1abe7164f5e` |
| 18 | `def` | [naturalAddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/naturaladdressenumeration--a51e1fd1381e8534dcf65a89.md) | 144 | `declaration-track:a51e1fd1381e8534dcf65a89917450028cd36b431292d70b73c148a728e699f5` |
| 19 | `def` | [rawAddressEquivNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/rawaddressequivnat--9620a129cee1d01f075e59d1.md) | 151 | `declaration-track:9620a129cee1d01f075e59d1d5e6fc453d4545b04d439ec18bc5642c07e9d2a1` |
| 20 | `def` | [rawAddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/rawaddressenumeration--6bc4f0ed485edec97f6b6b71.md) | 167 | `declaration-track:6bc4f0ed485edec97f6b6b71afe7cfb8c64bb123196e6dcd9efaef3baaa4b852` |
| 21 | `def` | [rawCanonicalAddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/rawcanonicaladdressenumeration--ee3c8bd4f16dc886d05cecb7.md) | 176 | `declaration-track:ee3c8bd4f16dc886d05cecb7322dc4bfcd8ae2751e3a818fcc5af18356c011da` |
| 22 | `theorem` | [rawCanonicalAddressEnumeration_code_enumerate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/rawcanonicaladdressenumeration-code-enumerate--a38ebf327fe5584d28c0c1ad.md) | 185 | `result-track:a38ebf327fe5584d28c0c1add8e0af147e06db9dc4678371a4d6216885d568eb` |
| 23 | `theorem` | [rawCanonicalAddressEnumeration_order](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/declarations/rawcanonicaladdressenumeration-order--68a2c1f2692fefa2f5fe2ca0.md) | 190 | `result-track:68a2c1f2692fefa2f5fe2ca0d2ced0b5d7ab6f07a060af4685ac62e9de50a34d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
