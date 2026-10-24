# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f8959f19c0591c13ea7198090b0c8881d13c2a7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f8959f19c0591c13ea7198090b0c8881d13c2a7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Char` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ltb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/ltb--bb29e63ba9e641f3a7f9b057.md) | 28 | `declaration-track:bb29e63ba9e641f3a7f9b0575fd723f323c5f94691e4875780fb6f1c746de208` |
| 2 | `instance` | [LT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/lt--1bce3a05651d30b662f5ee29.md) | 38 | `declaration-track:1bce3a05651d30b662f5ee2979a17d741d3769117146afb976da7b01cead2dab` |
| 3 | `instance` | [decidableLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/decidablelt--6a49406a083970f1333a305d.md) | 42 | `declaration-track:6a49406a083970f1333a305db72e5c0163374194685482601fd5b97820837abe` |
| 4 | `def` | [ltb.inductionOn.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/ltb-inductionon--ee46000167e790c9ab05dee0.md) | 48 | `declaration-track:ee46000167e790c9ab05dee0763699b5ace0bbb1a0af57ac2954cf198ea562d8` |
| 5 | `theorem` | [ltb_cons_addChar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/ltb-cons-addchar--c7a22fff0a0388ca2db21f9a.md) | 66 | `result-track:c7a22fff0a0388ca2db21f9a5455b53e27d6718665b85b14cbbd403948ee2393` |
| 6 | `theorem` | [lt_iff_toList_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/lt-iff-tolist-lt--8692b3c29c270c56e76e6c57.md) | 83 | `result-track:8692b3c29c270c56e76e6c574868a162b1170839ddd5e3c4037f7e375d074833` |
| 7 | `instance` | [LE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/le--7b5dc6c661c3f7ee0404357a.md) | 109 | `declaration-track:7b5dc6c661c3f7ee0404357a193a7fc63f0984d651b4883c9a362c86e5fd3db9` |
| 8 | `instance` | [decidableLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/decidablele--713a30b4bf137fce32fca28e.md) | 113 | `declaration-track:713a30b4bf137fce32fca28e9800f25ccb0ff884918778b3ca75fac0f2004676` |
| 9 | `theorem` | [le_iff_toList_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/le-iff-tolist-le--90b992b6ca75817d616ed5b9.md) | 119 | `result-track:90b992b6ca75817d616ed5b9a7f5aef2af598d9c174db2eabb353a18283c873d` |
| 10 | `theorem` | [toList_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/tolist-inj--5f45394f92077fb6e0fc5d9b.md) | 123 | `result-track:5f45394f92077fb6e0fc5d9bc40d5ba0ec3204afbd975a4211613e0697a84fcf` |
| 11 | `theorem` | [nil_asString_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/nil-asstring-eq-empty--69ea95b8d7dcb3b25b64152a.md) | 127 | `result-track:69ea95b8d7dcb3b25b64152a27eb56bb0854567b4a9c447fb3421bf39cfbad1a` |
| 12 | `theorem` | [toList_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/tolist-empty--a89432697943a27738e78edc.md) | 132 | `result-track:a89432697943a27738e78edcf4d04247f1219e1db6771ea5ae299978bf1a886c` |
| 13 | `theorem` | [asString_inv_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/asstring-inv-tolist--5340d8f40293db4ffb75407e.md) | 136 | `result-track:5340d8f40293db4ffb75407e0aba1414e97298f61961f6733bdb7152555048d0` |
| 14 | `theorem` | [toList_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/tolist-nonempty--f1fcb982558cb52b1898e566.md) | 142 | `result-track:f1fcb982558cb52b1898e566ed1a8f10eb31395d059ba69040d754a7da89012f` |
| 15 | `theorem` | [head_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/head-empty--a138acc731fd1ca510219a52.md) | 152 | `result-track:a138acc731fd1ca510219a52252e610410d66d3bdad8dfcdc243e60fc537b4db` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/instance--14caed38af14cda0f38f6b14.md) | 158 | `declaration-track:14caed38af14cda0f38f6b14785f5d873afca34e5eb359d0e3368b57203d0a0a` |
| 17 | `theorem` | [List.toList_inv_asString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/list-tolist-inv-asstring--b282f1e85557f5b376c062a3.md) | 182 | `result-track:b282f1e85557f5b376c062a3e180250f1cf5d35c246c63d22153e54493b57f4d` |
| 18 | `theorem` | [List.length_asString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/list-length-asstring--83140c92e8631a5fc22be742.md) | 187 | `result-track:83140c92e8631a5fc22be7422d3d2727674efb5f43afc79eff1f01e920e73e36` |
| 19 | `theorem` | [List.asString_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/list-asstring-inj--311472f5f6dcf5c762cb9700.md) | 192 | `result-track:311472f5f6dcf5c762cb97009bdc56e077228c53cfed7620fbcc582c0b8f33ff` |
| 20 | `theorem` | [String.length_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/string-length-data--813c5fbaa68c91b7738ef55b.md) | 198 | `result-track:813c5fbaa68c91b7738ef55b610d7d4858c30490e7a1b5cd2f0203314a6b2e58` |
| 21 | `theorem` | [List.asString_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/declarations/list-asstring-eq--80a468d0768be0bbb426286e.md) | 202 | `result-track:80a468d0768be0bbb426286e7e89fd73abd98b8f28d2417f9450dd9049ad9f81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
