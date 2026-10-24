# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7493077416edadeef4ca0924721e133776001f8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7493077416edadeef4ca0924721e133776001f8`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean.json)

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
| 1 | `def` | [IsStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isstrictmap--7f4124975b1e02cc9a0c77af.md) | 52 | `declaration-track:7f4124975b1e02cc9a0c77afe2ba8c52baca673e686d6d56833f2e72e6743343` |
| 2 | `lemma` | [isStrictMap_iff_isQuotientMap_rangeFactorization](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isstrictmap-iff-isquotientmap-rangefactorization--123c2674f6b1d5c26dc54d2f.md) | 55 | `result-track:123c2674f6b1d5c26dc54d2f63d1f133ba2d5221d99a1f9c7b0e7b062aa04f33` |
| 3 | `theorem` | [isStrictMap_iff_isHomeomorph_quotientKerEquivRange](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isstrictmap-iff-ishomeomorph-quotientkerequivrange--0822b531f340d6ee1edcffb2.md) | 61 | `result-track:0822b531f340d6ee1edcffb25a2b229f1551207a509223c7d4a84aa82f2f94b5` |
| 4 | `def` | [_root_.Homeomorph.quotientKerEquivRange](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/root-homeomorph-quotientkerequivrange--a9bd46839846f5bf97060c96.md) | 70 | `declaration-track:a9bd46839846f5bf97060c96ca22365cadf16e44e7a638f6108b2fcb760c9312` |
| 5 | `theorem` | [isStrictMap_iff_isEmbedding_kerLift](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isstrictmap-iff-isembedding-kerlift--34c0f6a9a5128d674a260098.md) | 79 | `result-track:34c0f6a9a5128d674a260098a3ee56d0f23ed89213be1a6a6de1f5e81305e3c4` |
| 6 | `lemma` | [IsStrictMap.continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isstrictmap-continuous--69ec627d2c46821e6723141a.md) | 86 | `result-track:69ec627d2c46821e6723141aa77880bbc506d30b2a5b33db46e9fe089682f4de` |
| 7 | `lemma` | [_root_.IsOpenMap.isStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/root-isopenmap-isstrictmap--6ddf5358de3f616e3d4025fa.md) | 91 | `result-track:6ddf5358de3f616e3d4025fa8c11f93d64e766c6a928c83c8c096a29122f4262` |
| 8 | `lemma` | [_root_.IsClosedMap.isStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/root-isclosedmap-isstrictmap--e31be0721acde350302ee692.md) | 101 | `result-track:e31be0721acde350302ee6924b0454e493c1eb8b1faac3662d9ddb98937f46ea` |
| 9 | `lemma` | [_root_.IsHomeomorph.isStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/root-ishomeomorph-isstrictmap--d63d70440634b5c388149d31.md) | 111 | `result-track:d63d70440634b5c388149d3133b4c6a2b39d53b1708780a18b2b4a733d3d10f7` |
| 10 | `lemma` | [IsStrictMap.id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isstrictmap-id--54617811d79bc3f60f016a22.md) | 119 | `result-track:54617811d79bc3f60f016a222634b745d1d2adc6d00ca183db584fec3f26e834` |
| 11 | `lemma` | [IsQuotientMap.isStrictMap_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isquotientmap-isstrictmap-iff--c0094dea7e173fa8b518d4c8.md) | 123 | `result-track:c0094dea7e173fa8b518d4c86cc62594110adbc85c897dfddf26e7ca26278d90` |
| 12 | `lemma` | [IsQuotientMap.isStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isquotientmap-isstrictmap--65902bd6331d7fb211844004.md) | 131 | `result-track:65902bd6331d7fb21184400419a6c32a9dc19b54eddcf94fddda0c8bbf73e548` |
| 13 | `lemma` | [IsEmbedding.isStrictMap_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isembedding-isstrictmap-iff--2b261897a96c350640592382.md) | 137 | `result-track:2b261897a96c3506405923828c294696ef91bff4523a57d1edd80b26fec8ffd1` |
| 14 | `lemma` | [IsEmbedding.isStrictMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isembedding-isstrictmap--bcbe2ba8d908dc534c2872d7.md) | 148 | `result-track:bcbe2ba8d908dc534c2872d7c06ba99f8eb95cd692414b4cae1143b086430295` |
| 15 | `lemma` | [isQuotientMap_iff_isStrictMap_surjective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isquotientmap-iff-isstrictmap-surjective--1b09d46ac011e481bdb7aadd.md) | 153 | `result-track:1b09d46ac011e481bdb7aaddd53879d16a2c189ba878e73c18504f933134ae42` |
| 16 | `lemma` | [isEmbedding_iff_isStrictMap_injective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/isembedding-iff-isstrictmap-injective--60f6ad5d26be47cdf3c45a94.md) | 161 | `result-track:60f6ad5d26be47cdf3c45a945b9aa514f4ad342eb9700d5b36b599c99c5ad168` |
| 17 | `lemma` | [isHomeomorph_iff_isStrictMap_bijective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/ishomeomorph-iff-isstrictmap-bijective--71f23f5bf6003740641471f6.md) | 170 | `result-track:71f23f5bf6003740641471f6c366b58195052ec4e7f2c5eb61c14f40e69f7df7` |
| 18 | `lemma` | [_root_.Homeomorph.isStrictMap_comp_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/root-homeomorph-isstrictmap-comp-iff--8a774623876a902af01caa29.md) | 176 | `result-track:8a774623876a902af01caa297959669da860d28be4d211e8edb8d4c92ba02962` |
| 19 | `lemma` | [_root_.Homeomorph.comp_isStrictMap_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/declarations/root-homeomorph-comp-isstrictmap-iff--fc7fb2d195c9f23ddd956303.md) | 184 | `result-track:fc7fb2d195c9f23ddd9563031d3e5195d1eb1c9be51045b47264267a30449783` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
