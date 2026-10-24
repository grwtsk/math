# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt05.Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d86bd1182f9c0185d7572d388205c9932ed43ecf",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d86bd1182f9c0185d7572d388205c9932ed43ecf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/poweronset--90dc42ecdc2707ac298b69ca.md) | 17 | `declaration-track:90dc42ecdc2707ac298b69cab3cef078eaaa335a8b0a282e226afeb5ac549286` |
| 2 | `def` | [powerWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/powerweight--5a07400674419e25f2f8b111.md) | 20 | `declaration-track:5a07400674419e25f2f8b1112caebd15b85ded84181df19ba17c8767579d235a` |
| 3 | `def` | [positiveOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsetatom--5cef4763b8b2acbe6e74020a.md) | 23 | `declaration-track:5cef4763b8b2acbe6e74020a47ef6c753b601389e7e65ecc18ebffae960ca815` |
| 4 | `def` | [positiveOnsetTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsettail--e42337a715d208d6c6b9eefe.md) | 26 | `declaration-track:e42337a715d208d6c6b9eefe2ade2fe1b70e21b9ce1fd0464d09c5e862de5309` |
| 5 | `theorem` | [powerOnset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/poweronset-pos--e02586e6cf91b51ecb0f83b7.md) | 29 | `result-track:e02586e6cf91b51ecb0f83b7efdad2e59872684e87bfae1fd1772bb83dace904` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/powerweight-nonneg--2e81c9baa45f2337b4aa039f.md) | 33 | `result-track:2e81c9baa45f2337b4aa039ff5fcae767a64b4db15f8bf6719112d916d8626d9` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsetatom-nonneg--49ccafeb57ee7908fafbc597.md) | 38 | `result-track:49ccafeb57ee7908fafbc59725b355326f52c4c9b0909656dee6dc3f7303235a` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsetatom-measurable--37fe6b6203192c7f94a8042e.md) | 42 | `result-track:37fe6b6203192c7f94a8042ee41c3c7a0ecfd160c5a3c7dbc174e3f151c79826` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsetatom-integrable--8355f9dc20940030e3079304.md) | 46 | `result-track:8355f9dc20940030e307930421cdfa04d7acfa24ac76044864d8b130026e5586` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsetatom-integral--029afd6b85048f0a6d846502.md) | 53 | `result-track:029afd6b85048f0a6d8465027d5c4db7a23800e94d8436c4c22a0a199126614f` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsetatom-eq-omitted--3d3ba065dddcfa65cbf756c8.md) | 61 | `result-track:3d3ba065dddcfa65cbf756c80d8d3cc8a210f303d229bfba57aab8b45187c6ce` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsetatom-le-zeromoment--139bd2de491e5374a8151aff.md) | 69 | `result-track:139bd2de491e5374a8151aff1a897dd128be19ad7146e66c696e3f95a78ce175` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsettail-summable--2fdc06f60ed0ce9c30dd8f06.md) | 76 | `result-track:2fdc06f60ed0ce9c30dd8f064ee5696b8029aa9516ee49fd97a7aae8d99d575f` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsettail-nonneg--149975f9ec255b5eb7152b33.md) | 81 | `result-track:149975f9ec255b5eb7152b330c714c8f75e2fe534fcb931a7aac769426283322` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsettail-measurable--5bdd3b38de5a8f62127bd95c.md) | 84 | `result-track:5bdd3b38de5a8f62127bd95c01826610149ad2e924b745a13ad9136bf72d601e` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsettail-eq-indicator--7840c214f9b1e2385cf44102.md) | 87 | `result-track:7840c214f9b1e2385cf44102e1b3fd319860f1fda53b48e768be4d9332f68d15` |
| 17 | `theorem` | [positiveOnsetTail_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsettail-lintegral--2e614320b188482e8204a993.md) | 97 | `result-track:2e614320b188482e8204a9937a6e0b009d87fc51ed1e41f490bc32f51599dedf` |
| 18 | `theorem` | [positiveOnsetTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsettail-integrable--4332e0346fa75777565c869b.md) | 121 | `result-track:4332e0346fa75777565c869b13ece07438860f548e7a70d3c626a235718e5f92` |
| 19 | `theorem` | [positiveOnsetTail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/positiveonsettail-integral--0176b3f60d5b3ed09cd1c2db.md) | 127 | `result-track:0176b3f60d5b3ed09cd1c2db5f3f5c632d9b5c52e1a3497f757e6fa39b2a7be6` |
| 20 | `theorem` | [omittedOnsetTail_integrable_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/omittedonsettail-integrable-positive--706821bd7fb77a3287cff8f0.md) | 134 | `result-track:706821bd7fb77a3287cff8f027ca86adc6701c0581e4e3c91b503758522b9570` |
| 21 | `theorem` | [omittedOnsetTail_integral_eq_B1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/omittedonsettail-integral-eq-b1--5a006cb8acd9f0074a47819f.md) | 139 | `result-track:5a006cb8acd9f0074a47819f63a672885a46058145b9638465345672884ce1c9` |
| 22 | `def` | [closedOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/closedonsetatom--dd2c63a5b51070df1c827ad5.md) | 145 | `declaration-track:dd2c63a5b51070df1c827ad5ad69ad25439209b80191e3a6aba483417342bdcf` |
| 23 | `def` | [closedOnsetPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/closedonsetprefix--79e9b86afc213fa992a8a03e.md) | 148 | `declaration-track:79e9b86afc213fa992a8a03e91f5d648976b52a1c7734bbe737729abaf2f0664` |
| 24 | `theorem` | [closedOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/closedonsetatom-nonneg--68a6c16ca3e6dc8d21905cc0.md) | 151 | `result-track:68a6c16ca3e6dc8d21905cc020063d174a6d57da0bc3206c1bf0d7f4b9390456` |
| 25 | `theorem` | [closedOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/closedonsetatom-le-zeromoment--f4dfab01535d867c5988dd4f.md) | 158 | `result-track:f4dfab01535d867c5988dd4f415bc3b7a1202c5097de268f8584b06149e08fd9` |
| 26 | `theorem` | [closedOnsetPrefix_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/closedonsetprefix-summable--4ce7a5b91c641bd3cdfb33ff.md) | 165 | `result-track:4ce7a5b91c641bd3cdfb33ff042b87097580f448ea646970d5f78e129227c287` |
| 27 | `theorem` | [closedOnsetAtom_add_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/closedonsetatom-add-omitted--b3780eee89862a93a296092a.md) | 170 | `result-track:b3780eee89862a93a296092afe142634b3f7636d2338aac84d284f70a7aa5965` |
| 28 | `theorem` | [closedOnsetPrefix_add_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/closedonsetprefix-add-tail--edaf7e738938b3936f40458d.md) | 177 | `result-track:edaf7e738938b3936f40458d7f79e4cbaed3106d89ee8d4c723c885bc2ba5ae0` |
| 29 | `theorem` | [properPowerMoment_sub_closedPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/properpowermoment-sub-closedprefix--8bcb402559ddc36899c2385e.md) | 184 | `result-track:8bcb402559ddc36899c2385eb605794c49daa342a9eb7ec58f9a96d37386e2a6` |
| 30 | `theorem` | [closedOnsetAtom_touching](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/closedonsetatom-touching--27ea69af25ba69f677c54d4c.md) | 188 | `result-track:27ea69af25ba69f677c54d4c5e07d8acfecb956444bd5abb4cb884e655e48813` |
| 31 | `theorem` | [powerOnset_ge_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/poweronset-ge-first--b7305b825222625b6d19c9f5.md) | 193 | `result-track:b7305b825222625b6d19c9f518444a3c14bf0d6b55e0e38fbafb39026dc16e41` |
| 32 | `theorem` | [closedOnsetPrefix_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/closedonsetprefix-below-first--8500fd0a1733bb50e5b59423.md) | 200 | `result-track:8500fd0a1733bb50e5b594236067aca8a78c967a0fe0c2dff14feeee6f8bcde2` |
| 33 | `theorem` | [omittedOnsetTail_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/declarations/omittedonsettail-below-first--8aedbbc4e79bb8494121e48a.md) | 208 | `result-track:8aedbbc4e79bb8494121e48a15deb7b48d20cc8d74d6ce61eba781d2abdd6c54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
