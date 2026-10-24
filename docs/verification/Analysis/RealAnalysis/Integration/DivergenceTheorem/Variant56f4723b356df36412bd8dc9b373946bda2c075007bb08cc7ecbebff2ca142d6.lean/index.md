# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DivergenceTheorem.Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f75f2d96d27eb308a12d966567ca3ae7d1e9759",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f75f2d96d27eb308a12d966567ca3ae7d1e9759`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Additive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.RestrictScalars` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_volume_sub_integral_face_upper_sub_lower_smul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean/declarations/norm-volume-sub-integral-face-upper-sub-lower-smul-le--05572c4709f8a1677b8e093c.md) | 76 | `result-track:05572c4709f8a1677b8e093cf056351dd80a700372132e23a073fc8a8ebb2e08` |
| 2 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean/declarations/macro-rules--8150479b13b9000d43832347.md) | 150 | `declaration-track:8150479b13b9000d438323476e790655142db84c1c6609dcb2704e3366a8683f` |
| 3 | `theorem` | [hasIntegral_GP_pderiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean/declarations/hasintegral-gp-pderiv--3ae9bc9a6f85d9d1d63d26b0.md) | 162 | `result-track:3ae9bc9a6f85d9d1d63d26b0dccee7e330098f9048b3c3dce6368e8b4fe83e8e` |
| 4 | `theorem` | [hasIntegral_GP_divergence_of_forall_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean/declarations/hasintegral-gp-divergence-of-forall-hasderivwithinat--69929216be56fac4b6432d3f.md) | 278 | `result-track:69929216be56fac4b6432d3fd8b5e138f73d65301cefcf70b2f1f6fe8e2112d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
