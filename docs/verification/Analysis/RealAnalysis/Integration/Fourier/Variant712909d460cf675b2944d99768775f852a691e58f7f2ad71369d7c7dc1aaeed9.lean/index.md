# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Fourier.Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41ef273659adeaf754c97c5613253e7bfe5be01f",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41ef273659adeaf754c97c5613253e7bfe5be01f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Strip` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_ofReal_C](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integral-ofreal-c--4dedf8636855ebcbd5350616.md) | 39 | `result-track:4dedf8636855ebcbd53506167b81575417fdcf6d4c360c48cd28c9c5843018c8` |
| 2 | `theorem` | [integral_conj_C](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integral-conj-c--f9321664b7315078fd1cf753.md) | 41 | `result-track:f9321664b7315078fd1cf753a59ed9f6af93f8ac8c105cede63d190af9474eb2` |
| 3 | `theorem` | [integral_re_C](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integral-re-c--56ddbb9c5e60366d19d7816c.md) | 43 | `result-track:56ddbb9c5e60366d19d7816cd5cf33f24531d2f33bd16e342e3015da3d1f03fc` |
| 4 | `theorem` | [conj_paperFT_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/conj-paperft-ofreal--a0a74e0e6d111231b15d91c3.md) | 56 | `result-track:a0a74e0e6d111231b15d91c3dfd10d9bc8dd8c8b279e12592309ce8a8d71a05a` |
| 5 | `theorem` | [paperFT_neg_of_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/paperft-neg-of-even--e6333a929e4b60c40a6d5242.md) | 66 | `result-track:e6333a929e4b60c40a6d5242992eedd18d009543f6e93f570e5b46d0b8d36f5b` |
| 6 | `theorem` | [paperFT_ofReal_eq_re](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/paperft-ofreal-eq-re--fc1d5086670bf5dfeed4a216.md) | 77 | `result-track:fc1d5086670bf5dfeed4a216079771625ea5e44059db9d2cf49f753bbab7bd45` |
| 7 | `theorem` | [contDiff_paperFT_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/contdiff-paperft-ofreal--3f70351a8b33794263c43d13.md) | 84 | `result-track:3f70351a8b33794263c43d132b35af984cb3c6145f87f31ecb2693322e0b3509` |
| 8 | `theorem` | [contDiff_re_paperFT_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/contdiff-re-paperft-ofreal--87f304187b2a3640c8e766e6.md) | 96 | `result-track:87f304187b2a3640c8e766e6b630e76bf484f18b8a5a42551836455cb1e7e33a` |
| 9 | `theorem` | [integrable_of_abs_mul_one_add_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integrable-of-abs-mul-one-add-sq-le--88c97f156093a4dde410c6a1.md) | 101 | `result-track:88c97f156093a4dde410c6a1bae825ba48a561c4e080325637e98217c1449adb` |
| 10 | `theorem` | [integrable_re_paperFT_sq_and](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integrable-re-paperft-sq-and--0b801a55a9352ebbb4d5108d.md) | 111 | `result-track:0b801a55a9352ebbb4d5108d2e1bc1e77f2cbbc0792ae7f0b0b26729ff7ecd14` |
| 11 | `theorem` | [autocorr_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/autocorr-neg--acad422bd79bafb7e25ea364.md) | 164 | `result-track:acad422bd79bafb7e25ea3644de49594e3b4de58ffb18a2e3e6337508005ea1d` |
| 12 | `theorem` | [ofReal_autocorr_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/ofreal-autocorr-eq-convolution--f147cf3d989246d67a9db4d3.md) | 173 | `result-track:f147cf3d989246d67a9db4d35ae3ae79a6895468cbdfad07a8f3e46c51189621` |
| 13 | `theorem` | [autocorr_continuous_of_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/autocorr-continuous-of-even--80a5d330e9870da85918c1ce.md) | 184 | `result-track:80a5d330e9870da85918c1ce74db2b41b2e7acc740b2674592c2530134a142f3` |
| 14 | `theorem` | [autocorr_integrable_of_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/autocorr-integrable-of-even--397a3d384d4ddc2b80e5234e.md) | 194 | `result-track:397a3d384d4ddc2b80e5234e97d4d5943c772bc18530569d9668bb2e15665a45` |
| 15 | `theorem` | [paperFT_autocorr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/paperft-autocorr--436a8bed2d655aa61c3983a5.md) | 206 | `result-track:436a8bed2d655aa61c3983a59904178ffc2251b0351aed8166d9962dec13dd9b` |
| 16 | `theorem` | [integral_mul_cos_of_paperFT_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integral-mul-cos-of-paperft-eq--79fae0e82f5c51c5bee3b17d.md) | 221 | `result-track:79fae0e82f5c51c5bee3b17df1c15e6de911620cdfeec4d25b7f49e9b5936e3b` |
| 17 | `theorem` | [phi_sq_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phi-sq-even--dd12e8c1556b57945f718338.md) | 279 | `result-track:dd12e8c1556b57945f718338d09b1901298aaca94af0a8f6a39611df4bbdd215` |
| 18 | `theorem` | [phi_sq_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phi-sq-hascompactsupport--b82b089f5834c32c8f2229ac.md) | 281 | `result-track:b82b089f5834c32c8f2229ace4e1e12f119e0c307356c427d5fe0a7fd18f1c23` |
| 19 | `theorem` | [phiC_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phic-continuous--be398b7e1115c2f4eb72a45b.md) | 285 | `result-track:be398b7e1115c2f4eb72a45b246be8b051d4c1e794a2b7875aa2933e2b0bb2a9` |
| 20 | `theorem` | [phiC_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phic-hascompactsupport--cade24ae554bc045c167b172.md) | 289 | `result-track:cade24ae554bc045c167b172a5b85391f935ed2c075a59fb992f8410521bf7f5` |
| 21 | `theorem` | [phiC_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phic-contdiff-two--eb94452677a14ba6f7521541.md) | 293 | `result-track:eb94452677a14ba6f75215417f12d2f7ab15d8a84a4cce82cf48987ddf038536` |
| 22 | `theorem` | [phiC_supp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phic-supp--c596de448c9a443577702b8e.md) | 298 | `result-track:c596de448c9a443577702b8e28ac61c454ccd526882fd2ca2bb043ecce00b298` |
| 23 | `theorem` | [phiSqC_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phisqc-continuous--13f7b2854624da1da4636c43.md) | 301 | `result-track:13f7b2854624da1da4636c43c9b68ca49d17066ecab00ea36c64ee2761ee5e31` |
| 24 | `theorem` | [phiSqC_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phisqc-hascompactsupport--cad654898c19c3e2dfebadf9.md) | 305 | `result-track:cad654898c19c3e2dfebadf99372c172df7301bbf845388f5842c038b0f05933` |
| 25 | `theorem` | [phiSqC_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phisqc-contdiff-two--9e64bd65d4a33dedfe620c17.md) | 309 | `result-track:9e64bd65d4a33dedfe620c170cb2576b6eed1e21703567526540e6b793fdc747` |
| 26 | `theorem` | [phiSqC_supp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phisqc-supp--a93f22886bfeb091e21cc75e.md) | 314 | `result-track:a93f22886bfeb091e21cc75e076fc7d5ee16e1c4d971af98b102ed38a9e185a3` |
| 27 | `theorem` | [phiHat_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phihat-ofreal--ab48e0b681c5b5e1c980bc0f.md) | 326 | `result-track:ab48e0b681c5b5e1c980bc0faa27f9364b1361750fe8b2d2fa31e49636bacffc` |
| 28 | `theorem` | [Phi_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phi-ofreal--73af1239a941eaf78bfac222.md) | 329 | `result-track:73af1239a941eaf78bfac22279b1bf3b92441fa6186b2509b039aced512e25aa` |
| 29 | `theorem` | [phiHat_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phihat-conj--c60935f0655e0e17338e9ec5.md) | 334 | `result-track:c60935f0655e0e17338e9ec5ad65a86403892d8c8d4e691eb7ee2b5fc461933e` |
| 30 | `theorem` | [phiHatR_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phihatr-even--90b0a5358739b436737460cd.md) | 338 | `result-track:90b0a5358739b436737460cd7212cb8c0a1d9ff0c5c5b366ff5c336c4de6dc6b` |
| 31 | `theorem` | [PhiR_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phir-even--94532b92596ebd293b7fbd40.md) | 341 | `result-track:94532b92596ebd293b7fbd40ff2a50b35f2539bc16ad4d3158ed8b1243d36a85` |
| 32 | `theorem` | [phiHatR_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phihatr-continuous--0804fec78aa2260f289affb1.md) | 347 | `result-track:0804fec78aa2260f289affb168113bb053623051d59bb40a111b7f265ff16fc9` |
| 33 | `theorem` | [PhiR_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phir-continuous--371bfef7f6238cd4f7e064cf.md) | 352 | `result-track:371bfef7f6238cd4f7e064cf8763275b17ac49edeeee6d8a8bf3fdbf28d0218f` |
| 34 | `theorem` | [PhiR_contDiff_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phir-contdiff-one--c29cfbc2ba8cc66036716103.md) | 358 | `result-track:c29cfbc2ba8cc66036716103ed133bf83a25d1acb0d359edd34acabc3ce6e412` |
| 35 | `theorem` | [paperFT_ofReal_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/paperft-ofreal-zero--49a279286a8d955699470950.md) | 365 | `result-track:49a279286a8d955699470950141da2998bba0e2353fb0cb0c6734126fddc74d6` |
| 36 | `theorem` | [phiHatR_zero_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phihatr-zero-le--18fea310fe80a83e8a5795d3.md) | 371 | `result-track:18fea310fe80a83e8a5795d3e0fb9592afb4910abb9529999f3530c8163864b2` |
| 37 | `theorem` | [PhiR_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phir-zero--5e944bb9713d8ea77c8ce4fd.md) | 377 | `result-track:5e944bb9713d8ea77c8ce4fd621f698a113fa9c908a1190e2589e33bedf6bfd7` |
| 38 | `theorem` | [g_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/g-zero--a0296817a5678bff2d1b1ebd.md) | 383 | `result-track:a0296817a5678bff2d1b1ebd8140c2e2d0e895625770392ecb92da137feb9700` |
| 39 | `theorem` | [Aphi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/aphi-zero--bbd599b50d54cccd7bb4ed47.md) | 389 | `result-track:bbd599b50d54cccd7bb4ed47ad4db4cba25cb2c25ff601b032076fd8844a8554` |
| 40 | `theorem` | [phiHatR_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phihatr-sq-eq--eed1a52aaf6d4fca59775adc.md) | 398 | `result-track:eed1a52aaf6d4fca59775adc3fabd45af1ce7d7028bd0cd0ce1c49887809a9ba` |
| 41 | `theorem` | [PhiR_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/phir-sq-eq--d85142ce56f6b218065afd08.md) | 407 | `result-track:d85142ce56f6b218065afd089c8cc541af6a4f80794f5b7bf13381eb56eb0680` |
| 42 | `theorem` | [integrable_phiHatR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integrable-phihatr-sq--27559c1ef4bbb7357ab86f01.md) | 419 | `result-track:27559c1ef4bbb7357ab86f01ae6bb94f72bfaafa3674312d140a0778a3d139d2` |
| 43 | `theorem` | [integrable_phiHatR_sq_mul_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integrable-phihatr-sq-mul-abs--cea22adaa2192ddb8de0d795.md) | 423 | `result-track:cea22adaa2192ddb8de0d795d19e4ec688d666e5aa64316c34ef58b18e66212d` |
| 44 | `theorem` | [integrable_PhiR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integrable-phir-sq--b1d9ccc7d0ea1973dded85ac.md) | 427 | `result-track:b1d9ccc7d0ea1973dded85ac88d5c033f9a68b13b43e119f16b8924421cb8cdd` |
| 45 | `theorem` | [integrable_PhiR_sq_mul_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integrable-phir-sq-mul-abs--4bec924adf846ac851556b47.md) | 431 | `result-track:4bec924adf846ac851556b47dd1fc05b4ee3bc5de3d65786f0886a9867bb29ad` |
| 46 | `theorem` | [integral_phiHatR_sq_mul_cos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integral-phihatr-sq-mul-cos--ffc9c1092156b244d3c95ade.md) | 439 | `result-track:ffc9c1092156b244d3c95ade40de5d6682add3fce992959f61f68882b9002a54` |
| 47 | `theorem` | [integral_PhiR_sq_mul_cos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integral-phir-sq-mul-cos--c2bba6f4ef092e5bbaf42e51.md) | 449 | `result-track:c2bba6f4ef092e5bbaf42e515b7769d010c29ddade4d60ad0ca8b92697b98dcc` |
| 48 | `theorem` | [integral_phiHatR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integral-phihatr-sq--159e8f3687cf4fa19908c25a.md) | 461 | `result-track:159e8f3687cf4fa19908c25af2c11db2fcd3a746683d6acde84251dabf3a48ea` |
| 49 | `theorem` | [integral_PhiR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/declarations/integral-phir-sq--be7ce361ca4ac9cca5946b0b.md) | 469 | `result-track:be7ce361ca4ac9cca5946b0b7e842a90d198e0ace8c5ceece0cf2d86b4d8a69b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
