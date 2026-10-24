# Verification target: GRWTSK.Topology.GeneralTopology.Coordinates.Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acbd7f83aadab0bee28867ae037ebc1a7423541a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acbd7f83aadab0bee28867ae037ebc1a7423541a`.

Source path: `GRWTSK/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Singleton` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BeaconFamily](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/beaconfamily--c24f08bf6097792627aca07c.md) | 24 | `declaration-track:c24f08bf6097792627aca07c3fe7527ed530290fe1fca476f18b9416fbfcfd4b` |
| 2 | `def` | [relative](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/relative--5d8561be8c647c7482b1d06d.md) | 51 | `declaration-track:5d8561be8c647c7482b1d06d70bcf990e72f0196ae61b86d074b6587d448137a` |
| 3 | `def` | [coordinate](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/coordinate--941d21b63c8e1dc87afe4a42.md) | 59 | `declaration-track:941d21b63c8e1dc87afe4a426b26a5cc49d57d4aade5649eff5b2d13c0328983` |
| 4 | `def` | [position](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/position--63f5acdb8b05bb05553f388b.md) | 66 | `declaration-track:63f5acdb8b05bb05553f388b95924235fbd4e6a2f256e9b26878546fa171fc64` |
| 5 | `def` | [Complete](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/complete--93e2d0fc48032e1f46a202af.md) | 73 | `declaration-track:93e2d0fc48032e1f46a202afab1145ed5a568f1a1b5a25182b9b8513529de013` |
| 6 | `theorem` | [Complete.injective](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/complete-injective--c8e5083f22ffd66f48d11bb0.md) | 78 | `result-track:c8e5083f22ffd66f48d11bb04ac22130e268d78e63c83f37096fd927a5e9ae10` |
| 7 | `theorem` | [Complete.continuous](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/complete-continuous--b07b008e5f747120cb96c5de.md) | 85 | `result-track:b07b008e5f747120cb96c5de1dd18180c57ea7ac9a3ccb971ddd6b989614bdd0` |
| 8 | `theorem` | [Complete.isOpen_iff_coordinate_preimage](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/complete-isopen-iff-coordinate-preimage--2edfe9d63578039f519a84b8.md) | 92 | `result-track:2edfe9d63578039f519a84b8124fb50ad2c2ebbc6d5f465c1e8f19bd32328632` |
| 9 | `def` | [beaconDistance](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/beacondistance--910fa76fb1eabf076aa8a756.md) | 103 | `declaration-track:910fa76fb1eabf076aa8a756f6e541117eff7167e09517f4bb052f41da6abc6b` |
| 10 | `theorem` | [beaconDistance_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/beacondistance-eq-zero-iff--e1c9e0aa14ca1059421470f6.md) | 111 | `result-track:e1c9e0aa14ca1059421470f64d495a5b2dde9f8984e1ce006695fa67ea5d87b2` |
| 11 | `def` | [Complete.metricSpace](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/complete-metricspace--2a0b85d6ac3236048cc1cee6.md) | 125 | `declaration-track:2a0b85d6ac3236048cc1cee68e872ceb71cfae603744486ef650659456696a15` |
| 12 | `theorem` | [relative_fst_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/relative-fst-eq-zero-iff--6442f97fe3cfa470215b099e.md) | 135 | `result-track:6442f97fe3cfa470215b099e90fe1bce5a3890b92282888356f81c21c0be07ac` |
| 13 | `def` | [velocity](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/velocity--022a001b3b2e672f51337fdf.md) | 144 | `declaration-track:022a001b3b2e672f51337fdf030f09320a29a944a371530dd083d442e651938f` |
| 14 | `def` | [relativeVelocity](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/relativevelocity--b715de3bc59289ee18fe4971.md) | 152 | `declaration-track:b715de3bc59289ee18fe49716fb3c1ab4f96e4890af4798a3adf96c73e6d1288` |
| 15 | `theorem` | [relativeVelocity_eq_deriv](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/relativevelocity-eq-deriv--4275b1a85157c83759338051.md) | 162 | `result-track:4275b1a85157c8375933805152bcd9b08ebd323d16c9b73ef3742d48ebabe4ed` |
| 16 | `def` | [metricDifferenceQuotient](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/metricdifferencequotient--c94a93871f56dae954e016bf.md) | 186 | `declaration-track:c94a93871f56dae954e016bff876eb8f390eb5891d10fa32074eca9f460784e5` |
| 17 | `def` | [HasBeaconMetricDerivativeAt](../../../../../mathematics/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/declarations/hasbeaconmetricderivativeat--7284c66f5c721ce1673b4eac.md) | 198 | `declaration-track:7284c66f5c721ce1673b4eac06c09a1724f44cd4eb4df2115b5ec6d8d6738cd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
