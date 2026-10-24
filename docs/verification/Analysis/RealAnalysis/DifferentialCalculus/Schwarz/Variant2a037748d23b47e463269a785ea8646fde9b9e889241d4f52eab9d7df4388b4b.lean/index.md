# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Schwarz.Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "206ac3aa024f64b5f6e8c30f0bad9ac0c55cd4ce",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `206ac3aa024f64b5f6e8c30f0bad9ac0c55cd4ce`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [schwarz_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean/declarations/schwarz-aux--bf9d7ca25d76129e3f7c8a51.md) | 63 | `result-track:bf9d7ca25d76129e3f7c8a5142b4b60fdf1060f3127fb575ac53ad2b9fc39b28` |
| 2 | `theorem` | [norm_dslope_le_div_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean/declarations/norm-dslope-le-div-of-mapsto-ball--63cc2ff8f58263fdd4cbe228.md) | 89 | `result-track:63cc2ff8f58263fdd4cbe228aa745f002d747ba589181faf0ecabd199e1ad50d` |
| 3 | `theorem` | [affine_of_mapsTo_ball_of_exists_norm_dslope_eq_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean/declarations/affine-of-mapsto-ball-of-exists-norm-dslope-eq-div--65bf132d5fcdf0c73a9a6035.md) | 109 | `result-track:65bf132d5fcdf0c73a9a6035fc8b0fa2a3bff81923a0ff853d270e1440d524b7` |
| 4 | `theorem` | [affine_of_mapsTo_ball_of_exists_norm_dslope_eq_div'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean/declarations/affine-of-mapsto-ball-of-exists-norm-dslope-eq-div--cbd3aa4b1993a305ff3091e5.md) | 128 | `result-track:cbd3aa4b1993a305ff3091e5e8303892dbbae21b623bf4c97bcbdff4ffa4dd7e` |
| 5 | `theorem` | [norm_deriv_le_div_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean/declarations/norm-deriv-le-div-of-mapsto-ball--c87bcf23c3aafef6b9c6a8d2.md) | 139 | `result-track:c87bcf23c3aafef6b9c6a8d2c591be082fa999b622a49de0ba09ca7b78e6e9c4` |
| 6 | `theorem` | [dist_le_div_mul_dist_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean/declarations/dist-le-div-mul-dist-of-mapsto-ball--08e5def3e252d8de95ddaa43.md) | 149 | `result-track:08e5def3e252d8de95ddaa43a9e6e8f7853b51608e7b6da96ea695fcc522f613` |
| 7 | `theorem` | [norm_deriv_le_one_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean/declarations/norm-deriv-le-one-of-mapsto-ball--d4f3722443ccebc9a44ff705.md) | 164 | `result-track:d4f3722443ccebc9a44ff70555a04821750939e88dd2c716e3bb954729875c8c` |
| 8 | `theorem` | [dist_le_dist_of_mapsTo_ball_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean/declarations/dist-le-dist-of-mapsto-ball-self--a675aadc4f9fb1b0e255b122.md) | 173 | `result-track:a675aadc4f9fb1b0e255b122737a7ec41491e4064364370ad39b963680cfc6b4` |
| 9 | `theorem` | [norm_le_norm_of_mapsTo_ball_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant2a037748d23b47e463269a785ea8646fde9b9e889241d4f52eab9d7df4388b4b.lean/declarations/norm-le-norm-of-mapsto-ball-self--0838a0cd53e7a8a8dfd4522b.md) | 182 | `result-track:0838a0cd53e7a8a8dfd4522bbf36de8eaa5b7469b200061f5b55de1f85545767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
