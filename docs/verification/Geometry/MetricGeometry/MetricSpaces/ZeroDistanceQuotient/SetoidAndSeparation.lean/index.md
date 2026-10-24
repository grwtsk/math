# Verification target: GRWTSK.Geometry.MetricGeometry.MetricSpaces.ZeroDistanceQuotient.SetoidAndSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac9cdaff72f7c25b2fc6a1b413053509277226a4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac9cdaff72f7c25b2fc6a1b413053509277226a4`.

Source path: `GRWTSK/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PseudometricData](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean/declarations/pseudometricdata--02134cbe71f7ad03e6eac464.md) | 36 | `declaration-track:02134cbe71f7ad03e6eac4645f0acacdf34d57f1b62bc0e3601a1cb0195f6a79` |
| 2 | `def` | [ZeroDistance](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean/declarations/zerodistance--7024fcb5932e65f6e9ef892c.md) | 46 | `declaration-track:7024fcb5932e65f6e9ef892c1caf3564fc48ed5a00f7484bc098f5f09e7241d6` |
| 3 | `theorem` | [zeroDistance_equivalence](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean/declarations/zerodistance-equivalence--7fe5906d3858636ca017c7c9.md) | 52 | `result-track:7fe5906d3858636ca017c7c93c0aab57211835f3c7b99ada7333d5bbda3a1f4b` |
| 4 | `def` | [zeroDistanceSetoid](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean/declarations/zerodistancesetoid--1b96d1c65f2f7c124025731b.md) | 66 | `declaration-track:1b96d1c65f2f7c124025731b5c24d1a9e0977e2544fe6c77767b95828100fecb` |
| 5 | `abbrev` | [SeparatedQuotient](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean/declarations/separatedquotient--28174f23eb3cf601a5662ba6.md) | 73 | `declaration-track:28174f23eb3cf601a5662ba6cb506027e1498ac85950857b24e99510f8567a0a` |
| 6 | `theorem` | [quotient_identifies_exactly_zero_distance](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean/declarations/quotient-identifies-exactly-zero-distance--b338bec6d28e692160c6e3a3.md) | 78 | `result-track:b338bec6d28e692160c6e3a303298720e3bc2419387df3dc71641f9baabf9bcb` |
| 7 | `def` | [Separated](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/ZeroDistanceQuotient/SetoidAndSeparation.lean/declarations/separated--6752994c9d8dbed242b09d14.md) | 87 | `declaration-track:6752994c9d8dbed242b09d14d82c2fdacbf3af92289a04428e1d975515f7cf4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
