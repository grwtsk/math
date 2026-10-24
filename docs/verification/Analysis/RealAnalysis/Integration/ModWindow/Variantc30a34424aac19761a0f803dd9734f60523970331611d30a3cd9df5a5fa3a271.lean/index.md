# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ModWindow.Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "401612063d52225f560f886499cc0e07a3c7ba67",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `401612063d52225f560f886499cc0e07a3c7ba67`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmD.WindowCore` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Norms` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModFactor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/modfactor--8498031672de639f3834a0c0.md) | 32 | `declaration-track:8498031672de639f3834a0c06c3e131ce499055899b5faa470f181cef7cab870` |
| 2 | `def` | [phiM](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/phim--718e87392778ffb321722d43.md) | 44 | `declaration-track:718e87392778ffb321722d43874b9807196848e435ae82198dc7825871c4e950` |
| 3 | `def` | [cMod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/cmod--50cb7cc956e3cebb597b58e5.md) | 47 | `declaration-track:50cb7cc956e3cebb597b58e55d9c83680820ac94cfdf6d0556458567833b918f` |
| 4 | `theorem` | [phiM_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/phim-even--1d58cae99846daef32e2d8dc.md) | 53 | `result-track:1d58cae99846daef32e2d8dccf1f1015e2007df90f369b0c659aabc4335e91a8` |
| 5 | `theorem` | [phiM_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/phim-nonneg--f3aec5dd1daebba48bdab630.md) | 56 | `result-track:f3aec5dd1daebba48bdab6309535ec6a537f1390062fc751f3a8b1927b1e1e37` |
| 6 | `theorem` | [phiM_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/phim-eq-zero--042c992008c8c4b138fabf06.md) | 59 | `result-track:042c992008c8c4b138fabf06e9e9f24e398b85c0cbd4127396d9ba2c53b92f65` |
| 7 | `theorem` | [phiM_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/phim-le-one--0492fb702a2ae0e45cb981a6.md) | 63 | `result-track:0492fb702a2ae0e45cb981a61725c12f43269a0bfb2fdd6855e9f39c25412e98` |
| 8 | `theorem` | [phiM_zero_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/phim-zero-le-one--2d73064084b93cd12c460b45.md) | 71 | `result-track:2d73064084b93cd12c460b455941f3c6051c67568a9d8acad46007fc6e12f69e` |
| 9 | `theorem` | [phiM_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/phim-contdiff--3dd04ba71ba1fbe32c0b40bb.md) | 75 | `result-track:3dd04ba71ba1fbe32c0b40bb64ff4dceb245a833e45d936c2af6ee68c1292156` |
| 10 | `theorem` | [phi_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/phi-antitoneon--488783b453b6c53c82985fd1.md) | 93 | `result-track:488783b453b6c53c82985fd189631c6e44c28e342a9972a04eaae3bb136e6b64` |
| 11 | `theorem` | [phiM_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/phim-antitoneon--ba97b2c4ec2097fc606063cc.md) | 103 | `result-track:ba97b2c4ec2097fc606063cc018a26387fe348e155bbf38e707fc864de52914d` |
| 12 | `theorem` | [integral_abs_deriv_le_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/integral-abs-deriv-le-two--531ef7ba3255da2abd09c49f.md) | 117 | `result-track:531ef7ba3255da2abd09c49fdd73b390e5961d94f69fb118d4f2b3ec2e3032d1` |
| 13 | `theorem` | [integral_abs_deriv_phiM_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/integral-abs-deriv-phim-le--693440c5c4586b782848bb31.md) | 189 | `result-track:693440c5c4586b782848bb31149b97a4e725effcdedf42621228b53c60e40ef7` |
| 14 | `theorem` | [integral_abs_deriv_phiM_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/integral-abs-deriv-phim-sq-le--dd2df79ba5d863837683f967.md) | 196 | `result-track:dd2df79ba5d863837683f9670a0d77ba9f0d675388f2ced73e69de7798bd5603` |
| 15 | `theorem` | [deriv2_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/deriv2-mul-eq--2f7eb5865a363c872e379312.md) | 213 | `result-track:2f7eb5865a363c872e379312c5a612d4a30b0e4a563a9d90a8262a359a97de20` |
| 16 | `theorem` | [deriv_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/deriv-mul-eq--d12b1cd9602b0d9201c16952.md) | 241 | `result-track:d12b1cd9602b0d9201c169521757c5f98cf3467bfc788a689594522601e2bbfc` |
| 17 | `theorem` | [deriv2_eq_zero_of_eqOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/deriv2-eq-zero-of-eqon--02c79b4a795790a6915f1c97.md) | 248 | `result-track:02c79b4a795790a6915f1c970f359aac62fd87b2e39d8d6581342ae79803c4e1` |
| 18 | `theorem` | [integrable_abs_of_cs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/integrable-abs-of-cs--6a302ce3697c185dbcfc6bdc.md) | 261 | `result-track:6a302ce3697c185dbcfc6bdc1a7f5cec2905027ccd0266531038d172a5f52f2f` |
| 19 | `theorem` | [integral_abs_deriv2_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/integral-abs-deriv2-mul-le--9fb4907074b74161a180e578.md) | 267 | `result-track:9fb4907074b74161a180e578a4ed720a54be52eae52276ec449d8ed1542472c1` |
| 20 | `theorem` | [integral_abs_phi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/integral-abs-phi-le--01cab43d808d6b302f009f25.md) | 328 | `result-track:01cab43d808d6b302f009f253974c9b6a20217fe8016fde27f94935012ddfc3d` |
| 21 | `theorem` | [integral_abs_phi_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/integral-abs-phi-sq-le--bb28e25cba9f6921515a1497.md) | 350 | `result-track:bb28e25cba9f6921515a14975a663611a1bbe2d996d42ee307e4c8d7d4f007bf` |
| 22 | `theorem` | [l1Deriv2_nonneg'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/l1deriv2-nonneg--88ef8115fd5039523c3e76d8.md) | 362 | `result-track:88ef8115fd5039523c3e76d8257d053c8cb2f86b60750ef93ad850e83233282d` |
| 23 | `theorem` | [phiM_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/phim-hascompactsupport--bbf5c1d9c51bdcefb86af9d1.md) | 364 | `result-track:bbf5c1d9c51bdcefb86af9d12607255818a8b1ca2f105b5d5d0ee270c7583e91` |
| 24 | `theorem` | [ModFactor.abs_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/modfactor-abs-le-one--3f9c972fac54c16a2e27883d.md) | 368 | `result-track:3f9c972fac54c16a2e27883df983358eac5b7b11a9bfb73477ea061ff62e754c` |
| 25 | `theorem` | [integral_abs_deriv2_phiM_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/integral-abs-deriv2-phim-le--cd69e4fef7ebefb16291f14e.md) | 372 | `result-track:cd69e4fef7ebefb16291f14e10e49b45fe5d04cdd09e5f446ea80fcacb88e3e7` |
| 26 | `theorem` | [phiM_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/phim-sq-eq--46d1e28b55a9b6b8321e76f9.md) | 406 | `result-track:46d1e28b55a9b6b8321e76f9ba7a47db179b3c86bb3bb813dca62a12c6a088a7` |
| 27 | `theorem` | [integral_abs_deriv2_phiM_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/integral-abs-deriv2-phim-sq-le--6b8b1e4597428766659f2f13.md) | 410 | `result-track:6b8b1e4597428766659f2f13240260b1c80186ec32694fb94d1259f3723f63e6` |
| 28 | `theorem` | [four_le_cMod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/four-le-cmod--e2aa2ea41befc647aab92844.md) | 480 | `result-track:e2aa2ea41befc647aab92844844bbdb7a2831e246fc5670b228cd10608a44c91` |
| 29 | `theorem` | [admWindow_phiM](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/declarations/admwindow-phim--ebf465c7937ff1a77eddb2ca.md) | 485 | `result-track:ebf465c7937ff1a77eddb2caf252e5ffa0614442f427051e89f106757f352040` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
