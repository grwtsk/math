# Verification target: GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3070d9554d88bf5c37a7daf96dcee2623c53aaf7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3070d9554d88bf5c37a7daf96dcee2623c53aaf7`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge`](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary`](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachProgressionDenominatorMajorBlock](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/declarations/goldbachprogressiondenominatormajorblock--c7f9f720c19e7d8e053d6629.md) | 50 | `declaration-track:c7f9f720c19e7d8e053d66290731daab7af0b746428aa0cdb2375bdcad527119` |
| 2 | `theorem` | [goldbachProgressionDenominatorMajorBlock_factor_of_common](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/declarations/goldbachprogressiondenominatormajorblock-factor-of-common--87a37a1678af5a5dda85c564.md) | 59 | `result-track:87a37a1678af5a5dda85c564f57cbe35d37d2ba574629a3da004fdf357a64a77` |
| 3 | `def` | [goldbachCoefficientTruncatedMainScale](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/declarations/goldbachcoefficienttruncatedmainscale--6545c31f8af15d7589a24121.md) | 83 | `declaration-track:6545c31f8af15d7589a2412134ec4fc7c0948ab290abc745a017112ec0dfde11` |
| 4 | `theorem` | [goldbachCoefficientTruncatedMainScale_eq](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/declarations/goldbachcoefficienttruncatedmainscale-eq--210588430a0dbcde156a2eff.md) | 90 | `result-track:210588430a0dbcde156a2effe25bec43c279049717d0fbb68cee481576cc5fda` |
| 5 | `theorem` | [goldbachFiniteCoefficientEulerProduct_re_pos](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/declarations/goldbachfinitecoefficienteulerproduct-re-pos--97ec2f377892317b9acc2fdb.md) | 101 | `result-track:97ec2f377892317b9acc2fdb0a95ece35df0e85fc5a877aa8e289f6a2b8326d4` |
| 6 | `theorem` | [goldbachFiniteCoefficientEulerProduct_eq_zero_of_not_even](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/declarations/goldbachfinitecoefficienteulerproduct-eq-zero-of-not-even--6cf7cf0712745bafd0ddc6fd.md) | 112 | `result-track:6cf7cf0712745bafd0ddc6fd7923607b6176d70e2edecbe4d334437c9efa975e` |
| 7 | `theorem` | [goldbachCount_pos_of_factored_progression_residue_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/declarations/goldbachcount-pos-of-factored-progression-residue-bounds--7da4c40e27eacc46bbb673bc.md) | 122 | `result-track:7da4c40e27eacc46bbb673bce9cf160fb3411d4aa41af1b6ef9772a654201beb` |
| 8 | `theorem` | [goldbachCount_pos_of_coefficient_truncated_certificate](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/declarations/goldbachcount-pos-of-coefficient-truncated-certificate--63938edd4bc92cfd1af0c898.md) | 160 | `result-track:63938edd4bc92cfd1af0c898edd4428dafdad47da9a4135c5fd92bdb1ce884ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
