# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Address.Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb460df2a4830398ffd89acd82aff398ed5363c4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb460df2a4830398ffd89acd82aff398ed5363c4`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Nth` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SequentialPrimeSpecification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/sequentialprimespecification--0c1205725aae9032601cf8f1.md) | 26 | `declaration-track:0c1205725aae9032601cf8f193da0d646a8aaec8b234e07764f9257cf4658852` |
| 2 | `def` | [rank](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/rank--bf96e524ba35c5821549baa5.md) | 35 | `declaration-track:bf96e524ba35c5821549baa5e6b3efe2c4a00e0e95c2f3d382ed1a862a913082` |
| 3 | `structure` | [PrimeEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/primeenumeration--94fcc45d2b5e3f75a23fd2b6.md) | 39 | `declaration-track:94fcc45d2b5e3f75a23fd2b604654292c405ea881603b0f1002c1fe00fb165ce` |
| 4 | `def` | [cantorPair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/cantorpair--9906360d29057c16a2d54b9a.md) | 48 | `declaration-track:9906360d29057c16a2d54b9a9c7fc4ae1fbbf49b07a78260fcf3aa1f68c282c5` |
| 5 | `def` | [finiteSequenceCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/finitesequencecode--7817a22a14c02ade57c34a53.md) | 52 | `declaration-track:7817a22a14c02ade57c34a536739aa2363373e651957adb240f7383d096fc09a` |
| 6 | `def` | [specificationCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/specificationcode--a2e74e59b6c05adbf57e7e52.md) | 57 | `declaration-track:a2e74e59b6c05adbf57e7e52f1b02f665261f28117cad9cfe01ca49a4896511f` |
| 7 | `structure` | [FiberCoordinate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/fibercoordinate--0ffaa4df323ff62008e3e650.md) | 62 | `declaration-track:0ffaa4df323ff62008e3e650e0c34c59f4c8d437eefa35d5902eae71374769de` |
| 8 | `def` | [mixedRadixValues](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/mixedradixvalues--dc03fea039763f9c6f555ed2.md) | 70 | `declaration-track:dc03fea039763f9c6f555ed2c13ac51a6f1dcbfffa135abf964e0f20a5e757fe` |
| 9 | `def` | [FiberCoordinate.mixedRadix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/fibercoordinate-mixedradix--2df9d38e1a6574d5d612247d.md) | 77 | `declaration-track:2df9d38e1a6574d5d612247d6f36cf5205a5763de78fcc8f10f44b87b1eb4990` |
| 10 | `structure` | [MixedRadixEquivalence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/mixedradixequivalence--9b60dad1ee71861d4f832072.md) | 85 | `declaration-track:9b60dad1ee71861d4f832072ad12bf5af60927c8a90f55d49357ebb824ef7800` |
| 11 | `structure` | [RawCarrierAddress](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/rawcarrieraddress--96b99bda9996ba69129800a5.md) | 94 | `declaration-track:96b99bda9996ba69129800a5acf4de606fdc7f2b3106633ca9230814716a6808` |
| 12 | `def` | [rawAddressCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/rawaddresscode--ed2605207428c5fd2c2eef6f.md) | 101 | `declaration-track:ed2605207428c5fd2c2eef6f06e72f46069b69cf4cedb4c500b3dee9e29511a0` |
| 13 | `structure` | [AddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/addressenumeration--19c06aaa32b218af945832d7.md) | 110 | `declaration-track:19c06aaa32b218af945832d72983e6e28a5bc60033a8b5431b3b9a786eac4cd5` |
| 14 | `def` | [rawAddressEquivNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/rawaddressequivnat--56983aae684c3cb2eb8c8030.md) | 118 | `declaration-track:56983aae684c3cb2eb8c80305750dee118b21c0100b6430cbf819a2c0fe3c810` |
| 15 | `def` | [rawAddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf.lean/declarations/rawaddressenumeration--fb90015dae14be7f70262034.md) | 134 | `declaration-track:fb90015dae14be7f70262034afa1a6c4807984051d0a64652c5a96298c0b4632` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
