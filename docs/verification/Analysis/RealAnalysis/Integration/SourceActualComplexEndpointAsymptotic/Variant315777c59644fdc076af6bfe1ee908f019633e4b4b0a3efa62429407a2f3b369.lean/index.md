# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19d7cb1616cbf46763d8d058558fc5326202a65f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19d7cb1616cbf46763d8d058558fc5326202a65f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean.json)

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
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualendpointextension--a86760ace825fc21acba4434.md) | 24 | `declaration-track:a86760ace825fc21acba4434e4cc8d579e99e4785566e97cf5f4db67a20259c5` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualcomplexendpointintegrand--8c90b5a611e7584352044524.md) | 28 | `declaration-track:8c90b5a611e75843520445246df2106be929357be6c8d7c8fbf2b6b2cd9dc717` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualleadingcomplexcoefficient--9b81d3716c96e9699479a0a3.md) | 32 | `declaration-track:9b81d3716c96e9699479a0a3fe816c56d99e5ce2b335cc774e4cbcf98ba1951b` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualendpointmajorant-integrable--d77d33fa5bd5227633283029.md) | 37 | `result-track:d77d33fa5bd5227633283029d4bf67bcb8e96ad9cb7916884031c6ee924bfd9b` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualcomplexendpointintegrand-norm-le--3bd9cc45995e2b80307bf69d.md) | 55 | `result-track:3bd9cc45995e2b80307bf69d0a1b784ecf7404df51fb29486be927c6029fa9ec` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--636b8dc68b7a8bb414e4102e.md) | 70 | `result-track:636b8dc68b7a8bb414e4102e6028bd9243cd7fcf2fa2d4d9d8b5f5f0599cb598` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualcomplexendpointintegrand-integrable--797980c2026dd46c616d6ef9.md) | 84 | `result-track:797980c2026dd46c616d6ef9e6b13d4ca4fa455de0812f7784957618c89de618` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualcomplexendpointintegrand-tendsto--c1ce74ac70493c9d73b98f2b.md) | 92 | `result-track:c1ce74ac70493c9d73b98f2b15636838e967e3c6cd3620a9709c81d9429d15ca` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualcomplexendpoint-integral-tendsto--b829c0b54e24c1c96047a35b.md) | 104 | `result-track:b829c0b54e24c1c96047a35ba56489c8d2c4cea9fad8ae0a474c029b753cb69a` |
| 10 | `def` | [actualSourceComplexTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualsourcecomplextransform--619acda530d0d4b8b8791fd9.md) | 125 | `declaration-track:619acda530d0d4b8b8791fd9dc9df7b02e6ac5cee1d04421cc1a33c14823c2ac` |
| 11 | `theorem` | [actualComplexEndpoint_integral_eq_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualcomplexendpoint-integral-eq-interval--4f6de977cf67ce328c45f3b5.md) | 130 | `result-track:4f6de977cf67ce328c45f3b530aa7b2ccfe3a73b8b380e0d7f8328b7266d181b` |
| 12 | `theorem` | [actualSourceComplexTransform_normalized_eq_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualsourcecomplextransform-normalized-eq-endpoint--c2e204c8b7f181d8b2c88a73.md) | 151 | `result-track:c2e204c8b7f181d8b2c88a73174627ff703be7f01bd673a038a8ef8bbac10063` |
| 13 | `theorem` | [actualSourceComplexTransform_normalized_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/declarations/actualsourcecomplextransform-normalized-tendsto--6ec475882c2929202d068491.md) | 191 | `result-track:6ec475882c2929202d068491a6f0892ea06a15bba2fec7be6e283f8a15ac61ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
