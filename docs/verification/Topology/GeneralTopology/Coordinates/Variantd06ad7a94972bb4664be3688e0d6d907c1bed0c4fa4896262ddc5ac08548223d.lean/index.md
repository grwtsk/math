# Verification target: GRWTSK.Topology.GeneralTopology.Coordinates.Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4010be6be89620619de965758e34ce348c6ed5d9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4010be6be89620619de965758e34ce348c6ed5d9`.

Source path: `GRWTSK/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Singleton` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BeaconFamily](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/beaconfamily--2427e797b1e3320bf34aad9f.md) | 32 | `declaration-track:2427e797b1e3320bf34aad9f7a9b8ca23181666fafdf5176d2c9d3bb20e9ea45` |
| 2 | `def` | [relative](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/relative--2a5496d574787d0522207874.md) | 59 | `declaration-track:2a5496d574787d052220787410be363db589931b75cd6e113e5c30a796e9df97` |
| 3 | `def` | [coordinate](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/coordinate--f49fc8ca3a3b7913d5a614d9.md) | 67 | `declaration-track:f49fc8ca3a3b7913d5a614d9710532d50a2f935fa9433bfd7f0689367a89b7a5` |
| 4 | `def` | [position](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/position--99c6a01905cbf6293fc99b6e.md) | 74 | `declaration-track:99c6a01905cbf6293fc99b6ebc89a3ac3757f6d2a946c3e90b9b46647ca65d59` |
| 5 | `def` | [Complete](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/complete--7d4f874d40540c67e655d1e1.md) | 81 | `declaration-track:7d4f874d40540c67e655d1e1ab50f526c837a60f6ca24c3923b74202f4b47301` |
| 6 | `theorem` | [Complete.injective](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/complete-injective--21f0bfe38c6b01bc84a5d196.md) | 86 | `result-track:21f0bfe38c6b01bc84a5d196e95275e351b481d939a508d8ad5ef5774a18a1d1` |
| 7 | `theorem` | [Complete.continuous](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/complete-continuous--c65757ad73436b14c4619ab8.md) | 93 | `result-track:c65757ad73436b14c4619ab8a67250db435d95d516841911f189539afffa59e2` |
| 8 | `theorem` | [Complete.isOpen_iff_coordinate_preimage](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/complete-isopen-iff-coordinate-preimage--2286cf52db31aabdeabb744e.md) | 100 | `result-track:2286cf52db31aabdeabb744e87ea6307e65f1cb2ae846202c9f8cbebd9e15aab` |
| 9 | `def` | [beaconDistance](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/beacondistance--51e440186f54b9b98bb9b0e5.md) | 111 | `declaration-track:51e440186f54b9b98bb9b0e5b56af807db35c981adce174e5b5fba09c5f2b508` |
| 10 | `theorem` | [beaconDistance_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/beacondistance-eq-zero-iff--53c4005bf9c424e5a13842b2.md) | 119 | `result-track:53c4005bf9c424e5a13842b2359b3dee7743ba7ea955be23b5ce72f3661d59a5` |
| 11 | `def` | [Complete.metricSpace](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/complete-metricspace--84648145c8d6b280aed71bb9.md) | 133 | `declaration-track:84648145c8d6b280aed71bb9ee2b8f842a49d0b810bb009a2991035c9c17c08d` |
| 12 | `theorem` | [relative_fst_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/relative-fst-eq-zero-iff--5a7eee1b7e0937b060e0fa05.md) | 143 | `result-track:5a7eee1b7e0937b060e0fa0570816674e61a2f970750ba039d879da243749db1` |
| 13 | `def` | [velocity](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/velocity--e062f2584a4f1fe042635852.md) | 152 | `declaration-track:e062f2584a4f1fe0426358529de8d3122bf7dae38db653e49e4d9037c4487776` |
| 14 | `def` | [relativeVelocity](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/relativevelocity--7d46efdf94ecffcb7d11f23b.md) | 160 | `declaration-track:7d46efdf94ecffcb7d11f23bb0b695c3648cd3f3d71dd20e7b970eff333ce49a` |
| 15 | `theorem` | [relativeVelocity_eq_deriv](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/relativevelocity-eq-deriv--ca41150822afe05963dd9d71.md) | 170 | `result-track:ca41150822afe05963dd9d71da907db05274184a6ddd5def8ae67dda88ed2886` |
| 16 | `def` | [metricDifferenceQuotient](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/metricdifferencequotient--2a77735d6fa3263023af289d.md) | 194 | `declaration-track:2a77735d6fa3263023af289d68fc3da5feaaf1758b98e747aa6a655ef3c167fd` |
| 17 | `def` | [HasBeaconMetricDerivativeAt](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean/declarations/hasbeaconmetricderivativeat--69726a7c949c5ffe53fa2bee.md) | 206 | `declaration-track:69726a7c949c5ffe53fa2bee661f4f0c80a8fb83f46b5ae084543941516cdba0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
