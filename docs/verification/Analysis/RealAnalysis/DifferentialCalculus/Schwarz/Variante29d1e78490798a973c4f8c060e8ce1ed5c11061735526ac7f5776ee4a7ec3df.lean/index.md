# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Schwarz.Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "606a8821800f88bbd0b632070d06f8c7f2ede1a0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `606a8821800f88bbd0b632070d06f8c7f2ede1a0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean.json)

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
| 1 | `theorem` | [schwarz_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/declarations/schwarz-aux--d3e7c65a68c12bfe7a597a2c.md) | 65 | `result-track:d3e7c65a68c12bfe7a597a2cb371d8d9908bb92149ab071bc12f77cb47de719e` |
| 2 | `theorem` | [norm_dslope_le_div_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/declarations/norm-dslope-le-div-of-mapsto-ball--84cefb79350a7b0a563ea1a4.md) | 92 | `result-track:84cefb79350a7b0a563ea1a4523f83fb01908652e62c311f3c47599a9a4cb400` |
| 3 | `theorem` | [affine_of_mapsTo_ball_of_exists_norm_dslope_eq_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/declarations/affine-of-mapsto-ball-of-exists-norm-dslope-eq-div--97e7f26c6f3057ec1f979881.md) | 113 | `result-track:97e7f26c6f3057ec1f979881372fa896d6f23577b7f1d9637ad96c5fefe6b643` |
| 4 | `theorem` | [affine_of_mapsTo_ball_of_exists_norm_dslope_eq_div'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/declarations/affine-of-mapsto-ball-of-exists-norm-dslope-eq-div--2ce8a7402053e81a86c86eed.md) | 132 | `result-track:2ce8a7402053e81a86c86eed6aa0df81256fed3cdf6d099d4774b02c32ee9484` |
| 5 | `theorem` | [norm_deriv_le_div_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/declarations/norm-deriv-le-div-of-mapsto-ball--d37830bbba4cd5354f438643.md) | 144 | `result-track:d37830bbba4cd5354f438643d9ea907066cf4db3007314661710387b990ca782` |
| 6 | `theorem` | [dist_le_div_mul_dist_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/declarations/dist-le-div-mul-dist-of-mapsto-ball--34fc27be009f48ab1375ed03.md) | 152 | `result-track:34fc27be009f48ab1375ed03c39c172599e36c313ac75201aaa0c639437e895d` |
| 7 | `theorem` | [abs_deriv_le_div_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/declarations/abs-deriv-le-div-of-mapsto-ball--6580fd135ae91de091dc5083.md) | 168 | `result-track:6580fd135ae91de091dc5083131c88207a893cae197cbf78d98d8d74009c9f2e` |
| 8 | `theorem` | [abs_deriv_le_one_of_mapsTo_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/declarations/abs-deriv-le-one-of-mapsto-ball--d6511b0714805b69bae5603c.md) | 176 | `result-track:d6511b0714805b69bae5603c990009cae70a10e9e6c1419b4aa28d1a038d3310` |
| 9 | `theorem` | [dist_le_dist_of_mapsTo_ball_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/declarations/dist-le-dist-of-mapsto-ball-self--3bd4673c0c79c52fc9777c0d.md) | 183 | `result-track:3bd4673c0c79c52fc9777c0d7dba2736ef7ce47cf88e78b3466f47b0147af205` |
| 10 | `theorem` | [abs_le_abs_of_mapsTo_ball_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variante29d1e78490798a973c4f8c060e8ce1ed5c11061735526ac7f5776ee4a7ec3df.lean/declarations/abs-le-abs-of-mapsto-ball-self--48d5ad45e739c60e8eb93513.md) | 194 | `result-track:48d5ad45e739c60e8eb93513b5d2e198e3556f6dd455d0863ddcf9e12ad6c487` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
