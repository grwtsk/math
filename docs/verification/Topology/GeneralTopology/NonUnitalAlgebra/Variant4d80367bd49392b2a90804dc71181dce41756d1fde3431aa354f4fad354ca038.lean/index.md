# Verification target: GRWTSK.Topology.GeneralTopology.NonUnitalAlgebra.Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5347a70150c24abc25beecec80ec7c6f8106e5e8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5347a70150c24abc25beecec80ec7c6f8106e5e8`.

Source path: `GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean.json)

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
| 1 | `instance` | [instIsTopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/instistopologicalsemiring--73d38506eaf70cea3297f959.md) | 35 | `declaration-track:73d38506eaf70cea3297f9595132ba699fb05eee4ca6792290882f493b4beac7` |
| 2 | `instance` | [instIsSemitopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/instissemitopologicalsemiring--c9591152daa18c8c47fe195b.md) | 39 | `declaration-track:c9591152daa18c8c47fe195bde4929042d435e3aadc2e0d3103e000e83ef754a` |
| 3 | `def` | [topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/topologicalclosure--820a3dbbee91ca0726001eab.md) | 47 | `declaration-track:820a3dbbee91ca0726001eabf6e9fdabf360b0a65bdce818582aa27936faf881` |
| 4 | `theorem` | [le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/le-topologicalclosure--2f297706efd5043e8f13050e.md) | 51 | `result-track:2f297706efd5043e8f13050ec2c05ca7d7706844b861f38c8f7ea6e7c53d7435` |
| 5 | `theorem` | [isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/isclosed-topologicalclosure--c60155b4c2b8f15a97741a91.md) | 54 | `result-track:c60155b4c2b8f15a97741a916cfa021e31ec68855c7a8fbffe9650c7426065be` |
| 6 | `theorem` | [topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/topologicalclosure-minimal--904fe495ae0e9a07c988de2a.md) | 57 | `result-track:904fe495ae0e9a07c988de2a8b4f5ba88909d87624184983761bd670d542ba1c` |
| 7 | `theorem` | [topologicalClosure_mono](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/topologicalclosure-mono--e3a222003148958561e9b008.md) | 62 | `result-track:e3a222003148958561e9b008e2bd54ee81f9b42090873a8617e50dcf33915c29` |
| 8 | `instance` | [isMulCommutative_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/ismulcommutative-topologicalclosure--09ea1bf6b5b75e9fff8fd45b.md) | 66 | `declaration-track:09ea1bf6b5b75e9fff8fd45bf78b93e1b33279199dce436c14924d71a323dc57` |
| 9 | `abbrev` | [nonUnitalCommSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/nonunitalcommsemiringtopologicalclosure--7b10adf01b62e6110fe80b69.md) | 76 | `declaration-track:7b10adf01b62e6110fe80b695eea7ece9f26065bcf30774d55f11b698c069aeb` |
| 10 | `lemma` | [map_topologicalClosure_le](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/map-topologicalclosure-le--38e0fba6d2ee159f6d1f52ec.md) | 85 | `result-track:38e0fba6d2ee159f6d1f52ec9d1a745b386c5d66bab1d569f4d53b0163ba5db8` |
| 11 | `lemma` | [topologicalClosure_map_le](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/topologicalclosure-map-le--fa2ea22f9a7e267a0a245aea.md) | 89 | `result-track:fa2ea22f9a7e267a0a245aea2aed3e82e58a7681ea07bad4ba7b6fb92bb02452` |
| 12 | `lemma` | [topologicalClosure_map](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/topologicalclosure-map--e1966d55f74b6949c6d602e7.md) | 93 | `result-track:e1966d55f74b6949c6d602e7cfcb669666aeb895c3892bfed8d78eb594e0e00a` |
| 13 | `lemma` | [topologicalClosure_adjoin_le_centralizer_centralizer](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/topologicalclosure-adjoin-le-centralizer-centralizer--93b22961003fe0205edfcf74.md) | 99 | `result-track:93b22961003fe0205edfcf741d5e734ec2f3faf3e73cc6589b493e95bdcfca55` |
| 14 | `instance` | [instIsTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/instistopologicalring--d9ad5837b0660323e1bf9f98.md) | 112 | `declaration-track:d9ad5837b0660323e1bf9f98a9474d405042fd4454a8a58aed996f3458ef2554` |
| 15 | `instance` | [instIsSemitopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/instissemitopologicalring--52515369b90cfd740e262a73.md) | 116 | `declaration-track:52515369b90cfd740e262a73ab0c022d7c1d85152a500ba6badd3759f6fae7e7` |
| 16 | `abbrev` | [nonUnitalCommRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/nonunitalcommringtopologicalclosure--fc8aaf149aa7f997186f4771.md) | 128 | `declaration-track:fc8aaf149aa7f997186f4771e3b58ff6638192f5751f66dfe997f534bc653c94` |
| 17 | `def` | [elemental](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/elemental--c947c0d5364c15712d858fa7.md) | 146 | `declaration-track:c947c0d5364c15712d858fa7f00d16f078caa1e13e2b132671df28da72984235` |
| 18 | `theorem` | [self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/self-mem--8ed2d01f94c207470ab8e852.md) | 152 | `result-track:8ed2d01f94c207470ab8e852ba8dcda9c9da5e5dcb2cd77b0bcacc34c9d4c656` |
| 19 | `theorem` | [le_of_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/le-of-mem--d5d2642be5ee5473802c682e.md) | 156 | `result-track:d5d2642be5ee5473802c682e76504a3ae62c8ce5a05404000203b3b99dd889e1` |
| 20 | `theorem` | [le_iff_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/le-iff-mem--4955451363369fe86a3c210c.md) | 161 | `result-track:4955451363369fe86a3c210c891bf96632ebde3d661d3d4f04cbf94312e95ddc` |
| 21 | `instance` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/isclosed--6e29bf4c1b9b21174ec0a735.md) | 165 | `declaration-track:6e29bf4c1b9b21174ec0a735cd2c3f7ef59cb9e72758d3d034ebfd71b68fad03` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/instance--bc2b018b5cc21698dcef5b11.md) | 168 | `declaration-track:bc2b018b5cc21698dcef5b11513b4a1272cccb617a55368a76818141bd6b24ee` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/instance--c30272ae2dd7abff853c3078.md) | 171 | `declaration-track:c30272ae2dd7abff853c3078ba735cd3448f4110bd7b987a420aaa82ba299e73` |
| 24 | `theorem` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/isclosedembedding-coe--f452c545b5728ad01522d88c.md) | 178 | `result-track:f452c545b5728ad01522d88cc465912a14f530d1a87a99ff9b006eb3f06b8c76` |
| 25 | `lemma` | [le_centralizer_centralizer](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038.lean/declarations/le-centralizer-centralizer--67b34a2ea6a5fc82c7023082.md) | 183 | `result-track:67b34a2ea6a5fc82c702308217c7a12bee19b40201830a671771a546e0859648` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
