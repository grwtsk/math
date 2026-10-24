# Verification target: GRWTSK.Topology.GeneralTopology.IsLocallyClosed.Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "675c11d32edb64b526847daece13fd874fdcceeb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `675c11d32edb64b526847daece13fd874fdcceeb`.

Source path: `GRWTSK/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.OrderClosed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyClosed` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocallyClosed_Icc](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean/declarations/islocallyclosed-icc--05a578f9cf69f4b9bddb8c5a.md) | 17 | `result-track:05a578f9cf69f4b9bddb8c5ae89062ae913b8e4599d4d56a5add48e91408a538` |
| 2 | `theorem` | [isLocallyClosed_Ioo](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean/declarations/islocallyclosed-ioo--1d6ed53fe4bbfa1bc88aa9ca.md) | 21 | `result-track:1d6ed53fe4bbfa1bc88aa9ca43f9a42dfcaa1d2679712bef1ac1c90e56f3af5e` |
| 3 | `theorem` | [isLocallyClosed_Ici](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean/declarations/islocallyclosed-ici--f86d35c0e37bcd55af654b2d.md) | 25 | `result-track:f86d35c0e37bcd55af654b2dab442a050ca92357bd11836a3db2c25e8575972d` |
| 4 | `theorem` | [isLocallyClosed_Iic](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean/declarations/islocallyclosed-iic--165efef2b18fc85e8821aef4.md) | 29 | `result-track:165efef2b18fc85e8821aef4bcca10c53083aef610d95694a1fe8b9abe108ebf` |
| 5 | `theorem` | [isLocallyClosed_Ioi](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean/declarations/islocallyclosed-ioi--112bfa48a381871adbcd12d9.md) | 33 | `result-track:112bfa48a381871adbcd12d9e800521463d233da4ad428eb45fecbae8f778931` |
| 6 | `theorem` | [isLocallyClosed_Iio](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean/declarations/islocallyclosed-iio--e06f61e2d03348fb54c0d6a5.md) | 37 | `result-track:e06f61e2d03348fb54c0d6a579152d54856b4f0b97d3e38f9e54e1f277b0434d` |
| 7 | `theorem` | [isLocallyClosed_Ioc](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean/declarations/islocallyclosed-ioc--9f05b6bae08613505e8009f8.md) | 41 | `result-track:9f05b6bae08613505e8009f81ab14465f9b0f2a2ba567bdfc6328f13c7a95518` |
| 8 | `theorem` | [isLocallyClosed_Ico](../../../../../mathematics/Topology/GeneralTopology/IsLocallyClosed/Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39.lean/declarations/islocallyclosed-ico--af0859b2d3a48ae235068194.md) | 46 | `result-track:af0859b2d3a48ae23506819410f7fc48eb4412e0b925adeb94f53da856b3a15b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
