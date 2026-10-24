# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.CellularRepresentation.Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86fb239f7ae38566330fdb1a43a3061742243f63",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86fb239f7ae38566330fdb1a43a3061742243f63`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CellularArithmetic.ArithmeticTree` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.NumberTheory.FundamentalTheorem` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FactorMapRepresentation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/factormaprepresentation--45ae98bebd6ae53c8617a185.md) | 19 | `declaration-track:45ae98bebd6ae53c8617a1850137fa83580f155b1dc5efd45e653b326b4e2c00` |
| 2 | `def` | [FactorMapRepresentation.decode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/factormaprepresentation-decode--9f8645afdf8ca15d76bd5505.md) | 26 | `declaration-track:9f8645afdf8ca15d76bd5505843262f13af9f0ab2a6187950ac7fad57a3d3d93` |
| 3 | `structure` | [CellularArithmeticRepresentation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/cellulararithmeticrepresentation--7e0b713e0989ae98559ad219.md) | 30 | `declaration-track:7e0b713e0989ae98559ad2191c2ae84737edda32d8df4689ca075a24edb8fbd6` |
| 4 | `def` | [number](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/number--4beb348ab01c770a2998503f.md) | 35 | `declaration-track:4beb348ab01c770a2998503f177b2f6860d68cdf0d312ee544f66764c31854b5` |
| 5 | `def` | [decode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/decode--ce48e42a4a5dc40007dca454.md) | 39 | `declaration-track:ce48e42a4a5dc40007dca454903a5b76f9190c34ba08b04c1e3656d9c4e9fc8a` |
| 6 | `def` | [canonical](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/canonical--e9b1e91c28699875bcd15e88.md) | 42 | `declaration-track:e9b1e91c28699875bcd15e880062896c0fa7755a3fd19e2ed72dbc1eb4da55cd` |
| 7 | `def` | [encodeFactorMap](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/encodefactormap--89bc86ba29d541957e34ae50.md) | 47 | `declaration-track:89bc86ba29d541957e34ae50b53d7eb46a522a0451402dc06af3edb489282309` |
| 8 | `def` | [encodePositiveNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/encodepositivenat--5c827efcf061b8238ab83927.md) | 59 | `declaration-track:5c827efcf061b8238ab83927a8634b9242798f98a7ed999c1d2dadb025b77763` |
| 9 | `theorem` | [decode_encode_positiveNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/decode-encode-positivenat--00fcbae7d873cc3fb292e463.md) | 64 | `result-track:00fcbae7d873cc3fb292e4637c8d6b71ad93da050a852604ef113b5e87659e0f` |
| 10 | `def` | [SameDecoded](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/samedecoded--bf27b66aef5512a632a472c8.md) | 69 | `declaration-track:bf27b66aef5512a632a472c82042af06d7f81aa7948f03ce9a234ad082a6d822` |
| 11 | `theorem` | [factorMap_unique_of_same_number](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/factormap-unique-of-same-number--549b39fef4c8c401468fe3f7.md) | 73 | `result-track:549b39fef4c8c401468fe3f7d2573edd2d1c90d2f2d6acab72c08b66bf15d062` |
| 12 | `def` | [canonicalTreeUniquenessTarget](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CellularRepresentation/Variant10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34.lean/declarations/canonicaltreeuniquenesstarget--210c160011422b0ca93d5bdc.md) | 81 | `declaration-track:210c160011422b0ca93d5bdc0e54b2aac6e565c072b7fb3727e149cdf4dfd697` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
