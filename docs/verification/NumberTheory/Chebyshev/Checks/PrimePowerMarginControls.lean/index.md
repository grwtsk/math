# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.PrimePowerMarginControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8134904a6da6686ac7dff6008676d79e3f877fc1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8134904a6da6686ac7dff6008676d79e3f877fc1`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection`](../../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [correction_eight_nine](../../../../../mathematics/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/declarations/correction-eight-nine--21c0fb83aaaeb5827f076396.md) | 28 | `result-track:21c0fb83aaaeb5827f0763969e2a256a843ad09462a26236eddffe27b2394793` |
| 2 | `theorem` | [theta_eight_nine](../../../../../mathematics/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/declarations/theta-eight-nine--ea416fecfdf67646e34ad570.md) | 38 | `result-track:ea416fecfdf67646e34ad57010298d5edb91f2ab1c3571a26d3fee287570baac` |
| 3 | `theorem` | [positive_source_without_prime](../../../../../mathematics/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/declarations/positive-source-without-prime--8731f302f274e962ee047bb8.md) | 44 | `result-track:8731f302f274e962ee047bb827be21ba3cfa9adb9ffff5925035cede2cad1149` |
| 4 | `theorem` | [non_strict_margin_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/declarations/non-strict-margin-control--5787b6027c1431f66a3fab0c.md) | 55 | `result-track:5787b6027c1431f66a3fab0c3939fa5db0d83a0baee8b74ac835354fe3d15ff8` |
| 5 | `theorem` | [first_square_upper_correction](../../../../../mathematics/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/declarations/first-square-upper-correction--c2a715a7d85278ab186b141c.md) | 62 | `result-track:c2a715a7d85278ab186b141cf30c2e6ad0f65be87f3e63ecd5ee1906ba1d88bf` |
| 6 | `theorem` | [upper_endpoint_omission_changes_correction](../../../../../mathematics/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/declarations/upper-endpoint-omission-changes-correction--976cf1a612eaca8d3989b697.md) | 74 | `result-track:976cf1a612eaca8d3989b697ff38de28c47498286f250ed9cf439bf231698871` |
| 7 | `theorem` | [first_square_positive_weight](../../../../../mathematics/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/declarations/first-square-positive-weight--9d1da2a0b0d911ee519cc2d4.md) | 85 | `result-track:9d1da2a0b0d911ee519cc2d478e9235b8189dde66ff2b125a9730dfa8c246a1b` |
| 8 | `theorem` | [prime_upper_endpoint_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/declarations/prime-upper-endpoint-control--75482b8a0e699cf59a4bbc9c.md) | 91 | `result-track:75482b8a0e699cf59a4bbc9caf7eae1aa4b3ad0b26ee890e56e4dd288bd4e5c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
