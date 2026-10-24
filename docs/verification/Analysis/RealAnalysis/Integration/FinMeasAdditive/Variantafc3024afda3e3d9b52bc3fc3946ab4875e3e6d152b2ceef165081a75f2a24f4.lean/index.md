# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FinMeasAdditive.Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b03dc6a255a28044d8e3f269005139e450514ee6",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b03dc6a255a28044d8e3f269005139e450514ee6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FinMeasAdditive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/finmeasadditive--2383fa5cb744f360890b192b.md) | 50 | `declaration-track:2383fa5cb744f360890b192b7257ebc95ef46719e6ff9287893b3d61adaf467b` |
| 2 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/zero--8375cce75fb0d6786af2486e.md) | 59 | `result-track:8375cce75fb0d6786af2486e9d713d3c6f58033407a9f17dc6ff78110c20a873` |
| 3 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/add--52e3ea335f8136c7109b87b3.md) | 61 | `result-track:52e3ea335f8136c7109b87b3a3d0865a1da78089ad88b6ecf4fcd1f99296ae9e` |
| 4 | `theorem` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/smul--46a644f2055280dc87053f17.md) | 67 | `result-track:46a644f2055280dc87053f17c8154fc0cac87216409521297c6ae1fb5e838fa3` |
| 5 | `theorem` | [of_eq_top_imp_eq_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/of-eq-top-imp-eq-top--6322ef23868ab0dc110be015.md) | 71 | `result-track:6322ef23868ab0dc110be01542e6c21a1da9884ab55503fb64b7ce08a302b04a` |
| 6 | `theorem` | [of_smul_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/of-smul-measure--43bbec9bd2925dcf8f0706ec.md) | 75 | `result-track:43bbec9bd2925dcf8f0706ec900be90ea159193544c81450c99d66af30721f26` |
| 7 | `theorem` | [smul_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/smul-measure--582467bf7a5eb01fc94f66f6.md) | 82 | `result-track:582467bf7a5eb01fc94f66f6f0bd3d342684d6955e166e6e8a52b017ab686cbe` |
| 8 | `theorem` | [smul_measure_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/smul-measure-iff--0ba568084ff5c3758f44ec36.md) | 89 | `result-track:0ba568084ff5c3758f44ec36418c5688bc0f0c8dbf32cdcc9e964d598633f8f9` |
| 9 | `theorem` | [map_empty_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/map-empty-eq-zero--0e096ccea31c850c165afcf6.md) | 93 | `result-track:0e096ccea31c850c165afcf6ca591a69467dbd5e7e96e8ab6c6fe974e6086a7d` |
| 10 | `theorem` | [map_iUnion_fin_meas_set_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/map-iunion-fin-meas-set-eq-sum--cc8786ca2173564b3b96110d.md) | 101 | `result-track:cc8786ca2173564b3b96110da5cb77d93689003a5f3aafa47af5acfec99f2e29` |
| 11 | `def` | [DominatedFinMeasAdditive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/dominatedfinmeasadditive--fce8a47e57b6378ad9321815.md) | 133 | `declaration-track:fce8a47e57b6378ad9321815d809e063cc9093d6d5b56612be30a805c3b90b0d` |
| 12 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/zero--1c99692c457cdd22914dab80.md) | 141 | `result-track:1c99692c457cdd22914dab803e27b7a4a3e343db0e002fa9ec674ec537844c8a` |
| 13 | `theorem` | [eq_zero_of_measure_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/eq-zero-of-measure-zero--66f027702d55ec4f3410b78b.md) | 147 | `result-track:66f027702d55ec4f3410b78bb7a31d5e6e3265cecbff8a6c40a468ef14ee3d6c` |
| 14 | `theorem` | [eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/eq-zero--4dba25b74848af895375475d.md) | 154 | `result-track:4dba25b74848af895375475da0634368be26ad3f3037d52dcb4797e9fa27636c` |
| 15 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/add--9e2d540c2ddea7c9aec219fc.md) | 159 | `result-track:9e2d540c2ddea7c9aec219fc08b5d61633654e23e55d0315b203c8962edb74de` |
| 16 | `theorem` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/smul--ed6640e2d86a5bd36fe3d4cf.md) | 165 | `result-track:ed6640e2d86a5bd36fe3d4cf75787f5e47475e19e01de0ebfa81d80cad4cd586` |
| 17 | `theorem` | [of_measure_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/of-measure-le--2a8dfb2da83f2fe6bb0c3792.md) | 172 | `result-track:2a8dfb2da83f2fe6bb0c3792262b224154b74524a3fb1e490aace2e6f10a0867` |
| 18 | `theorem` | [add_measure_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/add-measure-right--1d09c515986423b6aefa57d0.md) | 184 | `result-track:1d09c515986423b6aefa57d0e4eb51c171ee30f16cdd644b0d07e52512f696a3` |
| 19 | `theorem` | [add_measure_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/add-measure-left--864d4b269ce4ca12fc23873a.md) | 188 | `result-track:864d4b269ce4ca12fc23873abcfb33c6b2ad55fe111be0745157414c643f9cb5` |
| 20 | `theorem` | [of_smul_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/of-smul-measure--b2f36b134bcf270a7c33545f.md) | 192 | `result-track:b2f36b134bcf270a7c33545fd36085ad077941fba21e06c2dc30007bff01b92b` |
| 21 | `theorem` | [of_measure_le_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/of-measure-le-smul--a435b0e0225e21fe3c96daa6.md) | 206 | `result-track:a435b0e0225e21fe3c96daa6eaf44ab4f53faa798ec6f3989bb599c4285e12c5` |
| 22 | `def` | [setToSimpleFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc--2db90d914f95b4bea9f5fdc9.md) | 218 | `declaration-track:2db90d914f95b4bea9f5fdc92ae6839c6dc3be0fb386b16fe877010bbd5eee50` |
| 23 | `theorem` | [setToSimpleFunc_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-zero--e8a6e5c84f1fd1a6d0bd8368.md) | 222 | `result-track:e8a6e5c84f1fd1a6d0bd83687629ea62ea59b02fd3b381990ab5907634ee2cfc` |
| 24 | `theorem` | [setToSimpleFunc_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-zero--859d506b0c000b6434aed9df.md) | 225 | `result-track:859d506b0c000b6434aed9dfd26cb1a0ccb11331c714cf94f8f96b0bbdcc5fba` |
| 25 | `theorem` | [setToSimpleFunc_zero_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-zero-apply--bc874ce046759da4be632ae4.md) | 237 | `result-track:bc874ce046759da4be632ae4642606abdb4e41ab69bcb87c6f95c04d21ece65a` |
| 26 | `theorem` | [setToSimpleFunc_eq_sum_filter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-eq-sum-filter--53f5497f2f035636530331f4.md) | 241 | `result-track:53f5497f2f035636530331f4af0c4935e84e8dcedfb80e33258a8dc552e1cbe4` |
| 27 | `theorem` | [map_setToSimpleFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/map-settosimplefunc--93befb9ffd786d9271fcb92d.md) | 249 | `result-track:93befb9ffd786d9271fcb92d9765fcca069d8de36108e98dbf869d9c3e802e5b` |
| 28 | `theorem` | [setToSimpleFunc_congr'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-congr--74670a8704d57b0fb61d4cf0.md) | 293 | `result-track:74670a8704d57b0fb61d4cf0d72d3955e6a2b4941fcb08c37941dff8aa38f1d0` |
| 29 | `theorem` | [setToSimpleFunc_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-congr--28a62ea47de3f493fc289adc.md) | 312 | `result-track:28a62ea47de3f493fc289adcf8855340271efe8f36a57636d8a8e7e896e787ea` |
| 30 | `theorem` | [setToSimpleFunc_congr_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-congr-left--f80efebb1a4f2356e2c27fad.md) | 323 | `result-track:f80efebb1a4f2356e2c27fad9e8481c55fcbae29ff169a718e6be95ef445ba1a` |
| 31 | `theorem` | [setToSimpleFunc_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-add-left--54c869df9c6dbcd433931267.md) | 333 | `result-track:54c869df9c6dbcd433931267cc1dc5a21354860c4e8f9da707bdb46a58bac945` |
| 32 | `theorem` | [setToSimpleFunc_add_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-add-left--751e29e0fd1bf9c0c876b559.md) | 339 | `result-track:751e29e0fd1bf9c0c876b5596118918baa278c7dd3b572097a5093a986b4d090` |
| 33 | `theorem` | [setToSimpleFunc_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-smul-left--02b7d0bce7f2a201b08bc1dc.md) | 356 | `result-track:02b7d0bce7f2a201b08bc1dc9759a8d497033e25e0dbfc83bb6ccfe0baf08b00` |
| 34 | `theorem` | [setToSimpleFunc_smul_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-smul-left--3f45b5cd0357000a7b4097e1.md) | 360 | `result-track:3f45b5cd0357000a7b4097e14791c663da0e17f9e6e11f9d981d04c70c3116a6` |
| 35 | `theorem` | [setToSimpleFunc_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-add--f79abe813509d2b6755aa2d6.md) | 375 | `result-track:f79abe813509d2b6755aa2d6c468a627a31f323fb03531695cac7061a00a174b` |
| 36 | `theorem` | [setToSimpleFunc_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-neg--541e04d9898ea92b2b99630b.md) | 392 | `result-track:541e04d9898ea92b2b99630b5500455e401fc109ce07306d17d3c7b67f8a5d46` |
| 37 | `theorem` | [setToSimpleFunc_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-sub--05db744db1d3540f808a301a.md) | 400 | `result-track:05db744db1d3540f808a301a20b755a4e7c49d54ab7ea09e74a15a1102df8da0` |
| 38 | `theorem` | [setToSimpleFunc_smul_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-smul-real--5cbe2d698442c0f4de5322c8.md) | 412 | `result-track:5cbe2d698442c0f4de5322c8eed996b3fe30639657b74a18401475d2495a590a` |
| 39 | `theorem` | [setToSimpleFunc_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-smul--0df87402543e3a150e61842a.md) | 421 | `result-track:0df87402543e3a150e61842a40156ec86a2bfbe02416d559c20edfe8ef2e8b35` |
| 40 | `theorem` | [setToSimpleFunc_mono_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-mono-left--c81e0134903a7e2d8e1d3060.md) | 437 | `result-track:c81e0134903a7e2d8e1d3060e632e349455f6281fc088ee68c1efd0a3639ba43` |
| 41 | `theorem` | [setToSimpleFunc_mono_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-mono-left--088bd80ccf457375dc96c2ba.md) | 441 | `result-track:088bd80ccf457375dc96c2ba01080e8c01bd2652e1a9ee56307d56c35ecddd09` |
| 42 | `theorem` | [setToSimpleFunc_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-nonneg--b89e9fd78ad831d79c02a4e9.md) | 449 | `result-track:b89e9fd78ad831d79c02a4e99450b88911fd04a0a4f9f7646c24a1a3ee57938e` |
| 43 | `theorem` | [setToSimpleFunc_nonneg'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-nonneg--a4fe087b7741cd1cb7073327.md) | 459 | `result-track:a4fe087b7741cd1cb707332774bac0e85e4e26d4edb4e17e6fef5812c303d1df` |
| 44 | `theorem` | [setToSimpleFunc_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-mono--1f2d7e182ff7a583b267abce.md) | 472 | `result-track:1f2d7e182ff7a583b267abcea928e614da6175bbd05ebb86f49687666819bbf1` |
| 45 | `theorem` | [norm_setToSimpleFunc_le_sum_opNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/norm-settosimplefunc-le-sum-opnorm--492c54d866a105a444b07393.md) | 485 | `result-track:492c54d866a105a444b07393872da4e5f098598f5a46b42bf4c337e5e1fc78ff` |
| 46 | `theorem` | [norm_setToSimpleFunc_le_sum_mul_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/norm-settosimplefunc-le-sum-mul-norm--d29b071385bac08b8f8b6097.md) | 492 | `result-track:d29b071385bac08b8f8b60975cd7048c06332aa857d2602e2bc0ee35ad39b57d` |
| 47 | `theorem` | [norm_setToSimpleFunc_le_sum_mul_norm_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/norm-settosimplefunc-le-sum-mul-norm-of-integrable--c34990ace779a0f406b1ef82.md) | 503 | `result-track:c34990ace779a0f406b1ef82d4193f070e0cf61d74e01701995b385f4347e1d0` |
| 48 | `theorem` | [setToSimpleFunc_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-indicator--132c6d6a25fb507bfa933152.md) | 519 | `result-track:132c6d6a25fb507bfa9331521597fa39425a7563fb988507530446bdee48aa1b` |
| 49 | `theorem` | [setToSimpleFunc_const'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-const--ba3f66225f8a6a94f0bc8177.md) | 547 | `result-track:ba3f66225f8a6a94f0bc8177e5d801eb185a0e24e2bb4cdc3694ca7a6f4ca20d` |
| 50 | `theorem` | [setToSimpleFunc_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/declarations/settosimplefunc-const--7c8472704da9be8834e20246.md) | 552 | `result-track:7c8472704da9be8834e20246dc191c369d51c8bd7f97b22d0e0338f1dc856abb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
