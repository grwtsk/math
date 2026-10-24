# Verification target: GRWTSK.Geometry.Basic.Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7756ee06d680a2cb53d78d4399be69426dfe4785",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/index.md) · [Full source](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7756ee06d680a2cb53d78d4399be69426dfe4785`.

Source path: `GRWTSK/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsRiemannianManifold](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/isriemannianmanifold--b754f2d62471afd20e3ddca0.md) | 81 | `declaration-track:b754f2d62471afd20e3ddca063efeb876d5987aa9fbcc80465a84015465f0197` |
| 2 | `def` | [riemannianMetricVectorSpace](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/riemannianmetricvectorspace--22a283eb3954f39218f923d0.md) | 103 | `declaration-track:22a283eb3954f39218f923d01348dcf58bc064db3b98c532dca578e638345bf8` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/instance--0e157bb7d25400d728534856.md) | 126 | `declaration-track:0e157bb7d25400d728534856df8a28bedff091b3ac4d996e2777f66afd8b0f77` |
| 4 | `lemma` | [norm_tangentSpace_vectorSpace](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/norm-tangentspace-vectorspace--d2cc6fd65659872b28009a98.md) | 130 | `result-track:d2cc6fd65659872b28009a98227a2834102874e6a3087c6b3c2aa54fd8fa94b0` |
| 5 | `lemma` | [nnnorm_tangentSpace_vectorSpace](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/nnnorm-tangentspace-vectorspace--bfdf80ca33fc415468878172.md) | 134 | `result-track:bfdf80ca33fc415468878172183cd081f0dc099e40b2813de02eb94c2d6573da` |
| 6 | `lemma` | [enorm_tangentSpace_vectorSpace](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/enorm-tangentspace-vectorspace--2d9eea7d97a30c1398e0c035.md) | 138 | `result-track:2d9eea7d97a30c1398e0c0357ba4d701ca186b1a6d8f1763307efb854f32a5aa` |
| 7 | `lemma` | [lintegral_fderiv_lineMap_eq_edist](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/lintegral-fderiv-linemap-eq-edist--4c9f5ba7f5513c639fed2e23.md) | 144 | `result-track:4c9f5ba7f5513c639fed2e23f6b99fdd6377c8571b199b89ba5331486be01980` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/instance--bceca10b4ac3dbf9dff2c16e.md) | 158 | `declaration-track:bceca10b4ac3dbf9dff2c16e11f3ded779b6e267e49f36167bcc1370ee1ef74a` |
| 9 | `def` | [normedAddCommGroupTangentSpaceVectorSpace](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/normedaddcommgrouptangentspacevectorspace--f1e1ab9167c36b896dae37db.md) | 222 | `declaration-track:f1e1ab9167c36b896dae37db9adf14ed52f2b78b9d3e82782839a2ed90a4d680` |
| 10 | `def` | [normedSpaceTangentSpaceVectorSpace](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/normedspacetangentspacevectorspace--0c8f19f44a23322239b2d845.md) | 234 | `declaration-track:0c8f19f44a23322239b2d845b2c2d296ba03110dea55bff82e18c714a02adb0d` |
| 11 | `lemma` | [eventually_norm_mfderiv_extChartAt_lt](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/eventually-norm-mfderiv-extchartat-lt--a046d61469fc65e6e2676ff0.md) | 242 | `result-track:a046d61469fc65e6e2676ff0275352fe068491b0bbb0bc2926ebf06c156ae29a` |
| 12 | `lemma` | [eventually_enorm_mfderiv_extChartAt_lt](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/eventually-enorm-mfderiv-extchartat-lt--dc747d5d115229a1e7125407.md) | 252 | `result-track:dc747d5d115229a1e7125407d2ed6aef567e03fbfb9c532647da609e0670b208` |
| 13 | `lemma` | [eventually_norm_mfderivWithin_symm_extChartAt_comp_lt](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/eventually-norm-mfderivwithin-symm-extchartat-comp-lt--f437abc8304137887fa98c27.md) | 263 | `result-track:f437abc8304137887fa98c273972337c2b1a28448a8d551df12f52e13c1f4b0a` |
| 14 | `lemma` | [eventually_norm_mfderivWithin_symm_extChartAt_lt](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/eventually-norm-mfderivwithin-symm-extchartat-lt--dacaa4f8f6a28c3e63ac3f30.md) | 276 | `result-track:dacaa4f8f6a28c3e63ac3f306ace7e59f2f1391c1db7bb2bf55e2443aae84e0f` |
| 15 | `lemma` | [eventually_enorm_mfderivWithin_symm_extChartAt_lt](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/eventually-enorm-mfderivwithin-symm-extchartat-lt--cd9aa5164719e7650a98cc58.md) | 291 | `result-track:cd9aa5164719e7650a98cc5835658d5c31765d34a24815702a80f1f6ea04ba27` |
| 16 | `lemma` | [eventually_riemannianEDist_le_edist_extChartAt](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/eventually-riemannianedist-le-edist-extchartat--14e8f8af235e2f2ce31bbbf8.md) | 305 | `result-track:14e8f8af235e2f2ce31bbbf8843143dc6c2fe77fde86257116f4dfb81c19e888` |
| 17 | `lemma` | [eventually_riemannianEDist_lt](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/eventually-riemannianedist-lt--9bb06238f80aefafd5da20b3.md) | 373 | `result-track:9bb06238f80aefafd5da20b3ab35e45e8015de31b7ed4aa64e44b8aae26edaac` |
| 18 | `lemma` | [setOfPred_riemannianEDist_lt_subset_nhds](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/setofpred-riemannianedist-lt-subset-nhds--f07bbefe006c66aa80039592.md) | 390 | `result-track:f07bbefe006c66aa80039592e639fdf20affecc06ef7759bd292c991925b3f95` |
| 19 | `lemma` | [setOfPred_riemannianEDist_lt_subset_nhds'](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/setofpred-riemannianedist-lt-subset-nhds--0109255ce8b7749b905b1c73.md) | 505 | `result-track:0109255ce8b7749b905b1c731a0985da461f286a82733d7f422450f8536ed3fa` |
| 20 | `def` | [PseudoEMetricSpace.ofRiemannianMetric](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/pseudoemetricspace-ofriemannianmetric--6a907d7fdb2bb2e4e45bd41b.md) | 521 | `declaration-track:6a907d7fdb2bb2e4e45bd41b0c6bf786588d1df3fe2ef6bfe0163701062e34e0` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/instance--450b8ed6f0af38e158c7f887.md) | 533 | `declaration-track:450b8ed6f0af38e158c7f8873d415fab7fcc38027d0bf25315705e662b2d018f` |
| 22 | `def` | [EMetricSpace.ofRiemannianMetric](../../../../mathematics/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/declarations/emetricspace-ofriemannianmetric--da5c5c243b4fc7aafef7875a.md) | 546 | `declaration-track:da5c5c243b4fc7aafef7875a6370c6d04215e975dedf1cbd198b49c602b184c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
