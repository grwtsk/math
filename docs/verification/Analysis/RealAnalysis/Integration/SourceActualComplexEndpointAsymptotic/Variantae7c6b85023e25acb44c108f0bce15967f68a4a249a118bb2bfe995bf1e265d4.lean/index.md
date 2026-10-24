# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bb6f13afc13c0bc7787e202bcf18bf672538580",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bb6f13afc13c0bc7787e202bcf18bf672538580`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEdgeLeadingLimit` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean/declarations/actualendpointextension--10067e70a6e9765c4b5b3f6f.md) | 24 | `declaration-track:10067e70a6e9765c4b5b3f6f8d35f25af478baa8802d917839c8af92571997f4` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean/declarations/actualcomplexendpointintegrand--c6ab8116b1213be574973f92.md) | 28 | `declaration-track:c6ab8116b1213be574973f9271f248ff0c94660d08992f31d23fb6f456622271` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean/declarations/actualleadingcomplexcoefficient--b648fb1d0328ef5348349da0.md) | 32 | `declaration-track:b648fb1d0328ef5348349da02ac3eb983289d8784105f9b1801f062e67995b62` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean/declarations/actualendpointmajorant-integrable--5ca40be36a327c275c9df47e.md) | 37 | `result-track:5ca40be36a327c275c9df47eae2e0e6c928a081509c9b62626f2954e03c64a6e` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean/declarations/actualcomplexendpointintegrand-norm-le--9baa469245f085b48f176a54.md) | 48 | `result-track:9baa469245f085b48f176a543eaf2c8f62ce34477365e6b7465d1773cd24d24e` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--a412ae14af5adb6829838abb.md) | 63 | `result-track:a412ae14af5adb6829838abb34c10cd66200a4674464164fd4bf633d6a76d503` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean/declarations/actualcomplexendpointintegrand-integrable--80857a2e004373061681c311.md) | 73 | `result-track:80857a2e004373061681c3116c8402d20024795b48fa0de0a6c293ee7e6b9956` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean/declarations/actualcomplexendpointintegrand-tendsto--78fc86f37e935f713846bea0.md) | 81 | `result-track:78fc86f37e935f713846bea052cf9bc6081166b9e5054ea7169c2fcbb256680a` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantae7c6b85023e25acb44c108f0bce15967f68a4a249a118bb2bfe995bf1e265d4.lean/declarations/actualcomplexendpoint-integral-tendsto--1e582729ad1cccd085df7061.md) | 93 | `result-track:1e582729ad1cccd085df70616764ce4d53bf0b5b583e0122052deccfa6040a02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
