# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Dual.Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f2b31d986481926d83161dbc7e0d64187528cb0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f2b31d986481926d83161dbc7e0d64187528cb0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isClosed_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/isclosed-polar--6d5d0bb5b63ad5c976154fce.md) | 52 | `result-track:6d5d0bb5b63ad5c976154fcec26406729c495afb712a69c508cf0bd25721a065` |
| 2 | `theorem` | [polar_closure](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/polar-closure--57216bb8a15d5f3cbc187fbf.md) | 59 | `result-track:57216bb8a15d5f3cbc187fbf37074ac5cbae0726230eaf5f3ab3f89e233633db` |
| 3 | `theorem` | [smul_mem_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/smul-mem-polar--b97e34831d31d9e856b9c0b9.md) | 70 | `result-track:b97e34831d31d9e856b9c0b9af924e91aae1a5713823d18941af1d259726f29a` |
| 4 | `theorem` | [polar_ball_subset_closedBall_div](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/polar-ball-subset-closedball-div--6af118c993f3aa64731492c6.md) | 84 | `result-track:6af118c993f3aa64731492c63396bcc823d18af3dae2e148b37088b9f35ede8e` |
| 5 | `theorem` | [closedBall_inv_subset_polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/closedball-inv-subset-polar-closedball--e010a50ba98a3a88ed14c93d.md) | 97 | `result-track:e010a50ba98a3a88ed14c93d1c0e8cac63abac4c795b027b4cf5f4467c6a7f92` |
| 6 | `theorem` | [polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/polar-closedball--791b83ff992bb97c0e597d0a.md) | 110 | `result-track:791b83ff992bb97c0e597d0a2a47f737129698a399aae9f0ec7c64c195c38684` |
| 7 | `theorem` | [polar_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/polar-ball--db52ac64a6e5bdbc5bde078a.md) | 119 | `result-track:db52ac64a6e5bdbc5bde078ab907f84083ceb53937e0335933dcd2e71dfa8a07` |
| 8 | `theorem` | [isBounded_polar_of_mem_nhds_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/isbounded-polar-of-mem-nhds-zero--90b4dc5c1b66159acdf46077.md) | 126 | `result-track:90b4dc5c1b66159acdf46077658fa6e2beea4575c212990eed52cd69e3105d64` |
| 9 | `theorem` | [sInter_polar_eq_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/sinter-polar-eq-closedball--0a9fd992d0f39294df069b05.md) | 134 | `result-track:0a9fd992d0f39294df069b05c2f32c74a9988d98e5e3a1d23bf069327b97c894` |
| 10 | `theorem` | [polar_AbsConvex](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/polar-absconvex--d0852961187253044c06993e.md) | 156 | `result-track:d0852961187253044c06993ee10c2a69af0dcb16c053e7845c559838e6f58746` |
| 11 | `theorem` | [NormedSpace.eq_zero_of_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/normedspace-eq-zero-of-forall-dual-eq-zero--6925a70e7cead382d4234793.md) | 171 | `result-track:6925a70e7cead382d42347931b8347ee7a619d7efe562656dc31f9606daa8269` |
| 12 | `theorem` | [NormedSpace.eq_zero_iff_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/normedspace-eq-zero-iff-forall-dual-eq-zero--12efdabb3b33012d9d4c0dfd.md) | 176 | `result-track:12efdabb3b33012d9d4c0dfd556a9f72eb7ea2dfe0813525016ae2e4e44fc058` |
| 13 | `theorem` | [NormedSpace.eq_iff_forall_dual_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/declarations/normedspace-eq-iff-forall-dual-eq--eb6b496647f013a2021d566b.md) | 181 | `result-track:eb6b496647f013a2021d566b68dbf8979ae1d00cb7fa6fd7dfa15486e2f81a0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
