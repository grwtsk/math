# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Address.Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "582efcab40f7eeef9fd47565664de208cf778b9b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `582efcab40f7eeef9fd47565664de208cf778b9b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Nth` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SequentialPrimeSpecification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/sequentialprimespecification--fcf274bfc0cc284af5fd8921.md) | 19 | `declaration-track:fcf274bfc0cc284af5fd89215b8bd9c1bd17e06b14a62581a129518923c25442` |
| 2 | `def` | [rank](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/rank--d342a02426f3096cdbc79ce2.md) | 28 | `declaration-track:d342a02426f3096cdbc79ce267d4a0e95e9a24df734113fb52952030fc349633` |
| 3 | `structure` | [PrimeEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/primeenumeration--aaff3d475ffe575b39d9509f.md) | 32 | `declaration-track:aaff3d475ffe575b39d9509fff649788f47ed11aad488e1ade8d1188f98db36a` |
| 4 | `def` | [canonicalPrimeEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/canonicalprimeenumeration--ad39a7a61a6cd9ad203c5bf8.md) | 43 | `declaration-track:ad39a7a61a6cd9ad203c5bf8056e45ce38692f118ddde39ce23fcbe80c16d772` |
| 5 | `theorem` | [canonicalPrimeEnumeration_value](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/canonicalprimeenumeration-value--a5ccf481ab00e0bfcf25c521.md) | 50 | `result-track:a5ccf481ab00e0bfcf25c521f0ed32c986b5132a8c94c498f181f60ae74cd983` |
| 6 | `theorem` | [canonicalPrimeEnumeration_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/canonicalprimeenumeration-prime--010e644ff0ce6594373d5caf.md) | 54 | `result-track:010e644ff0ce6594373d5cafa4f05a495e282a89531dbdc0ea8e8aa749aab9e3` |
| 7 | `theorem` | [canonicalPrimeEnumeration_strictlyIncreasing](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/canonicalprimeenumeration-strictlyincreasing--95431330ee80312b3ea76a58.md) | 58 | `result-track:95431330ee80312b3ea76a58dc20dcc03cd69c0af0b3fe54fd99e50b172c855b` |
| 8 | `def` | [cantorPair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/cantorpair--25ec0e53e69fe979bc942442.md) | 65 | `declaration-track:25ec0e53e69fe979bc9424422709d8dd25801a014093144cccee54798990c6d2` |
| 9 | `def` | [finiteSequenceCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/finitesequencecode--90ef83eb6f3d5e56d3f7baf5.md) | 69 | `declaration-track:90ef83eb6f3d5e56d3f7baf55098e62c47b3405a3ea3079e63d78070840c44a9` |
| 10 | `def` | [specificationCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/specificationcode--892843102287e023157a0e21.md) | 74 | `declaration-track:892843102287e023157a0e21a115a212bbf29df10d3d003d920f3660a6e726f0` |
| 11 | `structure` | [FiberCoordinate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/fibercoordinate--929083982a4252a6f8a37341.md) | 79 | `declaration-track:929083982a4252a6f8a373418aa079356b4e9da8e7755c80bfddd4df6193682c` |
| 12 | `def` | [mixedRadixValues](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/mixedradixvalues--96e0c03eece24b3249965f28.md) | 87 | `declaration-track:96e0c03eece24b3249965f28603cfb0b078d88cb6a0f464938311b87e494ddf0` |
| 13 | `def` | [FiberCoordinate.mixedRadix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/fibercoordinate-mixedradix--e8cc004f290ab7ab98512094.md) | 94 | `declaration-track:e8cc004f290ab7ab985120948fe359cd9ab20d65077e1b6be6235898701a8766` |
| 14 | `structure` | [MixedRadixEquivalence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/mixedradixequivalence--9e7544a3b12beec018d35cc0.md) | 102 | `declaration-track:9e7544a3b12beec018d35cc0ef5c50db383b2cad116e088bf20a4a20961e1ad4` |
| 15 | `structure` | [RawCarrierAddress](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/rawcarrieraddress--07360203f78361313d18a0f9.md) | 111 | `declaration-track:07360203f78361313d18a0f9b435f57bc45aabb53e0d955aa0f8362127e7dfb8` |
| 16 | `def` | [rawAddressCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/rawaddresscode--58f9406668767af891c75016.md) | 118 | `declaration-track:58f9406668767af891c75016b5feacb0c4f700168c3ae870318e9237b59883f9` |
| 17 | `structure` | [AddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/addressenumeration--bcea1575e082b17224966de9.md) | 127 | `declaration-track:bcea1575e082b17224966de9a05e3c8fe35bc1d17f307d7653430ceca0a19493` |
| 18 | `def` | [naturalAddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/naturaladdressenumeration--e6f618ac8392fd7523c9ed03.md) | 136 | `declaration-track:e6f618ac8392fd7523c9ed031a773659571e154f92042dc58439665e27861f68` |
| 19 | `def` | [rawAddressEquivNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/rawaddressequivnat--2d40bc451851a7e9a419d154.md) | 143 | `declaration-track:2d40bc451851a7e9a419d1541344657954e4889fce8146ab742dbff4e628659c` |
| 20 | `def` | [rawAddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/rawaddressenumeration--5ded46e614058b9e6410f12c.md) | 159 | `declaration-track:5ded46e614058b9e6410f12c01d1021f88f70c0f607f3213773bda5161060319` |
| 21 | `def` | [rawCanonicalAddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/rawcanonicaladdressenumeration--b5bd752ec45fabfa5b195969.md) | 168 | `declaration-track:b5bd752ec45fabfa5b195969a64be49ba5cba138b729e3b1ca7febc72f174e8f` |
| 22 | `theorem` | [rawCanonicalAddressEnumeration_code_enumerate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/rawcanonicaladdressenumeration-code-enumerate--2d6dc74a996a096799f0ea9c.md) | 177 | `result-track:2d6dc74a996a096799f0ea9cfae5fac740af0ddcb476fdaee6138731a54d7e11` |
| 23 | `theorem` | [rawCanonicalAddressEnumeration_order](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/declarations/rawcanonicaladdressenumeration-order--98d82d83eefe06e0ae38a1a3.md) | 182 | `result-track:98d82d83eefe06e0ae38a1a3dcafa9edc447df526cc362a5be8f5e6690d5b078` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
