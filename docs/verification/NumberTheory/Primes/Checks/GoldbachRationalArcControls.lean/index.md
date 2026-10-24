# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachRationalArcControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d82004cc35b0ad248523c917e79978a1c395c339",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d82004cc35b0ad248523c917e79978a1c395c339`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion`](../../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rational_indices_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/declarations/rational-indices-zero--2eb747ce46012dc7157f4130.md) | 26 | `result-track:2eb747ce46012dc7157f4130d78e99299e8b4d742e44d2ffe48e7d760b609f5d` |
| 2 | `theorem` | [rational_indices_one](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/declarations/rational-indices-one--95086a236c53e7e14b382b7b.md) | 31 | `result-track:95086a236c53e7e14b382b7b2eaf2de329a26d7b70f87b34616b92881446cc83` |
| 3 | `theorem` | [rational_indices_two](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/declarations/rational-indices-two--0916061b6869c3d0f0d86c30.md) | 37 | `result-track:0916061b6869c3d0f0d86c30fd5571a4266b55883dff5cdfe9180727c239d809` |
| 4 | `theorem` | [rational_radius_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/declarations/rational-radius-control--f7ac4e63414e73814b4c739b.md) | 43 | `result-track:f7ac4e63414e73814b4c739b674d7629c17fee955bf3bb658257ff50da825a09` |
| 5 | `theorem` | [periodic_wrap_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/declarations/periodic-wrap-control--e1e3747253e3e4e580217cc4.md) | 48 | `result-track:e1e3747253e3e4e580217cc4fab33b040f43a6a1eff5afe055b9d88497256bb9` |
| 6 | `theorem` | [raw_arc_overlap_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/declarations/raw-arc-overlap-control--28563880ba12568273ffc877.md) | 54 | `result-track:28563880ba12568273ffc877d7d04236812740b883c11aebd8f5c3dfbb08eea6` |
| 7 | `theorem` | [zero_cutoff_region_empty](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/declarations/zero-cutoff-region-empty--71163b0fee2fbd419e7fccef.md) | 63 | `result-track:71163b0fee2fbd419e7fccef23f329cc12a5156f5a940e5419d47826a291847c` |
| 8 | `theorem` | [clipping_excludes_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/declarations/clipping-excludes-zero--1aedb92b9acd6285790b4ac9.md) | 68 | `result-track:1aedb92b9acd6285790b4ac9214a7a498c53872e1be95e77598b01e12a3ac06b` |
| 9 | `theorem` | [rational_partition_not_goldbach_witness](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/declarations/rational-partition-not-goldbach-witness--4fce58b633decd83fef2ea19.md) | 73 | `result-track:4fce58b633decd83fef2ea19f475a0ae0918a47f6f3310b13afef215ee15144a` |
| 10 | `theorem` | [clipping_is_not_optional](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean/declarations/clipping-is-not-optional--687720622fb39077f22d7edd.md) | 81 | `result-track:687720622fb39077f22d7edd306e9078fa8d09a76e0677ccf52128242d3fb686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
