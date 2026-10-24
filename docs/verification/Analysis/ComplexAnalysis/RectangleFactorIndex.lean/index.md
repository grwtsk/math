# Verification target: GRWTSK.Analysis.Complex.RectangleFactorIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e5894bbbfa21368c3e02f99e0cde6bc6ff8b862",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RectangleFactorIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e5894bbbfa21368c3e02f99e0cde6bc6ff8b862`.

Source path: `GRWTSK/Analysis/Complex/RectangleFactorIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RectangleFactorIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ClosedCurveFactorIndex`](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalPolygonIndex`](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Rectangle](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle--f148057de7ac7014e5206d4c.md) | 25 | `declaration-track:f148057de7ac7014e5206d4c59c48103bd8abb62f4ac7437c8cfffdfa939ae38` |
| 2 | `def` | [Rectangle.interior](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-interior--9e9497b8a371223b4078cd42.md) | 35 | `declaration-track:9e9497b8a371223b4078cd424bf4df71895ef98c10226121b3a97a06eca05885` |
| 3 | `def` | [Rectangle.box](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-box--cf4800e255cbd26a96a159af.md) | 38 | `declaration-track:cf4800e255cbd26a96a159afcb6f5de58f16cecbeb0e93a029cab324db47f2ee` |
| 4 | `def` | [Rectangle.boundary](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-boundary--5130ba05004c2ef65c3e1825.md) | 41 | `declaration-track:5130ba05004c2ef65c3e182510fda3d5ba468b89a1c6df1e02ce06d7a2581bce` |
| 5 | `def` | [Rectangle.corners](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-corners--ae5dea67c9c49ea1bff17fa0.md) | 45 | `declaration-track:ae5dea67c9c49ea1bff17fa05eb033ea5d4b027242e20ca1ee42d9d869572505` |
| 6 | `def` | [Rectangle.curve](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-curve--223337c9a2073d0bd51b07e3.md) | 52 | `declaration-track:223337c9a2073d0bd51b07e3d64b2dd15d62b4335a131211aac4b0bc61685de0` |
| 7 | `theorem` | [Rectangle.curve_closed](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-curve-closed--5e0a9f78d976ce2f1804f417.md) | 54 | `result-track:5e0a9f78d976ce2f1804f417554a4680592f8221aa89a68c2de575851f89416f` |
| 8 | `theorem` | [weighted_mem](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/weighted-mem--b34248888f123f37525a9d95.md) | 57 | `result-track:b34248888f123f37525a9d956b1db1434a252a3dc0a13cce61dba6959a091f74` |
| 9 | `theorem` | [weighted_pos](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/weighted-pos--4270fe95bd84309dfce5804a.md) | 66 | `result-track:4270fe95bd84309dfce5804a9cc1dd3639666be7edc7f03a0f6c4313681d11b9` |
| 10 | `theorem` | [weighted_neg](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/weighted-neg--589efd6e26d3ee17da2a2ad7.md) | 73 | `result-track:589efd6e26d3ee17da2a2ad7a5ba784f4f89b11651ae4264d1c9f1e246c20c89` |
| 11 | `theorem` | [Rectangle.blend_mem_box](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-blend-mem-box--ec7262cbf1e7dbcc34e7b55a.md) | 78 | `result-track:ec7262cbf1e7dbcc34e7b55a8ed2612854da0315e280a97dc6b2e4cb4a098343` |
| 12 | `theorem` | [Rectangle.corner_mem_box](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-corner-mem-box--50692307c4cda65e3f1c6cab.md) | 84 | `result-track:50692307c4cda65e3f1c6cab43983b53a4a883a02bd0be70e6c4e03147b13450` |
| 13 | `theorem` | [Rectangle.edge_boundary](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-edge-boundary--f6903959dfcbb9ef96d0ebb6.md) | 88 | `result-track:f6903959dfcbb9ef96d0ebb6b4ce27b191808e71a5070d81d574be9c23e1093f` |
| 14 | `theorem` | [Rectangle.curve_boundary](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-curve-boundary--67230c102b57fe4869a335ae.md) | 97 | `result-track:67230c102b57fe4869a335ae79f94612d827f4c6c740547865bae73db96c8d66` |
| 15 | `theorem` | [Rectangle.boundary_ne_interior](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-boundary-ne-interior--f695a562cd9eec6e9ec5c6f5.md) | 105 | `result-track:f695a562cd9eec6e9ec5c6f5b75951cf55690ec4ddaaea86f3af228a0e3edff7` |
| 16 | `theorem` | [Rectangle.boundary_of_box_not_interior](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-boundary-of-box-not-interior--42cce1ee300cdedd9cfc52a2.md) | 111 | `result-track:42cce1ee300cdedd9cfc52a2e5460c88034bb969e4d11b9298a26b77c8976f77` |
| 17 | `def` | [Rectangle.factor](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-factor--c1b6c64709c6c2c060fafd01.md) | 123 | `declaration-track:c1b6c64709c6c2c060fafd0143a5003d2c8b8ea424ae238abe2b0111e31e6905` |
| 18 | `theorem` | [Rectangle.factor_closed](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-factor-closed--51ded53e5c92fa7f620f70d5.md) | 126 | `result-track:51ded53e5c92fa7f620f70d5f20fb76e36c8438e7d9059cb66f534b6fbd9a7ea` |
| 19 | `theorem` | [Rectangle.factor_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-factor-nonzero--fe53f72eb450bd1508e0b1e9.md) | 130 | `result-track:fe53f72eb450bd1508e0b1e95e01d277419e377791d00829cd6c841034c83f8e` |
| 20 | `def` | [reference](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/reference--9f3be850b5e6253de7bc6517.md) | 135 | `declaration-track:9f3be850b5e6253de7bc65170fc60cf12d3a815aeeab260d0f1e4a93c284953e` |
| 21 | `theorem` | [reference_evaluates](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/reference-evaluates--37d3bc66ea07a615400d6f34.md) | 137 | `result-track:37d3bc66ea07a615400d6f34563d140292c4fdf0f46596f764ac038d41e15042` |
| 22 | `theorem` | [reference_checked](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/reference-checked--3da0b5ce1727ca90828c3021.md) | 139 | `result-track:3da0b5ce1727ca90828c302171d6074c3c099213a935c8261d19de7ea447aaed` |
| 23 | `def` | [referenceCurve](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/referencecurve--f13c29e68792d39fa5677f92.md) | 142 | `declaration-track:f13c29e68792d39fa5677f9219bb2421dc56de51240847f39febd37b2281d6c7` |
| 24 | `theorem` | [reference_closed](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/reference-closed--c63c90a7e9df99097d2abfae.md) | 144 | `result-track:c63c90a7e9df99097d2abfae67c1ebdff6f88a30f89a55774ae594e70ae92e28` |
| 25 | `theorem` | [reference_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/reference-nonzero--e0eb43c99188d7af5f57f62e.md) | 147 | `result-track:e0eb43c99188d7af5f57f62e00dece4ec67723c65d4f60c0fe1798f09705d59e` |
| 26 | `theorem` | [reference_index](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/reference-index--99ae03e422cf3019dc635e9a.md) | 150 | `result-track:99ae03e422cf3019dc635e9a84b80422054b2997f36bb5a4c4731bb5755cd853` |
| 27 | `theorem` | [Rectangle.factor_cells](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-factor-cells--f81fd9673d0c4cf843330c10.md) | 157 | `result-track:f81fd9673d0c4cf843330c10727f45e0ee7c935255962c877baa76e1662a0cc1` |
| 28 | `theorem` | [Rectangle.factor_index_one](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-factor-index-one--973c477bcf750ac328afac0a.md) | 187 | `result-track:973c477bcf750ac328afac0ac4e2902cebdb76d0e6ebd049b647e9b3b377e642` |
| 29 | `def` | [Rectangle.center](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-center--def7c0dc4804000ce2fdf9f7.md) | 196 | `declaration-track:def7c0dc4804000ce2fdf9f73962d669d8bed8e8c5132bfb43ecbe02691ce7c0` |
| 30 | `theorem` | [Rectangle.center_mem](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-center-mem--d9dea302125364b1d5baacbf.md) | 199 | `result-track:d9dea302125364b1d5baacbfde3b77333b7faed13b77f3d93dc42e3b187f1d00` |
| 31 | `def` | [Rectangle.image](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-image--f7ac92f121f5b3066794b96f.md) | 205 | `declaration-track:f7ac92f121f5b3066794b96f5699f6e6fb4608753497ae54d553c30177c77d73` |
| 32 | `theorem` | [Rectangle.image_closed](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-image-closed--073f9f7282e539a780c0c96b.md) | 209 | `result-track:073f9f7282e539a780c0c96b048a1d431e10dcf57edeb48a21def43c697be2c5` |
| 33 | `theorem` | [Rectangle.image_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-image-nonzero--0b2302d541e412d78c81959f.md) | 212 | `result-track:0b2302d541e412d78c81959fbb8dd0f2a10bdc512a94564c99f8be07ad9c73b2` |
| 34 | `theorem` | [Rectangle.zero_free_index](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/declarations/rectangle-zero-free-index--1222854a900ee7813e456b25.md) | 218 | `result-track:1222854a900ee7813e456b25c1ccf47a9392b264f2d0062b8f33a78b7c4be0d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
