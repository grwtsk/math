# Verification target: GRWTSK.Analysis.MeasureTheory.Polish.Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36445ca6cf962ffb3c79fae649fc48eb7ace49ee",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36445ca6cf962ffb3c79fae649fc48eb7ace49ee`.

Source path: `GRWTSK/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Cardinality` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Perfect` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analyticSet_empty](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/analyticset-empty--142022f78113edf92dda4621.md) | 81 | `result-track:142022f78113edf92dda46211c5bc03ff8abce42073584eeea67195dc3393d2a` |
| 2 | `theorem` | [analyticSet_range_of_polishSpace](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/analyticset-range-of-polishspace--7801f50a287e11e9a7697ab5.md) | 86 | `result-track:7801f50a287e11e9a7697ab50d11bb8a5230ffd215e5d21d9c25fbe962430e31` |
| 3 | `theorem` | [_root_.IsOpen.analyticSet_image](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-isopen-analyticset-image--e0ae280df59250caf4e77c36.md) | 99 | `result-track:e0ae280df59250caf4e77c365f5df0d45f69be777204d44d369863feab039389` |
| 4 | `theorem` | [analyticSet_iff_exists_polishSpace_range](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/analyticset-iff-exists-polishspace-range--953e963f1b8c62a343c67f8e.md) | 107 | `result-track:953e963f1b8c62a343c67f8ea3990e32309b070b291c829f998b1c0e590d0908` |
| 5 | `theorem` | [AnalyticSet.image_of_continuousOn](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/analyticset-image-of-continuouson--9a6272a900d618e33b1b4538.md) | 126 | `result-track:9a6272a900d618e33b1b4538c676ce6900630effd225b9dcec8be75f3a3cca8e` |
| 6 | `theorem` | [AnalyticSet.image_of_continuous](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/analyticset-image-of-continuous--82c5822a51cb2f5a00e190c4.md) | 138 | `result-track:82c5822a51cb2f5a00e190c472ede3a870c1999845536b56c204dca2e2be07fe` |
| 7 | `theorem` | [AnalyticSet.iInter](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/analyticset-iinter--96b4220a118c590afa5dfb33.md) | 144 | `result-track:96b4220a118c590afa5dfb334e0054ce542acc533edf5de224b8403b23aee7d4` |
| 8 | `theorem` | [AnalyticSet.iUnion](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/analyticset-iunion--44b528a6e4383bca928ca6ca.md) | 187 | `result-track:44b528a6e4383bca928ca6ca8daa0a5f49e02ad45d797fb185fec5f8caed510d` |
| 9 | `theorem` | [_root_.IsClosed.analyticSet](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-isclosed-analyticset--fa170997fa759262de5e900f.md) | 209 | `result-track:fa170997fa759262de5e900fd71d999b43ccc95379723de54de46e40519d4eba` |
| 10 | `theorem` | [_root_.MeasurableSet.isClopenable](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-measurableset-isclopenable--668da588ecefcc81e7e75eb6.md) | 218 | `result-track:668da588ecefcc81e7e75eb602e4a3ffa8644d33b45174599a9cb14b47804bba` |
| 11 | `theorem` | [_root_.MeasurableSet.analyticSet](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-measurableset-analyticset--f1af95f330e01330e272e45e.md) | 227 | `result-track:f1af95f330e01330e272e45e70a02d6cea17fc4f1d68faadb4757e48092fd490` |
| 12 | `theorem` | [_root_.Measurable.exists_continuous](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-measurable-exists-continuous--f50dd52a3cce88cf47725f97.md) | 242 | `result-track:f50dd52a3cce88cf47725f97097d850cbf1aabaa768957a1fb477272123c7f39` |
| 13 | `theorem` | [_root_.MeasurableSet.analyticSet_image](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-measurableset-analyticset-image--4c70e3deee64037db266c7f7.md) | 264 | `result-track:4c70e3deee64037db266c7f70d494b9447194d193419dfc000ef5893967c5952` |
| 14 | `def` | [MeasurablySeparable](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurablyseparable--f147ad7275862536c225c5e7.md) | 282 | `declaration-track:f147ad7275862536c225c5e7e8d3646e373af2a6dd2434ed9519fd83c7e392ef` |
| 15 | `theorem` | [MeasurablySeparable.iUnion](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurablyseparable-iunion--f7d5b75a04d557a0ce8bcdad.md) | 286 | `result-track:f7d5b75a04d557a0ce8bcdadb642d5709ee56a8eb24933dc29d92c91bb242e76` |
| 16 | `theorem` | [measurablySeparable_range_of_disjoint](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurablyseparable-range-of-disjoint--ec0c6056784ded3742e50f97.md) | 304 | `result-track:ec0c6056784ded3742e50f9744776846cebae7d4bcb7dd6ece42179628822639` |
| 17 | `theorem` | [AnalyticSet.measurablySeparable](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/analyticset-measurablyseparable--1ca616cf127373f514e79bd1.md) | 418 | `result-track:1ca616cf127373f514e79bd1515ed0d89a32fa87eff125370a71ddc943d89234` |
| 18 | `theorem` | [AnalyticSet.measurableSet_of_compl](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/analyticset-measurableset-of-compl--16239f85011d8dafc2a04b7e.md) | 431 | `result-track:16239f85011d8dafc2a04b7e4e62ba0ef8a5dab07c610604f8fe9beb006858de` |
| 19 | `theorem` | [measurableSet_preimage_iff_of_surjective](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurableset-preimage-iff-of-surjective--b732ca29095b3111b7292a30.md) | 454 | `result-track:b732ca29095b3111b7292a30a6ae6deef45c1e445f7e7cf201d1ddf4fc94b0b7` |
| 20 | `theorem` | [map_measurableSpace_eq](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/map-measurablespace-eq--cce8355891ea3ddf1f25ec2a.md) | 465 | `result-track:cce8355891ea3ddf1f25ec2aba9bc9947afbb199b8d3f556b09437fd6421b772` |
| 21 | `theorem` | [map_measurableSpace_eq_borel](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/map-measurablespace-eq-borel--05365e9f5da88498e83c5524.md) | 470 | `result-track:05365e9f5da88498e83c5524b3f10dfaa9cde7263ea4bdf9f7e30c94ec63587e` |
| 22 | `theorem` | [borelSpace_codomain](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/borelspace-codomain--4b43d051c92d9c059e5e6d39.md) | 477 | `result-track:4b43d051c92d9c059e5e6d393b8d87b9105b0784ae402628095bf6b2dfe780ea` |
| 23 | `theorem` | [measurableSet_preimage_iff_preimage_val](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurableset-preimage-iff-preimage-val--9da068eaf3eaca46ba9ff32f.md) | 485 | `result-track:9da068eaf3eaca46ba9ff32feeb91a72f1c5ba431688292a050410fd119df35a` |
| 24 | `theorem` | [measurableSet_preimage_iff_inter_range](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurableset-preimage-iff-inter-range--68f85743891b5a05f0bf8365.md) | 495 | `result-track:68f85743891b5a05f0bf8365b83ba16af4d5e717a2d1283e4137dc0e0d5833af` |
| 25 | `theorem` | [measurable_comp_iff_restrict](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurable-comp-iff-restrict--a91491cce742a880bf6ab437.md) | 505 | `result-track:a91491cce742a880bf6ab43742251105fb695fc060504bff6210f0562396103c` |
| 26 | `theorem` | [measurable_comp_iff_of_surjective](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurable-comp-iff-of-surjective--e2f32c40dbe379c069e8df5c.md) | 513 | `result-track:e2f32c40dbe379c069e8df5c258f4706314b9e68186db09e546d931813bebb29` |
| 27 | `theorem` | [Continuous.map_eq_borel](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/continuous-map-eq-borel--f5658827149158c2604adced.md) | 520 | `result-track:f5658827149158c2604adced64cd76be5622f52483ee38fcb2b729777cf958c9` |
| 28 | `theorem` | [Continuous.map_borel_eq](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/continuous-map-borel-eq--81dd3fee7a8320779fe7245d.md) | 528 | `result-track:81dd3fee7a8320779fe7245de313cdc739d5628fd852ce015949d62c59168089` |
| 29 | `instance` | [Quotient.borelSpace](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/quotient-borelspace--e709aa783a30be2235fcbbf9.md) | 535 | `declaration-track:e709aa783a30be2235fcbbf9a8a1aa3c7cd0cf91e4fc786065b7e541230be6d5` |
| 30 | `instance` | [QuotientGroup.borelSpace](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/quotientgroup-borelspace--aaa8bdd9b3d78081ed83684c.md) | 542 | `declaration-track:aaa8bdd9b3d78081ed83684ca4ce7c3386e83bb66c345a7a451f7a962d6e3719` |
| 31 | `theorem` | [measurableSet_range_of_continuous_injective](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurableset-range-of-continuous-injective--0e5482677132fdec554aed63.md) | 561 | `result-track:0e5482677132fdec554aed632abe2dc1d497204db5a4a73d0d26d93dd5351615` |
| 32 | `theorem` | [_root_.IsClosed.measurableSet_image_of_continuousOn_injOn](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-isclosed-measurableset-image-of-continuouson-injon--cd9060bb2663442cc2bd5102.md) | 711 | `result-track:cd9060bb2663442cc2bd5102ff76ac2d49669b0443e222236476a73530f41035` |
| 33 | `theorem` | [_root_.MeasurableSet.image_of_continuousOn_injOn](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-measurableset-image-of-continuouson-injon--c17bf694b9d05e75b16a469e.md) | 726 | `result-track:c17bf694b9d05e75b16a469ec42e0b58c422667d79713a25b9661f0c900cb462` |
| 34 | `theorem` | [_root_.MeasurableSet.image_of_measurable_injOn](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-measurableset-image-of-measurable-injon--17a36c13e547dfeeb4bb4f5f.md) | 739 | `result-track:17a36c13e547dfeeb4bb4f5f0bd02ce32c5203bf7a03cd3daecacaea37cc6ae6` |
| 35 | `theorem` | [_root_.Continuous.measurableEmbedding](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-continuous-measurableembedding--29febfc4e3cd36cca9b35b8f.md) | 758 | `result-track:29febfc4e3cd36cca9b35b8f11bb2d2271a4e46ddb06a3ad2e169a5f5e0593a5` |
| 36 | `theorem` | [_root_.ContinuousOn.measurableEmbedding](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-continuouson-measurableembedding--55fa414778d652da7220c9cb.md) | 768 | `result-track:55fa414778d652da7220c9cbefb4d0845947764c01e0338c4e95edcdc1927d64` |
| 37 | `theorem` | [_root_.Measurable.measurableEmbedding](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/root-measurable-measurableembedding--2c3c355e20a2a9a7851a27ba.md) | 784 | `result-track:2c3c355e20a2a9a7851a27ba0ee520ff3b1f337992fca3bc847f89aa4ab1f2d7` |
| 38 | `theorem` | [isClopenable_iff_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/isclopenable-iff-measurableset--ec158569cbc8a8d09b8e7f63.md) | 792 | `result-track:ec158569cbc8a8d09b8e7f63409fdbede0a504428e8dd343bf2d3bde05c4894e` |
| 39 | `theorem` | [measurableSet_exists_tendsto](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurableset-exists-tendsto--935992942cdf7c4d1b6ef74c.md) | 817 | `result-track:935992942cdf7c4d1b6ef74cc90e8557aa000608c0715486a6f5d4e05e07bafd` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/instance--7a099cf8e44bbf3b31ca46c8.md) | 849 | `declaration-track:7a099cf8e44bbf3b31ca46c8e387731dd97a49439657ec66a1ac529cde08bcf9` |
| 41 | `theorem` | [secondCountable_of_polish](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/secondcountable-of-polish--3d51f7657c3db40123fc1fbc.md) | 863 | `result-track:3d51f7657c3db40123fc1fbcdf6a74244973e602a16c00f9d7a77a048fe231d4` |
| 42 | `def` | [borelSchroederBernstein](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/borelschroederbernstein--b56522b7a12736937b2d4b02.md) | 876 | `declaration-track:b56522b7a12736937b2d4b02d1d730059b96375009b708d7b0dafccf91f38625` |
| 43 | `def` | [measurableEquivNatBoolOfNotCountable](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurableequivnatboolofnotcountable--e3a27e012fb648f5748224b8.md) | 882 | `declaration-track:e3a27e012fb648f5748224b8997d2c39724a04384fe5d4c8da77350bc6f9ee47` |
| 44 | `def` | [measurableEquivOfNotCountable](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurableequivofnotcountable--5ec509911c9f805294a973f0.md) | 892 | `declaration-track:5ec509911c9f805294a973f043b60adab402db9b43a1e797ed832a1950ee4610` |
| 45 | `def` | [Equiv.measurableEquiv](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/equiv-measurableequiv--b158429b4229e45e953150f8.md) | 898 | `declaration-track:b158429b4229e45e953150f8ee998bc04e83f654711dcb6b68f41a4ae47a607c` |
| 46 | `instance` | [instPolishSpaceUniv](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/instpolishspaceuniv--c8b1b20a952a3d9db552a3fb.md) | 911 | `declaration-track:c8b1b20a952a3d9db552a3fb6c9d5d5107d1ad5edbd9f97369dd6a99b176419d` |
| 47 | `theorem` | [exists_nat_measurableEquiv_range_coe_fin_of_finite](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/exists-nat-measurableequiv-range-coe-fin-of-finite--86247a5288aa49f6def4e4a0.md) | 918 | `result-track:86247a5288aa49f6def4e4a08bf4f439fe9f27ce34617e13e50130f16a15dfd9` |
| 48 | `theorem` | [measurableEquiv_range_coe_nat_of_infinite_of_countable](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/measurableequiv-range-coe-nat-of-infinite-of-countable--39d43ba195f15f7311569561.md) | 925 | `result-track:39d43ba195f15f7311569561a82fb5317895940b7279477917cdaaee38686f1d` |
| 49 | `theorem` | [exists_subset_real_measurableEquiv](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/exists-subset-real-measurableequiv--7399a5ea87c9c4dd4170dfbb.md) | 935 | `result-track:7399a5ea87c9c4dd4170dfbb1fa63107dadd1c949b7cccf988053b3ed8e6fdba` |
| 50 | `theorem` | [exists_measurableEmbedding_real](../../../../../mathematics/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/declarations/exists-measurableembedding-real--02dbe1366922e25a3d2ca3d7.md) | 959 | `result-track:02dbe1366922e25a3d2ca3d7c9c17aa3358121a0680aa5175ac65dbf93407e5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
