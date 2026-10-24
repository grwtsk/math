# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachRationalArcSeparationControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "260a9d79d2bde289d35b56feda1a830d792091c6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `260a9d79d2bde289d35b56feda1a830d792091c6`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion`](../../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_one_one_two_center_distance](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean/declarations/zero-one-one-two-center-distance--87da5e4a340b93e1ed0d89a7.md) | 29 | `result-track:87da5e4a340b93e1ed0d89a7e4f9601114aaf2c782feb2f78ddddf4f06d39470` |
| 2 | `theorem` | [zero_one_one_two_separation](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean/declarations/zero-one-one-two-separation--65c27ec4420a4b028aa10171.md) | 37 | `result-track:65c27ec4420a4b028aa101715392ab57c7bb887f9add402d78a5ffe5538bd8cb` |
| 3 | `theorem` | [cutoff_two_target_eight_scale](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean/declarations/cutoff-two-target-eight-scale--0316bb246f797ac63a0eb3d3.md) | 53 | `result-track:0316bb246f797ac63a0eb3d363c6bdb4b0730aded64dffe0bb8125b28ef741b1` |
| 4 | `theorem` | [cutoff_two_target_eight_disjoint](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean/declarations/cutoff-two-target-eight-disjoint--ea79bee7b6dd87e836088ca9.md) | 57 | `result-track:ea79bee7b6dd87e836088ca91d0096dba148cf0cc05f32c53e9f717fd2e04390` |
| 5 | `theorem` | [overlap_control_fails_scale](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean/declarations/overlap-control-fails-scale--94a42be09ec022dd8db242e4.md) | 68 | `result-track:94a42be09ec022dd8db242e47051b23c85bf93b3a2414454e7fd54708fc00033` |
| 6 | `theorem` | [same_fraction_adjacent_lifts_disjoint](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean/declarations/same-fraction-adjacent-lifts-disjoint--5f94c51b7453d06066a30a31.md) | 73 | `result-track:5f94c51b7453d06066a30a315c8167976321d244d5e71c59f2eee15ad22782d0` |
| 7 | `theorem` | [cutoff_one_target_two_major_sum](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean/declarations/cutoff-one-target-two-major-sum--9ae8f501878f84f1fb28a15c.md) | 84 | `result-track:9ae8f501878f84f1fb28a15c5c4c54005e05359c7cf29b9bd2d95c43807957db` |
| 8 | `theorem` | [disjoint_expansion_not_goldbach_witness](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean/declarations/disjoint-expansion-not-goldbach-witness--0f10f37633396a1db4478f1d.md) | 91 | `result-track:0f10f37633396a1db4478f1db1089c94bf2a4be10f4a3fc88266547a1a926290` |
| 9 | `theorem` | [strict_scale_boundary_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcSeparationControls.lean/declarations/strict-scale-boundary-rejected--151b84910d64a6e6c782854f.md) | 102 | `result-track:151b84910d64a6e6c782854f7ac594ee8974b8fc675d0e8f423c0dabd3c6b9a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
