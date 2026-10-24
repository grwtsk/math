# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b26e5587bbd48162371543c760aedbc54adc1fe",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b26e5587bbd48162371543c760aedbc54adc1fe`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isstrictmap--6780d126f16b40ef2c6bfb4c.md) | 60 | `declaration-track:6780d126f16b40ef2c6bfb4c3be376377cc6fab9653a5aae154019bdfc86de66` |
| 2 | `lemma` | [isStrictMap_iff_isQuotientMap_rangeFactorization](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isstrictmap-iff-isquotientmap-rangefactorization--319f20c1c5d11e5fd84779a0.md) | 63 | `result-track:319f20c1c5d11e5fd84779a07c48f76b397c2b8be248262b64475b8b4d2f60e6` |
| 3 | `theorem` | [isStrictMap_iff_isHomeomorph_quotientKerEquivRange](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isstrictmap-iff-ishomeomorph-quotientkerequivrange--90d28688c98f4895ab73101e.md) | 69 | `result-track:90d28688c98f4895ab73101e671063eb8734faa021146e9daeef70d64c3a9754` |
| 4 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.IsStrictMap.Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.Homeomorph.quotientKerEquivRange](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/root-grwtsk-topology-generaltopology-isstrictmap-variantfb04b6838e789da2--478e5cc8b4e10778186c254c.md) | 78 | `declaration-track:478e5cc8b4e10778186c254cd6aceb6b3ccdf85cc526266486ef8b52be2fa0c7` |
| 5 | `theorem` | [isStrictMap_iff_isEmbedding_kerLift](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isstrictmap-iff-isembedding-kerlift--2d3448ff01943d55469adddc.md) | 87 | `result-track:2d3448ff01943d55469adddcd36f107aa44e6b9fc83d4463d9ad5a553d39c79f` |
| 6 | `lemma` | [IsStrictMap.continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isstrictmap-continuous--b000ed0f13f3e04d68aa8585.md) | 94 | `result-track:b000ed0f13f3e04d68aa8585e33ecf31a920c0d14be5bb170073f30817cb2c64` |
| 7 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsStrictMap.Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.IsOpenMap.isStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/root-grwtsk-topology-generaltopology-isstrictmap-variantfb04b6838e789da2--7c1b205ca518991d77247029.md) | 99 | `result-track:7c1b205ca518991d77247029baddb2a7eaee44aef390109a5b8c03ef6d35edb5` |
| 8 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsStrictMap.Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.IsClosedMap.isStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/root-grwtsk-topology-generaltopology-isstrictmap-variantfb04b6838e789da2--b88f3a7fc054b8cb8521b139.md) | 109 | `result-track:b88f3a7fc054b8cb8521b139d3ae445a10ddee7b3461792618cf03cbd4bac14f` |
| 9 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsStrictMap.Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.IsHomeomorph.isStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/root-grwtsk-topology-generaltopology-isstrictmap-variantfb04b6838e789da2--e25ed337a417abd424ebb2eb.md) | 119 | `result-track:e25ed337a417abd424ebb2eb0f12127bda20556d24518a45aceff39a7150c227` |
| 10 | `lemma` | [IsStrictMap.id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isstrictmap-id--7494e662cff97e5182e84f99.md) | 127 | `result-track:7494e662cff97e5182e84f9931f63b9908157666240ca9531b633e07c5a0ecbd` |
| 11 | `lemma` | [IsQuotientMap.isStrictMap_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isquotientmap-isstrictmap-iff--9112a39356ace954c9c18a09.md) | 131 | `result-track:9112a39356ace954c9c18a09c4ed86d00e9ee65fa3b66876890705e12de9ebf0` |
| 12 | `lemma` | [IsQuotientMap.isStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isquotientmap-isstrictmap--7369cc1793ffbbd194cb08cb.md) | 139 | `result-track:7369cc1793ffbbd194cb08cbb6410e582ce08917d553ff6491acb7c305b76000` |
| 13 | `lemma` | [IsEmbedding.isStrictMap_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isembedding-isstrictmap-iff--bbff8f6981414d5c6ffd6287.md) | 145 | `result-track:bbff8f6981414d5c6ffd6287bf3308f088204e47ef988b842c46505867a81dc1` |
| 14 | `lemma` | [IsEmbedding.isStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isembedding-isstrictmap--2f1dad748ce0fecd998c0116.md) | 156 | `result-track:2f1dad748ce0fecd998c01162ab215fc0595850b94e0602cbc444f3f0cda356c` |
| 15 | `lemma` | [isQuotientMap_iff_isStrictMap_surjective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isquotientmap-iff-isstrictmap-surjective--0af21fa7448506d0530ccb82.md) | 161 | `result-track:0af21fa7448506d0530ccb828dd93ae28124438f13329aebebe6fc75ac666604` |
| 16 | `lemma` | [isEmbedding_iff_isStrictMap_injective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/isembedding-iff-isstrictmap-injective--c0d021b527c668b8d5f8599d.md) | 169 | `result-track:c0d021b527c668b8d5f8599d765b0b14e7c0572b296c4f98600341593eaead4b` |
| 17 | `lemma` | [isHomeomorph_iff_isStrictMap_bijective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/ishomeomorph-iff-isstrictmap-bijective--f154c7cadd53c34ee5d76a10.md) | 178 | `result-track:f154c7cadd53c34ee5d76a105003868cc0dcd41965ab95f6f0ec3ad2b9841a77` |
| 18 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsStrictMap.Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.Homeomorph.isStrictMap_comp_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/root-grwtsk-topology-generaltopology-isstrictmap-variantfb04b6838e789da2--7cf7bb825c27561f7ac905ca.md) | 184 | `result-track:7cf7bb825c27561f7ac905cadb450bce3ee67b43bf8a5be9a8e0b27dfd8f1985` |
| 19 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsStrictMap.Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.Homeomorph.comp_isStrictMap_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/declarations/root-grwtsk-topology-generaltopology-isstrictmap-variantfb04b6838e789da2--513a09b0ef3fb52aaf5b067c.md) | 192 | `result-track:513a09b0ef3fb52aaf5b067c28416bca4530eab93cc62f43dab09c78a0e46d52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
