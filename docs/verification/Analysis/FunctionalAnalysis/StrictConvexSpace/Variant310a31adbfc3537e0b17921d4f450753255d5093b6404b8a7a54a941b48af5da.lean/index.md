# Verification target: GRWTSK.Analysis.FunctionalAnalysis.StrictConvexSpace.Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5a1b9e44131d3608fde9ade3d6915e0f878aa23",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5a1b9e44131d3608fde9ade3d6915e0f878aa23`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Convex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Ray` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrictConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/strictconvexspace--73a9bdf935ed577be6c79a0f.md) | 63 | `declaration-track:73a9bdf935ed577be6c79a0fd624baa7f2cf353c61496dc3b21f72a1416393d2` |
| 2 | `theorem` | [strictConvex_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/strictconvex-closedball--9aaa76941e1941bffe9e28c7.md) | 71 | `result-track:9aaa76941e1941bffe9e28c7a055bbc01d8aac3dbb7e49f74bcc646d27bf982a` |
| 3 | `theorem` | [StrictConvexSpace.of_strictConvex_unitClosedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/strictconvexspace-of-strictconvex-unitclosedball--8bb9438ae1a4b578251aa2ab.md) | 81 | `result-track:8bb9438ae1a4b578251aa2aba6ceb25fdde7bf1862f8fbfeb2ef5f0f215461be` |
| 4 | `theorem` | [StrictConvexSpace.of_norm_combo_lt_one](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/strictconvexspace-of-norm-combo-lt-one--b45f50db584e79a9679b2056.md) | 92 | `result-track:b45f50db584e79a9679b2056ec5c1f84b9a445f8005f947b471c724c4f036a40` |
| 5 | `theorem` | [StrictConvexSpace.of_norm_combo_ne_one](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/strictconvexspace-of-norm-combo-ne-one--5967dbae3eb9d4a72965cb89.md) | 105 | `result-track:5967dbae3eb9d4a72965cb89d5c40f3f30ddebc803d2570707ca4c5fb4350ec6` |
| 6 | `theorem` | [StrictConvexSpace.of_norm_add_ne_two](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/strictconvexspace-of-norm-add-ne-two--4ef33dfbd7161bd90bd37c66.md) | 118 | `result-track:4ef33dfbd7161bd90bd37c66bc34ff9037aac2c5729ccd5b659b0af581727007` |
| 7 | `theorem` | [StrictConvexSpace.of_pairwise_sphere_norm_ne_two](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/strictconvexspace-of-pairwise-sphere-norm-ne-two--c5c23a880113bb17b88c8422.md) | 127 | `result-track:c5c23a880113bb17b88c8422e96a5b08c20f0cc9d9919d87e6d03fc965f281ab` |
| 8 | `theorem` | [StrictConvexSpace.of_norm_add](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/strictconvexspace-of-norm-add--6cf0c7b1c094f957c213f598.md) | 134 | `result-track:6cf0c7b1c094f957c213f598b6c994647a149ed9e5063364841ccf8c6f796b18` |
| 9 | `theorem` | [combo_mem_ball_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/combo-mem-ball-of-ne--91a9abb95e4ab4753d704f1e.md) | 144 | `result-track:91a9abb95e4ab4753d704f1ef55f128b8d598a671cff2f6c8407cb80cd84b9c0` |
| 10 | `theorem` | [openSegment_subset_ball_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/opensegment-subset-ball-of-ne--41046753552126363e39888b.md) | 154 | `result-track:41046753552126363e39888bc229ede5941ea36e9f0c8a3a6fb2d9f23f853fd4` |
| 11 | `theorem` | [norm_combo_lt_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/norm-combo-lt-of-ne--8a2c86d1413dcb8d8d96bd68.md) | 160 | `result-track:8a2c86d1413dcb8d8d96bd68e40c6a2144da38104275c3c2f57b269f93cc2c59` |
| 12 | `theorem` | [norm_add_lt_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/norm-add-lt-of-not-sameray--6080d44b7a39631a6242b650.md) | 167 | `result-track:6080d44b7a39631a6242b650158f3b91e09753e77abe1edf07dc991f670753d2` |
| 13 | `theorem` | [lt_norm_sub_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/lt-norm-sub-of-not-sameray--9539e39bb81e780761d244c8.md) | 180 | `result-track:9539e39bb81e780761d244c802612ac7bd4ea9259add9669adff2b3211a66dc8` |
| 14 | `theorem` | [abs_lt_norm_sub_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/abs-lt-norm-sub-of-not-sameray--5c0fef924815f6b29d1f1db6.md) | 184 | `result-track:5c0fef924815f6b29d1f1db6a0d41e2261b9672390e16c0178f8f94a88407ed3` |
| 15 | `theorem` | [sameRay_iff_norm_add](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/sameray-iff-norm-add--dd1b5563e00edbb6285c399a.md) | 191 | `result-track:dd1b5563e00edbb6285c399ace20283d313b0662f4bbb86affed1ba27189d229` |
| 16 | `theorem` | [eq_of_norm_eq_of_norm_add_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/eq-of-norm-eq-of-norm-add-eq--bbeb9e0b38e367e4e7746eea.md) | 196 | `result-track:bbeb9e0b38e367e4e7746eead6ac5ffc8c9c7c37e790a5d0a826d17247479c38` |
| 17 | `theorem` | [not_sameRay_iff_norm_add_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/not-sameray-iff-norm-add-lt--6f08bb8bc2cff100b0a41bec.md) | 201 | `result-track:6f08bb8bc2cff100b0a41bec3653cfc47bd8820283c3eb24cbd93f8990e5ea09` |
| 18 | `theorem` | [sameRay_iff_norm_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/sameray-iff-norm-sub--411c16545cacaf8e4bd5bf80.md) | 204 | `result-track:411c16545cacaf8e4bd5bf8021671641a0f4fbd839cc009c75fc486cd3d3072c` |
| 19 | `theorem` | [not_sameRay_iff_abs_lt_norm_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/not-sameray-iff-abs-lt-norm-sub--f1368b6a5383de802b5ab67a.md) | 208 | `result-track:f1368b6a5383de802b5ab67a535b62949250d0c9c6959e01085aa38ef04cf2e3` |
| 20 | `theorem` | [norm_midpoint_lt_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant310a31adbfc3537e0b17921d4f450753255d5093b6404b8a7a54a941b48af5da.lean/declarations/norm-midpoint-lt-iff--b233c74a34cb28ecf4c7d6cf.md) | 211 | `result-track:b233c74a34cb28ecf4c7d6cf1ba8e9ed08efd29cecaf277bb583cafe4d449677` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
