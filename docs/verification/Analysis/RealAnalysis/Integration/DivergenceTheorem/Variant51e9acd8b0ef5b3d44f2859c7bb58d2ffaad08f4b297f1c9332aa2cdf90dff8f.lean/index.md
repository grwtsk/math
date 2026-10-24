# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DivergenceTheorem.Variant51e9acd8b0ef5b3d44f2859c7bb58d2ffaad08f4b297f1c9332aa2cdf90dff8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c8e199d9905c365665d1ec4139389e09d2773d4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant51e9acd8b0ef5b3d44f2859c7bb58d2ffaad08f4b297f1c9332aa2cdf90dff8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant51e9acd8b0ef5b3d44f2859c7bb58d2ffaad08f4b297f1c9332aa2cdf90dff8f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant51e9acd8b0ef5b3d44f2859c7bb58d2ffaad08f4b297f1c9332aa2cdf90dff8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c8e199d9905c365665d1ec4139389e09d2773d4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant51e9acd8b0ef5b3d44f2859c7bb58d2ffaad08f4b297f1c9332aa2cdf90dff8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant51e9acd8b0ef5b3d44f2859c7bb58d2ffaad08f4b297f1c9332aa2cdf90dff8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Additive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_volume_sub_integral_face_upper_sub_lower_smul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant51e9acd8b0ef5b3d44f2859c7bb58d2ffaad08f4b297f1c9332aa2cdf90dff8f.lean/declarations/norm-volume-sub-integral-face-upper-sub-lower-smul-le--44222be314eae61a08ed8a4a.md) | 70 | `result-track:44222be314eae61a08ed8a4ac74647b972311e9d9295894b6fca5d33c860f743` |
| 2 | `theorem` | [hasIntegral_GP_pderiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant51e9acd8b0ef5b3d44f2859c7bb58d2ffaad08f4b297f1c9332aa2cdf90dff8f.lean/declarations/hasintegral-gp-pderiv--0f71e0a750175e99a1371d0f.md) | 154 | `result-track:0f71e0a750175e99a1371d0fd14a3613b4c5acc6722197351f45c77ce38fc821` |
| 3 | `theorem` | [hasIntegral_GP_divergence_of_forall_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant51e9acd8b0ef5b3d44f2859c7bb58d2ffaad08f4b297f1c9332aa2cdf90dff8f.lean/declarations/hasintegral-gp-divergence-of-forall-hasderivwithinat--452f5418193823030a7c0703.md) | 266 | `result-track:452f5418193823030a7c0703ba28f4c403d657945bef9dacb46e2f4df1ec269b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
