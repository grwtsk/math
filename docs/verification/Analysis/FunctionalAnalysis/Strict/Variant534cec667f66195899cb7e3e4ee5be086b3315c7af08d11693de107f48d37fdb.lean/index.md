# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Strict.Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e846d42ea22ba15847fdc0f6fd55c9d7a986da9",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e846d42ea22ba15847fdc0f6fd55c9d7a986da9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StrictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex--75562d1fe1aa3be38eb3e162.md) | 33 | `declaration-track:75562d1fe1aa3be38eb3e162f03483cf50874b50168594e4d171302af11ab859` |
| 2 | `theorem` | [strictConvex_iff_openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-iff-opensegment-subset--c4ed8931bcc8b5c38a7822d4.md) | 50 | `result-track:c4ed8931bcc8b5c38a7822d4211f52a1f348aa991354b8fbe9a2a9425c677fe0` |
| 3 | `theorem` | [StrictConvex.openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-opensegment-subset--4add35bcce00142a3a6772be.md) | 54 | `result-track:4add35bcce00142a3a6772bebe0ed95c8b5d350dedff8575f56468e9da064b0f` |
| 4 | `theorem` | [strictConvex_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-empty--3d73a5c760a2a93f62d64c66.md) | 58 | `result-track:3d73a5c760a2a93f62d64c665834c7d45d0e94386c25ef54b2de9aee81167378` |
| 5 | `theorem` | [strictConvex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-univ--b0f27b257fb0f1511a6fbc96.md) | 61 | `result-track:b0f27b257fb0f1511a6fbc9665ba520135554f941ffd3cef372b6f56f9afc1f3` |
| 6 | `theorem` | [StrictConvex.eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-eq--c32d63ff9fa5f105e7bde8ae.md) | 66 | `result-track:c32d63ff9fa5f105e7bde8aeab9948dd5abbd8df3f75786f4a4873ceedb83988` |
| 7 | `theorem` | [StrictConvex.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-inter--19d1fbed11b6edaf9b8f67a9.md) | 70 | `result-track:19d1fbed11b6edaf9b8f67a90ae87bb73392073a5a53860af55ded18f1872961` |
| 8 | `theorem` | [Directed.strictConvex_iUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/directed-strictconvex-iunion--32b26df4de954aef4d38cf0a.md) | 76 | `result-track:32b26df4de954aef4d38cf0afdfec2f9f919931d46492de0352a8e5690c702fb` |
| 9 | `theorem` | [DirectedOn.strictConvex_sUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/directedon-strictconvex-sunion--91f9602febf72f77631a803d.md) | 85 | `result-track:91f9602febf72f77631a803d657deab52956041f94d0ad5e2c0dbac644cf41f6` |
| 10 | `theorem` | [StrictConvex.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-convex--106ccdbd8be61b8436b83c78.md) | 96 | `result-track:106ccdbd8be61b8436b83c782a2bb1f01f193331b97eaab0487ec11a41eb411b` |
| 11 | `theorem` | [Convex.strictConvex_of_isOpen](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/convex-strictconvex-of-isopen--3f5f31b821e32b3777dcccf1.md) | 101 | `result-track:3f5f31b821e32b3777dcccf175260634810931f79b07e11cdd4763ed72ac7128` |
| 12 | `theorem` | [IsOpen.strictConvex_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/isopen-strictconvex-iff--9e5644e831e795a0077b5034.md) | 105 | `result-track:9e5644e831e795a0077b50341a5900e235759b0a9a53a00bcd42f048fb4aeca8` |
| 13 | `theorem` | [strictConvex_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-singleton--bfbbc1c3fd11ec3c1465558e.md) | 108 | `result-track:bfbbc1c3fd11ec3c1465558e96e1376a60af696262d5f8a01bde8b999bc9d0d9` |
| 14 | `theorem` | [Set.Subsingleton.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/set-subsingleton-strictconvex--4237f3891666e01852eb967f.md) | 111 | `result-track:4237f3891666e01852eb967feba40efcadb071c886b347547c5186c97da6d2ae` |
| 15 | `theorem` | [StrictConvex.linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-linear-image--02ba928492e29d9dc81677fc.md) | 114 | `result-track:02ba928492e29d9dc81677fc86dbcfa96315d4bd04da1cc75a0b783148aa8cbc` |
| 16 | `theorem` | [StrictConvex.is_linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-is-linear-image--4f45e79cf1f9fedd3bb70921.md) | 121 | `result-track:4f45e79cf1f9fedd3bb70921dbd1289f087c9e8e85c1e844c1d70a11e3995ea3` |
| 17 | `theorem` | [StrictConvex.linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-linear-preimage--2b4fd73cc8cb1a778dbdcaf0.md) | 125 | `result-track:2b4fd73cc8cb1a778dbdcaf0c95f68c89745caf89efdbba33eafeace344ddfe6` |
| 18 | `theorem` | [StrictConvex.is_linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-is-linear-preimage--666b23bf6f80983713f8d964.md) | 132 | `result-track:666b23bf6f80983713f8d964725d2409f6b492d73d3f2a02902e071f914cca05` |
| 19 | `theorem` | [Set.OrdConnected.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/set-ordconnected-strictconvex--7be73fcc8bb9a7d7f40301b6.md) | 142 | `result-track:7be73fcc8bb9a7d7f40301b686eceaadecd0df30219c7764c1e89c20c2940929` |
| 20 | `theorem` | [strictConvex_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-iic--e120691d3fe5a39f284fe63f.md) | 150 | `result-track:e120691d3fe5a39f284fe63fefca2d8bd0c6e59e72c87a6b58c04036b9f4b4b8` |
| 21 | `theorem` | [strictConvex_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-ici--8ed26fd4519f1c38a4a0bca6.md) | 153 | `result-track:8ed26fd4519f1c38a4a0bca6f03abfa14886d6c438f52908dba259798b458b61` |
| 22 | `theorem` | [strictConvex_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-iio--7f5fa440f1b67be29540af9d.md) | 156 | `result-track:7f5fa440f1b67be29540af9dfb32e57a8eab03fd9c1a599734134c0d0025025a` |
| 23 | `theorem` | [strictConvex_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-ioi--1fffb6fc22d650ca8f78a9d3.md) | 159 | `result-track:1fffb6fc22d650ca8f78a9d35daf831b71814a316e7c430a516c703f21615615` |
| 24 | `theorem` | [strictConvex_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-icc--a4c3b6a00215fab167293611.md) | 162 | `result-track:a4c3b6a00215fab1672936113a07de237806fbb330c965b5aff89ccd734a0157` |
| 25 | `theorem` | [strictConvex_Ioo](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-ioo--911bffea0fcc92e2d3955180.md) | 165 | `result-track:911bffea0fcc92e2d39551808bb39782bfce067a584ee24c204faac9be46ec96` |
| 26 | `theorem` | [strictConvex_Ico](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-ico--d703afb4da8b8bc35bf0ff5d.md) | 168 | `result-track:d703afb4da8b8bc35bf0ff5d99ebae30d082b33d4e184b35e02ebd7fa4185b2a` |
| 27 | `theorem` | [strictConvex_Ioc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-ioc--9470555df1d04a9bea481058.md) | 171 | `result-track:9470555df1d04a9bea481058b085a0f443efd7cea2ae3bb0de52ceb6f47f66d0` |
| 28 | `theorem` | [strictConvex_uIcc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-uicc--4957e6efde3206e0f024eb6a.md) | 174 | `result-track:4957e6efde3206e0f024eb6acdf7c2943e3b71d423b80d9633f747dc863c11a1` |
| 29 | `theorem` | [strictConvex_uIoc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-uioc--48f74fef8abdfb6ebf497d2d.md) | 177 | `result-track:48f74fef8abdfb6ebf497d2df197994513f55914cce37fcb5bd54543f2642924` |
| 30 | `theorem` | [StrictConvex.preimage_add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-preimage-add-right--93df4c1a7def7dc6e1cc4b55.md) | 191 | `result-track:93df4c1a7def7dc6e1cc4b55e22c73b5b850ff4bb0c18a40556bf207d7c2c639` |
| 31 | `theorem` | [StrictConvex.preimage_add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-preimage-add-left--c7dda472041bdf7f40237e3d.md) | 199 | `result-track:c7dda472041bdf7f40237e3d5aa0782fd80384ed1702e253d672a5fac96440bb` |
| 32 | `theorem` | [StrictConvex.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-add--848536ab9c3bbb6932db0c0d.md) | 213 | `result-track:848536ab9c3bbb6932db0c0dba387b9cf09113fe9444199bab452c83b6ccbfb7` |
| 33 | `theorem` | [StrictConvex.add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-add-left--5a73807a08d3f8b3f4efece8.md) | 227 | `result-track:5a73807a08d3f8b3f4efece856aa283a949097a35345746ae42b0379231e3f37` |
| 34 | `theorem` | [StrictConvex.add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-add-right--03ec69657b8684f987138e57.md) | 231 | `result-track:03ec69657b8684f987138e57500d19b7baba5f4dbed84b5dbc759b2557023a72` |
| 35 | `theorem` | [StrictConvex.vadd](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-vadd--dbb63e0a4c34da5928e875f5.md) | 235 | `result-track:dbb63e0a4c34da5928e875f5c309713a6d3a5adf5b16bdd56b8140ade3c354b2` |
| 36 | `theorem` | [StrictConvex.smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-smul--4c0a3f0f52c3e2e7d5ff58af.md) | 245 | `result-track:4c0a3f0f52c3e2e7d5ff58af75234328fbc56bdb7012737be713ed031072cbe1` |
| 37 | `theorem` | [StrictConvex.affinity](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-affinity--f34413fb2ba647a0323c7f5f.md) | 250 | `result-track:f34413fb2ba647a0323c7f5f5c26f1598313c2c286487c355d2f72821cb69b66` |
| 38 | `theorem` | [StrictConvex.preimage_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-preimage-smul--43072a7ae74c9dedbc2ad282.md) | 269 | `result-track:43072a7ae74c9dedbc2ad282928a97a954ace0b53cca0282140ce31847d8b1c2` |
| 39 | `theorem` | [StrictConvex.eq_of_openSegment_subset_frontier](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-eq-of-opensegment-subset-frontier--afc8babacd703d93d3ea01e0.md) | 293 | `result-track:afc8babacd703d93d3ea01e0f152537a2f031e409101656b283cf48c4c6870c5` |
| 40 | `theorem` | [StrictConvex.add_smul_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-add-smul-mem--a6d9610a0c025bb412d433e2.md) | 304 | `result-track:a6d9610a0c025bb412d433e254db91155a45abea6a8c0088a5c55e496f36f385` |
| 41 | `theorem` | [StrictConvex.smul_mem_of_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-smul-mem-of-zero-mem--7463466baab08342dd8146b6.md) | 312 | `result-track:7463466baab08342dd8146b64d2b704010ce37dae1596f53c3e6cb7f53d394d1` |
| 42 | `theorem` | [StrictConvex.add_smul_sub_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-add-smul-sub-mem--4f529d4b564f41a1b21bfc3e.md) | 317 | `result-track:4f529d4b564f41a1b21bfc3eaef59b9193715b6fdd02c9f4bc5cc0151ba40db7` |
| 43 | `theorem` | [StrictConvex.affine_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-affine-preimage--a25bac9a4f6878300fb1b072.md) | 325 | `result-track:a25bac9a4f6878300fb1b072b41dc7d584d8161e34ae4c4c40f1b6162fbc7a78` |
| 44 | `theorem` | [StrictConvex.affine_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-affine-image--6f28a943ca5f2e0a044ea3dc.md) | 333 | `result-track:6f28a943ca5f2e0a044ea3dcfd618d23e11d3dedf84abf0f67955ad8c7ffe12c` |
| 45 | `theorem` | [StrictConvex.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-neg--1a42461ec8a6c1d83773399f.md) | 342 | `result-track:1a42461ec8a6c1d83773399f94472e4c2a82680e6c520370d757e8a321c18d65` |
| 46 | `theorem` | [StrictConvex.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-sub--254f726a5abb5b928649a1fa.md) | 345 | `result-track:254f726a5abb5b928649a1faa1e557ab14e91ceb7fe23585b2604ccdc0fa7384` |
| 47 | `theorem` | [strictConvex_iff_div](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-iff-div--296ac50397f0eaf44660bbc0.md) | 361 | `result-track:296ac50397f0eaf44660bbc0a4792fed352c07e61cb47809a6e11b84e6db439a` |
| 48 | `theorem` | [StrictConvex.mem_smul_of_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-mem-smul-of-zero-mem--2d5808b5586cfb935c14dcea.md) | 369 | `result-track:2d5808b5586cfb935c14dcea51228b17084d76e97f02161ac9dccba9971b0068` |
| 49 | `theorem` | [strictConvex_iff_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-iff-convex--81c50be09ed2daeb18bdbf74.md) | 392 | `result-track:81c50be09ed2daeb18bdbf74473b3a678ab89b21e6f70cee2a64c86cabafc7ba` |
| 50 | `theorem` | [strictConvex_iff_ordConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/declarations/strictconvex-iff-ordconnected--bca27c2478d0bde7806a14bc.md) | 395 | `result-track:bca27c2478d0bde7806a14bcae1fabca188dd8f8b178e283c9b300887ab1531b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
