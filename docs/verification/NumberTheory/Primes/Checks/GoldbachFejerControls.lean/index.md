# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachFejerControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abf411d17cd4f4414f9d010833664ce51b5fb75c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachFejerControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abf411d17cd4f4414f9d010833664ce51b5fb75c`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachFejerControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachFejerControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary`](../../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [triangular_frequency_controls](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/triangular-frequency-controls--b430631bf174fb2bda909d51.md) | 38 | `result-track:b430631bf174fb2bda909d51b9fe67e39fcf32635c4092a4052f385ee4d2576e` |
| 2 | `theorem` | [fejer_kernel_zero_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/fejer-kernel-zero-control--e327e4748dd9a904b15117a3.md) | 46 | `result-track:e327e4748dd9a904b15117a313921992dc28c0bf68b0c64c6742bf6b9c1f5689` |
| 3 | `theorem` | [fejer_core_constants_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/fejer-core-constants-control--b3feafe8b3be92e397ee9faa.md) | 57 | `result-track:b3feafe8b3be92e397ee9faae3ad346c5d6615e5316920b8b887996e3ed11e3c` |
| 4 | `theorem` | [fejer_core_containment_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/fejer-core-containment-control--8dd628a3428f31f55a258556.md) | 65 | `result-track:8dd628a3428f31f55a2585563feb99134388feb94af4f98d7d6568de8cc7eebf` |
| 5 | `theorem` | [fejer_window_lower_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/fejer-window-lower-control--bc338638a6d3e963a771d1c2.md) | 73 | `result-track:bc338638a6d3e963a771d1c2507bdfd2a05394ed739776d59d8c56400945f6d8` |
| 6 | `theorem` | [denominator_two_coefficient_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/denominator-two-coefficient-control--e496e8181b375466fbd696a5.md) | 83 | `result-track:e496e8181b375466fbd696a5f6464d5da98ca1c4435c0c01e14ac098a5c842b7` |
| 7 | `theorem` | [denominator_three_negative_coefficient_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/denominator-three-negative-coefficient-control--0dd95e811ce394cecddf31cd.md) | 91 | `result-track:0dd95e811ce394cecddf31cd9f4e52664c2715009c9c397c80eb6ac03c0d6597` |
| 8 | `theorem` | [positive_coefficient_branch_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/positive-coefficient-branch-control--4a6ba944dc26b32a0fdbc33d.md) | 99 | `result-track:4a6ba944dc26b32a0fdbc33d1a5aa09d91a061d1f9ae4bc5b2d27f4c84bf25e6` |
| 9 | `theorem` | [negative_coefficient_branch_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/negative-coefficient-branch-control--d0e664ed971b69ca0914eb02.md) | 108 | `result-track:d0e664ed971b69ca0914eb0246cb976546ecedb421aa590acfae9a983c1af4c0` |
| 10 | `theorem` | [triangular_sum_at_zero_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/triangular-sum-at-zero-control--49a7da8e2515a3405456dea0.md) | 118 | `result-track:49a7da8e2515a3405456dea0b819b2af5b148c018b347ebe172c419a9fe4b9db` |
| 11 | `theorem` | [fejer_nonnegative_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/fejer-nonnegative-control--e2b219eb27f9dad0b436985a.md) | 126 | `result-track:e2b219eb27f9dad0b436985adbdb6ba8b6e7214917435d9b641f5d3ec7d97b19` |
| 12 | `theorem` | [fejer_window_not_goldbach_witness](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/fejer-window-not-goldbach-witness--ebaf63de7e0b2bf92de0fa6b.md) | 133 | `result-track:ebaf63de7e0b2bf92de0fa6b7f7f65240a0e244ce93a62da784165389869d0f1` |
| 13 | `theorem` | [strict_fejer_margin_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/declarations/strict-fejer-margin-rejected--2f957d71df4d2774e3c2803b.md) | 145 | `result-track:2f957d71df4d2774e3c2803b0659cefc256a21f2c35aac6a7844b1a0dd885957` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
