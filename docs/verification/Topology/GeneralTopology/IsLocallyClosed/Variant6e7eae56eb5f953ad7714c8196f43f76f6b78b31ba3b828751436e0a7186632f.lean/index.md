# Verification target: GRWTSK.Topology.GeneralTopology.IsLocallyClosed.Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0816a0da45d0b14e541fb6b3248117515c6591be",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0816a0da45d0b14e541fb6b3248117515c6591be`.

Source path: `GRWTSK/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.OrderClosed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyClosed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocallyClosed_Icc](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean/declarations/islocallyclosed-icc--ac8d2673f597110ff267c292.md) | 25 | `result-track:ac8d2673f597110ff267c292214224cebb7b277d0aed2d0dd1ce20e275707e0c` |
| 2 | `theorem` | [isLocallyClosed_Ioo](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean/declarations/islocallyclosed-ioo--e27e3600ae82528de5890ce2.md) | 29 | `result-track:e27e3600ae82528de5890ce20112a7e6f6f0fb5c4d130f5536cf0eea592c84ab` |
| 3 | `theorem` | [isLocallyClosed_Ici](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean/declarations/islocallyclosed-ici--60b6e300ef6c882e21619a0a.md) | 33 | `result-track:60b6e300ef6c882e21619a0a1e9ed49da86354e3b2b808586bd509094ac0d761` |
| 4 | `theorem` | [isLocallyClosed_Iic](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean/declarations/islocallyclosed-iic--7a594c81505c9565efaff474.md) | 37 | `result-track:7a594c81505c9565efaff47463c0e8ba2dad641ebc5c4680bf218af7fcebe797` |
| 5 | `theorem` | [isLocallyClosed_Ioi](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean/declarations/islocallyclosed-ioi--137f772d8c409832e62f5997.md) | 41 | `result-track:137f772d8c409832e62f599768df5c39c40bc8ca6efbf16c58f3cc83de794465` |
| 6 | `theorem` | [isLocallyClosed_Iio](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean/declarations/islocallyclosed-iio--01fa97ddb14ea7049b928d05.md) | 45 | `result-track:01fa97ddb14ea7049b928d052d1fdd51577d30718a34b96f7bc3b6e7d45c0baa` |
| 7 | `theorem` | [isLocallyClosed_Ioc](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean/declarations/islocallyclosed-ioc--d3aca2cf1661e5898fad3cff.md) | 49 | `result-track:d3aca2cf1661e5898fad3cffa4ef107b3998bc3b68f0979483e650c62be75981` |
| 8 | `theorem` | [isLocallyClosed_Ico](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f.lean/declarations/islocallyclosed-ico--73c7ddd09811804aed5ead32.md) | 54 | `result-track:73c7ddd09811804aed5ead3260fe3fafa0fb3b32a83120cecf508d0eebf924a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
