# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Real.Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b44de47ee83db5d7c37bbe3031f7c5af525c9f9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b44de47ee83db5d7c37bbe3031f7c5af525c9f9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/rieszmeasure--67459a160e7a2d3a74bc4d30.md) | 65 | `declaration-track:67459a160e7a2d3a74bc4d30062cafc89794516282a413bfbfaca170914c3478` |
| 2 | `lemma` | [le_rieszMeasure_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/le-rieszmeasure-tsupport-subset--c1db5eb55793b331425a733b.md) | 70 | `result-track:c1db5eb55793b331425a733b52d5c073f89ee89ef6872e2ef898c2256ce42f52` |
| 3 | `lemma` | [rieszMeasure_le_of_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/rieszmeasure-le-of-eq-one--251143dc71b4654c44886bf1.md) | 90 | `result-track:251143dc71b4654c44886bf1b4b55bb2aba6320e71256f1e3078a9a7629443fc` |
| 4 | `lemma` | [range_cut_partition](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/range-cut-partition--fd1197b6f1dd977de9589f27.md) | 109 | `result-track:fd1197b6f1dd977de9589f27ae0eae9523ac1e4fb03cd7378624eb7a165b79ca` |
| 5 | `lemma` | [exists_open_approx](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/exists-open-approx--3ba9f6d5ca5d36f9ddc5f0d4.md) | 158 | `result-track:3ba9f6d5ca5d36f9ddc5f0d4bacc74dac064f93fc7a6be3062ba7b512fb033d4` |
| 6 | `lemma` | [exists_nat_large](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/exists-nat-large--74ec05cfd3efd03753e25c8b.md) | 176 | `result-track:74ec05cfd3efd03753e25c8bfa97f88b34c3916a18dcea22a9f2da23d845bda7` |
| 7 | `lemma` | [integral_riesz_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/integral-riesz-aux--06c55adbc31e53fcfb655711.md) | 190 | `result-track:06c55adbc31e53fcfb655711791cfe1f66e87ae1e3fa039a5f09125cfa066915` |
| 8 | `theorem` | [integral_rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/integral-rieszmeasure--d2f338c67c6af7750a1574cd.md) | 345 | `result-track:d2f338c67c6af7750a1574cd2793e5b2d01d59cbac25819742c518125acb5598` |
| 9 | `instance` | [regular_rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/regular-rieszmeasure--eebf974418a1cd237423eb87.md) | 357 | `declaration-track:eebf974418a1cd237423eb878b5ac2418f93f96bd2beaa51d8c5accfd10f0903` |
| 10 | `lemma` | [measure_le_of_isCompact_of_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/measure-le-of-iscompact-of-integral--a40b4f64ed28cb0ee005503b.md) | 371 | `result-track:a40b4f64ed28cb0ee005503b1203f02fb8373c97f6b8b914f48828347b6bf266` |
| 11 | `theorem` | [_root_.MeasureTheory.Measure.ext_of_integral_eq_on_compactlySupported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/root-measuretheory-measure-ext-of-integral-eq-on-compactlysupported--c4f6771f954af31fa64db6b4.md) | 412 | `result-track:c4f6771f954af31fa64db6b4a4d085eb9434272a8452cf3ba5bfc575ae1824be` |
| 12 | `theorem` | [integralPositiveLinearMap_inj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/integralpositivelinearmap-inj--28b1f670a2daec3b339706ae.md) | 425 | `result-track:28b1f670a2daec3b339706ae8a70656130c908c3e4f68f4f3be3403c00f8fde0` |
| 13 | `theorem` | [rieszMeasure_integralPositiveLinearMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/rieszmeasure-integralpositivelinearmap--1c28fed08f1130214506adda.md) | 433 | `result-track:1c28fed08f1130214506adda95c2a0fe180415a8028b75faf7830fcc30a3ddb4` |
| 14 | `theorem` | [integralPositiveLinearMap_rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/integralpositivelinearmap-rieszmeasure--d826aaa3909820238ba3c17d.md) | 438 | `result-track:d826aaa3909820238ba3c17d99808b4d1bfa7e7be29a9791d4818e238a22f54f` |
| 15 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/instance--9c7433f5d4a3f74e6890a44f.md) | 445 | `declaration-track:9c7433f5d4a3f74e6890a44fec91f55abba46c0bfcb4255a1996ae9ff71fb404` |
| 16 | `lemma` | [_root_.MeasureTheory.Measure.exists_regular_eq_of_compactSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/root-measuretheory-measure-exists-regular-eq-of-compactspace--24f175257958b8c4b5e3bde2.md) | 455 | `result-track:24f175257958b8c4b5e3bde2b74d6b205619d3c7a83ae9bc985e859427173641` |
| 17 | `lemma` | [_root_.MeasureTheory.Measure.exists_innerRegular_eq_of_isCompact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/declarations/root-measuretheory-measure-exists-innerregular-eq-of-iscompact--5973d4bba124f96453ac2a71.md) | 472 | `result-track:5973d4bba124f96453ac2a714682f42d46b7ea12b3c222c2dc7dd678acda14bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
