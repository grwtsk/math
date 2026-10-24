# Verification target: GRWTSK.Algebra.LinearAlgebra.BooleanLinearActivity.Variant04be4475986f7694.BranchNumber

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3a9d7d583156937d9f93c612c7b3fe7f607649c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3a9d7d583156937d9f93c612c7b3fe7f607649c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.CoordinateDerivatives`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/CoordinateDerivatives.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [XorLinearEquiv](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/declarations/xorlinearequiv--8408585f98e8e9f7f4fed21d.md) | 64 | `declaration-track:8408585f98e8e9f7f4fed21df6b558fa691471680b9d5b604e266f9528748351` |
| 2 | `def` | [XorLinearEquiv.ofCoordinatePermutation](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/declarations/xorlinearequiv-ofcoordinatepermutation--a1dd65411c4f964ec5cded36.md) | 69 | `declaration-track:a1dd65411c4f964ec5cded3645ef218c5eaeea9b3766cc619330e1be621f9916` |
| 3 | `theorem` | [XorLinearEquiv.map_zero](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/declarations/xorlinearequiv-map-zero--aef0c710dfaf036f65ee87d7.md) | 76 | `result-track:aef0c710dfaf036f65ee87d7393fac263d710b0955fce75dbc3372ef1d99915f` |
| 4 | `def` | [activities](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/declarations/activities--18b8ed212dba310efaf948e6.md) | 81 | `declaration-track:18b8ed212dba310efaf948e61618e0da122bffa43ce3521b223d3e78d1cc4915` |
| 5 | `theorem` | [activities_nonempty](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/declarations/activities-nonempty--55c6d4a550096fb29aa9c809.md) | 85 | `result-track:55c6d4a550096fb29aa9c8095a7160e1b1daa0640d958a0f1a8dde2d50581580` |
| 6 | `def` | [branchNumber](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/declarations/branchnumber--4c8610ca61239ac4d1c1d85a.md) | 98 | `declaration-track:4c8610ca61239ac4d1c1d85a95c46a9893d69612fb9e5b12a7f0bac6f9a2fa4a` |
| 7 | `theorem` | [branchNumber_zero](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/declarations/branchnumber-zero--0a23abf564c487d6f551e909.md) | 106 | `result-track:0a23abf564c487d6f551e90935f97e59d05f59391d345f571b7530e30deceb27` |
| 8 | `theorem` | [branchNumber_le_activity](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/declarations/branchnumber-le-activity--67659fac9e6e8b4458e42ad0.md) | 110 | `result-track:67659fac9e6e8b4458e42ad0badaf2892ad65e03cac04dd435f14ae57d0c6391` |
| 9 | `theorem` | [hammingWeight_basisBit](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/declarations/hammingweight-basisbit--49bb3dc357fb81add9841d8c.md) | 118 | `result-track:49bb3dc357fb81add9841d8ce68b6695e8912459b596ed48381a165c322613f1` |
| 10 | `theorem` | [two_le_branchNumber](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/declarations/two-le-branchnumber--664ed33ac3e16715633b4b63.md) | 127 | `result-track:664ed33ac3e16715633b4b63e44e6cb56a3cd854b28d9cfc1bdacd86fb0503d3` |
| 11 | `theorem` | [branchNumber_coordinatePermutation](../../../../../../mathematics/Algebra/LinearAlgebra/BooleanLinearActivity/Variant04be4475986f7694/BranchNumber.lean/declarations/branchnumber-coordinatepermutation--e31a2bf73e3973b4bd3e56e9.md) | 151 | `result-track:e31a2bf73e3973b4bd3e56e9479e74c85d80dde232b326f2ba4c3a2a3630efd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
