# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Schwarz.Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab70219bb68b7a4177f8c2104742005527bf60ce",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab70219bb68b7a4177f8c2104742005527bf60ce`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [schwarz_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean/declarations/schwarz-aux--f1115a95e679e0972e6302d8.md) | 71 | `result-track:f1115a95e679e0972e6302d88bd25c6464128358a50b94086f4e58d1fa46d6aa` |
| 2 | `theorem` | [norm_dslope_le_div_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean/declarations/norm-dslope-le-div-of-mapsto-ball--23001070de1deb243255a8ba.md) | 97 | `result-track:23001070de1deb243255a8ba3ebfc14cf280fe4bdae48626a9f8e21f571d0c72` |
| 3 | `theorem` | [affine_of_mapsTo_ball_of_exists_norm_dslope_eq_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean/declarations/affine-of-mapsto-ball-of-exists-norm-dslope-eq-div--d02e4af4b160e8db5ebbfcb2.md) | 117 | `result-track:d02e4af4b160e8db5ebbfcb2037e8c886f16abe0f1bf919c51d45c81e28160b9` |
| 4 | `theorem` | [affine_of_mapsTo_ball_of_exists_norm_dslope_eq_div'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean/declarations/affine-of-mapsto-ball-of-exists-norm-dslope-eq-div--eabe0e4cded2b08c83d934fa.md) | 136 | `result-track:eabe0e4cded2b08c83d934fa7876a3d0c9d059776e8eb9e7be5bac5f8547b18f` |
| 5 | `theorem` | [norm_deriv_le_div_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean/declarations/norm-deriv-le-div-of-mapsto-ball--33875434662c78e6781073ba.md) | 147 | `result-track:33875434662c78e6781073ba50bca06905c6bde1704e7fae371d99e3f2d0d5ce` |
| 6 | `theorem` | [dist_le_div_mul_dist_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean/declarations/dist-le-div-mul-dist-of-mapsto-ball--7dbc5ec8c907590744f3d23c.md) | 157 | `result-track:7dbc5ec8c907590744f3d23cf16db14231120c7ce53db03f5e661ee82bc3dca2` |
| 7 | `theorem` | [norm_deriv_le_one_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean/declarations/norm-deriv-le-one-of-mapsto-ball--05bc06433b24d76bd34f6fc1.md) | 172 | `result-track:05bc06433b24d76bd34f6fc1c2c4fd711531bf2edb88e221e59ecf7e0ed42301` |
| 8 | `theorem` | [dist_le_dist_of_mapsTo_ball_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean/declarations/dist-le-dist-of-mapsto-ball-self--04c2a5b1c3619a3f23ab9083.md) | 181 | `result-track:04c2a5b1c3619a3f23ab90837de21319a12922d958c27e5c7f10f974c798d340` |
| 9 | `theorem` | [norm_le_norm_of_mapsTo_ball_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant53762966c16ad0dcc27aa31892fa1e58d5f06c2a368a4567f5c379c1ef7f01ef.lean/declarations/norm-le-norm-of-mapsto-ball-self--42b13c354bcd404bec36ecbc.md) | 190 | `result-track:42b13c354bcd404bec36ecbc98ca69713d904d8e07dccaf275893f2ed716a5c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
