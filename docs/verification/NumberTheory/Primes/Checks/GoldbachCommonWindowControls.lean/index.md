# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachCommonWindowControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b021e62d6e2390fc9dc411de6d36d54d5ed34db9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b021e62d6e2390fc9dc411de6d36d54d5ed34db9`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachCommonWindowBoundary`](../../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [unitPeriodPositive](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/unitperiodpositive--dc36d32d8dd42fd6b23547fd.md) | 38 | `declaration-track:dc36d32d8dd42fd6b23547fdb0f0238ac73528a3235b1fd8a1ff0c5f3d67e2cb` |
| 2 | `theorem` | [offset_circle_center_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/offset-circle-center-control--10139bea258497bbda7e1df4.md) | 41 | `result-track:10139bea258497bbda7e1df4fb18c3387216d747b63200a2165f6f610ec7bc04` |
| 3 | `theorem` | [safe_radius_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/safe-radius-control--2534aab457fd79688a110949.md) | 48 | `result-track:2534aab457fd79688a1109491528c2e0f4edddd6c0c6f175473f829be34149ba` |
| 4 | `theorem` | [strict_scale_boundary_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/strict-scale-boundary-rejected--1aab5f2e8148ff9cf8606338.md) | 56 | `result-track:1aab5f2e8148ff9cf8606338cd390ad8a064d5820ba2f7d880c295ba9e6aa11b` |
| 5 | `theorem` | [large_radius_circle_window_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/large-radius-circle-window-control--c791fe494e98ebe52f2c010d.md) | 62 | `result-track:c791fe494e98ebe52f2c010d115cc79ebcc1bed46d60622a259c47f52418c47b` |
| 6 | `theorem` | [large_radius_not_small_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/large-radius-not-small-control--88da64041c605803699e097f.md) | 70 | `result-track:88da64041c605803699e097fd41b010cd1a7ba0edcc17738a03f67ea1f19d634` |
| 7 | `theorem` | [finite_singular_kernel_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/finite-singular-kernel-zero--a1b19b4dce13aab16b583b32.md) | 77 | `result-track:a1b19b4dce13aab16b583b32320be26227c7203dec623e9cc1ad77d10e0cd25b` |
| 8 | `theorem` | [finite_singular_kernelCircle_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/finite-singular-kernelcircle-zero--8e33e52a3f231ee438b4a055.md) | 85 | `result-track:8e33e52a3f231ee438b4a0552a086e13be30a0fc6bbe8b3fe12087bf3934a75a` |
| 9 | `theorem` | [circle_window_radius_one_univ](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/circle-window-radius-one-univ--7c5b342d73ef82063b0c4e3c.md) | 91 | `result-track:7c5b342d73ef82063b0c4e3c6d7886b8126f94d453ed5265f78775b482cff424` |
| 10 | `theorem` | [common_circle_integral_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/common-circle-integral-zero--5ca0e9fff1561e082a87cfb3.md) | 101 | `result-track:5ca0e9fff1561e082a87cfb3cac6866042451833d94c08353587d44be243da10` |
| 11 | `theorem` | [symmetric_real_integral_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/symmetric-real-integral-zero--fe549029894d5f768a0867f1.md) | 111 | `result-track:fe549029894d5f768a0867f10d94dcbe60bd5823e2dad78425575478751c5882` |
| 12 | `theorem` | [large_radius_symmetric_replacement_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/large-radius-symmetric-replacement-rejected--e94e9d59c9629f0d4a07eabf.md) | 120 | `result-track:e94e9d59c9629f0d4a07eabfd308f5fbbd5ab9d86c25f21ee1d7e613f7f424eb` |
| 13 | `theorem` | [denominator_three_common_window_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/denominator-three-common-window-control--149548e55639a18da0fe1207.md) | 129 | `result-track:149548e55639a18da0fe120733aed4d46f76da6db15ccdbeebf7e296a009e387` |
| 14 | `theorem` | [denominator_three_block_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/denominator-three-block-control--522c9e77227a20014cd86332.md) | 139 | `result-track:522c9e77227a20014cd86332734565eeb6c81e7a5073e9c0e315d5ccdc7c6dfb` |
| 15 | `theorem` | [common_window_not_goldbach_witness](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCommonWindowControls.lean/declarations/common-window-not-goldbach-witness--fb0ec2ff4445049868d449f3.md) | 148 | `result-track:fb0ec2ff4445049868d449f3237622f98590c3e7ceb0649830bbef1028c0b720` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
