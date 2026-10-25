# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Regular.Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79dea55ae90aa5bcb96f12ec735a6b4272826e93",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79dea55ae90aa5bcb96f12ec735a6b4272826e93`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.GaloisConnection` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular--84ba3e0f40dafbf88672e243.md) | 50 | `declaration-track:84ba3e0f40dafbf88672e243be5769a85d3e4a41f26efc25adaa60eefcdd379e` |
| 2 | `theorem` | [IsRegular.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular-eq--dc66ead2611abef1f6b24a1b.md) | 54 | `result-track:dc66ead2611abef1f6b24a1bef01be669639b4b7ea3ebc71a5938b6ea9c98d7b` |
| 3 | `instance` | [IsRegular.decidablePred](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular-decidablepred--fc04f9963c5b399b0929fe7a.md) | 58 | `declaration-track:fc04f9963c5b399b0929fe7a8a532b56aa9cde2e3b39e9d3d1726f207434c6a5` |
| 4 | `theorem` | [isRegular_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular-bot--6e7c6b63de598c2164783dd6.md) | 68 | `result-track:6e7c6b63de598c2164783dd6213d6cb4bf3f3c5728a65bb4d38609d4b65f34fd` |
| 5 | `theorem` | [isRegular_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular-top--aa86a6791d5963f5cbe1f74c.md) | 71 | `result-track:aa86a6791d5963f5cbe1f74c7e844e41f3dc16c3f2b356965e221ec6ccf62b6e` |
| 6 | `theorem` | [IsRegular.inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular-inf--20ec3789ba3b8877dd3f87c8.md) | 74 | `result-track:20ec3789ba3b8877dd3f87c85c7a9e635c27c58a189f28e208936f311466cd2e` |
| 7 | `theorem` | [IsRegular.himp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular-himp--9913488cf3d6b7f7006a3b0d.md) | 78 | `result-track:9913488cf3d6b7f7006a3b0d62d5f2e56076b8a2a248d93faf72db8e9b9b8d87` |
| 8 | `theorem` | [isRegular_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular-compl--0233a452823946dba8547a57.md) | 82 | `result-track:0233a452823946dba8547a57e875bdc6b74b8214a2b552b3d2cc04b5265998d0` |
| 9 | `theorem` | [IsRegular.disjoint_compl_left_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular-disjoint-compl-left-iff--f79bfbf6715722790701946e.md) | 86 | `result-track:f79bfbf6715722790701946ebbeaca5865ef81995122d4a73f755dca4dee649c` |
| 10 | `theorem` | [IsRegular.disjoint_compl_right_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular-disjoint-compl-right-iff--f4e3c3a0b31fc287530ece9f.md) | 90 | `result-track:f4e3c3a0b31fc287530ece9fc273bf51c0d49f27dd508fbe6edd8985858cc1f6` |
| 11 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsRegular.Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.BooleanAlgebra.ofRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-isregular-va--abdd730acf38caa8684b9eac.md) | 97 | `declaration-track:abdd730acf38caa8684b9eac1d5b52fd58d5d4b80313e399a292e20d3c99f7ae` |
| 12 | `def` | [Regular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/regular--ebdf742439e4ba407665fbaf.md) | 112 | `declaration-track:ebdf742439e4ba407665fbafa2529cd40f60ede4be468991a434fa260493d6ae` |
| 13 | `def` | [val](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/val--84fe57e608eaa1a1411b6dc5.md) | 122 | `declaration-track:84fe57e608eaa1a1411b6dc53661893732b60d1b2036f66ca7a0a9ae161fd23f` |
| 14 | `theorem` | [prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/prop--64fd05e9feff8c96b5720e60.md) | 125 | `result-track:64fd05e9feff8c96b5720e60b8511e4e4931dfa79a8304fe9c33ac508d8c1922` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/instance--2fd32a7626fbf489b3129bce.md) | 127 | `declaration-track:2fd32a7626fbf489b3129bce0827245acf9b62cef78813fab3e28694538c2f8c` |
| 16 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-injective--24d6178637b485b135799f0b.md) | 129 | `result-track:24d6178637b485b135799f0b3d1a3758310004318587c3ec79dd13f3b36b4151` |
| 17 | `theorem` | [coe_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-inj--6c3e19050f599188af33c51f.md) | 134 | `result-track:6c3e19050f599188af33c51f9637de8fb91d537e6584cf0eecd0fb0cf34239c2` |
| 18 | `instance` | [top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/top--0169698421c8724620487593.md) | 138 | `declaration-track:0169698421c872462048759325e699133bf2ce23c4dc3fd1c260295b443c8a9e` |
| 19 | `instance` | [bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/bot--9099fc35055d96cce6142e7e.md) | 141 | `declaration-track:9099fc35055d96cce6142e7eb3ba7f816641829bf218178db9649ab6fabde148` |
| 20 | `instance` | [inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/inf--b5997ae3d5961ed948578bca.md) | 144 | `declaration-track:b5997ae3d5961ed948578bca64da76aae7cd37ab8e1037059ef815cb4b2491e4` |
| 21 | `instance` | [himp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/himp--0f96651a11d0dbe812863787.md) | 147 | `declaration-track:0f96651a11d0dbe81286378747062a7f69782b1ee2369751788adf849db1c4e9` |
| 22 | `instance` | [hasCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/hascompl--3e6cc18ea01bd9a1df949e7f.md) | 150 | `declaration-track:3e6cc18ea01bd9a1df949e7fec0ae9f3603eae2a40d663dd8a6a245fd99e9b74` |
| 23 | `theorem` | [coe_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-top--0cf3df298cfce10e8fa8e6c0.md) | 154 | `result-track:0cf3df298cfce10e8fa8e6c09d069171aff79e27b2bba571114fe193aecfcfa5` |
| 24 | `theorem` | [coe_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-bot--0d06452aa7a51384560ab6f2.md) | 159 | `result-track:0d06452aa7a51384560ab6f2d605f53202a94e38bc1a5d1bcf1e71257293e0bd` |
| 25 | `theorem` | [coe_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-inf--0a4111c65c479a7f5c375d76.md) | 164 | `result-track:0a4111c65c479a7f5c375d7614b4776d05e9f2da272ed5271e2b3276a2b55b75` |
| 26 | `theorem` | [coe_himp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-himp--adfba2e0f2b93f0ba2ecaaaa.md) | 169 | `result-track:adfba2e0f2b93f0ba2ecaaaa076c4547789a356c9086d83f2e0ea377c21c70a0` |
| 27 | `theorem` | [coe_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-compl--d87ca49a7b49c38c579dc526.md) | 174 | `result-track:d87ca49a7b49c38c579dc5266299bce3baaa9b72e773befc7e5448be53c062d5` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/instance--dba09690bff0417897d7503d.md) | 178 | `declaration-track:dba09690bff0417897d7503dbb8993877cf8c031bae7c81f9500e8bb79f15747` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/instance--94864825c196a23562ab52fb.md) | 181 | `declaration-track:94864825c196a23562ab52fb3c9bdb733906e529a39ffe260aa750d9a952ef29` |
| 30 | `instance` | [boundedOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/boundedorder--31eef24987cdff8ceb6c51fe.md) | 184 | `declaration-track:31eef24987cdff8ceb6c51fe6dd49cd900458375cc4466e277d86f58bf98653f` |
| 31 | `theorem` | [coe_le_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-le-coe--4c2eb4c01fb90f7d9f0f0dc3.md) | 188 | `result-track:4c2eb4c01fb90f7d9f0f0dc3fbd7f45eeacd8af5cc211f7b5dda451fc15e7723` |
| 32 | `theorem` | [coe_lt_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-lt-coe--8490a2a410f9238baa8c9032.md) | 193 | `result-track:8490a2a410f9238baa8c903287de270e4812b3465d900d690d6127c549f99239` |
| 33 | `def` | [toRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/toregular--2f0f2ca29897f3e4de76de7c.md) | 198 | `declaration-track:2f0f2ca29897f3e4de76de7c01fc27627a02480146d97c8c975c0f2179fd8baf` |
| 34 | `theorem` | [coe_toRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-toregular--213b2e50c19c9481a7868574.md) | 204 | `result-track:213b2e50c19c9481a7868574300f4d372c24a8917726699a26e3c1a0c5858076` |
| 35 | `theorem` | [toRegular_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/toregular-coe--cde606276292133952e0d0f6.md) | 209 | `result-track:cde606276292133952e0d0f6d3d49613d754d281fdf1a3ee830d4103488923ab` |
| 36 | `def` | [gi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/gi--f77c9dcb92f68d7dff399d09.md) | 214 | `declaration-track:f77c9dcb92f68d7dff399d0984cb2c127849fa4c59f2d3b5872afa4b3fad63f9` |
| 37 | `instance` | [lattice](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/lattice--66b60969f3bb1222fd06c290.md) | 224 | `declaration-track:66b60969f3bb1222fd06c290b54410f223aa3eb3c3d4fb391400646294f0ed7f` |
| 38 | `theorem` | [coe_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-sup--c5aec230dda2e34b7fa013af.md) | 228 | `result-track:c5aec230dda2e34b7fa013afb0da893c9d0bc30170e2951f67c9a760d3c536b0` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/instance--438d5c02882eaeaf6a0e8b55.md) | 232 | `declaration-track:438d5c02882eaeaf6a0e8b55547797693e4bd9f3dc506b4ef9cac58d1545cd11` |
| 40 | `theorem` | [coe_sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/coe-sdiff--877a6d65d3db87eca1374b87.md) | 254 | `result-track:877a6d65d3db87eca1374b873918fea6354dc5e9740ab846e1d2fd12e1f94fb4` |
| 41 | `theorem` | [isRegular_of_boolean](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular-of-boolean--0e220c0797cc6f9b3918b383.md) | 264 | `result-track:0e220c0797cc6f9b3918b3831d3f46bb6e36fac652d416fb547a32d411b4f3ff` |
| 42 | `theorem` | [isRegular_of_decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/declarations/isregular-of-decidable--c9923e1008416c0b589992fa.md) | 270 | `result-track:c9923e1008416c0b589992fa1672a56e80a7d56f9a04ebcb40894b803e9106f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
