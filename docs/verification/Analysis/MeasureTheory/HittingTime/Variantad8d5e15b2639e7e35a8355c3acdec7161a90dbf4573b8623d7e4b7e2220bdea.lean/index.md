# Verification target: GRWTSK.Analysis.MeasureTheory.HittingTime.Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfe6c576b7e3b62fbec41ee5f773b8315602c982",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfe6c576b7e3b62fbec41ee5f773b8315602c982`.

Source path: `GRWTSK/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean.json)

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
| 1 | `def` | [hittingBtwn](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn--7bcee211ed881ac3adc8de5c.md) | 56 | `declaration-track:7bcee211ed881ac3adc8de5cf1dfb022eab595496c35ea474c3cfc7296da17e6` |
| 2 | `def` | [hittingAfter](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter--01a701ea8e298c941f6171e1.md) | 65 | `declaration-track:01a701ea8e298c941f6171e16c2f77a41a4c7811c038c0cfef444dccc9257dec` |
| 3 | `theorem` | [hittingBtwn_def](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-def--1860eb94ab053fb17c878641.md) | 70 | `result-track:1860eb94ab053fb17c878641a3d1cb58a5586bf7e72c68cab843f65173c4de23` |
| 4 | `lemma` | [hittingAfter_def](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-def--fa3943d5525f8bb761f8982c.md) | 76 | `result-track:fa3943d5525f8bb761f8982c7c8052ca23b5ef5e270f87c11c4c8a9c1a56861b` |
| 5 | `lemma` | [hittingBtwn_empty](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-empty--83b038eeba47da082855c180.md) | 82 | `result-track:83b038eeba47da082855c180038805e65de0ce6f93e72b4b5c5ee2e114ee4797` |
| 6 | `lemma` | [hittingAfter_empty](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-empty--c845758ad46f99d7d747ba84.md) | 85 | `result-track:c845758ad46f99d7d747ba842f9b97e4e3c5c88164036534609ecb2d81976704` |
| 7 | `lemma` | [hittingBtwn_univ](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-univ--23b915419bcbaf672884a176.md) | 88 | `result-track:23b915419bcbaf672884a1761a4ac05db4484615d8c31871b7b9ccb1d33e373d` |
| 8 | `lemma` | [hittingAfter_univ](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-univ--7a6c0b387730ad8291e9538e.md) | 95 | `result-track:7a6c0b387730ad8291e9538ee84987e195d490be937698a150bf965647a5ede6` |
| 9 | `theorem` | [hittingBtwn_of_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-of-lt--91fdaf119d34b9f1b77f99df.md) | 110 | `result-track:91fdaf119d34b9f1b77f99dfeed82b8bc6d427f7e02268155aaae402175e0bff` |
| 10 | `theorem` | [hittingBtwn_le](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-le--2d7a22eb1b023b16be30e397.md) | 113 | `result-track:2d7a22eb1b023b16be30e397e449e0d4923fc4615544f86213b2901146763776` |
| 11 | `theorem` | [notMem_of_lt_hittingBtwn](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/notmem-of-lt-hittingbtwn--7b0716dc62509b8a25b71000.md) | 121 | `result-track:7b0716dc62509b8a25b710004d4bb1269a6d1054cfd1ddec46889ff2d1c9b8b7` |
| 12 | `theorem` | [notMem_of_lt_hittingAfter](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/notmem-of-lt-hittingafter--aa59a1129a0a14c3e87a10c5.md) | 129 | `result-track:aa59a1129a0a14c3e87a10c574eb2b83817c2660969e7480e09a1eb0c47b5eb9` |
| 13 | `theorem` | [hittingBtwn_eq_end_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-eq-end-iff--118dd4aaa7cd37bb088bfc0d.md) | 135 | `result-track:118dd4aaa7cd37bb088bfc0da2bb87e729ec06a7063a975defed5387676f8348` |
| 14 | `lemma` | [hittingAfter_eq_top_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-eq-top-iff--cdfe3e7c90a6a992cef96c59.md) | 140 | `result-track:cdfe3e7c90a6a992cef96c59649506b8c7e34f9680bfef8e11f87cdf3005683d` |
| 15 | `theorem` | [hittingBtwn_of_le](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-of-le--80bd72781689496bf44e5e60.md) | 143 | `result-track:80bd72781689496bf44e5e607a874011a84978685bea13c5aa8616e021130c30` |
| 16 | `theorem` | [le_hittingBtwn](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/le-hittingbtwn--e9f5871991e0fc7e65d50314.md) | 153 | `result-track:e9f5871991e0fc7e65d503144a9ef3d85952f85817d7512ef2b0c2e38c4fae87` |
| 17 | `lemma` | [le_hittingAfter](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/le-hittingafter--66a8fb40b71aa17bb483d03f.md) | 163 | `result-track:66a8fb40b71aa17bb483d03fbd043ded0d9d4d1f0cb58c81cb70579d7178a76e` |
| 18 | `theorem` | [le_hittingBtwn_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/le-hittingbtwn-of-exists--ca5d3d137a7e144352160bdb.md) | 169 | `result-track:ca5d3d137a7e144352160bdb13b2cf198af662dc6f4ec91507034ce1edae2eec` |
| 19 | `theorem` | [hittingBtwn_mem_Icc](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-mem-icc--75badae0694604c466027581.md) | 176 | `result-track:75badae0694604c4660275814132923a9734302fc211d0100859d16c435d7b9e` |
| 20 | `theorem` | [hittingBtwn_mem_set](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-mem-set--9b80683209108d3e43ff649b.md) | 179 | `result-track:9b80683209108d3e43ff649bde6e23adc904bcfa12264ec3552df4d19747dc94` |
| 21 | `lemma` | [hittingAfter_mem_set](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-mem-set--b2165a2fdb40fc79211492e9.md) | 189 | `result-track:b2165a2fdb40fc79211492e9dc669dbc6ae3c196595d0032f1fa59b06b7ddecb` |
| 22 | `theorem` | [hittingBtwn_mem_set_of_hittingBtwn_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-mem-set-of-hittingbtwn-lt--3284a20a5667adaaef7e8579.md) | 197 | `result-track:3284a20a5667adaaef7e8579f87af0b8a9e58c24391bc8a6011989d12c8e460e` |
| 23 | `lemma` | [hittingAfter_mem_set_of_ne_top](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-mem-set-of-ne-top--6e9ba68391870f6b6f983f30.md) | 205 | `result-track:6e9ba68391870f6b6f983f30b82eda71e9a617990f3782a8787ad0233b7fbaac` |
| 24 | `theorem` | [hittingBtwn_le_of_mem](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-le-of-mem--87d893d02cdd1cec0ff96539.md) | 211 | `result-track:87d893d02cdd1cec0ff9653926e87d2fb576fcae3b5217b48b57a607ca08530f` |
| 25 | `lemma` | [hittingAfter_le_of_mem](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-le-of-mem--f03c5f60bac6eb04531fa9b4.md) | 217 | `result-track:f03c5f60bac6eb04531fa9b49a9cd30a8b0415bffe3534f10a0b11edb67c53ec` |
| 26 | `theorem` | [hittingBtwn_le_iff_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-le-iff-of-exists--32204adb55ea1c0ff0628750.md) | 223 | `result-track:32204adb55ea1c0ff062875035bb5aa7d1ea7aa7bceac036d8966c88c42db115` |
| 27 | `lemma` | [hittingAfter_le_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-le-iff--123e49145b9b88b937cd6f36.md) | 238 | `result-track:123e49145b9b88b937cd6f3663979bdd4e0ba7e9f99f814f2a27551c5a31fa19` |
| 28 | `theorem` | [hittingBtwn_le_iff_of_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-le-iff-of-lt--2cc64526d92e11af5a35f237.md) | 250 | `result-track:2cc64526d92e11af5a35f2378f381ccffdf0896f46cf3965da02229917909011` |
| 29 | `theorem` | [hittingBtwn_lt_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-lt-iff--293d23d11362777d1058f58b.md) | 259 | `result-track:293d23d11362777d1058f58b144fad6c18a48c10040fd579a43709ea7e9fd160` |
| 30 | `lemma` | [hittingAfter_lt_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-lt-iff--a6b1e18b95fe826383992de5.md) | 279 | `result-track:a6b1e18b95fe826383992de514b1f75e28b428a0f4ffa786be2eb29f1bf5f5e6` |
| 31 | `theorem` | [hittingBtwn_eq_hittingBtwn_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-eq-hittingbtwn-of-exists--05ba8389920e46d9d497630a.md) | 301 | `result-track:05ba8389920e46d9d497630a12fab2d960095c5039424b0a629fb36d7a15735e` |
| 32 | `lemma` | [hittingBtwn_anti](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-anti--3125753e0105fce7424833fd.md) | 315 | `result-track:3125753e0105fce7424833fda7d593fb121b19e92994e4d4c0494c494a215982` |
| 33 | `lemma` | [hittingAfter_anti](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-anti--e236c9868a35f396ec1d4750.md) | 328 | `result-track:e236c9868a35f396ec1d47506e2a11aa7f90a8acceeeb8edf9ae170d4df5f360` |
| 34 | `lemma` | [hittingBtwn_apply_anti](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-apply-anti--72dd67aecae1557ebb40e638.md) | 340 | `result-track:72dd67aecae1557ebb40e638ef8bcb2f231100b7dd2e1b52cba52a85b12b51c8` |
| 35 | `lemma` | [hittingAfter_apply_anti](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-apply-anti--656ae99f77d6ed23384bd439.md) | 343 | `result-track:656ae99f77d6ed23384bd4396cbdd00bd7383cd2d8ddd8a26dd91ff265d466e8` |
| 36 | `theorem` | [hittingBtwn_mono_right](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-mono-right--c82f7d3e249d7599c272b9d1.md) | 347 | `result-track:c82f7d3e249d7599c272b9d10b95bae97bf38f4d7b0cbefdc6f1048ab5ebab4b` |
| 37 | `lemma` | [hittingBtwn_mono_left](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-mono-left--1201ed3a662d420facf0f2d2.md) | 361 | `result-track:1201ed3a662d420facf0f2d2c6fccdb74695d6667597e1f693a65b752a18b0c6` |
| 38 | `lemma` | [hittingAfter_mono](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-mono--61298f045868a7d99182901a.md) | 375 | `result-track:61298f045868a7d99182901a0331e6272ce997471d023812b973ac7638af0e5d` |
| 39 | `lemma` | [hittingBtwn_apply_mono_right](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-apply-mono-right--1f25ed25e00c3ce344dbed82.md) | 387 | `result-track:1f25ed25e00c3ce344dbed82046b640453b4847c74e6a8c66a962a702ef5ec1e` |
| 40 | `lemma` | [hittingBtwn_apply_mono_left](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-apply-mono-left--f6edf29f9abf1b87ec1694c1.md) | 390 | `result-track:f6edf29f9abf1b87ec1694c1464efd31ffd017317e00a61b2e98995e3194cc80` |
| 41 | `lemma` | [hittingAfter_apply_mono](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-apply-mono--d2bb960e0eef18ddfa0b7718.md) | 393 | `result-track:d2bb960e0eef18ddfa0b77185278b1c986455fb413800568623fbe8cd1ab0dbc` |
| 42 | `theorem` | [Adapted.isStoppingTime_hittingBtwn](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/adapted-isstoppingtime-hittingbtwn--43b0bc7359aabbaa130c58ce.md) | 399 | `result-track:43b0bc7359aabbaa130c58ced65fad4208cbf8001923c7afe5b489f6bc6173a8` |
| 43 | `theorem` | [Adapted.isStoppingTime_hittingAfter](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/adapted-isstoppingtime-hittingafter--df80627f88a2e077e16229e2.md) | 412 | `result-track:df80627f88a2e077e16229e2474519a9a53a932ecdcf0616b74e3f7179963009` |
| 44 | `theorem` | [stoppedValue_hittingBtwn_mem](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/stoppedvalue-hittingbtwn-mem--e1e0ecca1af5aef488c846cb.md) | 422 | `result-track:e1e0ecca1af5aef488c846cb19b9deab7c08ab6c644918fe596a4658ce862e3f` |
| 45 | `theorem` | [Adapted.isStoppingTime_hittingBtwn_isStoppingTime](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/adapted-isstoppingtime-hittingbtwn-isstoppingtime--8da719b4b9a3217b18c894a0.md) | 433 | `result-track:8da719b4b9a3217b18c894a047944ebb6ff6fd124afda4d8dee2eed3aa185403` |
| 46 | `theorem` | [hittingBtwn_eq_sInf](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-eq-sinf--4cd1467446bc73a9bc33dcb7.md) | 469 | `result-track:4cd1467446bc73a9bc33dcb72802c13123aa0b58eca8b97824c5ae8924fc003f` |
| 47 | `lemma` | [hittingAfter_eq_sInf](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-eq-sinf--a41a8467201a75fe41b2ea30.md) | 478 | `result-track:a41a8467201a75fe41b2ea304943da4d47b1ae85f77ec561dff0a0c91fa1eaef` |
| 48 | `theorem` | [hittingBtwn_bot_le_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingbtwn-bot-le-iff--9e2844e4811fca41bdb37cac.md) | 491 | `result-track:9e2844e4811fca41bdb37cacd83469bfa44cc149e45e852e69dedde91adf926d` |
| 49 | `theorem` | [hittingAfter_bot_le_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/declarations/hittingafter-bot-le-iff--e8be6bd1efe6e7a9faea4297.md) | 500 | `result-track:e8be6bd1efe6e7a9faea429745969df1e907565116805be1c5eae149803762c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
