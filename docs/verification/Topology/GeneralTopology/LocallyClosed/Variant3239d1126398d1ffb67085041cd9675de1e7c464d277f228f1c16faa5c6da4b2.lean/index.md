# Verification target: GRWTSK.Topology.GeneralTopology.LocallyClosed.Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "465eb70f0a69c68a1152881ee1b0bef97b59a988",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `465eb70f0a69c68a1152881ee1b0bef97b59a988`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [subset_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/subset-coborder--96685d1416a87db785610f8e.md) | 41 | `result-track:96685d1416a87db785610f8e9d71e3f21d81d6ce802991780f922c2670dd1862` |
| 2 | `lemma` | [coborder_inter_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/coborder-inter-closure--c4a784f00eeba32663df12e1.md) | 46 | `result-track:c4a784f00eeba32663df12e1480e5051f67832f381208c3c9a1839745300d031` |
| 3 | `lemma` | [closure_inter_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/closure-inter-coborder--a84148fa1e2d6146260af829.md) | 51 | `result-track:a84148fa1e2d6146260af8298b52d437943559dc419f329da606b32fcbb84c45` |
| 4 | `lemma` | [coborder_eq_union_frontier_compl](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/coborder-eq-union-frontier-compl--e201b8f2cdcde07c44c97c69.md) | 55 | `result-track:e201b8f2cdcde07c44c97c69e6531d33953d56b19acbc3c4820d7ad8c9ab003d` |
| 5 | `lemma` | [coborder_eq_univ_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/coborder-eq-univ-iff--aaaa54740d8174efda48aa62.md) | 60 | `result-track:aaaa54740d8174efda48aa6243f103f4315169a5640d4b05992042afb6552667` |
| 6 | `lemma` | [coborder_eq_compl_frontier_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/coborder-eq-compl-frontier-iff--9ea86c023ba98bb78a0e16ea.md) | 66 | `result-track:9ea86c023ba98bb78a0e16eae905b46c7d213bcdfd5a50c555669c4fbf754c8d` |
| 7 | `theorem` | [coborder_eq_union_closure_compl](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/coborder-eq-union-closure-compl--3c4970aa1383f4148995621e.md) | 71 | `result-track:3c4970aa1383f4148995621e6cf38bd800e91e79701f311bc8c30e48d9ab3785` |
| 8 | `theorem` | [dense_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/dense-coborder--d368e3554593f68b7b509d7b.md) | 76 | `result-track:d368e3554593f68b7b509d7b0046cea017c763fd1146d99c8bb8e80b3b6aad68` |
| 9 | `lemma` | [IsOpenMap.coborder_preimage_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/isopenmap-coborder-preimage-subset--5291a17e97fc2d0f6aca2b5a.md) | 84 | `result-track:5291a17e97fc2d0f6aca2b5aef182fa6db68782c04fc746a6f20a37e725aa787` |
| 10 | `lemma` | [Continuous.preimage_coborder_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/continuous-preimage-coborder-subset--a3fc7651401b6814c56330b6.md) | 90 | `result-track:a3fc7651401b6814c56330b6532016d086ef6cad10093e5a9629ddfe1a56bb02` |
| 11 | `lemma` | [coborder_preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/coborder-preimage--eae54a04e2d2c5ce32b619b2.md) | 96 | `result-track:eae54a04e2d2c5ce32b619b27295606e819b083a88387136b68257de9c7d9b23` |
| 12 | `lemma` | [Topology.IsOpenEmbedding.coborder_preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/topology-isopenembedding-coborder-preimage--5c092c5e2197822336014113.md) | 101 | `result-track:5c092c5e2197822336014113029ce3ad26e388d2c6df8abb8e7d362acaf9950f` |
| 13 | `lemma` | [isClosed_preimage_val_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/isclosed-preimage-val-coborder--95f35273946475ae8a7f6fd7.md) | 105 | `result-track:95f35273946475ae8a7f6fd7d0081ca113cdb89ec4825a1a356215cfe3069210` |
| 14 | `lemma` | [IsLocallyClosed.inter](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/islocallyclosed-inter--7b0d1e28a6c2e6e446b49f57.md) | 109 | `result-track:7b0d1e28a6c2e6e446b49f5799aef99465004a0e1bc2a9bc6c2b8b27c15ec846` |
| 15 | `lemma` | [IsLocallyClosed.preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/islocallyclosed-preimage--bda5395d47cdd33b59f91c4e.md) | 115 | `result-track:bda5395d47cdd33b59f91c4e894f41d879251b22f3b9fff45198771bc9408545` |
| 16 | `lemma` | [Topology.IsInducing.isLocallyClosed_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/topology-isinducing-islocallyclosed-iff--3a9e4dd231d8b88fdd61fb78.md) | 122 | `result-track:3a9e4dd231d8b88fdd61fb783a592b0b6c1c6a5ca504abc816c83f464352df5f` |
| 17 | `lemma` | [Topology.IsEmbedding.isLocallyClosed_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/topology-isembedding-islocallyclosed-iff--c7205ec064a1ad89a5191bd9.md) | 135 | `result-track:c7205ec064a1ad89a5191bd965f1bcdd494258f99495494770212ecaa05ae8da` |
| 18 | `lemma` | [IsLocallyClosed.image](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/islocallyclosed-image--1a74e6e866cc266fa3b19b3e.md) | 144 | `result-track:1a74e6e866cc266fa3b19b3eb4018e27646a6fd8a839409a176d374d6ccebfa5` |
| 19 | `lemma` | [isLocallyClosed_tfae](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/islocallyclosed-tfae--fdb7e4e8aeba0a750252431e.md) | 159 | `result-track:fdb7e4e8aeba0a750252431ef9734c24a7d17fdf18219304da197124e5d477ff` |
| 20 | `lemma` | [isLocallyClosed_iff_isOpen_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/islocallyclosed-iff-isopen-coborder--3468d750bac2dac290fc6223.md) | 198 | `result-track:3468d750bac2dac290fc6223317c5e067208934022be747e3059d3917aef2f07` |
| 21 | `lemma` | [IsLocallyClosed.isOpen_preimage_val_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3239d1126398d1ffb67085041cd9675de1e7c464d277f228f1c16faa5c6da4b2.lean/declarations/islocallyclosed-isopen-preimage-val-closure--4bf159ed0564fa568a8088f7.md) | 203 | `result-track:4bf159ed0564fa568a8088f78af9e81ee4aedecdbb581212b01688e9e9194377` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
