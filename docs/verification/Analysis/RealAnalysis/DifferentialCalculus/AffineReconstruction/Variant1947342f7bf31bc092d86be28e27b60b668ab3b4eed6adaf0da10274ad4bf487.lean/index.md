# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineReconstruction.Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbe0fdcd4e1d694b9238f971ee469fc3baae8aa5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbe0fdcd4e1d694b9238f971ee469fc3baae8aa5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487.lean.json)

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
| 1 | `theorem` | [hessian_eq_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487.lean/declarations/hessian-eq-of-samedispersiongeometry--d5617a738b39cc4bd93f9bb8.md) | 32 | `result-track:d5617a738b39cc4bd93f9bb8525fb33548b179e70f22dacd25fa5441a2040b5b` |
| 2 | `theorem` | [exists_gradient_affine_shift_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487.lean/declarations/exists-gradient-affine-shift-of-samedispersiongeometry--50776ef422270c3205d6b312.md) | 45 | `result-track:50776ef422270c3205d6b312d792a68c63eefaaa5f365167ed3c9fc8c7f122f3` |
| 3 | `theorem` | [exists_affine_difference_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487.lean/declarations/exists-affine-difference-of-samedispersiongeometry--fdf937831a3c30c1ec6b6c77.md) | 69 | `result-track:fdf937831a3c30c1ec6b6c77782ec650e34972b6cc7fa7a1315bde7a2ea042cb` |
| 4 | `theorem` | [potential_difference_is_affine](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487.lean/declarations/potential-difference-is-affine--a7e24fcbec001b9a7c1f89f6.md) | 105 | `result-track:a7e24fcbec001b9a7c1f89f688f21765ccc017e3319304e2b61e9f112fc01829` |
| 5 | `theorem` | [gradient_difference_is_constant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487.lean/declarations/gradient-difference-is-constant--0e60ff73cb0674d8f700e0b8.md) | 118 | `result-track:0e60ff73cb0674d8f700e0b8f0f0cf9044f85d2825f67af7ad61c9b4a34fe581` |
| 6 | `theorem` | [sameDispersionGeometry_reconstructs_mod_affine](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant1947342f7bf31bc092d86be28e27b60b668ab3b4eed6adaf0da10274ad4bf487.lean/declarations/samedispersiongeometry-reconstructs-mod-affine--b403fb8b5e2e4969fec9cb93.md) | 132 | `result-track:b403fb8b5e2e4969fec9cb93883d6b326eaa327af2d2d038b83fad0d21b830c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
