# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineReconstruction.Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d8a385b77e7f82755d9331c4328b3c6d9a6f8ff",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d8a385b77e7f82755d9331c4328b3c6d9a6f8ff`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c.lean.json)

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
| 1 | `theorem` | [hessian_eq_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c.lean/declarations/hessian-eq-of-samedispersiongeometry--91630c5500b91c94d4ea147b.md) | 40 | `result-track:91630c5500b91c94d4ea147b8d922ddde1cba660ebdba2a27a00b74d70f2d768` |
| 2 | `theorem` | [exists_gradient_affine_shift_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c.lean/declarations/exists-gradient-affine-shift-of-samedispersiongeometry--9cd2312f78342443f278f6b1.md) | 53 | `result-track:9cd2312f78342443f278f6b1bedcb75e16d00c05c6fbce6643d847e59e5fd3b5` |
| 3 | `theorem` | [exists_affine_difference_of_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c.lean/declarations/exists-affine-difference-of-samedispersiongeometry--b7250f5dbda8c83ac0d7f967.md) | 77 | `result-track:b7250f5dbda8c83ac0d7f9679cb4677ce0f83c76769119703e8802ccf39ef4d4` |
| 4 | `theorem` | [potential_difference_is_affine](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c.lean/declarations/potential-difference-is-affine--4a831b5f3e03d32168ab2f5b.md) | 112 | `result-track:4a831b5f3e03d32168ab2f5b16ec8b77f89eec853b02d4feb43e7cb7fca841ec` |
| 5 | `theorem` | [gradient_difference_is_constant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c.lean/declarations/gradient-difference-is-constant--bcad0183e2066f4d28ccfb90.md) | 125 | `result-track:bcad0183e2066f4d28ccfb9063cda26c2195f0471537b226e6a6d139041e9921` |
| 6 | `theorem` | [sameDispersionGeometry_reconstructs_mod_affine](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant6a801f29191ec3afa3b9f248c46a26e466f9ae439c5a32851961ae4ebb8ec19c.lean/declarations/samedispersiongeometry-reconstructs-mod-affine--537ef5c5d7eb3906638f9ea0.md) | 139 | `result-track:537ef5c5d7eb3906638f9ea00a39adbc0bf950684492071270c768d4aa382e3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
