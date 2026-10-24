# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Extreme.Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc7a148d0cce7c8fe81e0dc235e22bd0e41965e0",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc7a148d0cce7c8fe81e0dc235e22bd0e41965e0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Hull` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsExtreme](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme--f99dd8a910d4cf344bc29068.md) | 58 | `declaration-track:f99dd8a910d4cf344bc29068f04e048ed9ed4f3ffb14f8b04896579b2aca2ac3` |
| 2 | `def` | [Set.extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/set-extremepoints--0db2ede7852f39ad143e40dc.md) | 64 | `declaration-track:0db2ede7852f39ad143e40dcd2aa01c678283bf849546a85b8afdf0f9727fbaf` |
| 3 | `theorem` | [IsExtreme.refl](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-refl--ba59b3c8df5bf407c24a7291.md) | 69 | `result-track:ba59b3c8df5bf407c24a729166aad37006fb7e09c321399a144824d2b2052571` |
| 4 | `theorem` | [IsExtreme.rfl](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-rfl--82d3c1156abf82a57c6293f2.md) | 75 | `result-track:82d3c1156abf82a57c6293f2b0e465f0d73c24a2ea888073296666dbfad24b88` |
| 5 | `theorem` | [IsExtreme.trans](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-trans--cd2a8a8cd2c93cc51e1174a8.md) | 80 | `result-track:cd2a8a8cd2c93cc51e1174a80eb9938a7c4f10cd0712abb1e7f8ab7994939764` |
| 6 | `theorem` | [IsExtreme.antisymm](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-antisymm--04159bdc2dca9b5cf20c5004.md) | 87 | `result-track:04159bdc2dca9b5cf20c500493e684ae359e847af7242c46de37d891353e2360` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/instance--3a556d31d494a46ebbaa7b69.md) | 91 | `declaration-track:3a556d31d494a46ebbaa7b69df9fa1b8306631ed6e7287c17935172641efd96b` |
| 8 | `theorem` | [IsExtreme.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-inter--e747b3cd1d66263f7655600a.md) | 96 | `result-track:e747b3cd1d66263f7655600ab121226e46270212b36f19f54b5c40a780982e43` |
| 9 | `theorem` | [IsExtreme.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-mono--a5e0959818d8190649619b8f.md) | 105 | `result-track:a5e0959818d8190649619b8fdbb681addbcd2550f9eb2924f2f3bd8d88a9c13f` |
| 10 | `theorem` | [isExtreme_iInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-iinter--afc60debf0b369bbfa399ab9.md) | 110 | `result-track:afc60debf0b369bbfa399ab95bc15631c1f3ac551206fa1963b16b9ef5c7746f` |
| 11 | `theorem` | [isExtreme_biInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-biinter--e6958a97ed68142e60e087a6.md) | 119 | `result-track:e6958a97ed68142e60e087a66578e038e87c85e171fa856c4bceaa5d736bfde2` |
| 12 | `theorem` | [isExtreme_sInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-sinter--d7fb4444c5580b8decba0ecb.md) | 125 | `result-track:d7fb4444c5580b8decba0ecb4a26cc389fb79e35bdd8224c9322dc658c4811f4` |
| 13 | `theorem` | [mem_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/mem-extremepoints--99ef4bc55a75e7d6a68a4dbc.md) | 134 | `result-track:99ef4bc55a75e7d6a68a4dbced4cf674a39d011ff211fd75963639686f7140c4` |
| 14 | `theorem` | [mem_extremePoints_iff_extreme_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/mem-extremepoints-iff-extreme-singleton--3e9692336422623fe49a65c6.md) | 140 | `result-track:3e9692336422623fe49a65c6953f7581da0148d6926887398cd6fb8f9d1f2171` |
| 15 | `theorem` | [extremePoints_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/extremepoints-subset--70dc74a0f290fb7f29fe58ac.md) | 148 | `result-track:70dc74a0f290fb7f29fe58ac909352481908fcfa9a822617e96227cdf1a4623e` |
| 16 | `theorem` | [extremePoints_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/extremepoints-empty--887d8e113168a5d0dc0927d5.md) | 153 | `result-track:887d8e113168a5d0dc0927d5303b5d9785c6ff873a7f8c0fea52597fe18c8501` |
| 17 | `theorem` | [extremePoints_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/extremepoints-singleton--d27d9efdbeb2181a6d965bfc.md) | 158 | `result-track:d27d9efdbeb2181a6d965bfca6088cb9ff7b31f5b8150c34926838e65324967a` |
| 18 | `theorem` | [inter_extremePoints_subset_extremePoints_of_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/inter-extremepoints-subset-extremepoints-of-subset--c625bd58ffe1f5dc578a1bd3.md) | 163 | `result-track:c625bd58ffe1f5dc578a1bd3fc1286efb0ffdcd185addb85daae238bea2f6535` |
| 19 | `theorem` | [IsExtreme.extremePoints_subset_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-extremepoints-subset-extremepoints--68e89a3349c45d50a3ef7a25.md) | 168 | `result-track:68e89a3349c45d50a3ef7a25998ca26398c9fa77ad438ae28f94e854de3a94d0` |
| 20 | `theorem` | [IsExtreme.extremePoints_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-extremepoints-eq--dff3c0cbcda205d5afac6aa0.md) | 174 | `result-track:dff3c0cbcda205d5afac6aa0ef00930ec9397f09e6dc05d934eca3ccfc07be0c` |
| 21 | `theorem` | [IsExtreme.convex_diff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/isextreme-convex-diff--6c5aafbf78c72323c6314812.md) | 187 | `result-track:6c5aafbf78c72323c63148127a020f809cc1ac2a176f67c303e5e315b76570a1` |
| 22 | `theorem` | [extremePoints_prod](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/extremepoints-prod--24604e2f50104ab49ce44fd0.md) | 193 | `result-track:24604e2f50104ab49ce44fd0521f6baebec21c4d26514f910ec1d87d51e45f52` |
| 23 | `theorem` | [extremePoints_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/extremepoints-pi--7f53b479c1f29442ca684082.md) | 216 | `result-track:7f53b479c1f29442ca6840826e8260e7a648c6de7f7eb16bbdd43b283c4a4be9` |
| 24 | `theorem` | [mem_extremePoints_iff_forall_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/mem-extremepoints-iff-forall-segment--420d2983d45c91a3cd75c92d.md) | 247 | `result-track:420d2983d45c91a3cd75c92d36ceb4d1e3a7cd23a00d787056e269c87c04459b` |
| 25 | `theorem` | [Convex.mem_extremePoints_iff_convex_diff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/convex-mem-extremepoints-iff-convex-diff--304d39c607d7db60e502349a.md) | 259 | `result-track:304d39c607d7db60e502349a8678f27a373b1990b5738064c23fb7c53abec431` |
| 26 | `theorem` | [Convex.mem_extremePoints_iff_mem_diff_convexHull_diff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/convex-mem-extremepoints-iff-mem-diff-convexhull-diff--e0da08a47f06cc96bd996714.md) | 270 | `result-track:e0da08a47f06cc96bd99671432c3e2f8c4c5a5a0e67fc6d5fad2744bdf8db9b0` |
| 27 | `theorem` | [extremePoints_convexHull_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13.lean/declarations/extremepoints-convexhull-subset--6359052e3e44c5879e552d8e.md) | 276 | `result-track:6359052e3e44c5879e552d8e8691226595c595d3c1e0cea8536e19b057869901` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
