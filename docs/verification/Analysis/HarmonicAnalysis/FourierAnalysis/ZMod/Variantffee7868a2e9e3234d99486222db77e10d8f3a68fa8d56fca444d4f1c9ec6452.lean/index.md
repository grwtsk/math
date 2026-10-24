# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZMod.Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70d80c7d9e17f8374cfc030c3f7707e2cd0ffcde",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70d80c7d9e17f8374cfc030c3f7707e2cd0ffcde`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.EvenFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DirichletCharacter.GaussSum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [auxDFT](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/auxdft--02c7552c63b8ac141bab5b93.md) | 46 | `declaration-track:02c7552c63b8ac141bab5b93fa22d765e9f997f779ef9a01a7d3c98e5282e9c9` |
| 2 | `lemma` | [auxDFT_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/auxdft-neg--aa24871a18c9049afb370db2.md) | 49 | `result-track:aa24871a18c9049afb370db2072e10aca5f1e9074f9eef0671e3607294ed6e6a` |
| 3 | `lemma` | [auxDFT_auxDFT](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/auxdft-auxdft--db758831e28187177e87f479.md) | 54 | `result-track:db758831e28187177e87f479feb094c3ced38b06418a6357fa1c888f08eb0a0b` |
| 4 | `lemma` | [auxDFT_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/auxdft-smul--7215cdfd6cd0de29bd8a7292.md) | 69 | `result-track:7215cdfd6cd0de29bd8a72927be5a8d61573ed5c0821670f2581475efec257b0` |
| 5 | `def` | [dft](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft--db10b4e76524834dcc6ce94b.md) | 81 | `declaration-track:db10b4e76524834dcc6ce94b2d222f1215b1751099ba72d866cf1b2b5bf4206b` |
| 6 | `lemma` | [dft_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-apply--9c6cc836e3d95e9910eea0e4.md) | 100 | `result-track:9c6cc836e3d95e9910eea0e4a8d29659f716239ef6bbb82832936f800a5fa20c` |
| 7 | `lemma` | [dft_def](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-def--d45a6bf27d03af5aeb29d65e.md) | 104 | `result-track:d45a6bf27d03af5aeb29d65ea87242f7ee28ac36964e04160af5b231e28bb023` |
| 8 | `lemma` | [invDFT_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/invdft-apply--3092efb637d4572aaee23f23.md) | 108 | `result-track:3092efb637d4572aaee23f23c6444e1fb652e978471e688e8ef16bf94df78c0b` |
| 9 | `lemma` | [invDFT_def](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/invdft-def--b2a2203d8c0bcf732e25b70e.md) | 112 | `result-track:b2a2203d8c0bcf732e25b70e3c143f52888f92958f6c5d8e9cd89e775b80b2b2` |
| 10 | `lemma` | [invDFT_apply'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/invdft-apply--6b306aea5a550b8a05dedb61.md) | 116 | `result-track:6b306aea5a550b8a05dedb6125ef74b178bae1cb44a1eb06b4d0613cd107cfe8` |
| 11 | `lemma` | [invDFT_def'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/invdft-def--2465861a25d2bdeae77b0675.md) | 119 | `result-track:2465861a25d2bdeae77b06759ff354b91aabe476ae1201e2174c34503ba5e7b2` |
| 12 | `lemma` | [dft_apply_zero](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-apply-zero--558990495b38ca4df16098ff.md) | 122 | `result-track:558990495b38ca4df16098ff48e1da5e260f9a2c27bce935989f23de7084bff1` |
| 13 | `lemma` | [dft_eq_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-eq-fourier--fa72fd021c56c1738c17d352.md) | 129 | `result-track:fa72fd021c56c1738c17d35245b2097a1bb23fc309afe55fb4d237818b276a73` |
| 14 | `lemma` | [dft_const_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-const-smul--93c9203ed9326966d6ab9156.md) | 145 | `result-track:93c9203ed9326966d6ab9156422ae579a54e2c2eb1d161d571f6992b0cda022d` |
| 15 | `lemma` | [dft_smul_const](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-smul-const--57af29b8e5fbdcbbfe5e03a1.md) | 149 | `result-track:57af29b8e5fbdcbbfe5e03a133d9d5e639757508016d4567d8b76db86fecfea4` |
| 16 | `lemma` | [dft_const_mul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-const-mul--1de3cc7b2ef70e2e1fd755f2.md) | 154 | `result-track:1de3cc7b2ef70e2e1fd755f2e5b0c48589b74aa94b6a234ef8909860572f36c3` |
| 17 | `lemma` | [dft_mul_const](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-mul-const--90bd096b91c49c95b4a78dcf.md) | 158 | `result-track:90bd096b91c49c95b4a78dcf2c02720bafc7bc4b8040093720ca880d5e8b28e7` |
| 18 | `lemma` | [dft_comp_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-comp-neg--037f09f2097525fc7a160596.md) | 166 | `result-track:037f09f2097525fc7a1605964121a98862154a77f3016f567a4129ce8114610c` |
| 19 | `lemma` | [dft_dft](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-dft--24306f2393d9e80718e899f6.md) | 170 | `result-track:24306f2393d9e80718e899f66f96d37c838e521dc10b782de8f0b58a88954377` |
| 20 | `lemma` | [dft_comp_unitMul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-comp-unitmul--1dfd32f5460a0d5a7932733d.md) | 175 | `result-track:1dfd32f5460a0d5a7932733d07fa6b59fdd8dbffd5fc7e0e57fa408bc4e32589` |
| 21 | `lemma` | [dft_even_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-even-iff--343a73459d33c16902d5c978.md) | 183 | `result-track:343a73459d33c16902d5c978722efe868e0a59ef521e1a16f2dd0fd2db1802a4` |
| 22 | `lemma` | [dft_odd_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/dft-odd-iff--7d621a44503c68dc57b01e32.md) | 190 | `result-track:7d621a44503c68dc57b01e32df1359720e0be6b853e762d65f95937738ef145a` |
| 23 | `lemma` | [fourierTransform_eq_gaussSum_mulShift](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/fouriertransform-eq-gausssum-mulshift--27ef5a4cbac9180ce30d89c9.md) | 205 | `result-track:27ef5a4cbac9180ce30d89c9b4076a0e64966fb1d234d097809e448e37c3dadc` |
| 24 | `lemma` | [IsPrimitive.fourierTransform_eq_inv_mul_gaussSum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean/declarations/isprimitive-fouriertransform-eq-inv-mul-gausssum--455017f7d2e026bb10e0e4ee.md) | 213 | `result-track:455017f7d2e026bb10e0e4eec61cf5e4c589fc3126cb98a184055ae5618e3271` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
