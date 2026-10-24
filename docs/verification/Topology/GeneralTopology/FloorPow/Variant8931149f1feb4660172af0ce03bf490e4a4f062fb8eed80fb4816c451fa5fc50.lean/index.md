# Verification target: GRWTSK.Topology.GeneralTopology.FloorPow.Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87705a4f3fbc016a1ffbe8413f0677cf30f6cd44",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87705a4f3fbc016a1ffbe8413f0677cf30f6cd44`.

Source path: `GRWTSK/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_div_of_monotone_of_exists_subseq_tendsto_div](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean/declarations/tendsto-div-of-monotone-of-exists-subseq-tendsto-div--bc1c0350c6e1691b67a789ce.md) | 26 | `result-track:bc1c0350c6e1691b67a789ce4faa6e1b9d6d4a7b5fb863e75325ac987260cb13` |
| 2 | `theorem` | [tendsto_div_of_monotone_of_tendsto_div_floor_pow](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean/declarations/tendsto-div-of-monotone-of-tendsto-div-floor-pow--070aaf4ff083c76880b30bde.md) | 185 | `result-track:070aaf4ff083c76880b30bde3030d4e59d5c5af4d5b768ac3ac245b63b45d44a` |
| 3 | `theorem` | [sum_div_pow_sq_le_div_sq](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean/declarations/sum-div-pow-sq-le-div-sq--85614db74aa992761acf949f.md) | 218 | `result-track:85614db74aa992761acf949f02124a520c275bf82986f496ef8c9344d6216e18` |
| 4 | `theorem` | [mul_pow_le_nat_floor_pow](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean/declarations/mul-pow-le-nat-floor-pow--8f88af677629becc8b7720b7.md) | 266 | `result-track:8f88af677629becc8b7720b7245057359155b2f0f0729c8c69424efd6a5a2562` |
| 5 | `theorem` | [sum_div_nat_floor_pow_sq_le_div_sq](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean/declarations/sum-div-nat-floor-pow-sq-le-div-sq--d119b64335623f7800991b30.md) | 279 | `result-track:d119b64335623f7800991b30ed8878180d322fb9bd093b723c5736b1a32e952c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
