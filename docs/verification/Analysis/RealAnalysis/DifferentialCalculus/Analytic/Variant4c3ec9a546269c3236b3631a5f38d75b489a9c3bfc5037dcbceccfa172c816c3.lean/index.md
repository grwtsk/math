# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Analytic.Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6c015f40373865b625a8039ff05b0833b82d5a2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6c015f40373865b625a8039ff05b0833b82d5a2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean.json)

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
| 1 | `theorem` | [HarmonicAt.differentiableAt_complex_partial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean/declarations/harmonicat-differentiableat-complex-partial--5cda5f6eb0419ffdb193aa43.md) | 39 | `result-track:5cda5f6eb0419ffdb193aa43bf72cc2b527a567c6c14d48fc863c5493c861422` |
| 2 | `theorem` | [HarmonicAt.analyticAt_complex_partial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean/declarations/harmonicat-analyticat-complex-partial--fa7daf92cd530cd275d221fe.md) | 68 | `result-track:fa7daf92cd530cd275d221fe8e58aa6b587fe9ed025a81acca7e0cdb017b69ae` |
| 3 | `theorem` | [InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_ball_re_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean/declarations/innerproductspace-harmoniconnhd-exists-analyticonnhd-ball-re-eq--dcba79e6e89784f7fbe5bdc6.md) | 78 | `result-track:dcba79e6e89784f7fbe5bdc6a1ee7c41ad88cab85ec2cb7946ab843df828e774` |
| 4 | `theorem` | [InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_univ_re_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean/declarations/innerproductspace-harmoniconnhd-exists-analyticonnhd-univ-re-eq--14a2b8ffa1172de8cc4f41da.md) | 117 | `result-track:14a2b8ffa1172de8cc4f41dac8929afb20940d2351c95786b6adb683aa9dc950` |
| 5 | `theorem` | [HarmonicAt.analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean/declarations/harmonicat-analyticat--967022ad4d8fd87e275312ec.md) | 151 | `result-track:967022ad4d8fd87e275312ec10d9e709b955559e1fbba82ba01a4fc4fb7ef88a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
