# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineReconstruction.Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18cb62d338c05efba4adcd874dc245f85c086d4d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18cb62d338c05efba4adcd874dc245f85c086d4d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AffineGauge` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hessian_eq_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba.lean/declarations/hessian-eq-of-samedispersiongeometry--1a2d4c55072bdcd27adea135.md) | 40 | `result-track:1a2d4c55072bdcd27adea1356b1da9e86fdb03305eb300e9be0620a92667b56d` |
| 2 | `theorem` | [exists_gradient_affine_shift_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba.lean/declarations/exists-gradient-affine-shift-of-samedispersiongeometry--cdfa59b043f2c75dc6bc0536.md) | 53 | `result-track:cdfa59b043f2c75dc6bc0536f314b1f759e293b782600721f6307f15c27ebae4` |
| 3 | `theorem` | [exists_affine_difference_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba.lean/declarations/exists-affine-difference-of-samedispersiongeometry--18317e82130fc69c2f30f5e4.md) | 77 | `result-track:18317e82130fc69c2f30f5e46043c7421e0bd0ab9cb087899ecc9ae8ca04c596` |
| 4 | `theorem` | [potential_difference_is_affine](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba.lean/declarations/potential-difference-is-affine--e5aff86dbdb7a1b5a3bf0b95.md) | 113 | `result-track:e5aff86dbdb7a1b5a3bf0b9544fec3f46ddeb7939b10bf9d4923c5991e26575a` |
| 5 | `theorem` | [gradient_difference_is_constant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba.lean/declarations/gradient-difference-is-constant--ae8c7e3ac2f84897ae7282e6.md) | 126 | `result-track:ae8c7e3ac2f84897ae7282e61e0074a6f7d3402423600c2c112fe00b27935829` |
| 6 | `theorem` | [sameDispersionGeometry_reconstructs_mod_affine](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant745d754f9606c42ecb44504aeeb5180d00498931288307a845350392e3d76eba.lean/declarations/samedispersiongeometry-reconstructs-mod-affine--e4e6ca160ccb54827d182674.md) | 140 | `result-track:e4e6ca160ccb54827d18267492d89b0b66f1d960bd3cac6fa85e499bbff04c85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
