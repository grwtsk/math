# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceGreenKernel.Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "630c714d5649b5dd7133cb9996b2d37aaccd5333",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `630c714d5649b5dd7133cb9996b2d37aaccd5333`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/greenkernel--886af9e7e97fa5c8106cbd8c.md) | 35 | `declaration-track:886af9e7e97fa5c8106cbd8cba104a1b9a8eacadfe10c3d7fc430b0758e62dff` |
| 2 | `def` | [sourceGreenPairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing--2149efbfd561744266e5a0f3.md) | 38 | `declaration-track:2149efbfd561744266e5a0f3073aa75df35af5bfb58c4d8f3facd7a5135295c3` |
| 3 | `def` | [sourceGreenConvolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenconvolution--f22364ad4b26db409de7eca5.md) | 42 | `declaration-track:f22364ad4b26db409de7eca5e71f5733ef0198cf925041a8c5f01c41469e6c02` |
| 4 | `theorem` | [greenKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/greenkernel-continuous--2e22142f467e18e96b85039a.md) | 46 | `result-track:2e22142f467e18e96b85039a78db5eabbfb16ee18f9d6e6c8218329c8ccfa213` |
| 5 | `theorem` | [greenKernel_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/greenkernel-even--c1037be6f8781ed1ff3e385e.md) | 50 | `result-track:c1037be6f8781ed1ff3e385e726195ded1ffc4019307ce528540a7d7a3263b00` |
| 6 | `theorem` | [sourceGreenPairing_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing-integrable--3f0a3212f48cb483b0940fc7.md) | 54 | `result-track:3f0a3212f48cb483b0940fc7173e4c1336a3988812108a769ab582cd460df755` |
| 7 | `theorem` | [sourceGreenConvolution_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenconvolution-integrable--f44b5dc83c7eb879816627bb.md) | 60 | `result-track:f44b5dc83c7eb879816627bb2eb0c10537e23d3d5d5c8e67b1b061be03c6034f` |
| 8 | `theorem` | [sourceGreenPairing_eq_twice_negativeSmoothMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing-eq-twice-negativesmoothmoment--1caa4e516262e26a92512d61.md) | 67 | `result-track:1caa4e516262e26a92512d6165d936fc8349a51dfcc06cd23bc96440e8f04ab5` |
| 9 | `theorem` | [sourceGreenPairing_eq_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing-eq-causal-energy--9d4a478d8dbb1815a6679da7.md) | 105 | `result-track:9d4a478d8dbb1815a6679da764bebe2c2d7074c57c3ad022b845178312b35677` |
| 10 | `theorem` | [criticalContinuousMoment_eq_neg_half_green](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/criticalcontinuousmoment-eq-neg-half-green--ea7fb2de5a00db58bfd3d71a.md) | 112 | `result-track:ea7fb2de5a00db58bfd3d71a8a4c198c44f09543a037d009594a9fd90dc1b3aa` |
| 11 | `theorem` | [normalizedPrimitiveBump_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/normalizedprimitivebump-even--7abc85feba6a31f493057432.md) | 118 | `result-track:7abc85feba6a31f493057432bdd1619ef90430690aa7b1f848d0d904131c5573` |
| 12 | `theorem` | [normalizedPrimitiveBump_deriv_odd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/normalizedprimitivebump-deriv-odd--2c6b44bf567746635f07fb4c.md) | 131 | `result-track:2c6b44bf567746635f07fb4c7120bbb7c3d900ecb9cc7c65aa4158d1e769c3c7` |
| 13 | `theorem` | [causalSourceTail_add_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/causalsourcetail-add-reflection--d21b728047818e4c8add3ff1.md) | 144 | `result-track:d21b728047818e4c8add3ff187ea4e55777d0ec349ac31031efac2424753c055` |
| 14 | `theorem` | [sourceGreenConvolution_upper_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenconvolution-upper-half--3564ed6c340764f7ac0ee8db.md) | 151 | `result-track:3564ed6c340764f7ac0ee8dbed6f2657f6ad033f88d125fc83432997bb2d3981` |
| 15 | `theorem` | [sourceGreenConvolution_lower_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenconvolution-lower-half--b6199463c235f7e93b8e0673.md) | 164 | `result-track:b6199463c235f7e93b8e067392a0a9488b7b5e302a340c6bccd33e7bc7969c73` |
| 16 | `theorem` | [sourceGreenConvolution_eq_tails](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenconvolution-eq-tails--ff9055dbf2bd3d54f2ec45eb.md) | 179 | `result-track:ff9055dbf2bd3d54f2ec45eb862abd229ff0c60a873a271057991c3c3ad7f2ac` |
| 17 | `theorem` | [sourceGreenConvolution_eq_neg_bump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenconvolution-eq-neg-bump--06b2cdd10322f0bc29935d6d.md) | 188 | `result-track:06b2cdd10322f0bc29935d6dbc9e8c4a96fef0bf78fc4e2054c7ac7a6351be4d` |
| 18 | `theorem` | [sourceGreenConvolution_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenconvolution-continuous--09cd3175b3e3c6b48421191d.md) | 194 | `result-track:09cd3175b3e3c6b48421191d9481c6d6cb40635cec63f4b3324419a336ebd02c` |
| 19 | `theorem` | [sourceGreenConvolution_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenconvolution-hascompactsupport--7769524b264e01df2ee13232.md) | 202 | `result-track:7769524b264e01df2ee13232bb9043653ca9e3294d529d33700a65abd22c718d` |
| 20 | `theorem` | [sourceGreenConvolution_zero_of_not_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenconvolution-zero-of-not-mem--144890bdbf810e1e7801ccc6.md) | 210 | `result-track:144890bdbf810e1e7801ccc6ec33d795c69143f4bafb245dfc1e54e6bc9bd993` |
| 21 | `def` | [sourceGreenDoubleKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreendoublekernel--6d43133d1098f65d2abe4065.md) | 216 | `declaration-track:6d43133d1098f65d2abe4065f15c977d1fcf1e984df3b081f8863d49beb17599` |
| 22 | `theorem` | [sourceGreenDoubleKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreendoublekernel-continuous--24f54670068cf1575361fc19.md) | 221 | `result-track:24f54670068cf1575361fc1997ac60d15ee401f4469124cac6b3e5de03733dfd` |
| 23 | `theorem` | [sourceGreenDoubleKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreendoublekernel-hascompactsupport--d5778b4046cee92bc931a75e.md) | 230 | `result-track:d5778b4046cee92bc931a75e3730f9e1af446d81911b9475289271d309d25f38` |
| 24 | `theorem` | [sourceGreenDoubleKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreendoublekernel-integrable--86a66e3067a54c3e91f89be8.md) | 248 | `result-track:86a66e3067a54c3e91f89be811310faa15205cd1ed64199002eb1ef78d89d4e8` |
| 25 | `theorem` | [source_mul_sourceGreenConvolution_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/source-mul-sourcegreenconvolution-integrable--3d3e0849623d38d64be2cc67.md) | 254 | `result-track:3d3e0849623d38d64be2cc673df09b84d93006bc10e5b9b22071a70f45bd3509` |
| 26 | `theorem` | [source_mul_reflected_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/source-mul-reflected-tail-integral--cdae44637ac96a31f9919a4c.md) | 262 | `result-track:cdae44637ac96a31f9919a4cd4b23118ee2e4e472b850c06a9d11dac8bba08d9` |
| 27 | `theorem` | [source_mul_sourceGreenConvolution_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/source-mul-sourcegreenconvolution-integral--5adff398a394860316e8dffa.md) | 270 | `result-track:5adff398a394860316e8dffa7fc66d409cc96f216998449911d012efd0ac64e3` |
| 28 | `theorem` | [sourceGreenPairing_eq_convolution_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing-eq-convolution-pairing--eb5d0c8a954af890ceb4b3fe.md) | 284 | `result-track:eb5d0c8a954af890ceb4b3fe8abe4ff477ce10ba3ab8743973f0f642a653ff78` |
| 29 | `theorem` | [sourceGreenPairing_eq_double_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing-eq-double-integral--b7231e2cf929b06d3e911f07.md) | 290 | `result-track:b7231e2cf929b06d3e911f0752bd35cccd51276e12f5dda555ffc805b05a3274` |
| 30 | `theorem` | [sourceGreenPairing_eq_neg_source_bump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing-eq-neg-source-bump--6430d48297511e6f9b48ecb3.md) | 297 | `result-track:6430d48297511e6f9b48ecb30de6b346792836198ac186990be5ae948da7081f` |
| 31 | `theorem` | [sourceGreenPairing_eq_normalized_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing-eq-normalized-energy--82983cea0a47ecc6c74ee18e.md) | 305 | `result-track:82983cea0a47ecc6c74ee18e52a9ae07445fb5722d29968b4a09a443ab3391c1` |
| 32 | `theorem` | [sourceGreenPairing_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing-eq-rational--0f2dd65253072ae219d4e4fc.md) | 312 | `result-track:0f2dd65253072ae219d4e4fc5ba9630a770571093a76239c21b97d8d763b15fe` |
| 33 | `theorem` | [sourceGreenPairing_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing-pos--5b107cf94dae92614e7fa384.md) | 318 | `result-track:5b107cf94dae92614e7fa38458c64f9aee0c0fdcff5c47c193f1db18afb0b634` |
| 34 | `theorem` | [criticalContinuousMoment_eq_half_source_bump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/criticalcontinuousmoment-eq-half-source-bump--a8e0ceab3532ec6ed35b574c.md) | 323 | `result-track:a8e0ceab3532ec6ed35b574ced2018fb3fa747639477ff4ad5f6b81df3f9d7d1` |
| 35 | `theorem` | [greenKernel_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/greenkernel-pos--89b7ef34363cd757d8cff339.md) | 331 | `result-track:89b7ef34363cd757d8cff339e83ea7b9c1fa7283b01b52f77a1929e730059000` |
| 36 | `theorem` | [unit_source_convolution_zero_kernel_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/unit-source-convolution-zero-kernel-positive--d675fecbe6932ece596058f7.md) | 334 | `result-track:d675fecbe6932ece596058f71efad824d8c915f2fd6862798a233a4cfb7c49ba` |
| 37 | `theorem` | [sourceGreenPairing_ne_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing-ne-half-causal-energy--6df3a8b934a3aaf94194f02b.md) | 339 | `result-track:6df3a8b934a3aaf94194f02b27f6e739ac1ad6614eb64d34b3496dcd3a3f2a9c` |
| 38 | `theorem` | [sourceGreenPairing_eq_bump_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/declarations/sourcegreenpairing-eq-bump-energy--921dec6297c9b67bcee68378.md) | 347 | `result-track:921dec6297c9b67bcee6837852c1f99fe062311e2ea8e5664916e56308354ba9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
