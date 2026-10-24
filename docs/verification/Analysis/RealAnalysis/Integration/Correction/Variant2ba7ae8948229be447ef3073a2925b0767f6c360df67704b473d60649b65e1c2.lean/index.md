# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Correction.Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ebcdc67d90921b231467b6b036617ac7aecb13",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ebcdc67d90921b231467b6b036617ac7aecb13`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Assembly` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Laplace.Continuation` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/normalizationpolynomial--f73ca0e5e2df177061562b73.md) | 52 | `declaration-track:f73ca0e5e2df177061562b73423fe443e7c8003891a894a08cf90046968d9608` |
| 2 | `theorem` | [normalizationPolynomial_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/normalizationpolynomial-eq--4d7f110c2b89c3f516e8d11e.md) | 59 | `result-track:4d7f110c2b89c3f516e8d11e488aafee5ee1290d948a10c8dff928b8033f81a2` |
| 3 | `def` | [correctedSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/correctedsource--c43e6614ca890cd8b49ff17d.md) | 68 | `declaration-track:c43e6614ca890cd8b49ff17d625aceebecccee71a8759575befa77f6112d023b` |
| 4 | `theorem` | [corrected_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/corrected-source-eq--8d375e9f2ec0907ac4058666.md) | 74 | `result-track:8d375e9f2ec0907ac4058666b500a43d5a6aa87edfd12b287d9c567ee1d42b39` |
| 5 | `theorem` | [nonnegative_corrected_source_of_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/nonnegative-corrected-source-of-uniform--b16cd252382d03e34eeb2222.md) | 84 | `result-track:b16cd252382d03e34eeb222225c887bc82c030a37b53fb798f4518207353fbb1` |
| 6 | `def` | [correctionKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/correctionkernel--8b08b9be0e1bded4ec51f802.md) | 106 | `declaration-track:8b08b9be0e1bded4ec51f8029a8083f80af4a320f8d9cb569b74bfae60ee0538` |
| 7 | `theorem` | [weighted_correction_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/weighted-correction-eq--7418dcdd92d37d2c6bd648df.md) | 113 | `result-track:7418dcdd92d37d2c6bd648df321dfcf564a2e397989dc59eab463dd919d87e8e` |
| 8 | `theorem` | [correction_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/correction-integrable--f0d162becf29ff0c1052fc70.md) | 129 | `result-track:f0d162becf29ff0c1052fc70a1909fdf71e4ae8619050a4041f45367ac9cc379` |
| 9 | `theorem` | [integral_correction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/integral-correction--c12628222948750c150b6a9a.md) | 143 | `result-track:c12628222948750c150b6a9a09c0f62ddd616e93c540a5a57e8e0869278d1bdf` |
| 10 | `theorem` | [correctionKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/correctionkernel-analytic--470589c67e236e5650a1dea1.md) | 189 | `result-track:470589c67e236e5650a1dea10c99c78603dcc284462a787fdfb2a5a18c43d52b` |
| 11 | `def` | [correctedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/correctedtransform--3f9a6889c6cf6957e0226bf9.md) | 199 | `declaration-track:3f9a6889c6cf6957e0226bf97211d5a1ca9e728c37920f68342760ce920a63d6` |
| 12 | `theorem` | [weighted_corrected_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/weighted-corrected-source-eq--5d306517a523893f5787410c.md) | 203 | `result-track:5d306517a523893f5787410cccefee3b952d6c3e61177c398f56cc3b26bc1287` |
| 13 | `theorem` | [corrected_source_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/corrected-source-integrable--41d4680d3b020bb62eeb2028.md) | 215 | `result-track:41d4680d3b020bb62eeb20280efc3bdaa3d0655f9bfa5fac88c5134144e46f18` |
| 14 | `theorem` | [integral_corrected_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/integral-corrected-source--8dcd531027dde720a27bd2ec.md) | 231 | `result-track:8dcd531027dde720a27bd2ecd46c25d7c6c5efbbe00a4806839f0f45f7d8690f` |
| 15 | `theorem` | [correctedTransform_analytic_on_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/correctedtransform-analytic-on-domain--60d06e1201f4a15be5c89406.md) | 253 | `result-track:60d06e1201f4a15be5c89406f63729a690ab34bc91247c6655fd442c077544f9` |
| 16 | `theorem` | [correctedTransform_meromorphic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/correctedtransform-meromorphic--fc1c735eba5a802a14122440.md) | 265 | `result-track:fc1c735eba5a802a14122440fb407ae384a3935b8952393389959c8cb4299337` |
| 17 | `theorem` | [correctedTransform_analytic_positive_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/correctedtransform-analytic-positive-real--ecf5d4322e0edf1386807158.md) | 279 | `result-track:ecf5d4322e0edf1386807158a40148864ead08a2d10b7f573282ee7fa3ca2145` |
| 18 | `def` | [CorrectedSourceCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/correctedsourcecheckpoint--31638cd6af8a81e9cd238d2d.md) | 290 | `declaration-track:31638cd6af8a81e9cd238d2dad30eca3830dc8ca09e3ec2602dc0478d5faa05a` |
| 19 | `theorem` | [corrected_source_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/declarations/corrected-source-checkpoint--6845688247b2e447e28798b2.md) | 309 | `result-track:6845688247b2e447e28798b22580e0fd9138a9f8d9e54aa9336a04a57905517f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
