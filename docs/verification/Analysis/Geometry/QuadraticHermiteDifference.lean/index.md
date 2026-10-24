# Verification target: GRWTSK.Analysis.Geometry.QuadraticHermiteDifference

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13ed87b7d1e06ac4556bdd171e44f0b5f7e3a7f6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Geometry/QuadraticHermiteDifference.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Geometry/QuadraticHermiteDifference.lean/index.md) · [Full source](../../../../mathematics/Analysis/Geometry/QuadraticHermiteDifference.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13ed87b7d1e06ac4556bdd171e44f0b5f7e3a7f6`.

Source path: `GRWTSK/Analysis/Geometry/QuadraticHermiteDifference.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Geometry/QuadraticHermiteDifference.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Coefficients](../../../../mathematics/Analysis/Geometry/QuadraticHermiteDifference.lean/declarations/coefficients--2dbbd63cc39b58bc0bc1dcd3.md) | 25 | `declaration-track:2dbbd63cc39b58bc0bc1dcd3917104da000a6ecf022ebe57259da20ed662d898` |
| 2 | `def` | [eval](../../../../mathematics/Analysis/Geometry/QuadraticHermiteDifference.lean/declarations/eval--3acd607f07a12be4b6f606ab.md) | 28 | `declaration-track:3acd607f07a12be4b6f606ab81ccfef08a5b3c86e62c626da55c183dabedb286` |
| 3 | `def` | [firstJet](../../../../mathematics/Analysis/Geometry/QuadraticHermiteDifference.lean/declarations/firstjet--2e560d926ba8076c1665550e.md) | 32 | `declaration-track:2e560d926ba8076c1665550ed33f05fbcc6955932c87ca635a604044ecc0bfd2` |
| 4 | `theorem` | [symmetric_difference_identity](../../../../mathematics/Analysis/Geometry/QuadraticHermiteDifference.lean/declarations/symmetric-difference-identity--91b6d8ff0b60056fd31b027e.md) | 36 | `result-track:91b6d8ff0b60056fd31b027ef0c2b7bef43739501a3a1384203fb965f37680a4` |
| 5 | `theorem` | [normalized_symmetric_difference](../../../../mathematics/Analysis/Geometry/QuadraticHermiteDifference.lean/declarations/normalized-symmetric-difference--c9cc4d2a79e115cee9fa4ee5.md) | 43 | `result-track:c9cc4d2a79e115cee9fa4ee585f1550592c520caef159d6aec37d244449468a7` |
| 6 | `theorem` | [reversed_symmetric_difference](../../../../mathematics/Analysis/Geometry/QuadraticHermiteDifference.lean/declarations/reversed-symmetric-difference--786b8bffdd9002296466f024.md) | 54 | `result-track:786b8bffdd9002296466f0249e8b6c1bd5735d124b10146df9b93880ae987ddc` |
| 7 | `theorem` | [normalized_difference_error_bound](../../../../mathematics/Analysis/Geometry/QuadraticHermiteDifference.lean/declarations/normalized-difference-error-bound--7f9f3d99ccc521ab89fabd5d.md) | 64 | `result-track:7f9f3d99ccc521ab89fabd5d6361b1061f710313d3bd2da1816a2afe69ce7bc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
