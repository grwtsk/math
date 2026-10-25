# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Imo1959Q2.Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "317b6a8a7350a06ae8db14f3f91b451b5851de5d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `317b6a8a7350a06ae8db14f3f91b451b5851de5d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Sqrt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGood](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood--f1a135b395a78784c8a6c398.md) | 40 | `declaration-track:f1a135b395a78784c8a6c398dfa9de1d018284ab966ff241338ac4635268f5bd` |
| 2 | `theorem` | [isGood_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood-iff--58f738f63d2ce68b4ad93222.md) | 46 | `result-track:58f738f63d2ce68b4ad932228197e3298afc4590bc220f8d1e5a817c25148d98` |
| 3 | `theorem` | [IsGood.one_half_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood-one-half-le--2f286f139fe74080b99af6fe.md) | 63 | `result-track:2f286f139fe74080b99af6fe1686d721c9dad115b668bd059b81b07db1f86cb4` |
| 4 | `theorem` | [sqrt_two_mul_sub_one_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/sqrt-two-mul-sub-one-le-one--4afcc25b89683c741cd30048.md) | 65 | `result-track:4afcc25b89683c741cd3004853f97bc0af6f74103999b2ac1d7b24f6fe709507` |
| 5 | `theorem` | [isGood_iff_eq_sqrt_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood-iff-eq-sqrt-two--a1c738161c0c0e5ae07744f5.md) | 68 | `result-track:a1c738161c0c0e5ae07744f516ea46bd95e74170c2e412bb127e41bd457d3f1b` |
| 6 | `theorem` | [isGood_iff_eq_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood-iff-eq-sqrt--e64622986e1b0b8ef10bacdf.md) | 75 | `result-track:e64622986e1b0b8ef10bacdfc4a4c2e3509d0c70c794e22bbbb6d06ab46b2baa` |
| 7 | `theorem` | [IsGood.sqrt_two_lt_of_one_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood-sqrt-two-lt-of-one-lt--d834a0fc2972114f339610fd.md) | 83 | `result-track:d834a0fc2972114f339610fd6ff215a26df68e84ccb648036167e42b46f81e46` |
| 8 | `theorem` | [IsGood.eq_sqrt_two_iff_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood-eq-sqrt-two-iff-le-one--8653d4cb82707d2ed05430bb.md) | 88 | `result-track:8653d4cb82707d2ed05430bb54b49a37af4c3335c6aff9eac37755c3e5021352` |
| 9 | `theorem` | [IsGood.sqrt_two_lt_iff_one_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood-sqrt-two-lt-iff-one-lt--797b8c97e16f6e3d156359af.md) | 92 | `result-track:797b8c97e16f6e3d156359af5b06d8a978f849b96b4cfe1584a5db5c931214e5` |
| 10 | `theorem` | [IsGood.sqrt_two_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood-sqrt-two-le--b090e7c941e01ae72939d9e4.md) | 95 | `result-track:b090e7c941e01ae72939d9e4124349c2d2f8279960cd63819d5f6d52236e61f7` |
| 11 | `theorem` | [isGood_iff_of_sqrt_two_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood-iff-of-sqrt-two-lt--fa058d0164113137b009f433.md) | 99 | `result-track:fa058d0164113137b009f4333cd2e2f3824361d579562cd374ceaaa37d36ce37` |
| 12 | `theorem` | [isGood_sqrt2_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood-sqrt2-iff--204b0f9d5ea052e00b3cebd5.md) | 112 | `result-track:204b0f9d5ea052e00b3cebd583d88784b89e51b7b027df9f379736049ee9dded` |
| 13 | `theorem` | [not_isGood_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/not-isgood-one--f4c58c9b7720c616780b3d5b.md) | 116 | `result-track:f4c58c9b7720c616780b3d5b0e859652914aca8b73f6106c65b1dae31011070e` |
| 14 | `theorem` | [isGood_two_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/declarations/isgood-two-iff--d5c6a75857fc738d633e5188.md) | 119 | `result-track:d5c6a75857fc738d633e5188003c5367c76cffed66f46d1342f8450a7d50353f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
