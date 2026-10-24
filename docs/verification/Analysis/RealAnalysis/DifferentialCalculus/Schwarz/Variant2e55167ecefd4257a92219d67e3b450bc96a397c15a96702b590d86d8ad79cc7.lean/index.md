# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Schwarz.Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cef97c3aa78483525dd30974bfc7d93d94fd9fbb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cef97c3aa78483525dd30974bfc7d93d94fd9fbb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean.json)

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
| 1 | `theorem` | [schwarz_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/schwarz-aux--435a9294d2edb4781c5b87dc.md) | 65 | `result-track:435a9294d2edb4781c5b87dc2d7deedfba36ebedfaf61d9c9fc7f2c9d6340da1` |
| 2 | `theorem` | [dist_le_mul_div_pow_of_mapsTo_ball_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/dist-le-mul-div-pow-of-mapsto-ball-of-islittleo--f44fdd0edfdc066a9f9ee165.md) | 145 | `result-track:f44fdd0edfdc066a9f9ee1652532da6c986d20af2eaca2d3b9abfe4c1306f16c` |
| 3 | `theorem` | [dist_le_div_mul_dist_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/dist-le-div-mul-dist-of-mapsto-ball--1b5a278d1e09704486cfa106.md) | 189 | `result-track:1b5a278d1e09704486cfa10678b5dfa9192d811a148573beeec0a3949d3a08bf` |
| 4 | `theorem` | [norm_fderiv_le_div_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/norm-fderiv-le-div-of-mapsto-ball--1177577b5974b63610e8aeb9.md) | 202 | `result-track:1177577b5974b63610e8aeb9a2aac325dc131b124ddafef2f2c8fa821cadf878` |
| 5 | `theorem` | [dist_le_dist_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/dist-le-dist-of-mapsto-ball--243d63b9816b053831a09fdf.md) | 215 | `result-track:243d63b9816b053831a09fdff217c1b922295a4648a2e2b3df13f00804bc5e97` |
| 6 | `theorem` | [norm_fderiv_le_one_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/norm-fderiv-le-one-of-mapsto-ball--1eb9d2d9304c63f2f7439ba5.md) | 225 | `result-track:1eb9d2d9304c63f2f7439ba5e1257c7386bfded3dd6af006d05d9dcc4e64f611` |
| 7 | `theorem` | [norm_le_norm_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/norm-le-norm-of-mapsto-ball--6a67cfc46dd41942f99d19cc.md) | 234 | `result-track:6a67cfc46dd41942f99d19cc19daab540e48eb2f1d84d24000c05f6ed4c76ffd` |
| 8 | `theorem` | [norm_deriv_le_div_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/norm-deriv-le-div-of-mapsto-ball--a7cac5d6eb4e8daa6630e054.md) | 250 | `result-track:a7cac5d6eb4e8daa6630e05499ddd22e643ef227fa925f0ac43dd0d944d3901f` |
| 9 | `theorem` | [norm_deriv_le_one_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/norm-deriv-le-one-of-mapsto-ball--cfc7437654768cb637f99e06.md) | 261 | `result-track:cfc7437654768cb637f99e066aabe5e69ffab362a7a50b5c8078682da423b3af` |
| 10 | `theorem` | [norm_dslope_le_div_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/norm-dslope-le-div-of-mapsto-ball--584759afded192973775f91b.md) | 272 | `result-track:584759afded192973775f91be800448e4526e203471887f98cb9765f2a780efc` |
| 11 | `theorem` | [affine_of_mapsTo_ball_of_norm_dslope_eq_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/affine-of-mapsto-ball-of-norm-dslope-eq-div--f7b048f0fd1800f6ac91b80e.md) | 291 | `result-track:f7b048f0fd1800f6ac91b80e374fb4c57c2037757fe5fb791a4d626a4c8e3362` |
| 12 | `theorem` | [affine_of_mapsTo_ball_of_exists_norm_dslope_eq_div'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2e55167ecefd4257a92219d67e3b450bc96a397c15a96702b590d86d8ad79cc7.lean/declarations/affine-of-mapsto-ball-of-exists-norm-dslope-eq-div--ae7083ab73a3e5bbfbc6dbd2.md) | 334 | `result-track:ae7083ab73a3e5bbfbc6dbd20b197311232d830628fba62e920533ca0ea475ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
