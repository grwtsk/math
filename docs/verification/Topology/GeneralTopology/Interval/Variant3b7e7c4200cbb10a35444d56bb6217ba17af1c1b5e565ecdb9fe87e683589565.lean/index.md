# Verification target: GRWTSK.Topology.GeneralTopology.Interval.Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4edc9c24b99d4d90cbc3b410248fc2a2c8d38f0f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4edc9c24b99d4d90cbc3b410248fc2a2c8d38f0f`.

Source path: `GRWTSK/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mem_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/declarations/mem-icc--d2cf436f23b1b36dc1c83123.md) | 32 | `declaration-track:d2cf436f23b1b36dc1c831239225f587140d5dc3cd0b6e753d2e040ebe1dfb56` |
| 2 | `theorem` | [mem_Icc_iff](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/declarations/mem-icc-iff--cf14c8ede503da8dc9390fca.md) | 34 | `result-track:cf14c8ede503da8dc9390fca7ea8ba971bf272f4c9b7a6e62f7f075ee5e9d3e6` |
| 3 | `theorem` | [add_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/declarations/add-mem-icc--c3fb967475b936f1b26391c9.md) | 43 | `result-track:c3fb967475b936f1b26391c9a0cd12b888b26bdd679f942e11f451c73e8bfbf7` |
| 4 | `theorem` | [neg_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/declarations/neg-mem-icc--925441da6fbf33016059deb1.md) | 49 | `result-track:925441da6fbf33016059deb1f8dd1e6f43ed55b340cb751df56bc60951c88a47` |
| 5 | `theorem` | [sub_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/declarations/sub-mem-icc--777d968abe1b41577dd04205.md) | 55 | `result-track:777d968abe1b41577dd042059673e6209207822ab32b3996ad6c6b0cdcc3cf4c` |
| 6 | `theorem` | [Icc_convex](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/declarations/icc-convex--522fc86cfc973981e31f2428.md) | 63 | `result-track:522fc86cfc973981e31f2428c6a5440edbfca66a1e71e058b9cf739de0043735` |
| 7 | `theorem` | [Icc_compact](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/declarations/icc-compact--bb1f48ac1d38d7d49bf35332.md) | 68 | `result-track:bb1f48ac1d38d7d49bf3533299f501465fe5007adab8df9926d5eb7e207cf065` |
| 8 | `theorem` | [continuous_Icc_bounds](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/declarations/continuous-icc-bounds--5258c1eb64397c8832a699d2.md) | 73 | `result-track:5258c1eb64397c8832a699d23764ac1b022b7477ab29275fea284a4c30d820e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
