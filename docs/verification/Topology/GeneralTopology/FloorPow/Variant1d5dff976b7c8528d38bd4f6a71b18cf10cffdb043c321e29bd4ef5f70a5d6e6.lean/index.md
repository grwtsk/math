# Verification target: GRWTSK.Topology.GeneralTopology.FloorPow.Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53c11322aab29bc3cf0b63f35884f96d5b1dc65a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53c11322aab29bc3cf0b63f35884f96d5b1dc65a`.

Source path: `GRWTSK/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/declarations/macro-rules--cfcdf439bcc30bbb52e86c21.md) | 30 | `declaration-track:cfcdf439bcc30bbb52e86c2107f4b2fde3a17f0f7f69dc9204c8aadec3572bc1` |
| 2 | `theorem` | [tendsto_div_of_monotone_of_exists_subseq_tendsto_div](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/declarations/tendsto-div-of-monotone-of-exists-subseq-tendsto-div--279c981e0387e3d9712b3472.md) | 38 | `result-track:279c981e0387e3d9712b3472d9626e837de43869adcf409d748aeef8e84ec248` |
| 3 | `theorem` | [tendsto_div_of_monotone_of_tendsto_div_floor_pow](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/declarations/tendsto-div-of-monotone-of-tendsto-div-floor-pow--822bf7714c7fb5e6ad2eee34.md) | 217 | `result-track:822bf7714c7fb5e6ad2eee34973c17c2e06405027b147a760f88e365aef835f6` |
| 4 | `theorem` | [sum_div_pow_sq_le_div_sq](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/declarations/sum-div-pow-sq-le-div-sq--e39f129700d4649475ba48c0.md) | 252 | `result-track:e39f129700d4649475ba48c0f5dbdc7d65a3e0bf37666c4ba07fba5c96a4a065` |
| 5 | `theorem` | [mul_pow_le_nat_floor_pow](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/declarations/mul-pow-le-nat-floor-pow--4dcd7b1be238063fe89cbbc8.md) | 311 | `result-track:4dcd7b1be238063fe89cbbc8acf66669014a6a68b4c7b277a83f68285a65a520` |
| 6 | `theorem` | [sum_div_nat_floor_pow_sq_le_div_sq](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/declarations/sum-div-nat-floor-pow-sq-le-div-sq--4781ac5b3075e5dcd1f7fb0e.md) | 327 | `result-track:4781ac5b3075e5dcd1f7fb0ec2d448e9e24f7a00b1226b5f332d23078984b0e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
