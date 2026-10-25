# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StateTransition.Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdec1b827e32b23b3973527c3038855fcb07c371",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdec1b827e32b23b3973527c3038855fcb07c371`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Attr` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SetLike` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/eval--495a2c70eb95479e7c5b0cd3.md) | 40 | `declaration-track:495a2c70eb95479e7c5b0cd319e8894e79b92ab9b249c35944f853f51c72f69c` |
| 2 | `def` | [Reaches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches--3948192cd323485e746bd86f.md) | 46 | `declaration-track:3948192cd323485e746bd86f397f539db550bf6a938a57a77c2ba9393c53695d` |
| 3 | `def` | [Reaches₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches--27995c8c143f7a7d351e3e53.md) | 52 | `declaration-track:27995c8c143f7a7d351e3e53b366d13a1330bae7bd327a481f2fe521cc206926` |
| 4 | `theorem` | [reaches₁_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-eq--2f3b6bbd7b272d6066646899.md) | 55 | `result-track:2f3b6bbd7b272d6066646899be1e22958a366f76057054ba02d505d3ea8d3e8e` |
| 5 | `theorem` | [reaches_total](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-total--0276b7ae9866a3917de422b9.md) | 59 | `result-track:0276b7ae9866a3917de422b97968de9fec5828126c5f6ffb37482d2669658a52` |
| 6 | `theorem` | [reaches₁_fwd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-fwd--560c4d2846151f96ff1f36ad.md) | 63 | `result-track:560c4d2846151f96ff1f36adbaa3d3f1094d252b2a1dadc51b21e6692ab57c4c` |
| 7 | `def` | [Reaches₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches--42d595280e12adedfb3a9a49.md) | 71 | `declaration-track:42d595280e12adedfb3a9a491667f2e1e711e49b17d5da96092d64ac82456b85` |
| 8 | `theorem` | [Reaches₀.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-trans--3dc87c7fbdadd406f6018d76.md) | 74 | `result-track:3dc87c7fbdadd406f6018d76a86a05e18563c1254f0e7aed99142872360dd6d1` |
| 9 | `theorem` | [Reaches₀.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-refl--5400ad8e0462255420e1cbbd.md) | 79 | `result-track:5400ad8e0462255420e1cbbd5ec44e0d4aad30fb67702570a391ee61deb50a9e` |
| 10 | `theorem` | [Reaches₀.single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-single--0a304588f94f67aff39b3909.md) | 82 | `result-track:0a304588f94f67aff39b3909760aaa7d1e7ecb40a7948752a06f207397c7624f` |
| 11 | `theorem` | [Reaches₀.head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-head--6519fcd5aa20d1b69521cf22.md) | 85 | `result-track:6519fcd5aa20d1b69521cf22b271558f98381afe9b610a11a55d1bed8acedcf6` |
| 12 | `theorem` | [Reaches₀.tail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-tail--40f07554df1cefbdbe207892.md) | 89 | `result-track:40f07554df1cefbdbe20789201554053b172b99ab3f0fefd2913da06eaa36fa6` |
| 13 | `theorem` | [reaches₀_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-eq--6c30a16055ec595e9e2e6839.md) | 93 | `result-track:6c30a16055ec595e9e2e68395ca651b97e6b92c122d522295bc947409abf7a99` |
| 14 | `theorem` | [Reaches₁.to₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-to--d5e0b401f9a109aae65ed8ed.md) | 96 | `result-track:d5e0b401f9a109aae65ed8ed79a65813f6f0b8e0e3586f50ae3b464cfc577748` |
| 15 | `theorem` | [Reaches.to₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-to--4415cf061fb2befbcc59d86b.md) | 99 | `result-track:4415cf061fb2befbcc59d86bff216580f5fab5d4fce36cfb97be59d942a7071d` |
| 16 | `theorem` | [Reaches₀.tail'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-tail--b99187fc9e3f103fb2a563d2.md) | 102 | `result-track:b99187fc9e3f103fb2a563d2e3d4912c74fca1c32221d9355757e59f56206690` |
| 17 | `def` | [evalInduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/evalinduction--1ae312e41b472601df413bd6.md) | 111 | `declaration-track:1ae312e41b472601df413bd66c9770473140548f6ff88bc371ce2e6bc6b8d6bc` |
| 18 | `theorem` | [mem_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/mem-eval--4fde01feee5aa58163977f9a.md) | 116 | `result-track:4fde01feee5aa58163977f9ad7ef5b7f5dbed51b0bc0cda6f14fec9469740cb5` |
| 19 | `theorem` | [eval_maximal₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/eval-maximal--0c93a038e2403465f893dbe8.md) | 135 | `result-track:0c93a038e2403465f893dbe84da8be8b22c41d16458ae3b56df19593f0637d9c` |
| 20 | `theorem` | [eval_maximal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/eval-maximal--070fcf74ea290ed5ddb01d3c.md) | 141 | `result-track:070fcf74ea290ed5ddb01d3c8381c858c43d526c37a057e697c6d52485485993` |
| 21 | `theorem` | [reaches_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/reaches-eval--117bec0701f4fb266efb4d2d.md) | 145 | `result-track:117bec0701f4fb266efb4d2d6ce96163e33ad36a4a78eebcbc383d01f23c1cd0` |
| 22 | `def` | [Respects](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/respects--f677c45c84e4085646fdfe46.md) | 158 | `declaration-track:f677c45c84e4085646fdfe464dfdcb10f7e82a8f3bbdbfdc29c23babad86854b` |
| 23 | `theorem` | [tr_reaches₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/tr-reaches--377b90000c0d1cdb018e1e14.md) | 163 | `result-track:377b90000c0d1cdb018e1e14e216687e55e3262a20a2519c71daf4e800759409` |
| 24 | `theorem` | [tr_reaches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/tr-reaches--5c149a49db365d34a37b3a66.md) | 176 | `result-track:5c149a49db365d34a37b3a669e7564408a70177909259016d34a6791dfa09300` |
| 25 | `theorem` | [tr_reaches_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/tr-reaches-rev--5e365d62c180a1b2030ffac3.md) | 183 | `result-track:5e365d62c180a1b2030ffac3f927e0eaf3a1a9cd0aee320fdb131c63a4693b24` |
| 26 | `theorem` | [tr_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/tr-eval--07735b660a73b1b60d72fa92.md) | 203 | `result-track:07735b660a73b1b60d72fa92965bea6c52df7265d454f11e70a93ced5005920e` |
| 27 | `theorem` | [tr_eval_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/tr-eval-rev--cceaed51d4b57699069c0bd9.md) | 210 | `result-track:cceaed51d4b57699069c0bd99e41d10123a00ec9c6c16e85fc4856c4fc1f3387` |
| 28 | `theorem` | [tr_eval_dom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/tr-eval-dom--7199c69475d6e57f227bb100.md) | 224 | `result-track:7199c69475d6e57f227bb100d04029f41ac337938eab649e2fd75b421cb5c99d` |
| 29 | `def` | [FRespects](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/frespects--fbd969417cc7f1af092b6a4a.md) | 234 | `declaration-track:fbd969417cc7f1af092b6a4a99191aa4f1022bfbef6d3bdc860ca255a6c597dd` |
| 30 | `theorem` | [frespects_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/frespects-eq--9bd1a7c6f0205de618002c00.md) | 238 | `result-track:9bd1a7c6f0205de618002c007093065e71090716767f3b1445c38f69e8488b90` |
| 31 | `theorem` | [fun_respects](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/fun-respects--097b7a45c18918a7ea7f229a.md) | 243 | `result-track:097b7a45c18918a7ea7f229a8f4cbf81d48dae68f041f7e8b01734b6cdaade3b` |
| 32 | `theorem` | [tr_eval'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/tr-eval--d210ae1e2d1289e94a0cb08d.md) | 248 | `result-track:d210ae1e2d1289e94a0cb08db9d66d7b85498a70af63098364021cad981053c5` |
| 33 | `structure` | [EvalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/evalsto--06c733754d5d2a3bf5c79833.md) | 263 | `declaration-track:06c733754d5d2a3bf5c7983342a2473c4c73952e2503c41c6f55172d696d5a5d` |
| 34 | `structure` | [EvalsToInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/evalstointime--7db07bee97ec4796fd04a0ed.md) | 273 | `declaration-track:7db07bee97ec4796fd04a0ed9cce2fba75710c82682f10d76b04b768ba3881b6` |
| 35 | `def` | [EvalsTo.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/evalsto-refl--44153a4d2578178f241cf93d.md) | 278 | `declaration-track:44153a4d2578178f241cf93daa9edc5d19ce5311057c1f2bad2817fcdca088f9` |
| 36 | `def` | [EvalsTo.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/evalsto-trans--ed59555620c331831caa91ab.md) | 283 | `declaration-track:ed59555620c331831caa91ab37215141d940f6e1dbbd7705b00b627ff04b1801` |
| 37 | `def` | [EvalsToInTime.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/evalstointime-refl--e991ae2f85a6968ccc627958.md) | 288 | `declaration-track:e991ae2f85a6968ccc62795841fd7c8ea5b3f14954aec82114e773e2c000bb0e` |
| 38 | `def` | [EvalsToInTime.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/declarations/evalstointime-trans--01eaab1fa29a6dd2aaaff400.md) | 293 | `declaration-track:01eaab1fa29a6dd2aaaff4002c7d1a773ecd21fec4ae6da69af839fe84e79087` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
