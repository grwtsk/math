# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZMod.Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48b93d45b1d17a9379277cc9fa5b5c7dd670fbd3",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48b93d45b1d17a9379277cc9fa5b5c7dd670fbd3`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.EvenFunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DirichletCharacter.GaussSum` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [auxDFT](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/auxdft--bfc4863015ef82465da8c519.md) | 54 | `declaration-track:bfc4863015ef82465da8c5196eb60922c91c69f28e8c30edfd704428500e3212` |
| 2 | `lemma` | [auxDFT_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/auxdft-neg--cc5ffe5056da7d6e3503df49.md) | 57 | `result-track:cc5ffe5056da7d6e3503df49a544eb38110796a2873c145be5a9ce452e058ec4` |
| 3 | `lemma` | [auxDFT_auxDFT](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/auxdft-auxdft--1dbccfa7098858f9172ef011.md) | 62 | `result-track:1dbccfa7098858f9172ef011615bab08fa3d51a96cdff66b08a1f09148ceee87` |
| 4 | `lemma` | [auxDFT_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/auxdft-smul--259a468486481e1e49231b20.md) | 77 | `result-track:259a468486481e1e49231b20bf7875958f49c0ab71857ebc99fe1de990ee08e0` |
| 5 | `def` | [dft](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft--132c33530927d0c37e4746ff.md) | 89 | `declaration-track:132c33530927d0c37e4746fff450d4fa96f8dca9f952d50ebaeddddd7ad49673` |
| 6 | `lemma` | [dft_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-apply--490157d25f1185bcac903cab.md) | 108 | `result-track:490157d25f1185bcac903cabd3187d0bfaf8c14f27f25588922e64729342af0a` |
| 7 | `lemma` | [dft_def](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-def--8f9f3047762bcaae00149d9b.md) | 112 | `result-track:8f9f3047762bcaae00149d9b93393f32a129b12f3a89c7d8968aebb02c945e9b` |
| 8 | `lemma` | [invDFT_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/invdft-apply--61ff8045f4c41dcc84ba0779.md) | 116 | `result-track:61ff8045f4c41dcc84ba0779738206272b47145885065fdae225f67032941717` |
| 9 | `lemma` | [invDFT_def](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/invdft-def--2bff9118910f12fc1f2de14d.md) | 120 | `result-track:2bff9118910f12fc1f2de14df76c2393153d2ac2f8c14c4aa1b6d91128149fef` |
| 10 | `lemma` | [invDFT_apply'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/invdft-apply--0e68f53a17ea93246c1778fd.md) | 124 | `result-track:0e68f53a17ea93246c1778fd8c40e56dd46c058b76426341266efa34f76dcca8` |
| 11 | `lemma` | [invDFT_def'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/invdft-def--a7156d2db118757afdf858c9.md) | 127 | `result-track:a7156d2db118757afdf858c94d016905b4965fbd07032c7d2d2f0aef86fccb75` |
| 12 | `lemma` | [dft_apply_zero](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-apply-zero--2f680dab3030c6978c56595f.md) | 130 | `result-track:2f680dab3030c6978c56595ffaae70e55eb24f36f74fd0eaba3c1ddacb96b6fa` |
| 13 | `lemma` | [dft_eq_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-eq-fourier--0fae29b1a6067dbfb4c020ca.md) | 137 | `result-track:0fae29b1a6067dbfb4c020caf9bdfe65fe7a53b2b4be062a0a2ecb2caab30af0` |
| 14 | `lemma` | [dft_const_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-const-smul--418c896c1391fd667536d36c.md) | 153 | `result-track:418c896c1391fd667536d36c9185645c12128c70c0c4c041056cfbaac52f878b` |
| 15 | `lemma` | [dft_smul_const](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-smul-const--430b9ed04380712d7d4479cf.md) | 157 | `result-track:430b9ed04380712d7d4479cfc05854b8a8aa91578981f64d8c6b133bed1836f7` |
| 16 | `lemma` | [dft_const_mul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-const-mul--398b115e02ee9ef02489cce8.md) | 162 | `result-track:398b115e02ee9ef02489cce8de87ff51ee181d4f149d0f7ef79b4bbd5263ef7d` |
| 17 | `lemma` | [dft_mul_const](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-mul-const--59ab5b29e47cf3f0435de6f0.md) | 166 | `result-track:59ab5b29e47cf3f0435de6f094d97223f93e54b1b1d61c88c7f760e502b283a1` |
| 18 | `lemma` | [dft_comp_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-comp-neg--382b7f83addb0ce5a819899a.md) | 174 | `result-track:382b7f83addb0ce5a819899a7a6739c882106dbf1b6ae9acd2479fdd96dbeaa3` |
| 19 | `lemma` | [dft_dft](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-dft--e030570d374c6a70e2dda862.md) | 178 | `result-track:e030570d374c6a70e2dda862f63d2f1a0d1e3b120419e350454eb0fe7b4ad4ab` |
| 20 | `lemma` | [dft_comp_unitMul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-comp-unitmul--e9364ae31854378f37125440.md) | 183 | `result-track:e9364ae31854378f37125440766870f546abe00e83247cd732f4ead6aa855feb` |
| 21 | `lemma` | [dft_even_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-even-iff--47037f75050bfa07a29d0b0e.md) | 191 | `result-track:47037f75050bfa07a29d0b0e3b1f70708d443530f7a74bdf64c7bef438118ba2` |
| 22 | `lemma` | [dft_odd_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/dft-odd-iff--bf9919ffeeec7a17ca9cf81d.md) | 198 | `result-track:bf9919ffeeec7a17ca9cf81da325d7587b04aa7329ba2d586500994f721a3f99` |
| 23 | `lemma` | [fourierTransform_eq_gaussSum_mulShift](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/fouriertransform-eq-gausssum-mulshift--de9b366a5a6c6ae472727e06.md) | 213 | `result-track:de9b366a5a6c6ae472727e06afb1eced481a14da15e8e55e23f37f714353dd72` |
| 24 | `lemma` | [IsPrimitive.fourierTransform_eq_inv_mul_gaussSum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/declarations/isprimitive-fouriertransform-eq-inv-mul-gausssum--4fd16cac9cd6f1a691e12a28.md) | 221 | `result-track:4fd16cac9cd6f1a691e12a28fe315593136fc1ea1d96e5660d39a769e44d1d57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
