# Verification target: GRWTSK.Topology.GeneralTopology.Exterior.Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fbf140d0fd4f3ef372f3e12dfa337e0bc7046de",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fbf140d0fd4f3ef372f3e12dfa337e0bc7046de`.

Source path: `GRWTSK/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.NhdsSet` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Inseparable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exterior_singleton_eq_ker_nhds](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-singleton-eq-ker-nhds--09f01ab879b6b00ef0a41d36.md) | 32 | `result-track:09f01ab879b6b00ef0a41d36db8bbd5883abcbc66e9c8f45d50851c30f5529b5` |
| 2 | `theorem` | [mem_exterior_singleton](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/mem-exterior-singleton--87a943b9bfc6279e75d168e3.md) | 35 | `result-track:87a943b9bfc6279e75d168e32a5b43bff29e82fd0040777bc881229ea1dfaa85` |
| 3 | `lemma` | [exterior_def](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-def--fcce3ae05dc2433d11c4c566.md) | 38 | `result-track:fcce3ae05dc2433d11c4c566ec560a1d140ec0e30ed70d973d919002f13aad6e` |
| 4 | `lemma` | [mem_exterior](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/mem-exterior--058b4f0d91a560143d81a8b3.md) | 41 | `result-track:058b4f0d91a560143d81a8b3ea41ba166abe1d84d89f3e4c004527a076e6d2fe` |
| 5 | `lemma` | [subset_exterior_iff](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/subset-exterior-iff--c563152a4f991fc4bf6f3f4b.md) | 43 | `result-track:c563152a4f991fc4bf6f3f4b6b9dbab74bf8221f4ba41f1129a381a53823f02c` |
| 6 | `lemma` | [subset_exterior](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/subset-exterior--139857d2170d47a61d1eaa62.md) | 46 | `result-track:139857d2170d47a61d1eaa62cbdecccfc1e06f7e6949aae2b95fcb86441f0925` |
| 7 | `lemma` | [exterior_minimal](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-minimal--f6dae8b5fc7bb21b99c8f123.md) | 48 | `result-track:f6dae8b5fc7bb21b99c8f1236e0e54c8647d979d7d71a63abe75775e0e40915b` |
| 8 | `lemma` | [IsOpen.exterior_eq](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/isopen-exterior-eq--8208755c56a7b6efd59779af.md) | 51 | `result-track:8208755c56a7b6efd59779af6f60c2b1d6f9f9c7bd1a14455b3ad8b2cf05c19b` |
| 9 | `lemma` | [IsOpen.exterior_subset](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/isopen-exterior-subset--2af38036ee549d16af636fb8.md) | 54 | `result-track:2af38036ee549d16af636fb8f780a4f2ceb31e029d970259b5ab18f8490cbcf1` |
| 10 | `theorem` | [exterior_iUnion](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-iunion--603180797aa5c10bf536e789.md) | 58 | `result-track:603180797aa5c10bf536e7899958cd319a49eec61a71289fb35f1c5a65ddaa23` |
| 11 | `theorem` | [exterior_union](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-union--0f9ef56c08aebaa3d8643148.md) | 62 | `result-track:0f9ef56c08aebaa3d8643148c6d0b3365157cc0fb7cd1e5d091434d9dc094329` |
| 12 | `theorem` | [exterior_sUnion](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-sunion--fe8aa692db3f1e7d35f3de1c.md) | 66 | `result-track:fe8aa692db3f1e7d35f3de1c2aafbf097c8800bcbe78017d91d087acb542246b` |
| 13 | `theorem` | [mem_exterior_iff_specializes](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/mem-exterior-iff-specializes--db9392c8450b665e86b42d03.md) | 69 | `result-track:db9392c8450b665e86b42d0356843d74486e77cb5162fd301889d65019cff14a` |
| 14 | `lemma` | [exterior_mono](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-mono--eba48c3716ee55e33467e79f.md) | 74 | `result-track:eba48c3716ee55e33467e79fd9f2922d62c6b3f5b6bcce1aec6786d7a0950762` |
| 15 | `lemma` | [exterior_subset_exterior](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-subset-exterior--e38d78d2056170b53e079903.md) | 80 | `result-track:e38d78d2056170b53e079903aa2ff2cb0020e14c831c11d705313a602523c2b2` |
| 16 | `lemma` | [exterior_subset_exterior_iff_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-subset-exterior-iff-nhdsset--9914b837f0926373f2ff44a1.md) | 82 | `result-track:9914b837f0926373f2ff44a1bab3fde91f771d44447dcca008bfa3cb4e0f5bc7` |
| 17 | `theorem` | [exterior_eq_exterior_iff_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-eq-exterior-iff-nhdsset--6a0393e578484a888b426395.md) | 86 | `result-track:6a0393e578484a888b426395161ef35280618f59d12f93188d9e88e62a719c29` |
| 18 | `lemma` | [specializes_iff_exterior_subset](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/specializes-iff-exterior-subset--ba2bfca80624e442a0e7102c.md) | 89 | `result-track:ba2bfca80624e442a0e7102c32a6b91b68768d139a0757d3f751eefd5fc0a023` |
| 19 | `theorem` | [exterior_iInter_subset](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-iinter-subset--b33cbf37b7d4e34feacdc8fa.md) | 92 | `result-track:b33cbf37b7d4e34feacdc8fa6af7242773b8e3e2fcd369ed19699447287dcd90` |
| 20 | `theorem` | [exterior_inter_subset](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-inter-subset--e61f7d32c4fda2a44432842d.md) | 95 | `result-track:e61f7d32c4fda2a44432842df421fbdec606717c8f2b92d49a563da44fec354c` |
| 21 | `theorem` | [exterior_sInter_subset](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-sinter-subset--3d623238c29a485cc9cb87a8.md) | 98 | `result-track:3d623238c29a485cc9cb87a8dea2fda0a991acaf17e3217ee9fefbb0d99a6476` |
| 22 | `lemma` | [exterior_empty](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-empty--06389e25b4d2cd46dbd2db21.md) | 101 | `result-track:06389e25b4d2cd46dbd2db21a8eb7e73c71350bb78069ecad6c6be1878a691db` |
| 23 | `lemma` | [exterior_univ](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-univ--e13659a108213a884ef38bdc.md) | 102 | `result-track:e13659a108213a884ef38bdc7439c77b38cc93d046f56fe583508b8a46295f7f` |
| 24 | `lemma` | [exterior_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-eq-empty--656167ebbfab070089c4bc9e.md) | 104 | `result-track:656167ebbfab070089c4bc9e833cbabe505fd96f9abb511b0a5f094b79d0a35f` |
| 25 | `lemma` | [nhdsSet_exterior](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/nhdsset-exterior--7dca405c7d1e9dbc0e87e1f2.md) | 107 | `result-track:7dca405c7d1e9dbc0e87e1f21110dc3c5d12326a2b0aebd23a60ccc2b0a0ceeb` |
| 26 | `lemma` | [exterior_exterior](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/declarations/exterior-exterior--78610ad6c146587c2034aba3.md) | 111 | `result-track:78610ad6c146587c2034aba328a023afa75a663d9279144805415ba9593fc6ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
