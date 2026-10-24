# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Liouville.Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f3c5d94712fc1166a4951e70a723bac46ff1d4a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f3c5d94712fc1166a4951e70a723bac46ff1d4a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Completion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/declarations/macro-rules--e7fccdd418acb3f30349a252.md) | 26 | `declaration-track:e7fccdd418acb3f30349a25293c5b355acca3260c2c84d96bd527121e249fc8b` |
| 2 | `theorem` | [deriv_eq_smul_circleIntegral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/declarations/deriv-eq-smul-circleintegral--b0a0dbe03582b498a0a74f77.md) | 48 | `result-track:b0a0dbe03582b498a0a74f777879d2827f4ca426e4df8cea4178498ed3e761f4` |
| 3 | `theorem` | [norm_deriv_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/declarations/norm-deriv-le-aux--e618e8301c1359070b0629d2.md) | 56 | `result-track:e618e8301c1359070b0629d277df78b1bcd3e81c435e82a73299ba9369f1cefb` |
| 4 | `theorem` | [norm_deriv_le_of_forall_mem_sphere_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/declarations/norm-deriv-le-of-forall-mem-sphere-norm-le--f65dfb1d913907bd5a92cfd4.md) | 74 | `result-track:f65dfb1d913907bd5a92cfd46383a0bb1ac88a9e991ef228ffc10f00dc9eed2e` |
| 5 | `theorem` | [liouville_theorem_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/declarations/liouville-theorem-aux--4ca4c32bf7fca278e4263daf.md) | 91 | `result-track:4ca4c32bf7fca278e4263daf2c8e74f38702c11bc922eb209760b77cd9a9fe5a` |
| 6 | `theorem` | [apply_eq_apply_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/declarations/apply-eq-apply-of-bounded--72867866561e7bf0a6655162.md) | 114 | `result-track:72867866561e7bf0a66551625437f20b3bb66d2dfbe1ce72dbcbdc444864c092` |
| 7 | `theorem` | [exists_const_forall_eq_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/declarations/exists-const-forall-eq-of-bounded--d543017b1906b40233ac6b0d.md) | 124 | `result-track:d543017b1906b40233ac6b0d6eafdfbd0b322e349b613fb5c2683df92b176a84` |
| 8 | `theorem` | [exists_eq_const_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/declarations/exists-eq-const-of-bounded--79c12c81ec7d74d9819478bb.md) | 130 | `result-track:79c12c81ec7d74d9819478bbcd11a781dfe173ef483b49cf1960eac3ac7260f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
