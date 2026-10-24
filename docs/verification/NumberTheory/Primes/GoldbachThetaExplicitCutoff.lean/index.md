# Verification target: GRWTSK.NumberTheory.Primes.GoldbachThetaExplicitCutoff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a21a10c6c29c5f00663ae74e244e931b61a89fd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a21a10c6c29c5f00663ae74e244e931b61a89fd`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachTwoArcThetaTransfer`](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachDirectionalMinorBoundary`](../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachThetaConservativeCutoff](../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/declarations/goldbachthetaconservativecutoff--5943f483898a2715e31d7fe7.md) | 34 | `declaration-track:5943f483898a2715e31d7fe79e76abb42da1d719b4771c25e5934daaeecf43d8` |
| 2 | `def` | [GoldbachThetaCoarseEstimates](../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/declarations/goldbachthetacoarseestimates--e1136968e53abc654c094b7a.md) | 38 | `declaration-track:e1136968e53abc654c094b7ae8e1ba03a8ce3ab9297b8fa432dc850a35405553` |
| 3 | `theorem` | [theta_prefix_abs_le_succ_of_global](../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/declarations/theta-prefix-abs-le-succ-of-global--039b9b485919784d5f968caa.md) | 45 | `result-track:039b9b485919784d5f968caa4c16d1c6bf0f2510d2fcd5efa7e02e23ac4544a6` |
| 4 | `theorem` | [theta_all_prefix_one_percent_of_coarse](../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/declarations/theta-all-prefix-one-percent-of-coarse--59f01706a77baaca08c53ebc.md) | 56 | `result-track:59f01706a77baaca08c53ebc61db344334790d688c55a0c7371a627bacc3b4da` |
| 5 | `theorem` | [goldbachThetaPrefixSupplier_one_percent_of_coarse](../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/declarations/goldbachthetaprefixsupplier-one-percent-of-coarse--72ec29b25954603a38e2049e.md) | 71 | `result-track:72ec29b25954603a38e2049e805bce1c5a458b28ef16edcb2dc41211275aa744` |
| 6 | `theorem` | [goldbachReducedPrefixSupplier_two_of_coarse](../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/declarations/goldbachreducedprefixsupplier-two-of-coarse--8db3f9693386d6c7a8c29fbf.md) | 80 | `result-track:8db3f9693386d6c7a8c29fbf4eef95c8e60a8e79fe98613fdffc11418a83b988` |
| 7 | `theorem` | [goldbachCount_pos_of_coarse_theta_and_two_arc_bridges](../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/declarations/goldbachcount-pos-of-coarse-theta-and-two-arc-bridges--d03a9708b13138570763c206.md) | 90 | `result-track:d03a9708b13138570763c20685702dac51b7226f7c51452e2350d05428fb2d24` |
| 8 | `theorem` | [goldbachCount_pos_above_of_coarse_theta_and_two_arc_bridges](../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/declarations/goldbachcount-pos-above-of-coarse-theta-and-two-arc-bridges--5349c04314b8e8143511dcd8.md) | 113 | `result-track:5349c04314b8e8143511dcd8a942641123c39d7515131292c604ea390327c794` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
