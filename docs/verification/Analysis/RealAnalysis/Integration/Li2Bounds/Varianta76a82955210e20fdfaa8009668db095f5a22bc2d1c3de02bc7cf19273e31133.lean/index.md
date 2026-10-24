# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Li2Bounds.Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdecf084c85fab7b2b6ec338b0c88813296d71d7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdecf084c85fab7b2b6ec338b0c88813296d71d7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Log1p` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [g](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/g--1422c5fd9e895d9c77e13c29.md) | 59 | `declaration-track:1422c5fd9e895d9c77e13c2979fdbfa116b11c2ca0dc6bc1ae3f0f3aca828212` |
| 2 | `def` | [li2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/li2--69fc92511325881fe64db80e.md) | 63 | `declaration-track:69fc92511325881fe64db80e060517c59661afbdcbb62b2b036f4d5f2905fbfa` |
| 3 | `theorem` | [g_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/g-eq--c59ce06c0650f393667d42b3.md) | 68 | `result-track:c59ce06c0650f393667d42b3c938c832e3ac148a85a5045a40272331ebbeda56` |
| 4 | `theorem` | [g_alt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/g-alt--f30cba502f587e3293bb871b.md) | 71 | `result-track:f30cba502f587e3293bb871b988bed657adacf2820de486190a661743133ed12` |
| 5 | `theorem` | [g_tendsto_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/g-tendsto-one--789de3263c0b52497ae9879c.md) | 76 | `result-track:789de3263c0b52497ae9879cee8ab3b6d48b29f8bda27a46b176454641f2ffe0` |
| 6 | `theorem` | [g_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/g-bounded--043ddf0e4d14fb627cb60a64.md) | 81 | `result-track:043ddf0e4d14fb627cb60a64caae912aba26203f078d2cced82519b9a934b84a` |
| 7 | `theorem` | [g_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/g-pos--8f84853e2e9a3b5acdea585e.md) | 88 | `result-track:8f84853e2e9a3b5acdea585eaf1bd99f70ac5d4dddba1025815fe0e564444c29` |
| 8 | `theorem` | [g_le_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/g-le-two--93c133ad5b1862f244264682.md) | 105 | `result-track:93c133ad5b1862f244264682c67a48440dad92f6d7a6f2889265e1a7d8a13ac7` |
| 9 | `theorem` | [g_intervalIntegrable_full](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/g-intervalintegrable-full--26e02e0717b37cfa847b4197.md) | 160 | `result-track:26e02e0717b37cfa847b4197e5c5cda19f1e061ba81cfac550222da023853526` |
| 10 | `theorem` | [g_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/g-intervalintegrable--0e651bd443a6129b126ec868.md) | 186 | `result-track:0e651bd443a6129b126ec8688d1b3775abf3d717f6f65404eb0f6ef4a8e590ce` |
| 11 | `theorem` | [li2_upper_crude](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/li2-upper-crude--8a0846462148f090602f1c8c.md) | 215 | `result-track:8a0846462148f090602f1c8c7f91b01af51ed37702b08a23964c7c35cdd39ff1` |
| 12 | `theorem` | [li2_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/li2-pos--a2a20474534954a9bd23f3f8.md) | 231 | `result-track:a2a20474534954a9bd23f3f8a378f3b79134c3e4fdfed1f03a3726ef88a50a7a` |
| 13 | `theorem` | [li2_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/li2-lower--39dff30038c8ac2b33193629.md) | 258 | `result-track:39dff30038c8ac2b33193629fe6684391a357ecc28c38363b9d9e4077528b10b` |
| 14 | `theorem` | [li2_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/li2-upper--619bd66d4fd3895539f73904.md) | 263 | `result-track:619bd66d4fd3895539f7390473197b5d019488c50d1f12b6cadb58e2d9205c1f` |
| 15 | `theorem` | [li2_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/li2-bounds--e6a5f69cc0974e2cfb7f3fce.md) | 267 | `result-track:e6a5f69cc0974e2cfb7f3fce563c7a777fea0c41deacfe5632dab7b580ceb2f8` |
| 16 | `theorem` | [li2_approx_1045](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/declarations/li2-approx-1045--37bcf97520de36e8d66b76bb.md) | 272 | `result-track:37bcf97520de36e8d66b76bb38ba5a41160c1f83bcb137e2f51fc6df28d78985` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
