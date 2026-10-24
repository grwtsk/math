# Verification target: GRWTSK.Analysis.MeasureTheory.Defs.Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a208ebf528d3b8e2d7e908a61a7bfebaf69b2726",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a208ebf528d3b8e2d7e908a61a7bfebaf69b2726`.

Source path: `GRWTSK/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.GiryMonad` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Kernel](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/kernel--8af3b204168a0c11012cb7aa.md) | 51 | `declaration-track:8af3b204168a0c11012cb7aafb9c4e6a859db8d5945e70a647d6ec49c9db5f08` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instfunlike--025bca852b2c93272f97a5dd.md) | 72 | `declaration-track:025bca852b2c93272f97a5dd19154bbc071047a4b59651ae4eff75e07ceeb8fa` |
| 3 | `lemma` | [measurable](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/measurable--fdf734d3a45f052a6f76639b.md) | 77 | `result-track:fdf734d3a45f052a6f76639b0a395e213ada3a56c3e5e055c8e15f4de0f862fb` |
| 4 | `lemma` | [aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/aemeasurable--847ddeb0beb045a05908973e.md) | 79 | `result-track:847ddeb0beb045a05908973e59495541f94df3b24280378a5cf7f543f8ba0854` |
| 5 | `lemma` | [coe_mk](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/coe-mk--ecca176b40db0a62ced282c1.md) | 81 | `result-track:ecca176b40db0a62ced282c1d1692b8f6d12dd557740c959cb86a4bfb2f1de31` |
| 6 | `instance` | [instZero](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instzero--e366d66abf2fe0a2d02551d8.md) | 85 | `declaration-track:e366d66abf2fe0a2d02551d804c3b1d69350d9a17d8b2a3c8485325b6c228a5e` |
| 7 | `instance` | [instAdd](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instadd--389448375a24469abf9aa55a.md) | 86 | `declaration-track:389448375a24469abf9aa55a28540dc87673d798bb645617611320a8e3693e21` |
| 8 | `instance` | [instSMulNat](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instsmulnat--bf327a45b1ab248bfa7066b8.md) | 87 | `declaration-track:bf327a45b1ab248bfa7066b8e81fac550d73d27bb730cedfc9a2a0e6c1dd2003` |
| 9 | `lemma` | [coe_zero](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/coe-zero--652896b1d672e8c32215c503.md) | 90 | `result-track:652896b1d672e8c32215c503eb62ad43ada1b285f93067be80a847d4842ce392` |
| 10 | `lemma` | [coe_add](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/coe-add--bd320a64ad51077868409c66.md) | 91 | `result-track:bd320a64ad51077868409c66d4ef057bac6c3a5fed54876fe951d5fbe90be18e` |
| 11 | `lemma` | [coe_nsmul](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/coe-nsmul--d23876a63d58709dbb8e8ff1.md) | 92 | `result-track:d23876a63d58709dbb8e8ff16489de0b4b536614c3c9c4a470922f3a4566f476` |
| 12 | `lemma` | [zero_apply](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/zero-apply--6ae7da9e0eb53deca05ec3f7.md) | 94 | `result-track:6ae7da9e0eb53deca05ec3f71148465e1292917cd04a718edde2dadf0190a7de` |
| 13 | `lemma` | [add_apply](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/add-apply--e42d983a10b786e3d790bb61.md) | 95 | `result-track:e42d983a10b786e3d790bb61da2880e0be9bdab5d8985423f482d207e046755c` |
| 14 | `lemma` | [nsmul_apply](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/nsmul-apply--090ebf57668b6c777185741a.md) | 96 | `result-track:090ebf57668b6c777185741a695214ed7d5336713e969247def4389c2741822d` |
| 15 | `instance` | [instAddCommMonoid](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instaddcommmonoid--6993f2e9bab08c59227b01a3.md) | 98 | `declaration-track:6993f2e9bab08c59227b01a3b9194f4fd74c413c3886efe52f7e4439a469df0b` |
| 16 | `instance` | [instPartialOrder](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instpartialorder--3351ee70afdbe4e2d1e86562.md) | 101 | `declaration-track:3351ee70afdbe4e2d1e86562046eb0c88d220f2089a1acd762a11f0ad9b7b4cd` |
| 17 | `instance` | [instCovariantAddLE](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instcovariantaddle--23755c8206cf0d12ed6096cf.md) | 103 | `declaration-track:23755c8206cf0d12ed6096cfcd1df246149aa42dda46c455ea20dbe69a4ef711` |
| 18 | `instance` | [instOrderBot](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instorderbot--35a858f17ecf818cf84c9804.md) | 108 | `declaration-track:35a858f17ecf818cf84c980407cc5aeb7e76e269e8469863edaa156f409c21fd` |
| 19 | `def` | [coeAddHom](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/coeaddhom--72cbb4063bd5082be6f241ad.md) | 114 | `declaration-track:72cbb4063bd5082be6f241adbae9a6b9ad5998b4173561fad6e608aa247cadad` |
| 20 | `theorem` | [coeAddHom_apply](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/coeaddhom-apply--73d7cda49cde05ae884a359a.md) | 121 | `result-track:73d7cda49cde05ae884a359a6756a238bdf643c5057335b59a32d26f9ddd6ebe` |
| 21 | `theorem` | [coe_finset_sum](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/coe-finset-sum--b303e281cf0f8d744dcfb186.md) | 125 | `result-track:b303e281cf0f8d744dcfb186f4d11acfd5c1a44d1b66ce168bae1e9d5d7742d7` |
| 22 | `theorem` | [finset_sum_apply](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/finset-sum-apply--f5c6526158622e150cd7bfc7.md) | 128 | `result-track:f5c6526158622e150cd7bfc7c0d79155d637bca9e0b5fe5770b0cb08563fc125` |
| 23 | `theorem` | [finset_sum_apply'](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/finset-sum-apply--da71601a4fd744861bc22c88.md) | 131 | `result-track:da71601a4fd744861bc22c8861fdc215bacfa6cd85db38a1df62b19da2694a17` |
| 24 | `class` | [IsMarkovKernel](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/ismarkovkernel--848d851342978ebd6ec950d7.md) | 137 | `declaration-track:848d851342978ebd6ec950d70fc4fb61d3f2069cd9649b61674d32db133a490b` |
| 25 | `class` | [IsZeroOrMarkovKernel](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/iszeroormarkovkernel--7023670248c098dd026b1a12.md) | 141 | `declaration-track:7023670248c098dd026b1a121a0fa678a0a03f5034618a4c02c4ee64f27f0b4f` |
| 26 | `class` | [IsFiniteKernel](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/isfinitekernel--5bd318c254bbfd2883b4c288.md) | 145 | `declaration-track:5bd318c254bbfd2883b4c288e7bccae0e15364880ea0237040d785510766268b` |
| 27 | `theorem` | [eq_zero_or_isMarkovKernel](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/eq-zero-or-ismarkovkernel--c3a2a5bd00bba95a26108f89.md) | 148 | `result-track:c3a2a5bd00bba95a26108f893d7e8a11e654b47d36d67cf18078d635dfd99a1a` |
| 28 | `def` | [IsFiniteKernel.bound](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/isfinitekernel-bound--cdb2d05ea4a55af1980eaabe.md) | 159 | `declaration-track:cdb2d05ea4a55af1980eaabec89d2f2f2ca47f8418d87b85793de4f3f2ee69d9` |
| 29 | `theorem` | [IsFiniteKernel.bound_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/isfinitekernel-bound-lt-top--1516fa505df5aaa892819611.md) | 162 | `result-track:1516fa505df5aaa89281961131ca12d7f332aec6f7e130b94f362ebf987ed93d` |
| 30 | `theorem` | [IsFiniteKernel.bound_ne_top](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/isfinitekernel-bound-ne-top--f80197981dfdaafba8d2971d.md) | 166 | `result-track:f80197981dfdaafba8d2971d0c7a015204f085630cc18d8739b20b61b7b305cf` |
| 31 | `theorem` | [Kernel.measure_le_bound](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/kernel-measure-le-bound--481b37bcc89b478a178e7720.md) | 170 | `result-track:481b37bcc89b478a178e7720608822ad84a3579eeed4f59dd9e95a693b322907` |
| 32 | `instance` | [isFiniteKernel_zero](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/isfinitekernel-zero--8183865707b49f4c82867024.md) | 174 | `declaration-track:8183865707b49f4c828670243147a65ff4bed63e00ce28c056afc5e671a41ead` |
| 33 | `instance` | [IsFiniteKernel.add](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/isfinitekernel-add--ffcc50198a07269d203a2114.md) | 179 | `declaration-track:ffcc50198a07269d203a21144ae6320dbc41d1a58d9fe123fef11646c38a984d` |
| 34 | `lemma` | [isFiniteKernel_of_le](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/isfinitekernel-of-le--7749cab379ee2745499fa99d.md) | 186 | `result-track:7749cab379ee2745499fa99d065561ad84793e2e57d021dac8a3d8c0f9f45314` |
| 35 | `instance` | [IsMarkovKernel.is_probability_measure'](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/ismarkovkernel-is-probability-measure--8e74642dffa10ed3df00c0d5.md) | 192 | `declaration-track:8e74642dffa10ed3df00c0d5576946ac69155707842060d6d4c99d8f5756a5fb` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instance--1469c3d51ab5a2651725c0b2.md) | 196 | `declaration-track:1469c3d51ab5a2651725c0b28879d2c6367c2f890b2ab18f5f64ad936208dcd7` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instance--c8c14b264e22d1c20d1f617a.md) | 198 | `declaration-track:c8c14b264e22d1c20d1f617acc096d952a05414fa4a5e30a3c9cf622c5ba2753` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instance--3eb502b953f3656c028b19ba.md) | 201 | `declaration-track:3eb502b953f3656c028b19ba75db234105410a3a1fb24ac5ca5e0152ed68c2d3` |
| 39 | `instance` | [IsFiniteKernel.isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/isfinitekernel-isfinitemeasure--0bcff6e192ebf2818e0efeb6.md) | 208 | `declaration-track:0bcff6e192ebf2818e0efeb633b53d1e70d0996ad2cb5a693197b28448cec850` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instance--daaee250fb0a27b9a43e4a98.md) | 211 | `declaration-track:daaee250fb0a27b9a43e4a98301c268b3ebc1bd9b0a570369a0cb9eb7e4414b0` |
| 41 | `theorem` | [ext](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/ext--0fc768f110b2cea3d7e7f004.md) | 220 | `result-track:0fc768f110b2cea3d7e7f004e8b74fd83b7d6f2f4c5833579bfcb7e858e27ecb` |
| 42 | `theorem` | [ext_iff'](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/ext-iff--db0f31feefd3cf41fdd0e22c.md) | 222 | `result-track:db0f31feefd3cf41fdd0e22ccfd69151d9dc08bf2ba5ec0263089602dae495c7` |
| 43 | `theorem` | [ext_fun](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/ext-fun--77536a5a176eca4267cb9f79.md) | 225 | `result-track:77536a5a176eca4267cb9f79927f232107628e43e352772f26ed542d8e57995b` |
| 44 | `theorem` | [ext_fun_iff](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/ext-fun-iff--09f6f7b97c8079d163ef7be1.md) | 232 | `result-track:09f6f7b97c8079d163ef7be1e6f0767b01aeb6ceba1ef7db779f958897f5dec5` |
| 45 | `theorem` | [measurable_coe](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/measurable-coe--91fd1ad5eb64a278c6a0fd1f.md) | 235 | `result-track:91fd1ad5eb64a278c6a0fd1f72b071bd302a7c94222748793f098d5d7e66ce5a` |
| 46 | `lemma` | [apply_congr_of_mem_measurableAtom](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/apply-congr-of-mem-measurableatom--69f4b5e6a4616e48de63471b.md) | 239 | `result-track:69f4b5e6a4616e48de63471b3e2d6326ca852b9a6ccd321475a439d2bafcd316` |
| 47 | `lemma` | [eq_zero_of_isEmpty_left](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/eq-zero-of-isempty-left--1fbfd4d0b286a4e323794143.md) | 245 | `result-track:1fbfd4d0b286a4e3237941438220812c527351ee94f520964b55c7496ac779e4` |
| 48 | `lemma` | [eq_zero_of_isEmpty_right](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/eq-zero-of-isempty-right--dbdf8f8be7e8128b10eded93.md) | 250 | `result-track:dbdf8f8be7e8128b10eded9368a555e6a9111c16f6cffe8d9765170484fbb31e` |
| 49 | `def` | [sum](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/sum--5f9121d8ac6c526aa51037a5.md) | 257 | `declaration-track:5f9121d8ac6c526aa51037a54e66d28a71eb28fe53a3e13ececf64efa823cdaf` |
| 50 | `theorem` | [sum_apply](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/sum-apply--e2d135f5e7885ae5dee5748a.md) | 264 | `result-track:e2d135f5e7885ae5dee5748ac4085f397dbfee6dd22dc23cc26a0b6d5208d047` |
| 51 | `theorem` | [sum_apply'](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/sum-apply--ffdb39beda6506b752dab34a.md) | 268 | `result-track:ffdb39beda6506b752dab34a258a686169223d4cfb7c2f3fe9846a524a56a7e4` |
| 52 | `theorem` | [sum_zero](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/sum-zero--b4289ea9f29091503d0ce6f2.md) | 272 | `result-track:b4289ea9f29091503d0ce6f2dda9edf552c0e53af7f096f20c7940a2618aabd2` |
| 53 | `theorem` | [sum_comm](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/sum-comm--3f77efad2120d87990125651.md) | 277 | `result-track:3f77efad2120d8799012565154ba9f01e2b8a9a618459f517741aa8b9045afd3` |
| 54 | `theorem` | [sum_fintype](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/sum-fintype--cca498e34d09f275be994527.md) | 282 | `result-track:cca498e34d09f275be9945275ca980778a938422e862ccec86ee40fb086b5ab0` |
| 55 | `theorem` | [sum_add](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/sum-add--d17fed3a5b773c9413227753.md) | 286 | `result-track:d17fed3a5b773c9413227753d0031bf340138d9e2f4c4179a3442c301e13ade0` |
| 56 | `class` | [_root_.ProbabilityTheory.IsSFiniteKernel](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/root-probabilitytheory-issfinitekernel--76611f3f88df4f616e371967.md) | 297 | `declaration-track:76611f3f88df4f616e3719675474d8647a66a66c36f8983a2625f10dcc3b522e` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/instance--ddb084c73a176b2612d07536.md) | 300 | `declaration-track:ddb084c73a176b2612d0753645d5df858149271268c7935a37eadd67806356d3` |
| 58 | `def` | [seq](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/seq--e51582ff48d6e16ede343790.md) | 314 | `declaration-track:e51582ff48d6e16ede34379083118ac3eefd82ad3051d9e661a10a1da645e28c` |
| 59 | `theorem` | [kernel_sum_seq](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/kernel-sum-seq--0047ad77f9f9ec9202dea4ae.md) | 317 | `result-track:0047ad77f9f9ec9202dea4ae4c015fd3d31668931b7f1898c8b536800439f23c` |
| 60 | `theorem` | [measure_sum_seq](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/measure-sum-seq--9c609549708adc32d276a3b3.md) | 320 | `result-track:9c609549708adc32d276a3b388d8c09f777575f51e9ac6298cf49761043688fd` |
| 61 | `instance` | [isFiniteKernel_seq](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/isfinitekernel-seq--4307976404424eb3990e97ae.md) | 323 | `declaration-track:4307976404424eb3990e97ae2885702d77d636b919e477a9b98bd3b1c2ff6037` |
| 62 | `instance` | [_root_.ProbabilityTheory.IsSFiniteKernel.sFinite](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/root-probabilitytheory-issfinitekernel-sfinite--ad504b1d6acc66ad5f7b0000.md) | 327 | `declaration-track:ad504b1d6acc66ad5f7b0000d0d48caa662e4066c35d9948a0f2304df5bd2804` |
| 63 | `instance` | [IsSFiniteKernel.add](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/issfinitekernel-add--4ce536a46bd8c7b976885203.md) | 331 | `declaration-track:4ce536a46bd8c7b976885203af5dd98b289a82f4902f819650f940d45e9664d6` |
| 64 | `theorem` | [IsSFiniteKernel.finset_sum](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/issfinitekernel-finset-sum--d92c84f6369038f46b319bc1.md) | 336 | `result-track:d92c84f6369038f46b319bc1855c3697e1e39f3da9d1d17ab864ad5eea4702a4` |
| 65 | `theorem` | [isSFiniteKernel_sum_of_denumerable](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/issfinitekernel-sum-of-denumerable--d1b2e39a8e2b05639a5fc43e.md) | 348 | `result-track:d1b2e39a8e2b05639a5fc43e578d6ea3d688b6ac548ce8a3242b0cec00aa5932` |
| 66 | `instance` | [isSFiniteKernel_sum](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/declarations/issfinitekernel-sum--a355650c8f9b757b170b8443.md) | 361 | `declaration-track:a355650c8f9b757b170b8443edcb739b0509b82883a2ec45731545431462b6d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
