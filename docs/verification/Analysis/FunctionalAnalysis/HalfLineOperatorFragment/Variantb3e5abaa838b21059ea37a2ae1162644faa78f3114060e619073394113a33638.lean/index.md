# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HalfLineOperatorFragment.Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7fe5b7f3ef3e0902b723e82be7cf4812cfb474e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7fe5b7f3ef3e0902b723e82be7cf4812cfb474e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfConvolution](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/halfconvolution--9b68a06837d9c75d47b09179.md) | 10 | `declaration-track:9b68a06837d9c75d47b09179a9cc8f90ea56b51f2b02d089a7949ca5700f8a17` |
| 2 | `theorem` | [halfConvolution_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/halfconvolution-apply--538921b31727adecfe3161e1.md) | 13 | `result-track:538921b31727adecfe3161e13e4ca5187a884e323ea0b8dae848b869c35142e2` |
| 3 | `theorem` | [halfConvolution_apply_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/halfconvolution-apply-norm-le--f03ed32df98a1f35dbe5f581.md) | 17 | `result-track:f03ed32df98a1f35dbe5f581e93c7fbe14b29eaccb46156142941a6501e16313` |
| 4 | `theorem` | [halfConvolution_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/halfconvolution-norm-le--ffb788dfc45cbfa998311c6b.md) | 24 | `result-track:ffb788dfc45cbfa998311c6b433a8975cc1c0ba870d45dd1bb8540e0eef43d01` |
| 5 | `theorem` | [halfConvolution_sub_kernel](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/halfconvolution-sub-kernel--3ca90bc680ea4f20cb0aae9a.md) | 29 | `result-track:3ca90bc680ea4f20cb0aae9a272b7843dc7674baa9f9fcc135606c1e1212d6cb` |
| 6 | `theorem` | [halfConvolution_norm_sub_le](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/halfconvolution-norm-sub-le--5631d3ec805b9f721805d8e0.md) | 38 | `result-track:5631d3ec805b9f721805d8e076b9a495e05435609974847b07d5051324604e83` |
| 7 | `def` | [sourceOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceoperator--8fbb326fbe0c21763275bcde.md) | 43 | `declaration-track:8fbb326fbe0c21763275bcde8ce16620a5cda6c52dea74c7cf684b27201d05fd` |
| 8 | `theorem` | [sourceOperator_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceoperator-apply--bffd67403023425e6b79e52b.md) | 45 | `result-track:bffd67403023425e6b79e52b0f05dc8c156565bbadb25b2dcac4f651578a28b0` |
| 9 | `theorem` | [sourceOperator_apply_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceoperator-apply-norm-le--6b65e651463f48cac01a436e.md) | 49 | `result-track:6b65e651463f48cac01a436eaed2571c2957b30c2a2874c09b2120a43cbf69da` |
| 10 | `theorem` | [sourceOperator_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceoperator-norm-le--d928e2f0f6954ddabde9021e.md) | 53 | `result-track:d928e2f0f6954ddabde9021eb06757d59517534a96db058101eb590a87113268` |
| 11 | `def` | [sourceEnergy](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceenergy--95636985c7b79510f619a811.md) | 57 | `declaration-track:95636985c7b79510f619a81115502e1bd7f70596f6b252403492aa0f462d2269` |
| 12 | `theorem` | [sourceEnergy_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceenergy-apply--922bf163b89baabda7295dbd.md) | 59 | `result-track:922bf163b89baabda7295dbd2622e734a97e79c2a9e658ff932c39cdff58bc3f` |
| 13 | `theorem` | [sourceEnergy_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceenergy-ispositive--41fd980df6fc064cdfd28a11.md) | 62 | `result-track:41fd980df6fc064cdfd28a11ff970ab3f44da90d98d86977a2bd2f41ea43367c` |
| 14 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceenergy-isselfadjoint--f3c955391f61a8f6cbeefcae.md) | 65 | `result-track:f3c955391f61a8f6cbeefcae9b1d28938274c8b03ed1a75fb4929ff9f8cf110e` |
| 15 | `theorem` | [sourceEnergy_inner](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceenergy-inner--558395bf83a571b7b4884e46.md) | 68 | `result-track:558395bf83a571b7b4884e46b23932d576c76e01c95fc656085d66c8cbe2ef53` |
| 16 | `theorem` | [sourceEnergy_re_inner](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceenergy-re-inner--743dd19ecc5cb8ed3530b7c9.md) | 73 | `result-track:743dd19ecc5cb8ed3530b7c9dc4336a6756cb022c42c4fe513ac2002b89051bf` |
| 17 | `theorem` | [sourceEnergy_kernel](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceenergy-kernel--6cac3dab99574a2d7956f4c3.md) | 78 | `result-track:6cac3dab99574a2d7956f4c3117169b0536cf457b18ddbf7d776e6d2a7329416` |
| 18 | `theorem` | [sourceEnergy_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantb3e5abaa838b21059ea37a2ae1162644faa78f3114060e619073394113a33638.lean/declarations/sourceenergy-norm--5d6a78453e4b37a7e5cb08d3.md) | 81 | `result-track:5d6a78453e4b37a7e5cb08d328c75e46dd0521daea3648ba1e56522935beee6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
