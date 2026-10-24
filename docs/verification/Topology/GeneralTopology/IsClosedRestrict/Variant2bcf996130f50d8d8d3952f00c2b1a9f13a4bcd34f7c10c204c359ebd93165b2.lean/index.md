# Verification target: GRWTSK.Topology.GeneralTopology.IsClosedRestrict.Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e719fdceccfb76966755c22ccf2079c02686357",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e719fdceccfb76966755c22ccf2079c02686357`.

Source path: `GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean.json)

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
| 1 | `def` | [reorderRestrictProd](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/reorderrestrictprod--16f2a7ba13bb91c28a2125e6.md) | 48 | `declaration-track:16f2a7ba13bb91c28a2125e6fe6f7083b95d7a6d6a6a69d35bdf15f3b3ca7035` |
| 2 | `lemma` | [reorderRestrictProd_of_mem](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/reorderrestrictprod-of-mem--2f698ef300f75f672ef00299.md) | 56 | `result-track:2f698ef300f75f672ef00299dc7819a0e3dfacd0c601b9c84a59027e78e4af98` |
| 3 | `lemma` | [reorderRestrictProd_of_compl](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/reorderrestrictprod-of-compl--93482ad5b183c62db62f4b02.md) | 62 | `result-track:93482ad5b183c62db62f4b02064e96eb710213983d561e914420d70dc4664d6a` |
| 4 | `lemma` | [restrict_compl_reorderRestrictProd](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/restrict-compl-reorderrestrictprod--e6b2a6d45a8a7eda9c18ed12.md) | 68 | `result-track:e6b2a6d45a8a7eda9c18ed12fa040bc5cef469e357f84e9c4a37bf91832df852` |
| 5 | `lemma` | [continuous_reorderRestrictProd](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/continuous-reorderrestrictprod--8c010cfd0ae2e8f0145b5cce.md) | 71 | `result-track:8c010cfd0ae2e8f0145b5cce077e7504def6f3d0441cec92c1119ad3f3ba76a8` |
| 6 | `lemma` | [reorderRestrictProd_mem_preimage_image_restrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/reorderrestrictprod-mem-preimage-image-restrict--9aabdf4c4bbed1efa57c5937.md) | 79 | `result-track:9aabdf4c4bbed1efa57c5937bdbd6f5e7b27fdff0b94bf6ed465b18b5d483532` |
| 7 | `lemma` | [reorderRestrictProd_restrict_compl](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/reorderrestrictprod-restrict-compl--74b9e892cdc765c94a2c60d0.md) | 85 | `result-track:74b9e892cdc765c94a2c60d0a03e55c76a23e869e661cd383167eeacc65a5840` |
| 8 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.ReorderRestrictProd.Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.Homeomorph.preimageImageRestrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/root-grwtsk-topology-generaltopology-reorderrestrictprod-variantafaa60af--c26a069720baa2e4e4552e32.md) | 93 | `declaration-track:c26a069720baa2e4e4552e3202f15a33f49b1c94599ddb30c157ccd04dc365de` |
| 9 | `lemma` | [image_snd_preimageImageRestrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/image-snd-preimageimagerestrict--90ff68a633cfde15ef9c37fd.md) | 113 | `result-track:90ff68a633cfde15ef9c37fd5af4169da6c269637b387122419093ea16a6cf78` |
| 10 | `theorem` | [IsCompact.isClosed_image_restrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/iscompact-isclosed-image-restrict--a85087764a28b7b3136768f9.md) | 135 | `result-track:a85087764a28b7b3136768f9614d7ffb0107753258ee7b2a5277d7b2b8894b61` |
| 11 | `lemma` | [isClosedMap_restrict_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/isclosedmap-restrict-of-compactspace--2cb31719eba1863c45002b52.md) | 145 | `result-track:2cb31719eba1863c45002b5221e804969e332dfc15655bc1065a7e484597b4d7` |
| 12 | `lemma` | [IsClosed.isClosed_image_eval](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/declarations/isclosed-isclosed-image-eval--4eca5a8de11201ad2217f4ca.md) | 152 | `result-track:4eca5a8de11201ad2217f4caff7ab450691a0bb9e0af4479a064b564bcc2ed24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
