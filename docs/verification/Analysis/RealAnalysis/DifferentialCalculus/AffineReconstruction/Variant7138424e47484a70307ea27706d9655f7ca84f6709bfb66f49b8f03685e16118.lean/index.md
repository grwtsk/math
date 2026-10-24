# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineReconstruction.Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7c79497fed4c76bc4cefc259b9b66f048157485",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7c79497fed4c76bc4cefc259b9b66f048157485`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AffineGauge` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hessian_eq_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/declarations/hessian-eq-of-samedispersiongeometry--aae23d9fed0a4a0fc4a5387a.md) | 32 | `result-track:aae23d9fed0a4a0fc4a5387ab24321d7dbfe18114144f738578f2df6d00d1ec7` |
| 2 | `theorem` | [exists_gradient_affine_shift_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/declarations/exists-gradient-affine-shift-of-samedispersiongeometry--1c1758713dbdef5d87908e09.md) | 45 | `result-track:1c1758713dbdef5d87908e09f3762484ed6948c374c2628eb7e1bc88798d3a5b` |
| 3 | `theorem` | [exists_affine_difference_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/declarations/exists-affine-difference-of-samedispersiongeometry--23ce8fa1243d235eb65d0bb7.md) | 69 | `result-track:23ce8fa1243d235eb65d0bb771cd3b4fd2aa31a4b39bbb541505478557c5f120` |
| 4 | `theorem` | [potential_difference_is_affine](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/declarations/potential-difference-is-affine--c13c7d99555b0ec27e88fed2.md) | 104 | `result-track:c13c7d99555b0ec27e88fed283951e5f65b1bd702a7beb08afefe2dc895a5904` |
| 5 | `theorem` | [gradient_difference_is_constant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/declarations/gradient-difference-is-constant--2c73cb589f3f565b04ce9240.md) | 117 | `result-track:2c73cb589f3f565b04ce9240e432a5d96e1944a86325eaf92837212b9603d272` |
| 6 | `theorem` | [sameDispersionGeometry_reconstructs_mod_affine](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/declarations/samedispersiongeometry-reconstructs-mod-affine--9fc74db33d36f8457831277c.md) | 131 | `result-track:9fc74db33d36f8457831277c4ee59e9526129f471b33693614cc25dc346525b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
