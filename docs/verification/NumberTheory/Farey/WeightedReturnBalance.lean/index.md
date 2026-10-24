# Verification target: GRWTSK.NumberTheory.Farey.WeightedReturnBalance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "569ca5b1183b4a4eff1fb999ef1ae872f81a6afc",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/WeightedReturnBalance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `569ca5b1183b4a4eff1fb999ef1ae872f81a6afc`.

Source path: `GRWTSK/NumberTheory/Farey/WeightedReturnBalance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/WeightedReturnBalance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.ReturnAngularChannel`](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedFourPhase](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/weightedfourphase--899eaf8a1c4b9446bb3362d7.md) | 47 | `declaration-track:899eaf8a1c4b9446bb3362d7cbcdc94d0e5c3b7c213616db25b1aa94983886bf` |
| 2 | `theorem` | [weightedFourPhase_eq_pair_defects](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/weightedfourphase-eq-pair-defects--eb6123f9f0782039aef5256f.md) | 53 | `result-track:eb6123f9f0782039aef5256f88d0b52fe6761774ba6d92566eda5ea3aaf76103` |
| 3 | `theorem` | [weightedFourPhase_zero_of_pair_balance](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/weightedfourphase-zero-of-pair-balance--656095433786cf5121f172fe.md) | 63 | `result-track:656095433786cf5121f172fe99c482550d89641883c1eaa1dc41bf250e774e58` |
| 4 | `theorem` | [weightedFourPhase_norm_le](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/weightedfourphase-norm-le--de357c6fc3a48eb6a8cb3ed0.md) | 70 | `result-track:de357c6fc3a48eb6a8cb3ed0dad6f126647017e98f25c65eb58cba555964280c` |
| 5 | `def` | [radialFourBlock](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/radialfourblock--92e3c1108a87bfce84a0bb1a.md) | 86 | `declaration-track:92e3c1108a87bfce84a0bb1ae7dc47e7edb674f506b28113090fea146c625794` |
| 6 | `theorem` | [radialFourBlock_re](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/radialfourblock-re--cb59ed58bd802b42023eb313.md) | 91 | `result-track:cb59ed58bd802b42023eb31331eaddfb6d28f5482dbc609a237d5a936c58b832` |
| 7 | `theorem` | [radialFourBlock_ne_zero_of_one_lt](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/radialfourblock-ne-zero-of-one-lt--f2eae4161928031e0e953517.md) | 99 | `result-track:f2eae4161928031e0e953517bf5e3519b6bb269ca9f1a833bd51455bc6141a46` |
| 8 | `theorem` | [discreteSpiral_first_four_eq_radialBlock](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/discretespiral-first-four-eq-radialblock--0ef05cf857cb8c06d886a30d.md) | 113 | `result-track:0ef05cf857cb8c06d886a30d46cc8bbc694afbae209b894b20c20e315352e203` |
| 9 | `theorem` | [discreteSpiral_first_four_ne_zero](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/discretespiral-first-four-ne-zero--8e0e95b1a04c234105ed3247.md) | 131 | `result-track:8e0e95b1a04c234105ed3247bf506a3a62bf936569a5fdcd7d45b3e191d0eb5e` |
| 10 | `def` | [compensatedSample](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/compensatedsample--f98502283355a54e5d60f26e.md) | 141 | `declaration-track:f98502283355a54e5d60f26e6d7b043eedda7b02635817530daebfb31767787d` |
| 11 | `theorem` | [compensatedSample_eq_phase](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/compensatedsample-eq-phase--1a59cbf0d209bcbb65e49b3a.md) | 146 | `result-track:1a59cbf0d209bcbb65e49b3a918782af0f343dc550114495469642b48d32362c` |
| 12 | `theorem` | [four_unit_phases_cancel](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/four-unit-phases-cancel--ac1ef7cf9ca65955e7b25daa.md) | 171 | `result-track:ac1ef7cf9ca65955e7b25daa6a8e1bb5cd75052fc9d472ae555ba691c0ca782e` |
| 13 | `theorem` | [compensated_four_consecutive_zero](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/compensated-four-consecutive-zero--35377ea9b6d2c4cafd014b2c.md) | 183 | `result-track:35377ea9b6d2c4cafd014b2cd4189e7346ca760c8ad0717cf50f80e83f165873` |
| 14 | `theorem` | [finite_paired_signed_sum_zero](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/finite-paired-signed-sum-zero--2a59cc1dc35db79d9f91d791.md) | 198 | `result-track:2a59cc1dc35db79d9f91d79194ebf78dee7aec0c8fc4a2a5f1d9a2648a79d60d` |
| 15 | `def` | [finiteSquareEnergy](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/finitesquareenergy--1558c5cfb95b63c951c981d2.md) | 206 | `declaration-track:1558c5cfb95b63c951c981d2386c4ff57bb6421fb593d85b1599b454c1d10031` |
| 16 | `theorem` | [finiteSquareEnergy_nonneg](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/finitesquareenergy-nonneg--b54dae5cc8301a4ca95cc31a.md) | 210 | `result-track:b54dae5cc8301a4ca95cc31ab9eb617a57c9163e5479f35c9a17c870543ae396` |
| 17 | `theorem` | [finite_balanced_energy_nonneg](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/finite-balanced-energy-nonneg--56ce2e5f09b6efe73f66eef9.md) | 220 | `result-track:56ce2e5f09b6efe73f66eef9a5fe6c4f044f22da681db6c2752eb81ae3d81272` |
| 18 | `theorem` | [limit_lower_bound_of_balanced_partitions](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/limit-lower-bound-of-balanced-partitions--f475a16129cee0332582a37e.md) | 231 | `result-track:f475a16129cee0332582a37e92243a1abaa4716e77c845e503767a34417e32ff` |
| 19 | `theorem` | [limit_nonneg_of_balanced_partitions](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/declarations/limit-nonneg-of-balanced-partitions--f177563ceafb8a87d1c90161.md) | 254 | `result-track:f177563ceafb8a87d1c901616d449f5b37fdd479b5f61c0d5140b02cad341583` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
