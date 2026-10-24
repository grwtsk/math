# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivativesAttempt03.Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb769c1ff90ab3ef4ba0c12f6ebbf3273a2faa5e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb769c1ff90ab3ef4ba0c12f6ebbf3273a2faa5e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `EndpointExpansion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointFirstPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpointfirstpolynomial--6a4ea29a7f6eed7baa13e1ef.md) | 18 | `declaration-track:6a4ea29a7f6eed7baa13e1ef37b368d1f73f823e4eed8032f714b5cc89a497d8` |
| 2 | `def` | [endpointSecondPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpointsecondpolynomial--994e980254dca398e09492bf.md) | 47 | `declaration-track:994e980254dca398e09492bf332a4f3b3c51de2d1de0088d23ec8ed2084d6a45` |
| 3 | `def` | [endpointFullSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpointfullslope--e90e6b2aa597cf2788b2b20c.md) | 76 | `declaration-track:e90e6b2aa597cf2788b2b20cfb4ebe67642a89606bba7357803c23d7a51e54b1` |
| 4 | `def` | [endpointFullCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpointfullcurvature--160e9df832025ce347ea0669.md) | 79 | `declaration-track:160e9df832025ce347ea0669e5ff0561959e03d3e640f3dad7bc5cdd40cd2ab1` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpointfullpolynomial-contdiff--58e3aba8df1844d64f668527.md) | 82 | `result-track:58e3aba8df1844d64f668527c821f3c3cf68b844a15186b6bb33e76731d0c556` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpointfirstpolynomial-contdiff--fc7ea67c33854da7f33fd754.md) | 86 | `result-track:fc7ea67c33854da7f33fd754e49fb5cb9a10fc83008a5c5dc4f7157fa1f73a95` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpoint-full-deriv--b01b0fd0b5e76cf4a6e4a97e.md) | 90 | `result-track:b01b0fd0b5e76cf4a6e4a97ef030c97056b6f51cf7b6f5c4b2e03bca3e2aac22` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpoint-first-deriv--538d8c96c6758f49ea7f8ff6.md) | 96 | `result-track:538d8c96c6758f49ea7f8ff6549869da979a90d930805ab86e9145e5fd2d3e83` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpoint-full-hasderivat--b0d0f44abb8f9a34299ae274.md) | 102 | `result-track:b0d0f44abb8f9a34299ae274353428156a31a3c2db612fb16110327072b0d94e` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpoint-first-hasderivat--df78d5bf04edb2ac36701f77.md) | 107 | `result-track:df78d5bf04edb2ac36701f77b0770afc31cf16f141cb2a0e5a6963bc94c516ab` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpoint-slope-zero--4170d4428e8480c83d6db7df.md) | 112 | `result-track:4170d4428e8480c83d6db7df68ca6ac07186c4539b18af09ef948d7e18007f97` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpoint-curvature-zero--11ecae6331e22164e8fe18c7.md) | 116 | `result-track:11ecae6331e22164e8fe18c70ae695c0fde8f0017c340c036b3a9e73b9c30ebc` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpoint-slope-continuous--86e3c3d11089b82646084c4b.md) | 122 | `result-track:86e3c3d11089b82646084c4b6042341e438e2fd586a477bf5fe1faa288c27587` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpoint-curvature-continuous--443786b23c0e85d4d516c726.md) | 126 | `result-track:443786b23c0e85d4d516c7266c5876e1af633a49a6b71a33c17f464f6d10b3e9` |
| 15 | `theorem` | [endpoint_slope_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpoint-slope-uniform-remainder--88771117c837eec7f4567840.md) | 132 | `result-track:88771117c837eec7f4567840bb9f1064881d9024a57c5ba41808dbb0737da98a` |
| 16 | `theorem` | [endpoint_curvature_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/endpoint-curvature-uniform-remainder--14eceb88a2dda394b9bed104.md) | 144 | `result-track:14eceb88a2dda394b9bed1046ff981f76390fbd3bb064f3d3f962544635b71d4` |
| 17 | `theorem` | [actual_endpoint_model_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/actual-endpoint-model-eventuallyeq--fd8699bee26d785820e787b8.md) | 158 | `result-track:fd8699bee26d785820e787b873b215f764efa12ecb79abceb44f65a5d653bbd6` |
| 18 | `theorem` | [actual_endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/actual-endpoint-first-hasderivat--9a1da74a12c2afd109d288b0.md) | 174 | `result-track:9a1da74a12c2afd109d288b0a7fb88d3f4bee52eb414b7eb3a01532f59d45512` |
| 19 | `theorem` | [actual_endpoint_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/declarations/actual-endpoint-second-hasderivat--264c176f4da0a52a429e861c.md) | 191 | `result-track:264c176f4da0a52a429e861c092bcadaf55cb366c3143bd2c58abc369d6ad492` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
