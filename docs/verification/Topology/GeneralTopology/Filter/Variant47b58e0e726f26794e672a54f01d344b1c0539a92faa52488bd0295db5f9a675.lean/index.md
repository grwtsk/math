# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4faaed80de0f0d727797ed38aef77508b6c6b792",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4faaed80de0f0d727797ed38aef77508b6c6b792`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Lift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Monotone` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/instance--8c190881b6c688413b6ec358.md) | 56 | `declaration-track:8c190881b6c688413b6ec35821cb00205a9f9e29cf9b8ecde17d7940e5a06ab1` |
| 2 | `theorem` | [isOpen_Iic_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/isopen-iic-principal--b884f50847b0e543c0b10c03.md) | 59 | `result-track:b884f50847b0e543c0b10c035eb6da3c71c078dda19a3d6687e4db65f9ab8fd9` |
| 3 | `theorem` | [isOpen_setOf_mem](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/isopen-setof-mem--c8c4fab485f08bbcea4ed0e3.md) | 63 | `result-track:c8c4fab485f08bbcea4ed0e3b9e1f1b25bec8be1721620cba78e7aac13c7f187` |
| 4 | `theorem` | [isTopologicalBasis_Iic_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/istopologicalbasis-iic-principal--e8e38b0b94bbe8f820087567.md) | 67 | `result-track:e8e38b0b94bbe8f820087567205723677a72b9b3105f2ce0ae369d6b57160ae5` |
| 5 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/isopen-iff--f407ff4db2b6d5b81e727e19.md) | 77 | `result-track:f407ff4db2b6d5b81e727e19d2ec71939eed871a56be71bcf1f02422a45eddda` |
| 6 | `theorem` | [nhds_eq](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-eq--0320a8acf44ae243f6a1e037.md) | 82 | `result-track:0320a8acf44ae243f6a1e037909ebaf0abe1a952d8f8f71f5682325aebfe7883` |
| 7 | `theorem` | [nhds_eq'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-eq--39183620fc5cb2661a09b4d6.md) | 88 | `result-track:39183620fc5cb2661a09b4d6cb57aa354998f8bb3ee0b7f0885c31ee69a96143` |
| 8 | `theorem` | [tendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/tendsto-nhds--90a92e8753b023d0dea2283e.md) | 92 | `result-track:90a92e8753b023d0dea2283e298260396f1f159db191fae71fd0205e6ef81bae` |
| 9 | `theorem` | [HasBasis.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/hasbasis-nhds--0de0a30b4e783595fb46dfde.md) | 97 | `result-track:0de0a30b4e783595fb46dfde3c38559ef6550aa20b194093182dde310f3539d3` |
| 10 | `theorem` | [tendsto_pure_self](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/tendsto-pure-self--8c3613f60814ebf8972d4238.md) | 103 | `result-track:8c3613f60814ebf8972d4238197fb32a2cc35b9746465db0b73fce9558d190f5` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/instance--4c68ccf13f2bbd116dea7387.md) | 109 | `declaration-track:4c68ccf13f2bbd116dea7387a4cccbfa0059395320b5019765a9245bb3f64480` |
| 12 | `theorem` | [HasBasis.nhds'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/hasbasis-nhds--a4ad1a7d4ba9c779eba507b5.md) | 113 | `result-track:a4ad1a7d4ba9c779eba507b5d64bdd151b1b682984c235c02045b0c21a554534` |
| 13 | `theorem` | [mem_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/mem-nhds-iff--12ec9a4e2899e4455f884f34.md) | 117 | `result-track:12ec9a4e2899e4455f884f349158ff0efab2c8bef3ec9cc4d48af43fddffbb6f` |
| 14 | `theorem` | [mem_nhds_iff'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/mem-nhds-iff--fede069329148a78d24da12a.md) | 121 | `result-track:fede069329148a78d24da12a7d0d88bbdb617da2f814f84487647f5d84c0753e` |
| 15 | `theorem` | [nhds_bot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-bot--aefd37f7e9adf9a2314c6487.md) | 127 | `result-track:aefd37f7e9adf9a2314c6487ec2680dd410d363b60830c07bd58455c9baacb1d` |
| 16 | `theorem` | [nhds_top](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-top--52653c34ce103d459e15f4b7.md) | 132 | `result-track:52653c34ce103d459e15f4b73fa9e45f61d0b6134ac70ab329188e209fc6c9dd` |
| 17 | `theorem` | [nhds_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-principal--2d8afc729ffd7a3e67465445.md) | 136 | `result-track:2d8afc729ffd7a3e67465445af6561eb7c2d97804e5aaf2c7aca935579935f1d` |
| 18 | `theorem` | [nhds_pure](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-pure--caeef8528055df9b34f13b0b.md) | 141 | `result-track:caeef8528055df9b34f13b0bee5f2f017707782a025b0056f572e6f2e38a46a9` |
| 19 | `theorem` | [nhds_iInf](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-iinf--7759dc08027c7a1397cd6998.md) | 146 | `result-track:7759dc08027c7a1397cd6998858c71fa763f2e48253188f99d3ae7a578a777c6` |
| 20 | `theorem` | [nhds_inf](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-inf--c1392fc7c1274520dc20d956.md) | 152 | `result-track:c1392fc7c1274520dc20d956db16c20309b34dd7fa46bf1c0f11f96d46e51cdc` |
| 21 | `theorem` | [monotone_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/monotone-nhds--38da8ff96eebfbd715ee1cb5.md) | 156 | `result-track:38da8ff96eebfbd715ee1cb50217827f9569193eb5d6333bdba4697099fb4d6e` |
| 22 | `theorem` | [sInter_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/sinter-nhds--85bceda05808bd3f91c245f2.md) | 160 | `result-track:85bceda05808bd3f91c245f2ddeaba9d1f81dd57ded99fdedadb506c40296408` |
| 23 | `theorem` | [nhds_mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-mono--ac47e561100d5e6d82b63a5d.md) | 166 | `result-track:ac47e561100d5e6d82b63a5df55eb30191671d6c1ac43daa4a4ac045d2e01b25` |
| 24 | `theorem` | [mem_interior](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/mem-interior--8f9f69e01993bdac2d5974d1.md) | 172 | `result-track:8f9f69e01993bdac2d5974d1efbbbc45bec241f53653978530671d2b4b798dfd` |
| 25 | `theorem` | [mem_closure](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/mem-closure--22149d176e7da80c12c8f7a3.md) | 176 | `result-track:22149d176e7da80c12c8f7a30e6076dfda124ee2ce0b360fe4a575d165d66038` |
| 26 | `theorem` | [closure_singleton](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/closure-singleton--3d773172b842af171a045521.md) | 184 | `result-track:3d773172b842af171a045521600828716f75aa8078479c9bf6839e24819389ad` |
| 27 | `theorem` | [specializes_iff_le](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/specializes-iff-le--ae1fbffcc9d60d972755a698.md) | 190 | `result-track:ae1fbffcc9d60d972755a69890525993ea5f79ddfb13ab38cd23ce5b5d3530cc` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/instance--81af3a0dbdf5d97a8585dae9.md) | 194 | `declaration-track:81af3a0dbdf5d97a8585dae9e6cc54fe97f6b34c37b80804e7a996a08820ba82` |
| 29 | `theorem` | [nhds_atTop](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-attop--e94fab3a1d4c92e83961e998.md) | 198 | `result-track:e94fab3a1d4c92e83961e9987f4a4a9ea4ae6fe2a6eb1bd58ee1fd71f83bcc8c` |
| 30 | `theorem` | [tendsto_nhds_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/tendsto-nhds-attop-iff--10257b706fd8292f99bad808.md) | 202 | `result-track:10257b706fd8292f99bad808f083515e79a49392491464179331fc1343f628be` |
| 31 | `theorem` | [nhds_atBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-atbot--34909ca01e9ba39864bb7ac6.md) | 207 | `result-track:34909ca01e9ba39864bb7ac62488b4618d48ca61f04ac38af5aca1a936cf6fe7` |
| 32 | `theorem` | [tendsto_nhds_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/tendsto-nhds-atbot-iff--be9af9631667fd5d7ed8156f.md) | 211 | `result-track:be9af9631667fd5d7ed8156f12a96d0b248a7148ae72aa25059d8052d8459a5a` |
| 33 | `theorem` | [nhds_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/nhds-nhds--048d47983c1aaedd73e306c2.md) | 218 | `result-track:048d47983c1aaedd73e306c28d477ea71fb4554a25705cc4429f219585443828` |
| 34 | `theorem` | [inducing_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/inducing-nhds--df7fdf0ad9cf554c6466ee55.md) | 222 | `result-track:df7fdf0ad9cf554c6466ee55b106ebe0bb8b0fa81d8f470fa7dc95d9fcfd8d9e` |
| 35 | `theorem` | [continuous_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/continuous-nhds--a8802fd8c0d32234ece6f06f.md) | 231 | `result-track:a8802fd8c0d32234ece6f06f1ea8b9feec32724f2ebe2c0827f83de48cba423c` |
| 36 | `theorem` | [Tendsto.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/tendsto-nhds--1d5660a83a3ac9a347ef4796.md) | 235 | `result-track:1d5660a83a3ac9a347ef479673b18f3b834f37cf596189ba423a65daa64b57f4` |
| 37 | `theorem` | [ContinuousWithinAt.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/continuouswithinat-nhds--5a94075526145bc0759d67d2.md) | 244 | `result-track:5a94075526145bc0759d67d2bc68d0e71a77be740d3f96904baf1582bb211dd9` |
| 38 | `theorem` | [ContinuousAt.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/continuousat-nhds--45cb26cb74dbfe47d7e5cf1d.md) | 249 | `result-track:45cb26cb74dbfe47d7e5cf1deff5c4027732d5907efe6e00a80d7727f28247d3` |
| 39 | `theorem` | [ContinuousOn.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/continuouson-nhds--07caf515ca12399dda4c6894.md) | 253 | `result-track:07caf515ca12399dda4c6894e1a7ed420fb0f17c5eb6d93824379dd83478d44a` |
| 40 | `theorem` | [Continuous.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/declarations/continuous-nhds--46b08aca28adaefdda0e71cc.md) | 257 | `result-track:46b08aca28adaefdda0e71ccfb29b820723e4247d22e5f3577011420af79509b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
