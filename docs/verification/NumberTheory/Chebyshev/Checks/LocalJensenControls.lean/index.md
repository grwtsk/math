# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.LocalJensenControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfecedbe6220317bc06c24b65822eb923188d117",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfecedbe6220317bc06c24b65822eb923188d117`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.LocalJensenCount`](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalJensenCount.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [radius_zero_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean/declarations/radius-zero-rejected--1d2d9622731d62b0434106e1.md) | 22 | `result-track:1d2d9622731d62b0434106e1ab91aa1bea93d8d6b5c8bdab372c88e7d7b8d38f` |
| 2 | `theorem` | [equal_radius_log_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean/declarations/equal-radius-log-zero--57896e955189f438388c5204.md) | 25 | `result-track:57896e955189f438388c5204b2dadafaec60c9a35db8ac22dfed3868e3f60e2a` |
| 3 | `theorem` | [zero_anchor_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean/declarations/zero-anchor-rejected--f0ef239cd0b15e18269db4d5.md) | 28 | `result-track:f0ef239cd0b15e18269db4d5cddb7c73dce07b2443ed94976ed73cfb3f71565a` |
| 4 | `theorem` | [first_upper_disk_contains_one](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean/declarations/first-upper-disk-contains-one--c2068078e09a5b78721a0806.md) | 31 | `result-track:c2068078e09a5b78721a0806b63777918523f882cf1ee206d8335a842dcda38b` |
| 5 | `theorem` | [distinct_location_not_multiplicity](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean/declarations/distinct-location-not-multiplicity--758be8b37acaba50e10f663e.md) | 37 | `result-track:758be8b37acaba50e10f663e784220c0438395e035d375c74bd5916827117964` |
| 6 | `theorem` | [opposite_points_distinct](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean/declarations/opposite-points-distinct--e397779f2dd3796ea06d6d7f.md) | 40 | `result-track:e397779f2dd3796ea06d6d7f22ba5db9fb1649dcaf90f6847c580591c3c5c6b6` |
| 7 | `theorem` | [extreme_box_corner_distance](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean/declarations/extreme-box-corner-distance--803397e31f470cfc82ad28cf.md) | 46 | `result-track:803397e31f470cfc82ad28cffa401934014ae9e7719ef0e5519b090b1230f929` |
| 8 | `theorem` | [regular_term_not_bounded_by_zero_count](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean/declarations/regular-term-not-bounded-by-zero-count--dadd64b544ce5258694eebf3.md) | 52 | `result-track:dadd64b544ce5258694eebf322f7ea74313bf0ad8d7091374d770df950e72f56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
