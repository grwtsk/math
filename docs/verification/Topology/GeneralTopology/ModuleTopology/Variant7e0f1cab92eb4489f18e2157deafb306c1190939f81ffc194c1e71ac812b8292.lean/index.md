# Verification target: GRWTSK.Topology.GeneralTopology.ModuleTopology.Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c5ebb603a580def722fd4c059878cde00d7ab5d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c5ebb603a580def722fd4c059878cde00d7ab5d`.

Source path: `GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [moduleTopology](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/moduletopology--b7756b9a64e1959e62e17cd2.md) | 131 | `declaration-track:b7756b9a64e1959e62e17cd2d74f78f98c05561d5cf8a331b99d2c0260032c31` |
| 2 | `class` | [IsModuleTopology](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/ismoduletopology--99384813899c4bcc2cecdecb.md) | 136 | `declaration-track:99384813899c4bcc2cecdecb160c3ed5657db4190309e63bd3dfd53d2e0b5be9` |
| 3 | `theorem` | [eq_moduleTopology](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/eq-moduletopology--ce7817486db1277bcbc20ddd.md) | 141 | `result-track:ce7817486db1277bcbc20ddd90c36b63017e195a87a5359a1a3bbe3d69da41a7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/instance--d122464730d6475614fcdb5b.md) | 149 | `declaration-track:d122464730d6475614fcdb5b08f06b52d8445b9131ccc4ebfb672f84d10fb694` |
| 5 | `theorem` | [ModuleTopology.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/moduletopology-continuoussmul--5dd79571cb95ea78b27bc90c.md) | 155 | `result-track:5dd79571cb95ea78b27bc90ca1ab5f627232119bafae1311399725dafa014105` |
| 6 | `theorem` | [ModuleTopology.continuousAdd](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/moduletopology-continuousadd--41272d61ff06a564faaa3f3e.md) | 167 | `result-track:41272d61ff06a564faaa3f3e3df8bff976ba52ad8f1d4806cdbd12de6b5de8d3` |
| 7 | `instance` | [IsModuleTopology.toContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/ismoduletopology-tocontinuoussmul--558d863a02d87d8cd1622e8d.md) | 170 | `declaration-track:558d863a02d87d8cd1622e8def948fa72b7e718813549e0676c83c6d64d2d74b` |
| 8 | `theorem` | [IsModuleTopology.toContinuousAdd](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/ismoduletopology-tocontinuousadd--d3b5b5c1dff6740cce42592a.md) | 174 | `result-track:d3b5b5c1dff6740cce42592ac11c9e8dbb58cbdfad3897e51db727326f9a4f92` |
| 9 | `theorem` | [moduleTopology_le](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/moduletopology-le--00255233e04c353faa519b04.md) | 178 | `result-track:00255233e04c353faa519b040a3d823e16fbea62c9e2bd6cadcccdc34d4fd6b6` |
| 10 | `theorem` | [of_continuous_id](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/of-continuous-id--352ead77402c0e5a9e63672f.md) | 193 | `result-track:352ead77402c0e5a9e63672f582e6f63dd6bf1212ece449d7bf99e299b0048e6` |
| 11 | `instance` | [instSubsingleton](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/instsubsingleton--0d56f122ea62309a89c95c0b.md) | 202 | `declaration-track:0d56f122ea62309a89c95c0bcaf4a60dd6d53899846a8451702eaf575faaa343` |
| 12 | `theorem` | [iso](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/iso--b0926f1e5816a5eca18a516d.md) | 215 | `result-track:b0926f1e5816a5eca18a516deda5893d531bdf962fcb959367840c6826276af3` |
| 13 | `instance` | [_root_.GRWTSK.Topology.GeneralTopology.IsModuleTopology.Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.IsTopologicalSemiring.toIsModuleTopology](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/root-grwtsk-topology-generaltopology-ismoduletopology-variant841e539df16--3b4b151ca5ef188f9d9a9545.md) | 251 | `declaration-track:3b4b151ca5ef188f9d9a95453864d412e2626006d306368ad4782b04daba7339` |
| 14 | `instance` | [_root_.GRWTSK.Topology.GeneralTopology.IsModuleTopology.Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.IsTopologicalSemiring.toOppositeIsModuleTopology](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/root-grwtsk-topology-generaltopology-ismoduletopology-variant841e539df16--9e13b40943fdcaa601e66cd0.md) | 287 | `declaration-track:9e13b40943fdcaa601e66cd09943a567f327a18608e313562378441feede3fe4` |
| 15 | `theorem` | [continuous_of_distribMulActionHom](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/continuous-of-distribmulactionhom--27f336b4a8e53f265ceb5668.md) | 302 | `result-track:27f336b4a8e53f265ceb5668e24dec2232f58cba1caf1f1f427eb9f9b2ff2a1f` |
| 16 | `theorem` | [continuous_of_linearMap](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/continuous-of-linearmap--2338b43a7916ce77450545b2.md) | 313 | `result-track:2338b43a7916ce77450545b29e084db138bc1860577a897bcbf19e5780283ed4` |
| 17 | `theorem` | [continuous_neg](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/continuous-neg--f340f1ee710ce07d537bb392.md) | 317 | `result-track:f340f1ee710ce07d537bb392a38f5f9e749c4a2857962af2a2b96d6fb56dae0f` |
| 18 | `theorem` | [continuousNeg](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/continuousneg--6f5d77ddb9b2348ecbd83da7.md) | 323 | `result-track:6f5d77ddb9b2348ecbd83da7e5db93b7004332222ff0385b05db5fa60f1987c5` |
| 19 | `theorem` | [topologicalAddGroup](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/topologicaladdgroup--ff9f89c6204f074bb6cab1fd.md) | 328 | `result-track:ff9f89c6204f074bb6cab1fd55ea1abf2e64700bde6b77a54e46bc7a86121ea7` |
| 20 | `theorem` | [continuous_of_ringHom](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/continuous-of-ringhom--eb55a74a6e3db4646eaa031b.md) | 334 | `result-track:eb55a74a6e3db4646eaa031bbda9a1d717f28bf1ca8043cdb0033ce22d0a6a28` |
| 21 | `theorem` | [isQuotientMap_of_surjective](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/isquotientmap-of-surjective--0a9de89720ed0bc186be95e6.md) | 355 | `result-track:0a9de89720ed0bc186be95e6c395e7f436087197e98bd9710847f857abd2295f` |
| 22 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsModuleTopology.Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.ModuleTopology.eq_coinduced_of_surjective](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/root-grwtsk-topology-generaltopology-ismoduletopology-variant841e539df16--db3ef696d67352591dafdd15.md) | 425 | `result-track:db3ef696d67352591dafdd155f0fee209e1de2f5437e7cc8fc151b0e7995fd5e` |
| 23 | `instance` | [instProd](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/instprod--e6053d123d6a6467d26a3274.md) | 442 | `declaration-track:e6053d123d6a6467d26a3274282525de14be6801c89d7ca3cbd36f25279af0eb` |
| 24 | `instance` | [instPi](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/instpi--7435101ffea2307aa604290f.md) | 485 | `declaration-track:7435101ffea2307aa604290fa389443fee1dbb93aeebe2fc791d6f013b76e74c` |
| 25 | `theorem` | [continuous_bilinear_of_pi_fintype](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/continuous-bilinear-of-pi-fintype--797abafc9b94b8874b1af67f.md) | 528 | `result-track:797abafc9b94b8874b1af67fb543be261197ae764f2f9144fce8289ae0c31307` |
| 26 | `theorem` | [continuous_bilinear_of_finite_left](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/continuous-bilinear-of-finite-left--0df79dc8432ff59665660c43.md) | 564 | `result-track:0df79dc8432ff59665660c43eb3e8958bd5bd599c1195ade494b8bd9cde0b9fc` |
| 27 | `theorem` | [continuous_bilinear_of_finite_right](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/continuous-bilinear-of-finite-right--42fee31f5012c31e47aa0075.md) | 583 | `result-track:42fee31f5012c31e47aa007545236f2e5d5a74d235f854f16d6dda269a46aab3` |
| 28 | `theorem` | [continuous_mul_of_finite](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/continuous-mul-of-finite--eba330879abb0ec246eb0ad8.md) | 604 | `result-track:eba330879abb0ec246eb0ad8a8f0f6b3a0a4c187065ee223e43d5c58fd8082a5` |
| 29 | `theorem` | [isTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/declarations/istopologicalring--064f6810dca599ef336d8ea0.md) | 611 | `result-track:064f6810dca599ef336d8ea02175447f72d05fd2cbb5ea7ad025031d1eae5df5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
