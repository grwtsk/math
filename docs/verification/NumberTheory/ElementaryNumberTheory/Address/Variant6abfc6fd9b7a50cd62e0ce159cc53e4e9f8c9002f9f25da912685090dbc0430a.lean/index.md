# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Address.Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b857f93c3b10ae7f6afc340f0fbc28eff02e4bfa",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b857f93c3b10ae7f6afc340f0fbc28eff02e4bfa`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Nth` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SequentialPrimeSpecification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/sequentialprimespecification--ec23255709d0d652845a7c3f.md) | 18 | `declaration-track:ec23255709d0d652845a7c3fcb63758f722d01b06dce28c8060efbd021c0dbce` |
| 2 | `def` | [rank](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/rank--193b7cf000bd11fa8d3a07c8.md) | 27 | `declaration-track:193b7cf000bd11fa8d3a07c8faa4c6f053672a921ff625c2247d4e29acfd4a22` |
| 3 | `structure` | [PrimeEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/primeenumeration--6fe2b80820a9a3620fd90563.md) | 31 | `declaration-track:6fe2b80820a9a3620fd905633e395118cb10835d5e0098b0510e5fb7a1bacd6a` |
| 4 | `def` | [cantorPair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/cantorpair--72665152a3d029a07c8eff9d.md) | 40 | `declaration-track:72665152a3d029a07c8eff9dd237e961aa46b14f37e1de1fd11c5d3c8e9d9037` |
| 5 | `def` | [finiteSequenceCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/finitesequencecode--7d8a82145cd929cc4246d61a.md) | 44 | `declaration-track:7d8a82145cd929cc4246d61a6d6d283f5f78e1dee94c1633cf8f4a79b2f858d2` |
| 6 | `def` | [specificationCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/specificationcode--143c1ca626f1e51876b766f4.md) | 49 | `declaration-track:143c1ca626f1e51876b766f45bd6dfc76d9fe3ff2044062185cf76ce8f98284d` |
| 7 | `structure` | [FiberCoordinate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/fibercoordinate--ab4b607db01a7e2ed92043df.md) | 54 | `declaration-track:ab4b607db01a7e2ed92043dfab5a43dbc25f607a8882bbab6fb690b363fd2c6b` |
| 8 | `def` | [mixedRadixValues](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/mixedradixvalues--4749f655b31409ddfdd8bd60.md) | 62 | `declaration-track:4749f655b31409ddfdd8bd60ff7b2efa918dafb70051f305e8a472e54c1e7b4a` |
| 9 | `def` | [FiberCoordinate.mixedRadix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/fibercoordinate-mixedradix--416a5211c0cb231e3c9879dc.md) | 69 | `declaration-track:416a5211c0cb231e3c9879dc027e982f6287c89cedf217d7d0f9cc50b2b17fd1` |
| 10 | `structure` | [MixedRadixEquivalence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/mixedradixequivalence--3ef68346cc7bb2d5a82f0230.md) | 77 | `declaration-track:3ef68346cc7bb2d5a82f0230019be815cfe6ec6cb442b555990dcb8aca1d72a3` |
| 11 | `structure` | [RawCarrierAddress](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/rawcarrieraddress--6906e9bf29354dedcbd7a155.md) | 86 | `declaration-track:6906e9bf29354dedcbd7a15597eeb62b58e247cdd1e279596e8435f2318ac609` |
| 12 | `def` | [rawAddressCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/rawaddresscode--df85d1baa976c40a0ffb5889.md) | 93 | `declaration-track:df85d1baa976c40a0ffb58893827255a87f77422f9432db2cd47da4b04cf258d` |
| 13 | `structure` | [AddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/addressenumeration--e07dbc1e3a5dda1e27ff1ff9.md) | 102 | `declaration-track:e07dbc1e3a5dda1e27ff1ff901bb7ff2411648bddf6fbd1335e12c11d616fc0c` |
| 14 | `def` | [rawAddressEquivNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/rawaddressequivnat--ab1e3eeaf58a9457b553a57c.md) | 110 | `declaration-track:ab1e3eeaf58a9457b553a57c01819f0ec91e00568ebd8a2723585f2c5afabe99` |
| 15 | `def` | [rawAddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a.lean/declarations/rawaddressenumeration--f3e1bcf8d658b4d23c397bbe.md) | 126 | `declaration-track:f3e1bcf8d658b4d23c397bbe95499b81b22ba275d79feda7673f5a155fe60b3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
