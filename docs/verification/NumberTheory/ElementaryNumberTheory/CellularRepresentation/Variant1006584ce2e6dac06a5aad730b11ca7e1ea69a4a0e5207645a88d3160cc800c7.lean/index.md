# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.CellularRepresentation.Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "919882e21fe2014e3a94fbcf5146c82a6ae5dcb8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `919882e21fe2014e3a94fbcf5146c82a6ae5dcb8`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CellularArithmetic.ArithmeticTree` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.NumberTheory.FundamentalTheorem` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FactorMapRepresentation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/factormaprepresentation--e9fafc6d54a41b1f408e9ee7.md) | 27 | `declaration-track:e9fafc6d54a41b1f408e9ee76d54c0de6805f4db285140429f5e613ebec922d7` |
| 2 | `def` | [FactorMapRepresentation.decode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/factormaprepresentation-decode--f5ad1dacaacfcefa93cd99e7.md) | 34 | `declaration-track:f5ad1dacaacfcefa93cd99e73e8653566d61ae547c4af82d0bf5418791de0358` |
| 3 | `structure` | [CellularArithmeticRepresentation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/cellulararithmeticrepresentation--40cc8b7120689049a72c8186.md) | 38 | `declaration-track:40cc8b7120689049a72c8186b9d2c11ff4b39c50f676763272d9ccc24388af11` |
| 4 | `def` | [number](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/number--153b60d48d7621be1715cdf9.md) | 43 | `declaration-track:153b60d48d7621be1715cdf95740210265968c0766f1af4ca1f8befaf61c3cef` |
| 5 | `def` | [decode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/decode--69119b3bf8d14e06cf7e2c74.md) | 47 | `declaration-track:69119b3bf8d14e06cf7e2c749093a652e5ad18a2de65550a96e371e58ba9c0ab` |
| 6 | `def` | [canonical](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/canonical--9b1ef2c64999b54f41711ff6.md) | 50 | `declaration-track:9b1ef2c64999b54f41711ff6332ae56b9a57165e84149426c36af64ef55a15e8` |
| 7 | `def` | [encodeFactorMap](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/encodefactormap--69a0969578f16309bb931e3b.md) | 55 | `declaration-track:69a0969578f16309bb931e3bb22c9164d3cdeea6f3885108eafc7442f5545680` |
| 8 | `def` | [encodePositiveNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/encodepositivenat--d5c97c5d7a2287e581d1dec7.md) | 67 | `declaration-track:d5c97c5d7a2287e581d1dec77bb669c5171eb5f55b8487043ed2e971575c9650` |
| 9 | `theorem` | [decode_encode_positiveNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/decode-encode-positivenat--cbc6372d8dbcafe53e16b26b.md) | 72 | `result-track:cbc6372d8dbcafe53e16b26b0ca617774b833f6ef4db4923ba881e7cfefbbd73` |
| 10 | `def` | [SameDecoded](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/samedecoded--7f45ebad1b2a48947c9f46df.md) | 77 | `declaration-track:7f45ebad1b2a48947c9f46dfbcd788a74ce04aa69bc43bb46a016a96b8b2aecd` |
| 11 | `theorem` | [factorMap_unique_of_same_number](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/factormap-unique-of-same-number--e770e16c70fb404cbc9a8adf.md) | 81 | `result-track:e770e16c70fb404cbc9a8adf2cbef17c4b909a7d3670e999fe4970aae60bc775` |
| 12 | `def` | [canonicalTreeUniquenessTarget](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant1006584ce2e6dac06a5aad730b11ca7e1ea69a4a0e5207645a88d3160cc800c7.lean/declarations/canonicaltreeuniquenesstarget--13b49a8378a8ce2aee2ba81a.md) | 89 | `declaration-track:13b49a8378a8ce2aee2ba81abefb1f3c7e0ed5e4ff2a7748d39152eeb8c48fac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
