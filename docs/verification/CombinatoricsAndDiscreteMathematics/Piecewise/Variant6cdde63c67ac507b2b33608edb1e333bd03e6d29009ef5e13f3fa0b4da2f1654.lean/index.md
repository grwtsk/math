# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Piecewise.Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "289dcdd29188254236064d0ae9fa6d0e424c00ec",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `289dcdd29188254236064d0ae9fa6d0e424c00ec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.BooleanAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Piecewise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piecewise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise--d5492e07304cb7d01be74aaf.md) | 28 | `declaration-track:d5492e07304cb7d01be74aaf5f44f92eefd7912702ecd7966376070b2b09f399` |
| 2 | `lemma` | [piecewise_insert_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-insert-self--9e29e89057c19ba22d0334b1.md) | 30 | `result-track:9e29e89057c19ba22d0334b159edd9571c27ca9ce2bcfafd3c18afd5e69a8f9c` |
| 3 | `lemma` | [piecewise_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-empty--432ae82cefffa590622a6113.md) | 34 | `result-track:432ae82cefffa590622a611356ccd22bb2b9eeb60fcab98713e2f81bb486a6bf` |
| 4 | `lemma` | [piecewise_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-coe--be5f5f6308aa444447dd85f9.md) | 42 | `result-track:be5f5f6308aa444447dd85f991e352900d82429a8c33111701d7ca4618ec5aee` |
| 5 | `lemma` | [piecewise_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-eq-of-mem--c76bf90d6c4074fa0be32307.md) | 48 | `result-track:c76bf90d6c4074fa0be32307a4b43869ab0d65dc76795112f54dd619d8872a76` |
| 6 | `lemma` | [piecewise_eq_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-eq-of-notmem--903bdfb7546094e34289c5ca.md) | 52 | `result-track:903bdfb7546094e34289c5ca3df85d42a600673d8bec864a4f94bdc23758ced4` |
| 7 | `lemma` | [piecewise_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-congr--7e57f847561dfe2bbf9bffd8.md) | 57 | `result-track:7e57f847561dfe2bbf9bffd8fab0e24488e850d5c1aa1ce91ac427f1117b7cdd` |
| 8 | `lemma` | [piecewise_insert_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-insert-of-ne--0a255b52918b79bafb2d9081.md) | 62 | `result-track:0a255b52918b79bafb2d90811ef0a5d1a91547438c5e2071843f901dcb2d0f20` |
| 9 | `lemma` | [piecewise_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-insert--da3656532ed2116226b8ad6f.md) | 65 | `result-track:da3656532ed2116226b8ad6fb120d81541be18ad1e1abda54f720e5e53ddbdbf` |
| 10 | `lemma` | [piecewise_cases](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-cases--969dfe6bbf80d0dd7c31aa5a.md) | 72 | `result-track:969dfe6bbf80d0dd7c31aa5a1fd573035b8e04aca9202a08386386070b4d4ac2` |
| 11 | `lemma` | [piecewise_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-singleton--e0bf4d1d3bbab39714404434.md) | 76 | `result-track:e0bf4d1d3bbab397144044348a1c024a3dbeaba28e53f5c07b61552a3937fa7b` |
| 12 | `lemma` | [piecewise_piecewise_of_subset_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-piecewise-of-subset-left--38b18d75f65a8b821acb21bd.md) | 79 | `result-track:38b18d75f65a8b821acb21bdd9935cc342669f21cf32e64ab33b37fac68853a9` |
| 13 | `lemma` | [piecewise_idem_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-idem-left--f0aee27bbd51eacbdf8152db.md) | 85 | `result-track:f0aee27bbd51eacbdf8152dbdd847689ace30369806e7724957ecc99fee30717` |
| 14 | `lemma` | [piecewise_piecewise_of_subset_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-piecewise-of-subset-right--4466e139e2493c7e178a1a1c.md) | 89 | `result-track:4466e139e2493c7e178a1a1cd68dc7e4bf7254a746070affe7069c39eee4fb32` |
| 15 | `lemma` | [piecewise_idem_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-idem-right--24f0a3c8f7d2195667b708cf.md) | 95 | `result-track:24f0a3c8f7d2195667b708cfd9dde5cc1f61df25e7f45329d3ce901825889d22` |
| 16 | `lemma` | [update_eq_piecewise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/update-eq-piecewise--287c3491174c5abcac92daac.md) | 99 | `result-track:287c3491174c5abcac92daac320b5af9e920047dd77c95dd320754de08123775` |
| 17 | `lemma` | [update_piecewise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/update-piecewise--75f230d73788f4dd113b043c.md) | 103 | `result-track:75f230d73788f4dd113b043ceb037620dc0784d3362e6eeeceae3910a7cccaa0` |
| 18 | `lemma` | [update_piecewise_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/update-piecewise-of-mem--fbe8474b1d2647b54a3db8b6.md) | 108 | `result-track:fbe8474b1d2647b54a3db8b63efa9dfa0ba7444c0aa3890658b5854897fd23cc` |
| 19 | `lemma` | [update_piecewise_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/update-piecewise-of-notmem--567b18b87d31cfc94445c47a.md) | 114 | `result-track:567b18b87d31cfc94445c47a14dd3a7c69563060665666b30eb20c5c600c13f4` |
| 20 | `lemma` | [piecewise_same](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-same--d667b1021c349f23a056a31d.md) | 123 | `result-track:d667b1021c349f23a056a31de94e9ef872bc3b7eca4dbc41169dc3c8c7fcaea2` |
| 21 | `lemma` | [piecewise_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-univ--24a3eb5e1ff71f2534d626fb.md) | 131 | `result-track:24a3eb5e1ff71f2534d626fbafcb73de35fd7171b6386f7c1f5a0dd8fb643de3` |
| 22 | `lemma` | [piecewise_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-compl--17bd06f5dcaeead64c8f5444.md) | 136 | `result-track:17bd06f5dcaeead64c8f5444b0d557d13d5b2ffab2d1a247a2b2117b37ad532e` |
| 23 | `lemma` | [piecewise_erase_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-erase-univ--78ffb8dfdccd590eb763e807.md) | 143 | `result-track:78ffb8dfdccd590eb763e80755a7a9623b10a0b0b740f92636218908216dd63f` |
| 24 | `lemma` | [piecewise_mem_set_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-mem-set-pi--ae9a7d953b352eeb66af439e.md) | 151 | `result-track:ae9a7d953b352eeb66af439eaff0b56bab324e7f12efce6fc1015c0363f84132` |
| 25 | `lemma` | [piecewise_le_of_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-le-of-le-of-le--acac1658c33db121d3cc4a43.md) | 157 | `result-track:acac1658c33db121d3cc4a43c6557597b74ebe1f48eab5f13b0c6c7d83a703d3` |
| 26 | `lemma` | [le_piecewise_of_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/le-piecewise-of-le-of-le--2408a41aae6b17b8e51f18c2.md) | 160 | `result-track:2408a41aae6b17b8e51f18c217c8ed1e71d37c03e78057d2056c1409feb4ae35` |
| 27 | `lemma` | [piecewise_le_piecewise'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-le-piecewise--6bfece3dc0f9b1efeff0e358.md) | 163 | `result-track:6bfece3dc0f9b1efeff0e358901b6b5a979097e905775aa5a90b0bef0aaed759` |
| 28 | `lemma` | [piecewise_le_piecewise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-le-piecewise--206628256a62187f2091d501.md) | 166 | `result-track:206628256a62187f2091d5014af3b20d2752b06e69438261ff27c5f5797e40f8` |
| 29 | `lemma` | [piecewise_mem_Icc_of_mem_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-mem-icc-of-mem-of-mem--669eae46a858ae11e97145fd.md) | 169 | `result-track:669eae46a858ae11e97145fdf3241d21b478a4d02f7056083ae8cc6e4114bf94` |
| 30 | `lemma` | [piecewise_mem_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-mem-icc--8b78c7222502dd6d6394c59e.md) | 173 | `result-track:8b78c7222502dd6d6394c59e37b7f63bd4e212581a1f72c1202cfdaf35111c21` |
| 31 | `lemma` | [piecewise_mem_Icc'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant6cdde63c67ac507b2b33608edb1e333bd03e6d29009ef5e13f3fa0b4da2f1654.lean/declarations/piecewise-mem-icc--370a6d63908de43fb9186d1b.md) | 176 | `result-track:370a6d63908de43fb9186d1b54fa95add717aac7ff4c4b1e709bfbfe5d177a14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
