# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteDimension.Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98cecbbf0bc5fbdb76c04b38596df4f7f2f291fa",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98cecbbf0bc5fbdb76c04b38596df4f7f2f291fa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14.lean.json)

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
| 1 | `theorem` | [contDiffWithinAt_clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14.lean/declarations/contdiffwithinat-clm-apply--567eddf2463f257fe2ab82f3.md) | 49 | `result-track:567eddf2463f257fe2ab82f39545f9fc18601e695e860b93bb27464e14b2b0fe` |
| 2 | `theorem` | [contDiffOn_clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14.lean/declarations/contdiffon-clm-apply--4c95d16bcb2c5cfc6dc3b66a.md) | 60 | `result-track:4c95d16bcb2c5cfc6dc3b66ad1327d6213970828ec7d92959a61f6dd21096e18` |
| 3 | `theorem` | [contDiff_clm_apply_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14.lean/declarations/contdiff-clm-apply-iff--aa549e4c35d902e622009814.md) | 65 | `result-track:aa549e4c35d902e6220098149bbdc57730281a904dd881f82f318849ce65ad70` |
| 4 | `theorem` | [contDiff_succ_iff_fderiv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14.lean/declarations/contdiff-succ-iff-fderiv-apply--c79ce9042073ee67d833408e.md) | 78 | `result-track:c79ce9042073ee67d833408ed25eafe402e2f1198df8d06372e90bfa18cf0872` |
| 5 | `theorem` | [contDiffOn_succ_of_fderiv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14.lean/declarations/contdiffon-succ-of-fderiv-apply--537e22327014a6e644ff905a.md) | 83 | `result-track:537e22327014a6e644ff905aea6796e8e19510f9ac9feb95ad5703ba581de7e6` |
| 6 | `theorem` | [contDiffOn_succ_iff_fderiv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant65c15462f863a92cdd64f874888c58299ae48e51b0cd2343fd8d86561a01ff14.lean/declarations/contdiffon-succ-iff-fderiv-apply--3a6f60e93279406a1f8f9c91.md) | 89 | `result-track:3a6f60e93279406a1f8f9c9138f944912f0dbf18c6fde963814f590d84c23d33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
