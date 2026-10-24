# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Arsinh.Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43883ba2938180c45029e067e669988da657ed50",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43883ba2938180c45029e067e669988da657ed50`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh--7b46ee4abc192b9eedb3cbb9.md) | 59 | `declaration-track:7b46ee4abc192b9eedb3cbb9c1080bbf6c4b3bc90b4c3d264d50d644e4354d63` |
| 2 | `theorem` | [exp_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/exp-arsinh--8b1faa64a9eff46d98fd2a2e.md) | 62 | `result-track:8b1faa64a9eff46d98fd2a2eb295f9ba0dbdaacc2b9717dc43f5f3ed040f4145` |
| 3 | `theorem` | [arsinh_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-zero--1e7a08290f2d70def1be9153.md) | 69 | `result-track:1e7a08290f2d70def1be9153577b6ffbd6c62feb345ba97cc59e85dfcc2bca42` |
| 4 | `theorem` | [arsinh_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-neg--b48a329f7ca5b1d96c37396f.md) | 72 | `result-track:b48a329f7ca5b1d96c37396fc1b2bff03f206f4051751e1fa9655f1a9c99318d` |
| 5 | `theorem` | [sinh_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/sinh-arsinh--065bde174d0dab37749931dd.md) | 80 | `result-track:065bde174d0dab37749931ddee2014f89fc4f29a778fef3f0406fcb3bc14421c` |
| 6 | `theorem` | [cosh_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/cosh-arsinh--7f1df00f8beaf2e97649cdb1.md) | 84 | `result-track:7f1df00f8beaf2e97649cdb189bceb14ea657ee0a4575f4837ba489593d17430` |
| 7 | `theorem` | [sinh_surjective](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/sinh-surjective--150936b907579435269f9f61.md) | 88 | `result-track:150936b907579435269f9f612ac8d4198c6c915a55866cae76689e77bf4283c0` |
| 8 | `theorem` | [sinh_bijective](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/sinh-bijective--8ce2c15575316acc48c5b1a3.md) | 92 | `result-track:8ce2c15575316acc48c5b1a3201d395574760fdd567a12cd13343217712191e2` |
| 9 | `theorem` | [arsinh_sinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-sinh--eee4ef1995e96b68ffbc1ad9.md) | 97 | `result-track:eee4ef1995e96b68ffbc1ad96bc25df29e11921c0e8473738db05df499ffb2a9` |
| 10 | `def` | [sinhEquiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/sinhequiv--444895ce10f97c08c3d125b9.md) | 102 | `declaration-track:444895ce10f97c08c3d125b999809a645a308c8a070c9a8d0b9c2ef959cdb2bd` |
| 11 | `def` | [sinhOrderIso](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/sinhorderiso--313aa42b45dfd8624656c36a.md) | 110 | `declaration-track:313aa42b45dfd8624656c36a6835e7edea311d69a2c49689d265658636e40eba` |
| 12 | `def` | [sinhHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/sinhhomeomorph--b12bafdc698ae11536ed672b.md) | 116 | `declaration-track:b12bafdc698ae11536ed672bc7c216588cca92eda3b966bdc4f12f9608592043` |
| 13 | `theorem` | [arsinh_bijective](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-bijective--410f46de9abe327cfe19f6cd.md) | 119 | `result-track:410f46de9abe327cfe19f6cde5fa8400a85a48b410abd86b9d8e7c8b3d900ffe` |
| 14 | `theorem` | [arsinh_injective](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-injective--ec8db838ceaa39aef496f5b4.md) | 122 | `result-track:ec8db838ceaa39aef496f5b4d2c691a828d9303c420bd99aadce1d50944e1d45` |
| 15 | `theorem` | [arsinh_surjective](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-surjective--7114370ce29ab089974ccca9.md) | 125 | `result-track:7114370ce29ab089974ccca98d56b0e68461f307b40acb04f8eaa9091e613f4c` |
| 16 | `theorem` | [arsinh_strictMono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-strictmono--823243136461f4499d8cc144.md) | 128 | `result-track:823243136461f4499d8cc144f86bbc161d21d5132c9a810003f10972338d23a1` |
| 17 | `theorem` | [arsinh_inj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-inj--4639194ab60ec15d59450e50.md) | 132 | `result-track:4639194ab60ec15d59450e5092a75df4f0d25c6066045279eae32b06674235ea` |
| 18 | `theorem` | [arsinh_le_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-le-arsinh--a0c487ebd359439d771db8e2.md) | 136 | `result-track:a0c487ebd359439d771db8e22e8af9e1bdde1730c11946e6ef9f6e2db57aef6e` |
| 19 | `theorem` | [arsinh_lt_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-lt-arsinh--c19239395f594ffac37bab7e.md) | 142 | `result-track:c19239395f594ffac37bab7e2bcc2979a75a24963ef05191cceaf0c3456319f6` |
| 20 | `theorem` | [arsinh_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-eq-zero-iff--c1134c05b443c4cc489aba6b.md) | 146 | `result-track:c1134c05b443c4cc489aba6be00b953745e94bd449f835ca7ca21971a80e5f40` |
| 21 | `theorem` | [arsinh_nonneg_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-nonneg-iff--d0645d2e201275f57d07223e.md) | 150 | `result-track:d0645d2e201275f57d07223ea452f0909f62dbb37ff39ad6e00e1a38b48ef7d7` |
| 22 | `theorem` | [arsinh_nonpos_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-nonpos-iff--be9efc9e6bcb01296d0f0f40.md) | 153 | `result-track:be9efc9e6bcb01296d0f0f40deabad55bb165453ea95c1b65164bc2ac6ac1d6b` |
| 23 | `theorem` | [arsinh_pos_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-pos-iff--ed311f07d947e676b79c9d98.md) | 156 | `result-track:ed311f07d947e676b79c9d98592331f1b60a0b1386310ba6372f52a433e007aa` |
| 24 | `theorem` | [arsinh_neg_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/arsinh-neg-iff--f3dd7eae63c7ecd71e5bd136.md) | 160 | `result-track:f3dd7eae63c7ecd71e5bd136e6e302982cb93dbe517e1e5260fa68cbb6af7f7e` |
| 25 | `theorem` | [hasStrictDerivAt_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/hasstrictderivat-arsinh--af266284da7a4e518bcd80d1.md) | 163 | `result-track:af266284da7a4e518bcd80d1e763cff9816fa9c50da7f7c751845481c78881f7` |
| 26 | `theorem` | [hasDerivAt_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/hasderivat-arsinh--c5b4c80329f8b94e50902337.md) | 168 | `result-track:c5b4c80329f8b94e5090233702981770a03fbbdbbb42c5207d530ad860a0d504` |
| 27 | `theorem` | [differentiable_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/differentiable-arsinh--b462735e7cae6faec6822464.md) | 172 | `result-track:b462735e7cae6faec682246455d9b719a7f36645aa5407122460420456ab0863` |
| 28 | `theorem` | [contDiff_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/contdiff-arsinh--3626444b8280e76e019ce611.md) | 176 | `result-track:3626444b8280e76e019ce611e7754e6b3bfa1cf5fd353f4091c161a95b613d25` |
| 29 | `theorem` | [continuous_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/continuous-arsinh--425ff5bdc584ffc28497c86e.md) | 180 | `result-track:425ff5bdc584ffc28497c86e71e0bd2566746f4c8b7277ea01d5d4e5c048ad89` |
| 30 | `theorem` | [Filter.Tendsto.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/filter-tendsto-arsinh--96103f74c26a9f9436f65ca9.md) | 187 | `result-track:96103f74c26a9f9436f65ca935ec7c28e0938672b3248bd3bcc30a5f26fab8bd` |
| 31 | `theorem` | [ContinuousAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/continuousat-arsinh--e7d1ba8912a43365af2c65fe.md) | 195 | `result-track:e7d1ba8912a43365af2c65fe1b8384cc408bf3f2624768a7bb595e6787cf425a` |
| 32 | `theorem` | [ContinuousWithinAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/continuouswithinat-arsinh--3fd453352cf40b3ec5ae7b21.md) | 199 | `result-track:3fd453352cf40b3ec5ae7b2158f053ac83f77027c4681071838c997c34b9e17f` |
| 33 | `theorem` | [ContinuousOn.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/continuouson-arsinh--9f80df17079adc54318ec535.md) | 203 | `result-track:9f80df17079adc54318ec5355a204f9a0c7dd03fcd28a898f8fae10ed89b89b9` |
| 34 | `theorem` | [Continuous.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/continuous-arsinh--2ffc0431ba78aecc03ebc14b.md) | 206 | `result-track:2ffc0431ba78aecc03ebc14ba07aa254f343c09e200ff32814f6bc5804c3dd88` |
| 35 | `theorem` | [HasStrictFDerivAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/hasstrictfderivat-arsinh--b747e279078e32744e61e099.md) | 216 | `result-track:b747e279078e32744e61e0993a317738f2885624cdae3c3abf4cef95506e6839` |
| 36 | `theorem` | [HasFDerivAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/hasfderivat-arsinh--7d488735903ad505d5f22f6d.md) | 220 | `result-track:7d488735903ad505d5f22f6d5f50c3faf0a758f83b72d7a81db35afb2357dfed` |
| 37 | `theorem` | [HasFDerivWithinAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/hasfderivwithinat-arsinh--536e0f7b2c75c21c8ad88965.md) | 224 | `result-track:536e0f7b2c75c21c8ad88965a735ea2263f55e59d1d606200db3ceac888db9aa` |
| 38 | `theorem` | [DifferentiableAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/differentiableat-arsinh--9d0679425ee80276872fb736.md) | 229 | `result-track:9d0679425ee80276872fb73656f6e0be3d832cb4e47ab8b543c24d9fd7c00df0` |
| 39 | `theorem` | [DifferentiableWithinAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/differentiablewithinat-arsinh--b850f5904133f68fff2397f3.md) | 234 | `result-track:b850f5904133f68fff2397f3440b9c1af7beef191c641327a46613bf289b1d57` |
| 40 | `theorem` | [DifferentiableOn.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/differentiableon-arsinh--0f11301147b6ee891709bf35.md) | 239 | `result-track:0f11301147b6ee891709bf350dde03875aa9ac9ad8ab2476cbe7017d7bd6f685` |
| 41 | `theorem` | [Differentiable.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/differentiable-arsinh--6bfcdaecaac0fe2308da2e1c.md) | 243 | `result-track:6bfcdaecaac0fe2308da2e1c70d0a57d6a5f3668f74e7f30ef7baa50150f0c2e` |
| 42 | `theorem` | [ContDiffAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/contdiffat-arsinh--f4a85f0b3cde018481ac5c87.md) | 247 | `result-track:f4a85f0b3cde018481ac5c87a2e4660b2bc3b5f8bdb784b8157c6e566aef717e` |
| 43 | `theorem` | [ContDiffWithinAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/contdiffwithinat-arsinh--1e64bd043a9f0d3dadf93039.md) | 251 | `result-track:1e64bd043a9f0d3dadf93039e770ba78aa65e533f6b2d80da1d9621893336015` |
| 44 | `theorem` | [ContDiff.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/contdiff-arsinh--5484469fdab883b78a74083a.md) | 256 | `result-track:5484469fdab883b78a74083afdcfa8bebf3c7e27820e57e3c294a328c8607706` |
| 45 | `theorem` | [ContDiffOn.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/contdiffon-arsinh--2d086014794c1822d40a21ec.md) | 260 | `result-track:2d086014794c1822d40a21ec362320c22dd38ca39eb0ec2c5d3e67bb2d666449` |
| 46 | `theorem` | [HasStrictDerivAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/hasstrictderivat-arsinh--dc7af10067888b0b2a48995e.md) | 269 | `result-track:dc7af10067888b0b2a48995eec9feeb430c26dc2a95de6d4eadce194fed4f24e` |
| 47 | `theorem` | [HasDerivAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/hasderivat-arsinh--d08721b19d79e7a13458b45c.md) | 273 | `result-track:d08721b19d79e7a13458b45cd64aaf21eee03b9ad64d42ac1ee79aa2be19306e` |
| 48 | `theorem` | [HasDerivWithinAt.arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arsinh/Variantd82298ea68349c4d5c7ca189ddf60060abeb42e6f4654990b7198570f4629191.lean/declarations/hasderivwithinat-arsinh--7a5cc45d93be703013107bd2.md) | 277 | `result-track:7a5cc45d93be703013107bd255867fb8500fbd251148efb83252d70928fc9881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
