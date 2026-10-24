# Verification target: GRWTSK.Analysis.ComplexAnalysis.CPolynomial.Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1111b499230cebc1156336646875abecf5815c30",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1111b499230cebc1156336646875abecf5815c30`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.CPolynomialDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFiniteFPowerSeriesOnBall_const](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/hasfinitefpowerseriesonball-const--7a6532e5baf3ec7c2f229597.md) | 27 | `result-track:7a6532e5baf3ec7c2f229597765314c850537150a6d4f2773cfb16df30db6731` |
| 2 | `theorem` | [hasFiniteFPowerSeriesAt_const](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/hasfinitefpowerseriesat-const--ca83b19ccbaf7ff2fe665fdc.md) | 31 | `result-track:ca83b19ccbaf7ff2fe665fdc0c5e2d1edeab7c04d04e56f7822bb450d29e7661` |
| 3 | `theorem` | [CPolynomialAt_const](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/cpolynomialat-const--2a812c75b47d92287e4bf650.md) | 35 | `result-track:2a812c75b47d92287e4bf6509090cd25022ed92a5ae11085836059b23589c300` |
| 4 | `theorem` | [CPolynomialOn_const](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/cpolynomialon-const--4616ad6dc251e6d0600f8e57.md) | 38 | `result-track:4616ad6dc251e6d0600f8e57c73917c5062dcfc4a305afcdecacc2b70c28ffbf` |
| 5 | `theorem` | [HasFiniteFPowerSeriesOnBall.add](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/hasfinitefpowerseriesonball-add--3d513ab3fffd5851e518d190.md) | 41 | `result-track:3d513ab3fffd5851e518d19039f240378f3671a3cb10fb3d1489dfb519db7444` |
| 6 | `theorem` | [HasFiniteFPowerSeriesAt.add](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/hasfinitefpowerseriesat-add--3c1c554865c0075029810a99.md) | 48 | `result-track:3c1c554865c0075029810a990544ba49f74f2d5c4dbe44d1cf27736791395f9d` |
| 7 | `theorem` | [CPolynomialAt.add](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/cpolynomialat-add--6ecde5868c137e7d0081a5d6.md) | 54 | `result-track:6ecde5868c137e7d0081a5d651f8dd99e0a22dd300b179ffa5ad575059391709` |
| 8 | `theorem` | [HasFiniteFPowerSeriesOnBall.neg](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/hasfinitefpowerseriesonball-neg--ea47eab1047f40fdbb1f1eb7.md) | 60 | `result-track:ea47eab1047f40fdbb1f1eb75b44e6a661da50c88706e48acc2a305e306e2ddf` |
| 9 | `theorem` | [HasFiniteFPowerSeriesAt.neg](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/hasfinitefpowerseriesat-neg--2828cf6e1a0d36a0146872e1.md) | 64 | `result-track:2828cf6e1a0d36a0146872e1e5fa5031dc114d7668d569252bcd6292fd122e3f` |
| 10 | `theorem` | [CPolynomialAt.neg](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/cpolynomialat-neg--08483d75e4f85912958fd7fb.md) | 69 | `result-track:08483d75e4f85912958fd7fb3dc5282c020351e6a7ccecee2996a2fc87d92997` |
| 11 | `theorem` | [HasFiniteFPowerSeriesOnBall.sub](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/hasfinitefpowerseriesonball-sub--6188b1e2c1e591d2e0b1f6c9.md) | 73 | `result-track:6188b1e2c1e591d2e0b1f6c96d710dba78cb402c8810b207336b9cb69938db7a` |
| 12 | `theorem` | [HasFiniteFPowerSeriesAt.sub](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/hasfinitefpowerseriesat-sub--07f1e70809cd162c108ed024.md) | 78 | `result-track:07f1e70809cd162c108ed0248f7b1f83d0a25114376c09ca2cfc14003989c6e1` |
| 13 | `theorem` | [CPolynomialAt.sub](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/cpolynomialat-sub--079036467cd40143978c47c7.md) | 83 | `result-track:079036467cd40143978c47c7e25af7e63999c4cd0ca2d69c023e34af547cd103` |
| 14 | `theorem` | [CPolynomialOn.add](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/cpolynomialon-add--db3c2c07919af39483faaa3e.md) | 87 | `result-track:db3c2c07919af39483faaa3e4608175aacf243f24f8db1bb228621696ed831c3` |
| 15 | `theorem` | [CPolynomialOn.sub](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/cpolynomialon-sub--7ce3e07f595352f43f8d772f.md) | 91 | `result-track:7ce3e07f595352f43f8d772f22173ee3b25e05f82b0dc3dedb8e94ae0b58200e` |
| 16 | `theorem` | [hasFiniteFPowerSeriesOnBall](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/hasfinitefpowerseriesonball--325ace345853577e9b816b15.md) | 109 | `result-track:325ace345853577e9b816b15ed5278c564cc630462bb285d8103b9bbe1929a60` |
| 17 | `lemma` | [cpolynomialAt](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/cpolynomialat--2ca53da80771c899a47cb78d.md) | 116 | `result-track:2ca53da80771c899a47cb78d472931adc7e995227747ceef4c6500111dca2466` |
| 18 | `lemma` | [cpolynomialOn](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/cpolynomialon--b6d4fb663f1b15222a44d783.md) | 120 | `result-track:b6d4fb663f1b15222a44d78325bcbfc172388b3193dc5dd61751a457150d4ce5` |
| 19 | `lemma` | [analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/analyticonnhd--2cbd6526b870fc007bc10be8.md) | 124 | `result-track:2cbd6526b870fc007bc10be8f794bdf87c665c3ed5bab10a76f34b9e5d706347` |
| 20 | `lemma` | [analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/analyticon--5369eae8762a87abf75b2473.md) | 126 | `result-track:5369eae8762a87abf75b247363588a5f79f50425b56cc6f7c7dad08cefaebf97` |
| 21 | `lemma` | [analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/analyticat--97f50bc2ceeacc99cea78711.md) | 128 | `result-track:97f50bc2ceeacc99cea7871120600745c0bf94aada481ad92a632f33d92990e5` |
| 22 | `lemma` | [analyticWithinAt](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/analyticwithinat--ed39a7cae8d080b702ec3c53.md) | 130 | `result-track:ed39a7cae8d080b702ec3c530c5276bcab58fa75061c229e623777a2f6ebe3b0` |
| 23 | `def` | [toFormalMultilinearSeriesOfMultilinear](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/toformalmultilinearseriesofmultilinear--ba34d0b20395e1c73a3a7dab.md) | 149 | `declaration-track:ba34d0b20395e1c73a3a7dab23f238785298ca174b9af76c76800fda5781dcff` |
| 24 | `theorem` | [hasFiniteFPowerSeriesOnBall_uncurry_of_multilinear](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/hasfinitefpowerseriesonball-uncurry-of-multilinear--1363f1a5f666d4b864e2e7bc.md) | 155 | `result-track:1363f1a5f666d4b864e2e7bc7add20991973b3fc1a2c081e27c44767a01c3dfd` |
| 25 | `lemma` | [cpolynomialAt_uncurry_of_multilinear](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/cpolynomialat-uncurry-of-multilinear--6731da288fdc91b0451e1b8f.md) | 167 | `result-track:6731da288fdc91b0451e1b8fb8df6016094821cfb70102d8d8c391eddccc936b` |
| 26 | `lemma` | [cpolyomialOn_uncurry_of_multilinear](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/cpolyomialon-uncurry-of-multilinear--db464509e222317eb2eddd36.md) | 172 | `result-track:db464509e222317eb2eddd365ee707457b04df60a7255cfbd5bd9d5d27eb7efc` |
| 27 | `lemma` | [analyticOnNhd_uncurry_of_multilinear](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/analyticonnhd-uncurry-of-multilinear--146226d5ba084a876e183cb3.md) | 176 | `result-track:146226d5ba084a876e183cb3a799d0ff0fb45358e7a1e9fe157757c29570d311` |
| 28 | `lemma` | [analyticOn_uncurry_of_multilinear](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/analyticon-uncurry-of-multilinear--9bd2ad317498dfaf59dffbd2.md) | 180 | `result-track:9bd2ad317498dfaf59dffbd2af59b4fa40ac5b417c1816bad1b3427fc745f8ac` |
| 29 | `lemma` | [analyticAt_uncurry_of_multilinear](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/analyticat-uncurry-of-multilinear--238b9e0d86efe5dd0f25b72a.md) | 184 | `result-track:238b9e0d86efe5dd0f25b72a107ee884f6134101e3cd4c986e1034ba0f66a77c` |
| 30 | `lemma` | [analyticWithinAt_uncurry_of_multilinear](../../../../../mathematics/Analysis/ComplexAnalysis/CPolynomial/Variant4d864d4ccd5aa7d70e4517186d97289a9c439a4f62b53447a7333d1a7de9af15.lean/declarations/analyticwithinat-uncurry-of-multilinear--e5f23384aaf78cafb4e75beb.md) | 187 | `result-track:e5f23384aaf78cafb4e75beb5052013294261a73c1b91cd70a05a932ae623cc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
