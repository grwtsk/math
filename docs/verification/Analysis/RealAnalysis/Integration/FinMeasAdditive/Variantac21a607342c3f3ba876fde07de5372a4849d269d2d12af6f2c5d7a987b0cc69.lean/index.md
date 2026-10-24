# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FinMeasAdditive.Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c0e5a2816a1941dca32317ed28b4d194f5fa166",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c0e5a2816a1941dca32317ed28b4d194f5fa166`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FinMeasAdditive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/finmeasadditive--f1b7891d0f70c9edfc6c8e3d.md) | 58 | `declaration-track:f1b7891d0f70c9edfc6c8e3d8c2ba2f3d72da23d1e3ddcd1d3903c029a3397d3` |
| 2 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/zero--f4f01c3e6a5550f7c4180081.md) | 67 | `result-track:f4f01c3e6a5550f7c418008162ece0458ee716d2b1094dc23a21b8aa3f8e5170` |
| 3 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/add--986af088d676840490ec591c.md) | 69 | `result-track:986af088d676840490ec591cc19c9be31579ca3533011f808c777e370aca1973` |
| 4 | `theorem` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/smul--55b4f696ac21f14381bd1be4.md) | 75 | `result-track:55b4f696ac21f14381bd1be4087fd88ad646c8f32172efb475ba54aa0ce1bb49` |
| 5 | `theorem` | [of_eq_top_imp_eq_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/of-eq-top-imp-eq-top--2a21de7a4b371f37591e02ba.md) | 79 | `result-track:2a21de7a4b371f37591e02baa629271533fea9707623a14246c926122c525c71` |
| 6 | `theorem` | [of_smul_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/of-smul-measure--a2e2aeaeee3ba24f46316386.md) | 83 | `result-track:a2e2aeaeee3ba24f463163862189abcf8fd0827f0cec38b0467c5d893d441d80` |
| 7 | `theorem` | [smul_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/smul-measure--e4518c1c9c63d721b6ee77f0.md) | 90 | `result-track:e4518c1c9c63d721b6ee77f0cd680575923edf4d3d7a069dc7d428acde8056a3` |
| 8 | `theorem` | [smul_measure_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/smul-measure-iff--43d0786ca80be11f5fc96e44.md) | 97 | `result-track:43d0786ca80be11f5fc96e445ee6b0438db8dcec70447873ff1a8aa72c632508` |
| 9 | `theorem` | [map_empty_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/map-empty-eq-zero--6f9aebc25de7d691e001f039.md) | 101 | `result-track:6f9aebc25de7d691e001f039ac4da3d632a56936f7992c8edbd5d92a11b24983` |
| 10 | `theorem` | [map_iUnion_fin_meas_set_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/map-iunion-fin-meas-set-eq-sum--e0939f7cd71cfc2f34a604c3.md) | 109 | `result-track:e0939f7cd71cfc2f34a604c3a92c864f3d8db1943ccd1814c04ebefb4d6b2371` |
| 11 | `def` | [DominatedFinMeasAdditive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/dominatedfinmeasadditive--87f91023c9f921fc505d91ba.md) | 141 | `declaration-track:87f91023c9f921fc505d91bacb33f0ba05dbac6804d10e8622e6836dfcf76c6e` |
| 12 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/zero--615858447690c6c60178ddfc.md) | 149 | `result-track:615858447690c6c60178ddfcc7213d3a5fa9f175fe517ffaa407588165cbc7b9` |
| 13 | `theorem` | [eq_zero_of_measure_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/eq-zero-of-measure-zero--c9900c877d82a018a9476cd6.md) | 155 | `result-track:c9900c877d82a018a9476cd6c4f69567d1e26ccc55f7c96cd20ad254ac709148` |
| 14 | `theorem` | [eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/eq-zero--94a32f25a43be5a51bf4a77a.md) | 162 | `result-track:94a32f25a43be5a51bf4a77ac4a04d6d7319b22171a890d23d7e2455a63a9773` |
| 15 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/add--2723d858e061a4cebbdb289f.md) | 167 | `result-track:2723d858e061a4cebbdb289f6c8a499854acb1894f5b3d9e409d9f7f15d3ce9d` |
| 16 | `theorem` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/smul--1c492f59cde3e1734d1ca9a5.md) | 173 | `result-track:1c492f59cde3e1734d1ca9a5f4578904a4fe7122733403737da5cf72137d120c` |
| 17 | `theorem` | [of_measure_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/of-measure-le--a25b8cb3cebdaad95d77dbcf.md) | 180 | `result-track:a25b8cb3cebdaad95d77dbcf82ebb63a1fccac88e9e3d009af91a3b190a28b35` |
| 18 | `theorem` | [add_measure_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/add-measure-right--14d5ea1b9f9c230119b248e9.md) | 192 | `result-track:14d5ea1b9f9c230119b248e9e1336f43d67aa045311607777180d161791ef4e9` |
| 19 | `theorem` | [add_measure_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/add-measure-left--66f73973d2e8ab104a0b6aa0.md) | 196 | `result-track:66f73973d2e8ab104a0b6aa04f085823a27871506db5c945dc370353f104466f` |
| 20 | `theorem` | [of_smul_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/of-smul-measure--93be715251de024a1a73f64e.md) | 200 | `result-track:93be715251de024a1a73f64edef07ef31a0e42bf4b21dd12df11f4b94c780f45` |
| 21 | `theorem` | [of_measure_le_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/of-measure-le-smul--40a4c2eac4cf66696613c5db.md) | 214 | `result-track:40a4c2eac4cf66696613c5db6d09b9fd2cecc4ee6c6aea2e751bca5b7dd88a44` |
| 22 | `def` | [setToSimpleFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc--5af6135bb9fcbc9a275822b4.md) | 226 | `declaration-track:5af6135bb9fcbc9a275822b44677bdb039172fe98acd33c742a7e2aac7563451` |
| 23 | `theorem` | [setToSimpleFunc_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-zero--51281dae6908fb86c2c2316e.md) | 230 | `result-track:51281dae6908fb86c2c2316ec78214cb14f3c8109f0577e5abc9c00260475723` |
| 24 | `theorem` | [setToSimpleFunc_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-zero--3195722aa26f918840ad8259.md) | 233 | `result-track:3195722aa26f918840ad8259cda2e67db222d5aa131b919bca10678bb32e6266` |
| 25 | `theorem` | [setToSimpleFunc_zero_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-zero-apply--031421e54b2b5e21b331fd32.md) | 245 | `result-track:031421e54b2b5e21b331fd32c1759874a47bbccb7a123fdfb26bf082cad8db6d` |
| 26 | `theorem` | [setToSimpleFunc_eq_sum_filter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-eq-sum-filter--aafc26671bbc5363dd1f63ce.md) | 249 | `result-track:aafc26671bbc5363dd1f63ce049e6371a400c8775c8b6c6fb3a07f3ed3a9039a` |
| 27 | `theorem` | [map_setToSimpleFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/map-settosimplefunc--f0b5d0656b7b8b5d198b4da8.md) | 257 | `result-track:f0b5d0656b7b8b5d198b4da8713dd1bffbe3baca97ce2e9a7797e2e7ddc6be86` |
| 28 | `theorem` | [setToSimpleFunc_congr'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-congr--320cc4374e23b3d75a09e1fb.md) | 301 | `result-track:320cc4374e23b3d75a09e1fbc24343089de09619df6ea44ed2f6c3719cff631d` |
| 29 | `theorem` | [setToSimpleFunc_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-congr--80f5b5ac76dde558f4d38ace.md) | 320 | `result-track:80f5b5ac76dde558f4d38ace717a01707b268f38aa81b26a90b3010f755e9605` |
| 30 | `theorem` | [setToSimpleFunc_congr_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-congr-left--5dbbbd7518d54bf93e9c8732.md) | 331 | `result-track:5dbbbd7518d54bf93e9c8732e6bdca3c65f8bc8f91ca9359a3775f91bb787151` |
| 31 | `theorem` | [setToSimpleFunc_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-add-left--165b13600b1aab30494826d2.md) | 341 | `result-track:165b13600b1aab30494826d26fa26b28312fe4dd7143b926bd6ceb3fb45e136e` |
| 32 | `theorem` | [setToSimpleFunc_add_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-add-left--2f74609a2ae5005899ee989e.md) | 347 | `result-track:2f74609a2ae5005899ee989efbc0c4c2c5ea9486552b3ef2f49915da30419a05` |
| 33 | `theorem` | [setToSimpleFunc_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-smul-left--f7445bc1c34ad0cfe2eae54b.md) | 364 | `result-track:f7445bc1c34ad0cfe2eae54b9098f33147435f7eddba3c24a8df1756f9ce3686` |
| 34 | `theorem` | [setToSimpleFunc_smul_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-smul-left--7832e6092733eb1066708590.md) | 368 | `result-track:7832e6092733eb1066708590e07b31a28b69f0c5a8c257ad194f450a07b3a71b` |
| 35 | `theorem` | [setToSimpleFunc_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-add--f68db6dcc999ebffc779261e.md) | 383 | `result-track:f68db6dcc999ebffc779261ed9f05b8deb7c53e6440a539814bab4c0b781e6c9` |
| 36 | `theorem` | [setToSimpleFunc_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-neg--f0d35aeb0faa311ba219afad.md) | 400 | `result-track:f0d35aeb0faa311ba219afad96011dd9be7cc840e262aa9a4b98c6cfc6b2d0f5` |
| 37 | `theorem` | [setToSimpleFunc_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-sub--1f5ac21876af00d8edd6540d.md) | 408 | `result-track:1f5ac21876af00d8edd6540dba8195735ae045c1275f669b152c425321d5ad32` |
| 38 | `theorem` | [setToSimpleFunc_smul_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-smul-real--4e8efe9777a1d90efa8005cc.md) | 420 | `result-track:4e8efe9777a1d90efa8005cc745707b081a777f7023095610553860c00abe5cb` |
| 39 | `theorem` | [setToSimpleFunc_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-smul--d7349fa7e76b39d72ead2d5c.md) | 429 | `result-track:d7349fa7e76b39d72ead2d5c27cff78f4ed8200d2c14d675699ba1a7b7a34809` |
| 40 | `theorem` | [setToSimpleFunc_mono_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-mono-left--98d6f897653abb4782c44bf0.md) | 445 | `result-track:98d6f897653abb4782c44bf021f4d602dd03378d645da67debd0bc06c330dcc9` |
| 41 | `theorem` | [setToSimpleFunc_mono_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-mono-left--7454713555ce25c1df7dd424.md) | 449 | `result-track:7454713555ce25c1df7dd42484dee95cda6f853acd69e7fdfc4ff23d32c81b13` |
| 42 | `theorem` | [setToSimpleFunc_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-nonneg--38ba2b0fc3b153818b6d787e.md) | 457 | `result-track:38ba2b0fc3b153818b6d787e8d956e7e76ffc647add803d3574a847491565b99` |
| 43 | `theorem` | [setToSimpleFunc_nonneg'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-nonneg--46b2944312df80ffd55afe1d.md) | 467 | `result-track:46b2944312df80ffd55afe1d910bf6072f8e17c1b8098b3971c27f503be56825` |
| 44 | `theorem` | [setToSimpleFunc_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-mono--bc9c395534aa698f28ef0464.md) | 480 | `result-track:bc9c395534aa698f28ef0464123819063e3973ecca390e95c0c41e0b6dee475a` |
| 45 | `theorem` | [norm_setToSimpleFunc_le_sum_opNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/norm-settosimplefunc-le-sum-opnorm--12ff7d1d2aa062fe4502afa9.md) | 493 | `result-track:12ff7d1d2aa062fe4502afa9e977dd9f07a066d8b03c6d409cdc3ebc0d8d7878` |
| 46 | `theorem` | [norm_setToSimpleFunc_le_sum_mul_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/norm-settosimplefunc-le-sum-mul-norm--b54eb0797fc263e27c82b627.md) | 500 | `result-track:b54eb0797fc263e27c82b627b74ec5fe106096895ce60cbe9bbae102e22d15b8` |
| 47 | `theorem` | [norm_setToSimpleFunc_le_sum_mul_norm_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/norm-settosimplefunc-le-sum-mul-norm-of-integrable--872750f2bf03b419ee657700.md) | 511 | `result-track:872750f2bf03b419ee65770097a063ff44f091dc7784ad12fcd331cf4ffb6d79` |
| 48 | `theorem` | [setToSimpleFunc_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-indicator--b4308ebdc42e9a96e0e5f780.md) | 527 | `result-track:b4308ebdc42e9a96e0e5f780dd8bf72f6bdbd9d29dc2142b173b5f4034bbfcd6` |
| 49 | `theorem` | [setToSimpleFunc_const'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-const--3209b9b96c91fe7d75fe7661.md) | 555 | `result-track:3209b9b96c91fe7d75fe76614dce9a47c97299aad6ae74ea1752e56fbbd66f98` |
| 50 | `theorem` | [setToSimpleFunc_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantac21a607342c3f3ba876fde07de5372a4849d269d2d12af6f2c5d7a987b0cc69.lean/declarations/settosimplefunc-const--9433d2130eda51f40ae1ba88.md) | 560 | `result-track:9433d2130eda51f40ae1ba885630aaae668940e93b8e6d853770242d9804116a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
