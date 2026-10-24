# Verification target: GRWTSK.InformationTheory.Huffman.Wire

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ce93eb54d75e47938ee25c1f223326f14f68607",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/Wire.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ce93eb54d75e47938ee25c1f223326f14f68607`.

Source path: `GRWTSK/InformationTheory/Huffman/Wire.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/Wire.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octet](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/octet--9eb545bd8ada6f4c3d744035.md) | 8 | `declaration-track:9eb545bd8ada6f4c3d744035088c6892b63ab524f2b8ad2cd73de672d771dd83` |
| 2 | `def` | [rustOctet](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/rustoctet--6b7c106c96a44ed6576b75db.md) | 15 | `declaration-track:6b7c106c96a44ed6576b75db55d2e7c2f568c28f41d847e7dc545e7d2724ff95` |
| 3 | `theorem` | [octet_eq_rustOctet](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/octet-eq-rustoctet--0577a163cf7737eafc7d52d3.md) | 21 | `result-track:0577a163cf7737eafc7d52d3884dda5c09f52f2c3afa513dfe1eefcafe37623e` |
| 4 | `def` | [octetBits](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/octetbits--1ba5dbe5b6a5ff833e590e3b.md) | 26 | `declaration-track:1ba5dbe5b6a5ff833e590e3bc5f01f156933f15157b9361725692c9d88ecea89` |
| 5 | `def` | [rustOctetBits](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/rustoctetbits--5496b496301406abd27d5b11.md) | 34 | `declaration-track:5496b496301406abd27d5b112629ce9895397cee554ba95c1842f57bb711dd14` |
| 6 | `theorem` | [octetBits_eq_rustOctetBits](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/octetbits-eq-rustoctetbits--3d90d9f7d662a1bf68ddb171.md) | 40 | `result-track:3d90d9f7d662a1bf68ddb17162fb88af766ea378d1b8fd6c82d187652177643e` |
| 7 | `theorem` | [octet_roundTrip](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/octet-roundtrip--8fed37cd24ab43ce66fb011d.md) | 46 | `result-track:8fed37cd24ab43ce66fb011ddb932aa346ada8df2839826938d7ee5a6d4b0c0f` |
| 8 | `def` | [pack](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/pack--3e56bebed43f75b2e44cda0b.md) | 52 | `declaration-track:3e56bebed43f75b2e44cda0be3ee45df219114b23f3d5d62bb260aa2866a71f0` |
| 9 | `def` | [unpack](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/unpack--7b30d2f73113d3e4160cd465.md) | 63 | `declaration-track:7b30d2f73113d3e4160cd4651b1ce5ef5944b5cd9c61e17a6a0c8a021718f2e5` |
| 10 | `theorem` | [unpack_pack](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/unpack-pack--fc1b16bb6b9de824914f17f1.md) | 66 | `result-track:fc1b16bb6b9de824914f17f116fae67355148d4644d0181083d7faa7622dc6ed` |
| 11 | `theorem` | [storedBits_padding](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/storedbits-padding--bc4676bcf3a6415d4419a890.md) | 81 | `result-track:bc4676bcf3a6415d4419a8905ea181a51eb9fe8bdd6ff290c62fab4f74e29308` |
| 12 | `theorem` | [pack_length](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/declarations/pack-length--fd6661e96bbbbb88fe21f253.md) | 98 | `result-track:fd6661e96bbbbb88fe21f253e46c16431a23c74734ee3cb2e8507019cbd76ea0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
