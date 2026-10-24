# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskLogDerivative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b9c66de4bbbee9d6cd6efd91614c1c2c5033a0d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b9c66de4bbbee9d6cd6efd91614c1c2c5033a0d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.NormalizedLogDerivativeBound`](../../../../../mathematics/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diskHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/diskhead--eb92bfb268f9b082e1c5cbe7.md) | 37 | `declaration-track:eb92bfb268f9b082e1c5cbe79dff5289731b4c2bc4b7046635c626a8a7cbfc22` |
| 2 | `def` | [growthLog](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/growthlog--59fa7d1b8bb73961cfcac243.md) | 41 | `declaration-track:59fa7d1b8bb73961cfcac243e8796f80769cf66446cdfaa4b536479bd0bf6df1` |
| 3 | `def` | [diskCountBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/diskcountbudget--531d87ca36824bdad1660469.md) | 43 | `declaration-track:531d87ca36824bdad16604697e6e1ce6bef61314bca59756d5d49ad92046aada` |
| 4 | `theorem` | [growthLog_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/growthlog-pos--e2c4d34c8a1b4c7523291469.md) | 45 | `result-track:e2c4d34c8a1b4c7523291469da96f9f2886895217c502fb93d2f82ade582485e` |
| 5 | `theorem` | [log_twelve_elevenths_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/log-twelve-elevenths-pos--2ad8d8bd045c302fea3c7245.md) | 51 | `result-track:2ad8d8bd045c302fea3c7245ed2177d4777b40f462fbf48d1da3ffb58c83f6b4` |
| 6 | `theorem` | [diskCountBudget_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/diskcountbudget-nonneg--9a08456d77adfc897784273b.md) | 54 | `result-track:9a08456d77adfc897784273becbe8467795b5ab25ec4e7f01305f5ca278ca855` |
| 7 | `theorem` | [mem_diskHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/mem-diskhead--36539e68b5638f998fc322d4.md) | 58 | `result-track:36539e68b5638f998fc322d491be28b8ca05dca468aeafa87d39f4921025062c` |
| 8 | `theorem` | [diskMass_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/diskmass-le--51ca14c3cec6c127c9dd2106.md) | 80 | `result-track:51ca14c3cec6c127c9dd21068bb066113dbe658b22d0c38ff93b91eefb46e6d6` |
| 9 | `theorem` | [central_point_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/central-point-norm--5e6fb13a4386531cd7762717.md) | 130 | `result-track:5e6fb13a4386531cd776271701ffe7fbe94a5321ad6a33c46a27ba25dce6f7ab` |
| 10 | `theorem` | [selected_upper_near](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/selected-upper-near--b41dc21d2123ce7247f9a789.md) | 141 | `result-track:b41dc21d2123ce7247f9a7898146c04febda590fe428e21a087cc712b56c47f9` |
| 11 | `theorem` | [selected_lower_near](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/selected-lower-near--37a5176567d0f4acef5b31ca.md) | 147 | `result-track:37a5176567d0f4acef5b31caa35c12ee15d50ab4fc5053f10cef3d12439b7d3b` |
| 12 | `theorem` | [norm_zeta_logDeriv_of_factorization](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/declarations/norm-zeta-logderiv-of-factorization--0faffe83efe6e64dbcceae20.md) | 158 | `result-track:0faffe83efe6e64dbcceae20f4b9b1c969b38d049f125633e229dfdfe01aa31f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
