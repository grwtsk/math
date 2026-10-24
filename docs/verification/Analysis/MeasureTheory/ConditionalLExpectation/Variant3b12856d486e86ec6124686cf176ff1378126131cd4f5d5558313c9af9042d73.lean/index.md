# Verification target: GRWTSK.Analysis.MeasureTheory.ConditionalLExpectation.Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09bf39056775d3f28d8703d3e7a03950392b4875",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09bf39056775d3f28d8703d3e7a03950392b4875`.

Source path: `GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condLExpUnexpander](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexpunexpander--7f6deb15548bccf3d34b92c0.md) | 96 | `declaration-track:7f6deb15548bccf3d34b92c0f093af30e447375938e70a722ad8462cf9def5a7` |
| 2 | `theorem` | [condLExp_of_not_le](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-of-not-le--fd8f14250caf7debd237d2e6.md) | 107 | `result-track:fd8f14250caf7debd237d2e69c91c833ec420a812a413c4e28bd2d133735e625` |
| 3 | `theorem` | [condLExp_of_not_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-of-not-sigmafinite--1de9ce2426fe75e6fa32e9b1.md) | 110 | `result-track:1de9ce2426fe75e6fa32e9b139fbb149c6b5e3d984118d30cdedd833365e9f62` |
| 4 | `theorem` | [condLExp_eq_self](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-eq-self--9e2f919fc9494ce03187be81.md) | 113 | `result-track:9e2f919fc9494ce03187be81058fbf5124d8e6107438a40add084eecf68e2a89` |
| 5 | `theorem` | [condLExp_of_not_sub_sigma_measurable](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-of-not-sub-sigma-measurable--4be09ffc05db83c6dfcdcba4.md) | 117 | `result-track:4be09ffc05db83c6dfcdcba4871e11b28cfc052a761420a9953d46b1297c5d6f` |
| 6 | `theorem` | [measurable_condLExp](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/measurable-condlexp--a7ebc56a2679e832e1302025.md) | 123 | `result-track:a7ebc56a2679e832e1302025db03ba2f18126654b221469fd7921c2a96467a20` |
| 7 | `theorem` | [measurable_condLExp'](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/measurable-condlexp--1473fe8467284356ca85ef2c.md) | 134 | `result-track:1473fe8467284356ca85ef2c8921e754ecdfd40597ed12b1dcf709113997b07f` |
| 8 | `theorem` | [setLIntegral_condLExp](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/setlintegral-condlexp--dbef13b8f7c66900660e5908.md) | 144 | `result-track:dbef13b8f7c66900660e59082808c6a0d38b6147aa587071dda74d3cb5cf7c18` |
| 9 | `theorem` | [setLIntegral_condLExp_trim](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/setlintegral-condlexp-trim--e17bb890d64478449d33684d.md) | 155 | `result-track:e17bb890d64478449d33684d665325480b40a11ff0d57d206015e94b22dd5a88` |
| 10 | `theorem` | [lintegral_condLExp](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/lintegral-condlexp--b934998bb1e2073b630fa8ff.md) | 160 | `result-track:b934998bb1e2073b630fa8ff2fcaa7d400bdb90a1542676912f2deb37a8a1131` |
| 11 | `lemma` | [condLExp_lt_top](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-lt-top--776383e8f996e20120483d2f.md) | 164 | `result-track:776383e8f996e20120483d2f53e3ab01ea35473127265c06a4b01eb848bdab47` |
| 12 | `lemma` | [condLExp_ne_top](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-ne-top--a34e2e7bb26e8a0db8d93d01.md) | 171 | `result-track:a34e2e7bb26e8a0db8d93d01946c79431d045591428e844a68626c9450e278e4` |
| 13 | `theorem` | [ae_eq_condLExp₀](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/ae-eq-condlexp--5c685720b7afaea9ce2c3e5f.md) | 174 | `result-track:5c685720b7afaea9ce2c3e5f2a066fd6a80742d858f1d3d78beb9765eeff0537` |
| 14 | `theorem` | [ae_eq_condLExp](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/ae-eq-condlexp--651233db7f04cb2dd95db8dc.md) | 186 | `result-track:651233db7f04cb2dd95db8dcfd197f60d54590eec0e2238f3f746ffc0034fa27` |
| 15 | `theorem` | [condLExp_const](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-const--c77dba045b210205a0b364d2.md) | 191 | `result-track:c77dba045b210205a0b364d200eacae08602c0e8c1e8d8ed2b61d0db59de9f36` |
| 16 | `theorem` | [condLExp_congr_ae](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-congr-ae--efc7a8fd8ecbf3a73a3f352b.md) | 195 | `result-track:efc7a8fd8ecbf3a73a3f352b77f849b0becc2c54682d6269e8f04a806166f201` |
| 17 | `theorem` | [condLExp_zero](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-zero--4530b10ba848d1876090e03f.md) | 207 | `result-track:4530b10ba848d1876090e03f06ccccff55f20669c94f87b6c1f17d291acfdfa2` |
| 18 | `theorem` | [condLExp_one](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-one--bf29afdaf5d4aa246d9f14da.md) | 215 | `result-track:bf29afdaf5d4aa246d9f14da36546d9cceb7ef3729c1f3ebfbe507e974fe3aec` |
| 19 | `theorem` | [condLExp_congr_ae_trim](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-congr-ae-trim--77170962af34fd1d8f87c97c.md) | 219 | `result-track:77170962af34fd1d8f87c97c3120154572caf89906d7beb37364f07d354b606c` |
| 20 | `theorem` | [condLExp_bot'](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-bot--a05e63f6e2ad3412724c4975.md) | 224 | `result-track:a05e63f6e2ad3412724c4975fa3c5710de92ccf8c12f4ce0b4d5832cb27cecd4` |
| 21 | `theorem` | [condLExp_bot_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-bot-ae-eq--573c1c65acdc2771b1d614aa.md) | 237 | `result-track:573c1c65acdc2771b1d614aa4745cd532983bd310308a5df5140e1246495fd34` |
| 22 | `theorem` | [condLExp_bot](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-bot--7ccc60592c481be12130c223.md) | 243 | `result-track:7ccc60592c481be12130c22307f8a025efee80dea82a332df03790065e2c437e` |
| 23 | `theorem` | [condLExp_mono](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-mono--0aa7087e178b7b52d7ac693e.md) | 247 | `result-track:0aa7087e178b7b52d7ac693e22ee1414ad05e8dbab51b099c89845dd7b8fce2a` |
| 24 | `theorem` | [condLExp_add_le](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-add-le--707f535294803b4bfc0f137a.md) | 260 | `result-track:707f535294803b4bfc0f137a1163684d32b36c732e46dbb7f18f73f2df9a3d6e` |
| 25 | `theorem` | [condLExp_add_left](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-add-left--465bd5369355392ed229c8d3.md) | 275 | `result-track:465bd5369355392ed229c8d32fd37ce9721674662eabf7f959678033257b7b8a` |
| 26 | `theorem` | [condLExp_add_right](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-add-right--2c0a96780d75b50f1cddf078.md) | 288 | `result-track:2c0a96780d75b50f1cddf0789e9c5f7b0406aa885349590aac0bdb6250469bf7` |
| 27 | `theorem` | [condLExp_smul](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-smul--b760b46697b437f68f8b864d.md) | 293 | `result-track:b760b46697b437f68f8b864d707dc179c71509c317c7622bce5b9ffaf4905e52` |
| 28 | `theorem` | [condLExp_smul_le](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-smul-le--3d26f9db3c77e9466e8c736c.md) | 305 | `result-track:3d26f9db3c77e9466e8c736cb75ce732e4086b732296ca320a04c378fb52a9f6` |
| 29 | `theorem` | [condLExp_smul'](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-smul--d404461f7ebec4a0988488e7.md) | 317 | `result-track:d404461f7ebec4a0988488e79f1b45ab290c776abfb2aa2fe503a2e2657f4a99` |
| 30 | `theorem` | [condLExp_tsum](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-tsum--4732f9dfa64eefb2076d9cbf.md) | 332 | `result-track:4732f9dfa64eefb2076d9cbf4b33a438d47c7fe94c8c3a4aa447ae1ba3d74b5d` |
| 31 | `theorem` | [condLExp_finsetSum](../../../../../mathematics/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/declarations/condlexp-finsetsum--a9d5fb0ade56436c469c94b2.md) | 346 | `result-track:a9d5fb0ade56436c469c94b2cc90efe6b0fc91b282857387a2383c41268b7c5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
