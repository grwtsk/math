# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCategoricalH1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "725364f5acc11389b94be1957b1ce53e810014bf",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `725364f5acc11389b94be1957b1ce53e810014bf`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCandidateH1`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcedShortComplex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/sourcedshortcomplex--24617b6f1bc295c80e0d0ef4.md) | 66 | `declaration-track:24617b6f1bc295c80e0d0ef428df4597a204f5867116fb33b6a092d38668112d` |
| 2 | `theorem` | [sourcedShortComplex_f_hom](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/sourcedshortcomplex-f-hom--9b3fcc1e5557a3d340ccd550.md) | 74 | `result-track:9b3fcc1e5557a3d340ccd550da46221bdcb120f8fee008d5d660b45a18131b7c` |
| 3 | `theorem` | [sourcedShortComplex_g_hom](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/sourcedshortcomplex-g-hom--f432aeed2bbd53184fb789c9.md) | 77 | `result-track:f432aeed2bbd53184fb789c96ddca175f8b017d60892e73b48590cbb3ec72953` |
| 4 | `def` | [sourcedChainComplex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/sourcedchaincomplex--e565071c5dcabe7ba0fb5c97.md) | 86 | `declaration-track:e565071c5dcabe7ba0fb5c97a396b47fe5530006994dc700ca8985f8274d29b3` |
| 5 | `theorem` | [sourcedChainComplex_X_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/sourcedchaincomplex-x-zero--c87c0b080408a6b69d47bf18.md) | 98 | `result-track:c87c0b080408a6b69d47bf188149c752ee49a4cfd06c0b21c5be364ad17c9022` |
| 6 | `theorem` | [sourcedChainComplex_X_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/sourcedchaincomplex-x-one--2cf4ed901b1af032607b9517.md) | 103 | `result-track:2cf4ed901b1af032607b9517846e33cd22ed9724b4abb3b39adb385461dcb605` |
| 7 | `theorem` | [sourcedChainComplex_X_two](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/sourcedchaincomplex-x-two--8db61c8b98f345e9b294424e.md) | 108 | `result-track:8db61c8b98f345e9b294424ed5a4c2a2c3f0614569a69fd3d0998d6a99ada988` |
| 8 | `theorem` | [sourcedChainComplex_d_one_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/sourcedchaincomplex-d-one-zero--8609aae33c8c3399a5801116.md) | 113 | `result-track:8609aae33c8c3399a5801116b95715e6b9f6641cec07d1021adbcb721a284d5f` |
| 9 | `theorem` | [sourcedChainComplex_d_two_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/sourcedchaincomplex-d-two-one--91f3d66f3e4733ebff3fbc4c.md) | 120 | `result-track:91f3d66f3e4733ebff3fbc4cc9dfe864c033f482405189d3b499e7ece578a283` |
| 10 | `def` | [degreeOneShortComplexIso](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/degreeoneshortcomplexiso--1cc4e24e721080e457bcb322.md) | 128 | `declaration-track:1cc4e24e721080e457bcb3224f206c9a01bfa482f1e8caa410f3868963502e90` |
| 11 | `theorem` | [sourcedShortToCycles_range_eq_boundariesInCycles](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/sourcedshorttocycles-range-eq-boundariesincycles--8891469b70ce70e086936a42.md) | 142 | `result-track:8891469b70ce70e086936a42228d5965d531b797cb97e18397ad3636b54ec967` |
| 12 | `def` | [shortConcreteHomologyLinearEquiv](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/shortconcretehomologylinearequiv--1bf97af42197b833808c73b0.md) | 159 | `declaration-track:1bf97af42197b833808c73b0cbbbb44ad0d053e0c350bbbef68b8181cd367c19` |
| 13 | `def` | [shortCategoricalHomologyIso](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/shortcategoricalhomologyiso--ce2a5611099e794c117a831d.md) | 171 | `declaration-track:ce2a5611099e794c117a831dac85583990b4765b6e74f7bf6f587bd4db68ef45` |
| 14 | `def` | [degreeOneCategoricalHomologyIso](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/degreeonecategoricalhomologyiso--b2648ecd844a2fb2ebf543c5.md) | 181 | `declaration-track:b2648ecd844a2fb2ebf543c5694787e3a7eb754dfac06f9d3ec8834c0e758399` |
| 15 | `def` | [degreeOneHomologyOneChainsIso](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/degreeonehomologyonechainsiso--904e2b878323f7cc9a803f43.md) | 190 | `declaration-track:904e2b878323f7cc9a803f4322cf93fd855d2cee897570d49e2a8e4f23779c69` |
| 16 | `def` | [categoricalSignedWordClass](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/categoricalsignedwordclass--de5a3c530218535e80f9b616.md) | 199 | `declaration-track:de5a3c530218535e80f9b6165e1dcbe70ffd6137ed272683ddfa810c3410ce9d` |
| 17 | `theorem` | [categoricalSignedWordClass_transport](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/categoricalsignedwordclass-transport--a5a50d447534de06e6602269.md) | 207 | `result-track:a5a50d447534de06e6602269b4cba3ca90891101f1b9306ff235d25fe638db19` |
| 18 | `theorem` | [fullPolygonCategoricalClass_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/fullpolygoncategoricalclass-zero--0d992103ad1f2922eb071f83.md) | 216 | `result-track:0d992103ad1f2922eb071f83c6857a5589a98ebb875d211426121c81c8906f20` |
| 19 | `theorem` | [missingInverseEdgeCategoricalClass_ne_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/missinginverseedgecategoricalclass-ne-zero--c04d63bbc0977c1ac47df1ae.md) | 225 | `result-track:c04d63bbc0977c1ac47df1aeebdff056fa10563476e7fd9b7955def3c8c84e25` |
| 20 | `theorem` | [firstHandleCategoricalClass_zero_but_FreeGroup_nontrivial](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/firsthandlecategoricalclass-zero-but-freegroup-nontrivial--a4d388bbc40498809ff2823a.md) | 236 | `result-track:a4d388bbc40498809ff2823a77a10bfee354ac6690fae8ac14a379ee7d879230` |
| 21 | `theorem` | [genusTwoCategoricalOneCellCount](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/genustwocategoricalonecellcount--cb3c2719f49e8a79e59198fc.md) | 248 | `result-track:cb3c2719f49e8a79e59198fc500d4e131f9cdbe7250ec97ddf2e74ac5d3c3635` |
| 22 | `theorem` | [genusThreeCategoricalOneCellCount](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/declarations/genusthreecategoricalonecellcount--47ce5b13ea4b80c205a12796.md) | 254 | `result-track:47ce5b13ea4b80c205a12796ea68e67980fb29a5700247758d334434818e2a34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
