# Verification target: GRWTSK.Topology.GeneralTopology.CompactlyGenerated.Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1d5c5cb870c6e93324c344e927e962368e61a8d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1d5c5cb870c6e93324c344e927e962368e61a8d`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.CompactlyGeneratedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/compactlygenerated--b10044684ad701f56cf8060f.md) | 29 | `declaration-track:b10044684ad701f56cf8060f766eb8fb8b627201f41be8cf2fb6e5a2125593e9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/instance--90e765540d5f30b4b4195a20.md) | 37 | `declaration-track:90e765540d5f30b4b4195a208130522100940fcb50578137a7cc062a23e158ad` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/instance--a032c3aff3657d0e6005ad62.md) | 40 | `declaration-track:a032c3aff3657d0e6005ad626d95289b8c45e683eaddd14ff510a3e8e5afd146` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/instance--cfc2334646dba3f9aa3364c5.md) | 45 | `declaration-track:cfc2334646dba3f9aa3364c5797e2845e8e51dfeb384a694ea959b86166e6f73` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/instance--737f4dc38ed24af8acc6b54e.md) | 48 | `declaration-track:737f4dc38ed24af8acc6b54eda9a860398e0c86b76b7e5eb5b2dcc1f3a284ea7` |
| 6 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/of--3f4a8cfabc5e82071bf474ed.md) | 54 | `declaration-track:3f4a8cfabc5e82071bf474edb96699e8ed092b4e24b2272c55a78e8ac4eb218e` |
| 7 | `abbrev` | [ofHom](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/ofhom--a4da3e825f47178782f1b617.md) | 63 | `declaration-track:a4da3e825f47178782f1b6179c4d0c3a442a0cee7eaf55c0d810fb7875cd29e9` |
| 8 | `def` | [compactlyGeneratedToTop](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/compactlygeneratedtotop--ebf29a732e53a39004014050.md) | 69 | `declaration-track:ebf29a732e53a3900401405028ac5d5ca5fe72f241dda022e6357f9e82f0b863` |
| 9 | `def` | [fullyFaithfulCompactlyGeneratedToTop](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/fullyfaithfulcompactlygeneratedtotop--f944439d83122166bc3f9170.md) | 73 | `declaration-track:f944439d83122166bc3f917072d8d115b75aa9eb997c84da34ea76c2a239db7c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/instance--f1498f1ebeaa11ee102f4a67.md) | 76 | `declaration-track:f1498f1ebeaa11ee102f4a67bebea98fd44d2547e2ae4d9d8c90fbfc46bdcb3a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/instance--45007054a8124e04e3737f3b.md) | 78 | `declaration-track:45007054a8124e04e3737f3bf078c20e497fdbdfbe22b0b779b04ed35282d817` |
| 12 | `def` | [isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/isoofhomeo--476b1d3bf98bc3db7a475b9c.md) | 82 | `declaration-track:476b1d3bf98bc3db7a475b9ccabd48aeae3b12aec49301d6bef9097a8abb25aa` |
| 13 | `def` | [homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/homeoofiso--93d21b0041a622f0c3c0a716.md) | 94 | `declaration-track:93d21b0041a622f0c3c0a716f0ed7e853849993b22e04315b9c18262fba870e7` |
| 14 | `def` | [isoEquivHomeo](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean/declarations/isoequivhomeo--eb56934fa154f39020c91a64.md) | 105 | `declaration-track:eb56934fa154f39020c91a6450ba8eb2ddda27df5113f382028914baef75b41d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
