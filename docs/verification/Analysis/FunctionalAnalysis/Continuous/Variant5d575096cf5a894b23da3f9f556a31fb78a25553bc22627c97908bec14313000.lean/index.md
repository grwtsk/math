# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Continuous.Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e436ad9b2677486583a0924486a1323593bea052",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e436ad9b2677486583a0924486a1323593bea052`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean.json)

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
| 1 | `lemma` | [ConvexOn.lipschitzOnWith_of_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-lipschitzonwith-of-abs-le--f6856bc5849969ecfd46c886.md) | 34 | `result-track:f6856bc5849969ecfd46c886fefe4a1ea91eba8931850ef5dd873e14c9816a26` |
| 2 | `lemma` | [ConcaveOn.lipschitzOnWith_of_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-lipschitzonwith-of-abs-le--a9a2cf88e8bf47e9ba8c72fe.md) | 78 | `result-track:a9a2cf88e8bf47e9ba8c72fe0b65004755832eef260de0f77c9a3dda54c50b3d` |
| 3 | `lemma` | [ConvexOn.exists_lipschitzOnWith_of_isBounded](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-exists-lipschitzonwith-of-isbounded--7e4960079647da5e2f133c61.md) | 83 | `result-track:7e4960079647da5e2f133c619e6f4b15c91ad46640192c208d01ae6ec0770468` |
| 4 | `lemma` | [ConcaveOn.exists_lipschitzOnWith_of_isBounded](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-exists-lipschitzonwith-of-isbounded--f71d4c48f90a5c440b429ae2.md) | 92 | `result-track:f71d4c48f90a5c440b429ae217e2d75c7aca6cf1b8f47a202ef1cb36867629db` |
| 5 | `lemma` | [ConvexOn.isBoundedUnder_abs](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-isboundedunder-abs--7fb119edac171e218afa42d6.md) | 97 | `result-track:7fb119edac171e218afa42d6fb51c85146b06e5949213649ce0905fd2c55d0e5` |
| 6 | `lemma` | [ConcaveOn.isBoundedUnder_abs](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-isboundedunder-abs--72448231153126cf6d4c1ba0.md) | 118 | `result-track:72448231153126cf6d4c1ba01712797e220144324abd1d3d2dcc87331808d690` |
| 7 | `lemma` | [ConvexOn.continuousOn_tfae](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-continuouson-tfae--70143b79caece5653bfb83e7.md) | 122 | `result-track:70143b79caece5653bfb83e7d2356365ebda0fa20237767bed16e5edb7a9ac41` |
| 8 | `lemma` | [ConcaveOn.continuousOn_tfae](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-continuouson-tfae--2a3d452cd79d25fa7b569470.md) | 170 | `result-track:2a3d452cd79d25fa7b569470772f04262d49c388a2134ddca23f76f86623fcc4` |
| 9 | `lemma` | [ConvexOn.locallyLipschitzOn_iff_continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-locallylipschitzon-iff-continuouson--a7dc1fd7dfb57c6bd80d5e0e.md) | 182 | `result-track:a7dc1fd7dfb57c6bd80d5e0eea017cb3e2c18bf4ce97866e64fa05da3de81eaf` |
| 10 | `lemma` | [ConcaveOn.locallyLipschitzOn_iff_continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-locallylipschitzon-iff-continuouson--7506837020b78dce8a178fca.md) | 188 | `result-track:7506837020b78dce8a178fcac2a0d9e8f4e34007098ba4274e8f1a9738bd8453` |
| 11 | `lemma` | [ConvexOn.locallyLipschitzOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-locallylipschitzon--f8fa39844f49ee33ea8c1779.md) | 194 | `result-track:f8fa39844f49ee33ea8c17792a0e830fd1e9c1635d66f669f164c23ee58c5505` |
| 12 | `lemma` | [ConcaveOn.locallyLipschitzOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-locallylipschitzon--e758d64f74a12d514f7a8a55.md) | 204 | `result-track:e758d64f74a12d514f7a8a5505c11dac299b7fe6fa1dd2ae1c0861f1a93a2463` |
| 13 | `lemma` | [ConvexOn.continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-continuouson--9cf7119808b6b2c2c0f99066.md) | 207 | `result-track:9cf7119808b6b2c2c0f990667ddeb504d4aa861b6c54295c45a0a79bb9ce0d5c` |
| 14 | `lemma` | [ConcaveOn.continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-continuouson--2bcebdbed633842a57a5e523.md) | 210 | `result-track:2bcebdbed633842a57a5e52331c3a74f81bbdaba4a4347bf6628219920c0316b` |
| 15 | `lemma` | [ConvexOn.locallyLipschitzOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-locallylipschitzon-interior--cf034ab73285a4e611441ffb.md) | 213 | `result-track:cf034ab73285a4e611441ffbcb130c186e3f0d436294f9ab1083b04cc7aa8d4a` |
| 16 | `lemma` | [ConcaveOn.locallyLipschitzOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-locallylipschitzon-interior--37064a6e899813072be41f25.md) | 217 | `result-track:37064a6e899813072be41f25580019c9ae4a5c6b9f429dee9814736cd57c29d2` |
| 17 | `lemma` | [ConvexOn.continuousOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-continuouson-interior--0344d9e14e48990b7679b4ff.md) | 221 | `result-track:0344d9e14e48990b7679b4ffb1b72c04d7b0b90c81441afbddfc56726db1c378` |
| 18 | `lemma` | [ConcaveOn.continuousOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-continuouson-interior--dec7c4476bcc338ef47632e5.md) | 224 | `result-track:dec7c4476bcc338ef47632e5471af8698daf2cf4d34dea53c6b246aaa6f37c10` |
| 19 | `lemma` | [ConvexOn.locallyLipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-locallylipschitz--e8ebca162eb352b7b70ea555.md) | 227 | `result-track:e8ebca162eb352b7b70ea555c3715431e8e2a089e5b9992474d3b6e2c936c413` |
| 20 | `lemma` | [ConcaveOn.locallyLipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-locallylipschitz--a3306a90e14cd11d31209ac9.md) | 230 | `result-track:a3306a90e14cd11d31209ac946e1b59e58028f18aae0cade410f115f2d8be434` |
| 21 | `lemma` | [ConvexOn.locallyLipschitzOn_intrinsicInterior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-locallylipschitzon-intrinsicinterior--1d09ce8195f034e5f1220436.md) | 233 | `result-track:1d09ce8195f034e5f1220436e09b0ca798454b54575f3a70eff07cf89ce3a0b8` |
| 22 | `lemma` | [ConcaveOn.locallyLipschitzOn_intrinsicInterior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-locallylipschitzon-intrinsicinterior--25bdb04eae8b1086d6c95afd.md) | 249 | `result-track:25bdb04eae8b1086d6c95afdb723318b8d2e849faaecbe4a502a6f79f9048c67` |
| 23 | `lemma` | [ConvexOn.continuousOn_intrinsicInterior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-continuouson-intrinsicinterior--cc6a4e3cc41d9b34e7c2fa06.md) | 253 | `result-track:cc6a4e3cc41d9b34e7c2fa061beb083e1168c2497b545384556cf408790f49bb` |
| 24 | `lemma` | [ConcaveOn.continuousOn_intrinsicInterior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-continuouson-intrinsicinterior--bb0eb15f1705fd0e699e9628.md) | 257 | `result-track:bb0eb15f1705fd0e699e96287c13df69b4018e7dcb462113df9fce08d8b8a3f2` |
| 25 | `lemma` | [ConvexOn.continuousOn_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-continuouson-ici--769d7969b4d201af71460141.md) | 263 | `result-track:769d7969b4d201af714601418fd99030c3a25a4486b5ad849056a87add2be292` |
| 26 | `lemma` | [ConcaveOn.continuousOn_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-continuouson-ici--539b34f26f14bf871a1fbd21.md) | 274 | `result-track:539b34f26f14bf871a1fbd21cfbedd941d5a973f8b1a6130e6bb41a4f6b608d2` |
| 27 | `lemma` | [ConvexOn.continuousOn_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-continuouson-iic--65d1386b5224df9f7b4aa062.md) | 279 | `result-track:65d1386b5224df9f7b4aa062f88005881b581ec433d7241cd237a02ff25bde49` |
| 28 | `lemma` | [ConcaveOn.continuousOn_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-continuouson-iic--0cf257af0e3dafdcdb1b142f.md) | 290 | `result-track:0cf257af0e3dafdcdb1b142fb8785b37fdf2ca63e043594aedf2aa7504b647bb` |
| 29 | `lemma` | [ConvexOn.continuousOn_Ioc](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-continuouson-ioc--7d2ed34c2782c5132e9d7af6.md) | 295 | `result-track:7d2ed34c2782c5132e9d7af6404cc9ef60406528d14a46f295ddf052b4bd524d` |
| 30 | `lemma` | [ConcaveOn.continuousOn_Ioc](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-continuouson-ioc--8654f809a0ae12188c561f1e.md) | 307 | `result-track:8654f809a0ae12188c561f1eb4a712959c3fd8d4dcf54a3a4cb8140bc6801da3` |
| 31 | `lemma` | [ConvexOn.continuousOn_Ico](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-continuouson-ico--3316dbb1e73109cc169dab31.md) | 312 | `result-track:3316dbb1e73109cc169dab31e9d4aa35f4c3419402a1b3ae5d0a9e4ce1a0ce32` |
| 32 | `lemma` | [ConcaveOn.continuousOn_Ico](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-continuouson-ico--f660cbe1bedef99a8c080786.md) | 324 | `result-track:f660cbe1bedef99a8c080786fc9338ddcc64f8491e9b59b724a7123597c633eb` |
| 33 | `lemma` | [ConvexOn.continuousOn_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/convexon-continuouson-icc--f1fb1926e67b6e09b0fc3680.md) | 329 | `result-track:f1fb1926e67b6e09b0fc368055f1e3a88d429f5ee88fd6b7aec19633d579d377` |
| 34 | `lemma` | [ConcaveOn.continuousOn_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/declarations/concaveon-continuouson-icc--d91c4b44578393cc41cd6a24.md) | 346 | `result-track:d91c4b44578393cc41cd6a24ec3c2969cc2a40e3b311864d9cec56edf7530ed3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
