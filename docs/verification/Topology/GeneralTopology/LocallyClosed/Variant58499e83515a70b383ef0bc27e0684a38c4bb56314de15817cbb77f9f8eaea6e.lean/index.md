# Verification target: GRWTSK.Topology.GeneralTopology.LocallyClosed.Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05a148ad12e4c118a2e944f1c90e5f8efed0bec0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05a148ad12e4c118a2e944f1c90e5f8efed0bec0`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [subset_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/subset-coborder--92083ba4aab6fbc71c8d9095.md) | 33 | `result-track:92083ba4aab6fbc71c8d9095c9493ef8f34fd570d38c983d755e5371b9a75fdf` |
| 2 | `lemma` | [coborder_inter_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/coborder-inter-closure--bb6844c6f0341d738a4ffd8f.md) | 38 | `result-track:bb6844c6f0341d738a4ffd8f62506b26ad1dc8c803bbf25ba839264077a6279f` |
| 3 | `lemma` | [closure_inter_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/closure-inter-coborder--fc29091f3f133047c59090b9.md) | 43 | `result-track:fc29091f3f133047c59090b9cc8906a07f4247e6ea25a737e7853ee034b9c68f` |
| 4 | `lemma` | [coborder_eq_union_frontier_compl](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/coborder-eq-union-frontier-compl--0fcf1e2e936fc173ad9720c0.md) | 47 | `result-track:0fcf1e2e936fc173ad9720c0ef4c6e7620658d2c670502f9cd76045c6b38b4db` |
| 5 | `lemma` | [coborder_eq_univ_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/coborder-eq-univ-iff--1fa4feedf40d1627ec0ce085.md) | 52 | `result-track:1fa4feedf40d1627ec0ce0855d0a6abc4462f0890243477d27f055d16ef3ef01` |
| 6 | `lemma` | [coborder_eq_compl_frontier_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/coborder-eq-compl-frontier-iff--a1bee6ea52109ffd298ea12a.md) | 58 | `result-track:a1bee6ea52109ffd298ea12a398092dda74ff9e1d8383c06229fa164089868da` |
| 7 | `theorem` | [coborder_eq_union_closure_compl](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/coborder-eq-union-closure-compl--2501c8e1e72f3c1ccb64b314.md) | 63 | `result-track:2501c8e1e72f3c1ccb64b3149a472af70a0a612937e5c274c7147b59c1c8da6b` |
| 8 | `theorem` | [dense_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/dense-coborder--291486b598f3f4d577244301.md) | 68 | `result-track:291486b598f3f4d577244301265a0d644a5d191cbcf9826227ce718c0d165506` |
| 9 | `lemma` | [IsOpenMap.coborder_preimage_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/isopenmap-coborder-preimage-subset--aca882dbd10f7f127bf39e7d.md) | 76 | `result-track:aca882dbd10f7f127bf39e7de7acb935a4c28dcd760e378d6ef7a49bf4373ffb` |
| 10 | `lemma` | [Continuous.preimage_coborder_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/continuous-preimage-coborder-subset--6978bc272e55de8110fc50bd.md) | 82 | `result-track:6978bc272e55de8110fc50bdafa2bf695a794272f0374e6f85b667381c29b28a` |
| 11 | `lemma` | [coborder_preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/coborder-preimage--67324d5bc8615b58bb683d34.md) | 88 | `result-track:67324d5bc8615b58bb683d345b80ec6523c5c8783c59767259a0632626c1fa65` |
| 12 | `lemma` | [Topology.IsOpenEmbedding.coborder_preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/topology-isopenembedding-coborder-preimage--53996651a0a581a22a0253d7.md) | 93 | `result-track:53996651a0a581a22a0253d76962653857c779470884612d3d895636f226d24b` |
| 13 | `lemma` | [isClosed_preimage_val_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/isclosed-preimage-val-coborder--fa13eed9896e2f62931ba653.md) | 97 | `result-track:fa13eed9896e2f62931ba653d6dcfa4f6cfa36d171d76df7e7c9a56d611b380a` |
| 14 | `lemma` | [IsLocallyClosed.inter](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/islocallyclosed-inter--9675b08fa28c84f3463c28e5.md) | 101 | `result-track:9675b08fa28c84f3463c28e57bf75a701835a7e40269406e38a460e6627fd799` |
| 15 | `lemma` | [IsLocallyClosed.preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/islocallyclosed-preimage--fcae65b3b9f28bfba9e50817.md) | 107 | `result-track:fcae65b3b9f28bfba9e50817311a6f2dc45f19b2a9e57c4e53a6217c01ddcb2f` |
| 16 | `lemma` | [Topology.IsInducing.isLocallyClosed_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/topology-isinducing-islocallyclosed-iff--775bc188f667d929b4797ac3.md) | 114 | `result-track:775bc188f667d929b4797ac31db6317156970473c82b2f942a8d55c35b1fcc25` |
| 17 | `lemma` | [Topology.IsEmbedding.isLocallyClosed_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/topology-isembedding-islocallyclosed-iff--0adc3e1de5c6cc1036bc236d.md) | 127 | `result-track:0adc3e1de5c6cc1036bc236d99cb115c52c439568a050db39bab4803ad35ed53` |
| 18 | `lemma` | [IsLocallyClosed.image](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/islocallyclosed-image--3e6d3f7709d721b140136dd9.md) | 136 | `result-track:3e6d3f7709d721b140136dd9e4f95257fb92d9fcbf15e921543fe8256c628a33` |
| 19 | `lemma` | [isLocallyClosed_tfae](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/islocallyclosed-tfae--f35624f3300ea25366924c63.md) | 151 | `result-track:f35624f3300ea25366924c637354e0d016b3229f6d4701b24fdddcad50d4bfd2` |
| 20 | `lemma` | [isLocallyClosed_iff_isOpen_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/islocallyclosed-iff-isopen-coborder--48e61e7ff778eaf0a759c46b.md) | 190 | `result-track:48e61e7ff778eaf0a759c46b24119b2db5fa36762ae7fab102eea1ea7b8c8395` |
| 21 | `lemma` | [IsLocallyClosed.isOpen_preimage_val_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/declarations/islocallyclosed-isopen-preimage-val-closure--3fc45482d0d1833655c5fe5e.md) | 195 | `result-track:3fc45482d0d1833655c5fe5e64b344b7b561f439548b74350d1dd02fc28c4962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
