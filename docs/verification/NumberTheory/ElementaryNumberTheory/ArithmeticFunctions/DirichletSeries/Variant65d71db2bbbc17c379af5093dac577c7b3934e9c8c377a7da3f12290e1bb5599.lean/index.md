# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DirichletSeries.Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "390cc56aa8b7a8c63f72b3b7e7152b1249f01cfd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `390cc56aa8b7a8c63f72b3b7e7152b1249f01cfd`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Certificate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HalfPlane](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean/declarations/halfplane--1fc6fcdff4f174f6da0d4af1.md) | 25 | `declaration-track:1fc6fcdff4f174f6da0d4af143baef5e23c8c07833d9cb03c011ca15e881c62d` |
| 2 | `structure` | [DirichletSeries](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean/declarations/dirichletseries--e7c3d3d1406e4e0a0f79f0fc.md) | 30 | `declaration-track:e7c3d3d1406e4e0a0f79f0fc6fd5a45ac15146961862c52970a4ca677bddf95e` |
| 3 | `structure` | [AbsoluteConvergenceCertificate](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean/declarations/absoluteconvergencecertificate--ba3603f816d5206151660a95.md) | 35 | `declaration-track:ba3603f816d5206151660a95423841ff4ef7b6c2db8274e0c0ad9c6c355bae3b` |
| 4 | `structure` | [CauchyProductCertificate](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean/declarations/cauchyproductcertificate--e885b2ec5a21cefc47beae82.md) | 44 | `declaration-track:e885b2ec5a21cefc47beae821fd45f5b3824aa0ae21afe1a839f07dac70d22ea` |
| 5 | `theorem` | [absolute_convergence_sound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean/declarations/absolute-convergence-sound--f718a1a8f25b755fd2906243.md) | 53 | `result-track:f718a1a8f25b755fd29062434ddc4c935ac477f84b63dc313f17a758366e725d` |
| 6 | `theorem` | [cauchy_product_sound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean/declarations/cauchy-product-sound--595cb6258593d476fa2501fd.md) | 60 | `result-track:595cb6258593d476fa2501fd671d9a0595726a2e548b0d129003a8b120389cde` |
| 7 | `def` | [DirichletSeriesOwnsConvergence](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean/declarations/dirichletseriesownsconvergence--f420cb18233017036b16d301.md) | 71 | `declaration-track:f420cb18233017036b16d301fa9ef53a91d4821596989c30e31ee23aa5d55361` |
| 8 | `theorem` | [dirichlet_series_not_convergence_authority](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599.lean/declarations/dirichlet-series-not-convergence-authority--835597d3d96f2cd18e27b7f7.md) | 75 | `result-track:835597d3d96f2cd18e27b7f71bd337d14a431761fab902efc99ac4291f9c066b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
