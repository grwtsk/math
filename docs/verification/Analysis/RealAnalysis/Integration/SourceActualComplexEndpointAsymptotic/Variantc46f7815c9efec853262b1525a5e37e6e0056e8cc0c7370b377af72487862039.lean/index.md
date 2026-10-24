# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dfec7510c51bd42cfbe709dbfd4de96de24e5f6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dfec7510c51bd42cfbe709dbfd4de96de24e5f6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEdgeLeadingLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualendpointextension--69e5dcf053b8919752b614f5.md) | 32 | `declaration-track:69e5dcf053b8919752b614f55821ef1e59edad74c2ea701c125722fd836ee12f` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualcomplexendpointintegrand--539eb9652c71f19647486d03.md) | 36 | `declaration-track:539eb9652c71f19647486d03ec5eae4d47a7e04daeaf7fb5ca5052015724a0f8` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualleadingcomplexcoefficient--21f034b8a2559cbc924624af.md) | 40 | `declaration-track:21f034b8a2559cbc924624afad7a41b10a34ef481cb5a23c6d344023569aa8f8` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualendpointmajorant-integrable--93d6a96b8f891381dff4dbb7.md) | 45 | `result-track:93d6a96b8f891381dff4dbb742b167b5b9f60a7ba5fc23fe2745a32949069d97` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualcomplexendpointintegrand-norm-le--0a8093106a43bde2c06710d7.md) | 63 | `result-track:0a8093106a43bde2c06710d776712dfb805669328b1b75b95067bf3e64a08814` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--426ac79f7a1b745f8e84a0db.md) | 78 | `result-track:426ac79f7a1b745f8e84a0dbc6a4d8121ec51fd8607c596b16b74a75447ff217` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualcomplexendpointintegrand-integrable--311a17da46b4d2a547ca026c.md) | 92 | `result-track:311a17da46b4d2a547ca026cea226f01db293d5a82a4b09afb314ed548dd9b3b` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualcomplexendpointintegrand-tendsto--893da4776f9f3094385dcae8.md) | 100 | `result-track:893da4776f9f3094385dcae8a8726562fb23807e723048a26d1d510a6ad4c54d` |
| 9 | `theorem` | [actualLeadingComplexCoefficient_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualleadingcomplexcoefficient-integrable--4c943bbbeb14072561425819.md) | 112 | `result-track:4c943bbbeb14072561425819d64b327e9d143398d4c89e612453708f44a6bf5e` |
| 10 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualcomplexendpoint-integral-tendsto--282712b8672bd0ea4c1e404e.md) | 129 | `result-track:282712b8672bd0ea4c1e404e3c349c585045125209e0fcc326239e84b61c044a` |
| 11 | `def` | [actualSourceComplexTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualsourcecomplextransform--6dd27a4a03e37fa1aed0d476.md) | 150 | `declaration-track:6dd27a4a03e37fa1aed0d4769c1c2de45a9ec4d99bf53cc2813ae4618482a378` |
| 12 | `theorem` | [actualSourceComplexTransform_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualsourcecomplextransform-intervalintegrable--f443ef03f91e96844cd09bd5.md) | 155 | `result-track:f443ef03f91e96844cd09bd5f1eb27314f6d7896a5a6b1906eb83bfd3c6b0eeb` |
| 13 | `theorem` | [actualComplexEndpoint_integral_eq_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualcomplexendpoint-integral-eq-interval--9b3621ce51215afe0b672985.md) | 163 | `result-track:9b3621ce51215afe0b6729851545880e5d374ac937216994602e9df5e9622bf2` |
| 14 | `theorem` | [actualSourceComplexTransform_normalized_eq_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualsourcecomplextransform-normalized-eq-endpoint--c9a29b4adcf0647fc972c211.md) | 184 | `result-track:c9a29b4adcf0647fc972c21173ad1bde7ca17532eb64ec7121c67f5576dbe6ea` |
| 15 | `theorem` | [actualSourceComplexTransform_normalized_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039.lean/declarations/actualsourcecomplextransform-normalized-tendsto--a72aba7e4fc6a5bca625b38e.md) | 225 | `result-track:a72aba7e4fc6a5bca625b38e9d0fc1de4e2f52921d872bf88ab65b7dda68063e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
