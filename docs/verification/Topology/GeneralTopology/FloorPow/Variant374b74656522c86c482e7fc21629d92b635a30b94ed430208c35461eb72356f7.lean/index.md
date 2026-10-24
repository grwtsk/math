# Verification target: GRWTSK.Topology.GeneralTopology.FloorPow.Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cad03fd7dc87d6f132a4c72a01c7cd716f424bca",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cad03fd7dc87d6f132a4c72a01c7cd716f424bca`.

Source path: `GRWTSK/Topology/GeneralTopology/FloorPow/Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FloorPow/Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7.lean.json)

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
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7.lean/declarations/macro-rules--c63b36cf8cd4ca530c85a679.md) | 22 | `declaration-track:c63b36cf8cd4ca530c85a679ae82fbb46438aa46d21c7376b5f9f1fccc094cb8` |
| 2 | `theorem` | [tendsto_div_of_monotone_of_exists_subseq_tendsto_div](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7.lean/declarations/tendsto-div-of-monotone-of-exists-subseq-tendsto-div--25231f1c35021f296bea100e.md) | 30 | `result-track:25231f1c35021f296bea100eb51ee5f7dac9460bad1551a99fb6594d0cd4c9dd` |
| 3 | `theorem` | [tendsto_div_of_monotone_of_tendsto_div_floor_pow](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7.lean/declarations/tendsto-div-of-monotone-of-tendsto-div-floor-pow--a9c8266b952779ff3bec5076.md) | 209 | `result-track:a9c8266b952779ff3bec5076b09c4a623231e6c64e46abc4c1eac8a5fafa257e` |
| 4 | `theorem` | [sum_div_pow_sq_le_div_sq](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7.lean/declarations/sum-div-pow-sq-le-div-sq--0c6b39b4320fa07d5c90e163.md) | 244 | `result-track:0c6b39b4320fa07d5c90e163db95f5a649e756aa8de986fd8931399ff99c5e5a` |
| 5 | `theorem` | [mul_pow_le_nat_floor_pow](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7.lean/declarations/mul-pow-le-nat-floor-pow--89fc883476421293edb1644b.md) | 303 | `result-track:89fc883476421293edb1644bf35d106314c105c936e34fd3aefdf1d1e7617c60` |
| 6 | `theorem` | [sum_div_nat_floor_pow_sq_le_div_sq](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant374b74656522c86c482e7fc21629d92b635a30b94ed430208c35461eb72356f7.lean/declarations/sum-div-nat-floor-pow-sq-le-div-sq--d0664e7a8ee4f23722dd7228.md) | 319 | `result-track:d0664e7a8ee4f23722dd7228b1bc245399ea35444df4c65c810499ec964bf0e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
